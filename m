Return-Path: <devicetree+bounces-171634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9171EA9F657
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 18:58:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1A7F17F07B
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 16:58:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B72B28468D;
	Mon, 28 Apr 2025 16:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IdOZ+oVs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8C7D2820A3
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 16:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745859491; cv=none; b=pwGW1t6Ks2gdeI5TizRRo0tQIbSwR+512Nt52e4hy8lUia0Bz+bQjMscTGtkwuwZpSlnw+pj2xpKreR8iFdHT3PK2rHrIojORn1QX+26QVsuxFHrFBLiYJA2xZ/TUjl6c4VR8IUDX42PfXzD9tfReaxcRs3JhLL147C9zyby1oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745859491; c=relaxed/simple;
	bh=YSeVqFWSmHRlY82kAc4UdpGrchvhVoaT0/8dOhC5OVA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sr/koV3ysHD9OJ65IFsNKLNqNR1LN/9fXqsyDfGhDKEgac4z6ZAn20v1xCjVGZJEoHpqKEtw93pbN3C0Bq7IWCJgTjUlFucrfX3lA09ULIYwtpBAf9VGQd3BITnkb02d0rPBkDidy97NGlMw+pTJkLB0lad5Ub0B6S0rX0d5MHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IdOZ+oVs; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53SDiQ52009760
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 16:58:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7KOxMBghG49ujEPEi5RVfYFnHI2kUQYWCNuShHnCHt0=; b=IdOZ+oVs0lC3myS9
	Q+wyYiXJ1NOdOBa7GQCV6l1OYUz2b74IR/nf8eStr4rcOFCkQ42p5fT8NbpUZfB/
	GVacD/X39+RbHfiiM+WoEhFsEvLyea/Q6dNGxbdEvxA57b+csH+Fy2wwRHVmczDi
	lvK9PacmAt/erHVoMr7PTbaQs+lnZKgvqpjOCQs0SFfm1er6C58xnSnywj2h3SA1
	eD+H9WgAdzwNmUklxeIXkO/dmIiB3eJHe9PrwvzlS2i0t8wZtcvU77B9GW0+zPZ6
	HQOia46uxqe/Lr5yjiOW6toguxmCccxYbPxNN/BCtca8Uz+UZR1ZHYT0IkeEjw90
	cJhQTg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468n6jh3k8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 16:58:08 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5f3b94827so753146585a.0
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 09:58:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745859487; x=1746464287;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7KOxMBghG49ujEPEi5RVfYFnHI2kUQYWCNuShHnCHt0=;
        b=mBr8gSoebKVMyKyl+ApKxm7d+93wGt2IAFuz6VksmF+R/F/yauBWRXpH0JzI4DIU8i
         J8fLLhPXKMkdVIKExtLWNo6QKQkpsuD20pL5SryTOWEqqTGNBw6Brs7oOZ1LRbxDmWw3
         uERBfjWQyXn1ErfW5LlCKpmaeTes+2CNXxf+xCY4BiOjxDjbzjJu6bCrrx82K5TLZEfs
         67YJ1wCGkIDhghX0NEz2YbxnUt2rJlWS+D0jUOZ1OaM2JPg74XnRM+R9ajN++31gC1AG
         O7VEWeUrRySuMu/EvMujnbT4JINbJA+/3hxgJ12ymvPwXJUWfyAc6kMBPaWVHFSZyctR
         3TgQ==
X-Forwarded-Encrypted: i=1; AJvYcCVoqZnfcvNe2yL+otQ3sCCBKJTioCBjLX3PoOQ+q+xXWAhZ+uSwcU9HB/oUFMNw9wWRiX7dFyXk5AMf@vger.kernel.org
X-Gm-Message-State: AOJu0YysvA/rCzml31yS20Xfs/Q5Dcuo4/2Uy/K/htRnAUpDMDRXxXdS
	PY8VbC86TuoGN90+vHCEGHfx5BkoCu7QBZkfwRtKm9IBEdxkxTm60il5nTBlztEjZ3Ure+uVQa3
	iJFtm8ZWqxkzfWpeIQc9vGoFibGJJUffW3eV6GoklpPprr8b5T6li4Q0r2iRr
X-Gm-Gg: ASbGnctrjRXnsWEmParkne66ey5oXEB+8Dv6AHl+TKI5E+SjMbWIpZxTLxwuEz1Q3v6
	rM1QRr8akH1Q41LcpQMYcpmVvscRYa5Vkcm4YrhmcWT8KhtN8Cz/BQg/8cjl0FR6IsOXGgWkyla
	77CyUjqwe/73wbtWteCdHhvPxWJoZ0UmsLvuUqRFxJaBEZD7jlXEQ1pPlXWqBF0CTqTnPs/TyAB
	lkAnSleMdts8V/GtbfjJPAmLG/YGrB2ckHteXlhb3cqHc31c5wUKu22OWUmzVFpibjGGkuGDSvS
	xzJN8Yk4hTOzg8gyrCmJO03RYKKRqFiRMZsswnpQ+GBTCq/Secprf6KuxjFFTqD5/5/ixZCyKwI
	=
X-Received: by 2002:a05:620a:c4e:b0:7c5:5206:5823 with SMTP id af79cd13be357-7c9619a705emr1660614685a.29.1745859487283;
        Mon, 28 Apr 2025 09:58:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqSjKGgWl7wO2D1jUzkAaf6173SfIpCBSxDl8zqFf4Wh+1t30kDQ1gRmiZSs91e63VpqiPUQ==
