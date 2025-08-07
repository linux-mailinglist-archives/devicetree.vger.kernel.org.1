Return-Path: <devicetree+bounces-202469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9A0B1D967
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 15:52:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 13DDE173564
	for <lists+devicetree@lfdr.de>; Thu,  7 Aug 2025 13:52:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23C0A25DB1C;
	Thu,  7 Aug 2025 13:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fL+ZZ/nQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9A025D202
	for <devicetree@vger.kernel.org>; Thu,  7 Aug 2025 13:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754574741; cv=none; b=Qh4eeb99ffp0JvZyOPUpX0gtmTaimhsPNSdqpl1Jc5PTIijdZhEOvgCNiQ386vRt5OP6QqCpVnruE7cV6p0CtxvjwJ1V6/tYLwzEvCO7b4q+pxmVWA+ZUlG9nvvlkSaycqQGD3E9++b9B6Q2V8Jc3YZYtK5vLi2yL752nK+oGxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754574741; c=relaxed/simple;
	bh=3RJmbFyaEI/2Q7w0DwSZjNnb3wdVv2MTkMkwaeC/i14=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jdBfmHLrYApL0KfJYtOBOFzlQAr4bPSll0x8g/tKt5Msb4nNxtCtDN0y5BrVMZBXql9Yyu0nxGevoRqlxMrKt760IHK5Ka8jLzlu9YTuqG/Dn+hI/A06eOPZL/kniba29ckZnR1imRBEGl9g9ZznWS9/9Ijbd+S8BN5FYuZ0Aj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fL+ZZ/nQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5779CvVF003579
	for <devicetree@vger.kernel.org>; Thu, 7 Aug 2025 13:52:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rx2HlkhZ5XkdhRBXb9tvkQ1L
	h/1Dq2jL/Wn7+DWmLHM=; b=fL+ZZ/nQQyDavnPSVlOqAFsFopj4WqOMip1q3L3z
	KKhq2DQ3WVJg2G8MOLXnT502V1wrxmy5HGTxs1OCW/VSlbA1H7bNyqtl6uj7+Ga/
	MGOvBTmRBE2dsy/h75ql3hnLQfmd2KYjFiK0M9f0VGR3YA2dzOdFb11w4v8wr5/E
	ifrYNfotJa9YAScxKFO+XwxOEcpiExapssaYQzkct/E86XoNClncG/4h2Wvh3mTa
	GBHsYJxpFBAB2a4avfUIxSPcwNO4hgn3iHmotKNVlIe7vxvyihii++g0GubTuyYi
	+X/ii7mDBIHkqZNEuD7dE+wNOMk9vqxch1rReb5zCW6gsg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpyaeef5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 13:52:18 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b08431923dso22817221cf.0
        for <devicetree@vger.kernel.org>; Thu, 07 Aug 2025 06:52:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754574737; x=1755179537;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rx2HlkhZ5XkdhRBXb9tvkQ1Lh/1Dq2jL/Wn7+DWmLHM=;
        b=Aj8SaFMy2w4aDp+t8Z53UIvZpwd41L5m0QkVy8nuAZJvTpNN4er5gefjf4IwlVG9Dk
         jReT5qKA8Ei6nK+sw9svnAvB+MuOgwtj8n7ziCX+sSbvP42GNa8BfNS4xKuYRcKo21D/
         kRFPfaWBIDkT5IFGqH2/sOs3p6RDrtA5LjLEpR5hqyuT3dFRuMxtvZD/k6Hm4wSwLMF/
         TXSgw3kGV7U23YyI/e4N62clczaU1wW28lxw99dSjUNbqz4MA96KKXkqcpTZ040/Wv4v
         iKy4vMR619W3vMhU9dfTdP49okHh8oZupxYb6z3QwcrVQoPH/PrUu4Pqb+za2QG3xaCt
         GIPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWVk1Yi3V9Rx3twCeTVFw7ae7r2fVVdp8Fnl6wCfJKKUyDlQRJDDZJSIKrNAPQT8Sr7kW1jtNbfl5WT@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1T/BRhdNMchAol2ELZBF72K32/Cu9IGUNfmR4USb28I7B5nH0
	ckR4xmXWPHUhHn6pi5KmuD2Ch8b+92lgHK+X+lvcim78Cx7mSXQZv7k91aHohs9mmozSGEiIubB
	pkKzQzxeO4zuge5SICQUw0HKnV5xneIxPzacVe4KVqjUftBtG2tMldCl/btBaxMAv
X-Gm-Gg: ASbGncvZNV1fjJ1tWSM35FntpHoxNh8yaG48bAHJNs11mpjrRN986MEfa9Pn5SxxEzp
	CaNccBp/1waJ8850NwvExs4pjFtqRicQ8gH/YSK9dZIy6p5OJFjoZeETluOOMVIOd/OBjFhuEBC
	EnFWOxKx9co04qDprLM7FRpzdm2XesC3pxzTX+yeNpIxUuqDmJXtO4q2LtP7eScQGn2nSmlUnnu
	mKDTWHYh6bV1My5HRKlvAeP+qHJerfMokry9EHn8za2B2rVvq7dE8Z1PcOpLfkSMRqaMf04rl38
	FYgkp2LlwkzOspgiqhLF5VS2TF3kU5g5N94ffZvpVCNBC1R+wT3B91AxLeFIE435luVj0A==
