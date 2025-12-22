Return-Path: <devicetree+bounces-248729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 280CBCD54C6
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:21:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 68E59301B48D
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:18:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD03625D208;
	Mon, 22 Dec 2025 09:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lm5Lt3Qh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aS7INBuB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C744D3101B2
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:18:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766395138; cv=none; b=q5U2YPpCnK0R54DGvOxsKVPOb6a4PsI/aihDRacTZOk7YWrCdR6rREze1Sm0V/xd+W26GHYSJz/Z1p2jCIK0fBq0t6wKNDnvWqzCB41ZHe04AKfDdgfJ5Ul+4r5Z4xYw0HVg1J28xbOUXSNxSAoM01cX5XarA7IetTZDNYAwS7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766395138; c=relaxed/simple;
	bh=oJvte0Fl2/TGPkzyyYH0wVzOrzx0kO65x5mhdguD6OY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xiu6KE1PObuf+1LP/RubCN+0S+5Y54OBw37qz3Fgbw77TPQnAiO2HpRIjfCEaz95J1rC8JKBFD5ATZqKt+EovgbFtWOwM8pzFwpD5mUhy1cPqpGeE0iIIHSt7+/xFlb0fcfksdwHeqB2YnAXysLnVCPyOVvjFpiGA/PSw0JHvzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lm5Lt3Qh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aS7INBuB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM713FH3072609
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:18:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cQtatTEVRootzTVcWO3BL+YTd+T+grHSNUicnY7vgNQ=; b=lm5Lt3QhOGasN+nQ
	LlU08EvVdpapwUhPDD4QSKCglwRWvK93fCbDwMG7NNS7l5oZ9KKwYeuyfqo/MwmC
	XntOTouJBwX4POxT7tAobPQ2bs2/7X45fJn3I6WOXTmToPlansoYXY7y7tuHvo58
	AlIOChPap0MGkfZTJKo6O7CLZ9EJJ01KdvRdEtDUan/bFQp3zojCQiL1OjyTHzZt
	BIYmzZRi03yeBUgRUSsn3oujOutH9a+euQspp4JCFwm7NJkpvm5KG7mvmMM7FZx7
	G81/Xqlbb7cZxSuCy+Bv7Y6SFmXeUVFNX5lprXZtf1czsPKnKPkrd6IWWjiopE/c
	8oTX4w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mru4f3u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:18:55 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed6ceab125so98324801cf.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 01:18:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766395135; x=1766999935; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cQtatTEVRootzTVcWO3BL+YTd+T+grHSNUicnY7vgNQ=;
        b=aS7INBuBdvzdDpRfyFjDbRoSk3s6JUssUUfXZMyVEDncPh+yW7oZDiVLZQmZ81WNSA
         Q4iejwSBk4EEiOdws0lUbx09y/Pe9Yyif7+d/f9AzWql7GUQyKcK51jwI6oWBOq5AKdW
         KvPOfT1Zue3a91+sw/Afn9uCdwbDU+cfZkaq6F+rXyYZ1cO72iK8oZAWcPGUgDY2wN75
         idsXo9gZN2zNyMQyl1FmuFQiHwZSwaif5Mujhs3Cj8r2DXQvg/sAZqdQ8HUescdnV8l5
         lf4rjGKmDMi2HJoWJHsgsARlABQisWghNFyVgaV7q/lO3itStagTVISbXcAmU+as2KKe
         I+gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766395135; x=1766999935;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cQtatTEVRootzTVcWO3BL+YTd+T+grHSNUicnY7vgNQ=;
        b=XlHhHim6F9fXrFckvKB2YtMBo4abAnfDLXJ7+RFjpk0Kpc/4xLDlqm+jg+m2F4VMSq
         xrNf0hwQDPd8Wv62oMWZZuXJsRxJaCTA8WNnsS5rKZe9uZ/pFzyEeqEgv0PZzB4zDdfj
         IMu+p1X4nae0cw0TmQfXREnawa+EHtYtHxVpd47LgmnQBZ3tLTZMmEDYjQfEUBpzdxeM
         YWmt20ko0GQDYEW1gqlqg8bF+qdWyeZa77njormcNuVWAMSjiJPtvgvSbzMQX5Uklr+o
         hijAWJ3Jkr9lB2D3KDIf9VtoB3JzPEjs7Ks9haeU2QowbVDojH+mh52rYjg8RBpAozyZ
         lAFw==
X-Forwarded-Encrypted: i=1; AJvYcCWfcqPAtEh8SWmK7qex99CZwtGOj7yxwRX38pWyt54lCmMpeJd0uleVGRBKLPOWmx6J6GbnautJyVo8@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4xACPeBASyo60q9GPj2QVUSQnJxm0UmyYUyxBFMYXYQJyyLon
	EVJGL7tU1nEaOUNX4zJBiQLoLiR0dFchd1w4D6tZOy0PR9Os5VMQMPAd/5HVaZt3jKUzu9qy+k+
	M9aLagrdEVvTfWjX7QNVndx5DEhvIjqbxpuFqpurlebysir5vUMXjSr/CtBved2M6