X-Received: by 2002:a05:620a:c4e:b0:7c5:5206:5823 with SMTP id af79cd13be357-7c9619a705emr1660610985a.29.1745859486767;
        Mon, 28 Apr 2025 09:58:06 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cca8d8esm1682584e87.176.2025.04.28.09.58.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Apr 2025 09:58:05 -0700 (PDT)
Date: Mon, 28 Apr 2025 19:58:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: abel.vesa@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        kishon@kernel.org, krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        robh@kernel.org, sfr@canb.auug.org.au, vkoul@kernel.org
Subject: Re: [PATCH v2 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: rework
 reg override handler
Message-ID: <n5z5atbxkwqllni6cgygcw5nn7z4w3yjznhpkaajw6tggenxb3@kxpk2e6vmvlj>
References: <q6zqfk3l2khp3tkodxd4pzhufiesyjcypl66zoqzslolwoveyo@ltrw2iulrkqs>
 <20250426081424.422590-1-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250426081424.422590-1-mitltlatltl@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI4MDEzNyBTYWx0ZWRfXzyaiWcJTF/W2 A5t4CJaaZjKXj4kFVyEhtFEqWDqWFu0ETq0EweCn5hae/uU0q6yFep7jI7HPmvyYIM+KKwE22hf lkAPg+WyayNbKaVU40IZ0e4bpMKemT2p3omBnKUMpKT2yI/99Y51pCPbTQitwOuCWWKSDwa/3Pt
 CCabt0zKZZwJZaE9jYUli0s4fX/TcfH0Slf8HkVgkScn8kPiD3IS9gt5Y5tc4j46dNG/iioUjn+ xzBDtufI1FGAWXAMIlb829zQaWTmm5h86VNIF3m8lTaG3iMi7nePt2SsPDYxmqorrSYEpUxtz8l A5TEavPsJTVZ3IuykjqgO/O+0VR/GVK+mRM4or7vJiz6pRmERSNToBNPPcJpn647inbc8e9LwVZ
 BIgHY1wajDIL8AgXX1TgJh9DgkGI0M8Vbp3ttmPM+b1yJt3+NvRc7KgPUcFmw931yQw4HQCc
X-Proofpoint-GUID: V7aRK4FuKDAYtpAIsiSm-NBAF17rPSmO
X-Proofpoint-ORIG-GUID: V7aRK4FuKDAYtpAIsiSm-NBAF17rPSmO
X-Authority-Analysis: v=2.4 cv=C8fpyRP+ c=1 sm=1 tr=0 ts=680fb3a0 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=P-IC7800AAAA:8 a=NEAV23lmAAAA:8 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=hVKwd-R3O5YvdfgKfvwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=d3PnA9EDa4IxuAV0gXij:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-28_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 mlxlogscore=999 priorityscore=1501 clxscore=1015 spamscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 mlxscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504280137

On Sat, Apr 26, 2025 at 04:14:23PM +0800, Pengyu Luo wrote:
> On Sat, Apr 26, 2025 at 3:41 AM Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > On Wed, Apr 16, 2025 at 08:02:01PM +0800, Pengyu Luo wrote:
> > > In downstream tree, many registers need to be overridden, it varies
> > > from devices and platforms, with these registers getting more, adding
> > > a handler for this is helpful.
> >
> > It should be noted that previously all values were applied during _init
> > phase, before checking the status etc. Now the overrides are programmed
> > from the set_mode. Should you still program sane defaults at the init
> > stage too?
> >
> 
> I think programming in set_mode is ok. When we init(dwc3_core_init), we
> set_mode(dwc3_core_init_mode) later, please check
> https://elixir.bootlin.com/linux/v6.14.3/source/drivers/usb/dwc3/core.c#L2287

Yes, but that happens after reading status regs, etc.

> Actually, in the downstream, all the things are done in init, it
> overrides first, then masked write the deaults, finally it set_mode,
> you can check here
> https://github.com/OnePlusOSS/android_kernel_oneplus_sm8650/blob/oneplus/sm8650_v_15.0.0_pad_pro/drivers/usb/repeater/repeater-qti-pmic-eusb2.c#L356

I'd stick to this approach too. Program everything in init, then
program mode-dependent regs in set_mode.

> 
> > BTW, is there a real need to override those for the platform you are
> > working on? Could you please provide some details, maybe in the cover
> > letter.
> 
> I am not quite sure, recently, I expirenced mode switching failure,
> when I `echo device > /sys/kernel/debug/usb/a600000.usb/mode`, Ethernet
> Gadget wouldn't work again, my desktop can't connect to it.

Do you have at least a list of the properties / registers that
downstream programs on your platform? I mean, it's not infrequent that
vendor kernel is more versatile than necessary, as it is being used
during bringup / etc. I'd suggest to limit supported overrides to those
necessary for your platform (and add a comment that there were other
available).

> 
> BTW, as you can see in line 356, it is most likely that overrides
> related to charging feature. I have not ported charging yet, but adding
> more overrides seems harmless, and if overriding, distinguishing which
> mode seems necessary, even if some devices use the same sequence. So I
> sent the patch.
> 
> Best wishes,
> Pengyu
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