X-Received: by 2002:ac8:7f48:0:b0:4ab:aa73:9600 with SMTP id d75a77b69052e-4b0a16adddcmr44580691cf.51.1754574737236;
        Thu, 07 Aug 2025 06:52:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH8h/LmSHvY2xjExIpWEd1N45JRbMyTF9ezrl99kb/xqJfV6y+UvYKQinxMnY+ofhU4FWNwBQ==
X-Received: by 2002:ac8:7f48:0:b0:4ab:aa73:9600 with SMTP id d75a77b69052e-4b0a16adddcmr44580261cf.51.1754574736758;
        Thu, 07 Aug 2025 06:52:16 -0700 (PDT)
Received: from trex (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458b501f22dsm145939755e9.0.2025.08.07.06.52.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 06:52:16 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Thu, 7 Aug 2025 15:52:14 +0200
To: Vikash Garodia <quic_vgarodia@quicinc.com>
Cc: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        bryan.odonoghue@linaro.org, quic_dikshita@quicinc.com,
        konradybcio@kernel.org, krzk+dt@kernel.org, mchehab@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 5/7] media: venus: core: Add qcm2290 DT compatible and
 resource data
Message-ID: <aJSvjqfQw3kNrVVH@trex>
References: <20250805064430.782201-1-jorge.ramirez@oss.qualcomm.com>
 <20250805064430.782201-6-jorge.ramirez@oss.qualcomm.com>
 <4chbcvub4scnv4jxjaagbswl74tz4ygovn3vhktfodakysbgy3@kukktkwd2zsr>
 <aJHgh8mon9auOHzi@trex>
 <aJHqpiqvulGY2BYH@trex>
 <to2hrxml3um6iep4fcxhkq7pbibuimfnv4kfwqzlwdkh4osk5f@orjzbuawwgko>
 <aJMMhIqNupwPjCN+@trex>
 <0248afed-b82d-4555-8277-e84aacf153fd@oss.qualcomm.com>
 <aJNTigOMy1JFOxot@trex>
 <fcdd9534-d494-3fdb-dfa7-1d15da6f697a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fcdd9534-d494-3fdb-dfa7-1d15da6f697a@quicinc.com>
X-Proofpoint-ORIG-GUID: Uw4HxgpT6OK5OXXraO4k4uHz4kLKGVgn
X-Authority-Analysis: v=2.4 cv=MrlS63ae c=1 sm=1 tr=0 ts=6894af92 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=kj9zAlcOel0A:10 a=2OwXVqhp2XgA:10 a=FCMjqHPL4a2t-UUgg6oA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfXwvumWvE2V+2T
 FQE5YJ0KVEd7HqP59nO/ZzlRIGJE2i8uoMHO41ghSwaQvewtAGq8Oi2fUbJD68u72yid/T4JP2G
 9Swk8fMEEIHD6LTwdgqYUtlT0JdEa8yz6mt1bgYD5tcmgwH6d2Ivd460TLcaTVadtCT8/DUX62B
 gPurGOVWHoH8iPHOCQXRpx0PyOxV6Blqv+pVCbhATagaT8sJaPLZSo070r/bARrHp/6YM4EKaPb
 3A5RcedHbCkNpGnlTaIDbGU1aoUkxGEwV1+JiGkJZP7JqLEJPIUjNVFjh4VZh4yGb/b4Tm2iOuu
 6mXPIDJRdqUog4yllEnc6cqiK3/N3z63dzT8ZWqkqt92o4UB4j6s2sPosfA0eH/M3B9ecHcUn+I
 iefRUvbM
X-Proofpoint-GUID: Uw4HxgpT6OK5OXXraO4k4uHz4kLKGVgn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-07_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 adultscore=0 priorityscore=1501 phishscore=0
 spamscore=0 bulkscore=0 clxscore=1015 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009

On 07/08/25 16:36:41, Vikash Garodia wrote:
> 
> > It was agreed that this complexity was not necessary and that we should
> > just drop <6.0.55 firmware support (which would in any case only include
> > video decode).
> > 
> > And so on v8, I removed the above.
> > 
> > Now I have v9 ready to post it, but Dmitry is asking why cant we have
> > the v7 functionality so I am waiting for direction.
> 
> the issue is in firmware for both encoder and decoder. Didn't like the idea of
> driver carrying the hack for a firmware issue. Just because, for encoder, we are
> unable to hack it in driver, we are ok to have it enabled in a newer version of
> the firmware, we can follow the same for decoders as well.

if that is the only reason please do explain what do you mean by hack.