X-Gm-Gg: AY/fxX7BOAKxRWelv/w9o5rppT9y8BTw+f9XoHPbOzxVd4i8VvVkSMikHSWbrJNU0QL
	+gevsQWffMeHpAtUSBfK3c77tMeikbVUMQHfIc+TU8XmQwYh0d/tK2n2IntfnNc5jBUCUoHEa1G
	aqTIL+qzHbXLOTqUchRkIVyfC3Bj8LyvhgBMGsUWhEC7gOZMg3y+aE1DQwNNIEVg+Ui+QUxY1YG
	ont0+Iu714Pj8aLPOuhvfcNubo+1f8bEilorkgiMMpm5CyA/H+jNhoiwt929GQy64QKWF+KK4or
	yU2PBfVopoi2PPVVgxHSb+I3yL+91aoeJ9b/mdCxvVhBUgeOE18Z/KwFej1Qq4gmOltW88Gapip
	kQOjwmhZYSP3yllOGCsU1ktjEi/JdXHnBsB8szJRfcslclPW+louS6vs3UZbC1PcSmmswSVL+kw
	oQyxEPDcaHRigNRMdjBUv2OUE=
X-Received: by 2002:ac8:6f07:0:b0:4f1:83e3:bb1a with SMTP id d75a77b69052e-4f4abcf86abmr149173671cf.31.1766395134819;
        Mon, 22 Dec 2025 01:18:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE7pHlRylwRbLqABlOS2XbDiG2d4H1T4R1wnQdd1vN61Kd81Ky4npAzypPQjoG6inVmzVqe2Q==
X-Received: by 2002:ac8:6f07:0:b0:4f1:83e3:bb1a with SMTP id d75a77b69052e-4f4abcf86abmr149173411cf.31.1766395134328;
        Mon, 22 Dec 2025 01:18:54 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185ddad3sm3024089e87.32.2025.12.22.01.18.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 01:18:53 -0800 (PST)
Date: Mon, 22 Dec 2025 11:18:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: YijieYang <yijie.yang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/4] Initial patch set for PURWA-IOT-EVK
Message-ID: <dmdtwsdwl2bl7mn6j4d4xv76h6bo57van3ni4zt3iapq5bonsp@rxoqan4nahud>
References: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA4MyBTYWx0ZWRfX1JwInFu9JTrZ
 3V1C/WtntfnmMAPFbKfNWc07J07g+M2nvj7oNHrPQpQBFI9KRqLeV8zKpZjrVBQ4+7QM70kzpaN
 LGZD2Fajay4Q7gxUemo1O8STRfX65Q4KnNvPHYuxUHSqZ17eZ7nhwUylQ+B10YWwg1bK23LPssW
 OabKpDebpUvBcSFPH+z/35MTSdYrO0tjDSt+kOVfp6AiBzm9vhdMLjqZKIBwedSHpX1M/nZqRbP
 skXP1+A0IZuhGLg3sGRCQwuAxtJaTDK1Owo4mDhSf1DJ63VxtUYxNqfhWZYDoKvsDeUx8s/SzVN
 R5z294CPWtNcmZjqms5H5NDif/dgoW/SIxtJVCPN4SVGuy9MEyMaGCpdoqczjC3LoCfOgPHDKB9
 SEQrdI9efOkpXS2vl7re2mnKD6kupoaXlg1nFasjRbdLAhEoLW/MBlBEDX0uJzVrF2R9hiYrqjN
 RwTMwQIp+WitUpsXlpw==
X-Authority-Analysis: v=2.4 cv=VMnQXtPX c=1 sm=1 tr=0 ts=69490cff cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=qzyPT03Yx8lUgceW7VQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: g2_6FI_DZnij7iyI_uFCTcBnU6iPHywR
X-Proofpoint-GUID: g2_6FI_DZnij7iyI_uFCTcBnU6iPHywR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 suspectscore=0 lowpriorityscore=0
 spamscore=0 adultscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220083

On Mon, Dec 22, 2025 at 02:03:25PM +0800, YijieYang wrote:
> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> 
> Introduce the device tree, DT bindings, and driver modifications required
> to bring up the PURWA-IOT-EVK evaluation board.
> 
> Purwa and Hamoa are IoT variants of x1p42100 and x1e80100, both based on
> the IQ-X SoC series. Consequently, the two common files in this series are
> prefixed with 'iq-x-iot' to reflect this relationship.
> 
> PURWA-IOT-EVK shares almost the same hardware design with HAMOA-IOT-EVK,
> except for differences in the BOM. As a result, most of the DTS can be
> shared between them.
> 
> The changes focus on two key hardware components: the PURWA-IOT-SOM and
> the PURWA-IOT-EVK carrier board.
> 
> Hardware delta between Hamoa and Purwa:
> - Display: Purwa’s display uses a different number of clocks, and its
>   frequency differs from Hamoa.
> - GPU: Purwa requires a separate firmware compared to Hamoa.

Is it just a separate firmware, or does it use a different _GPU_?

> - USB0: Purwa uses a PS8833 retimer, while Hamoa uses an FSUSB42 as the
>   SBU switch.
> 

-- 
With best wishes
Dmitry

