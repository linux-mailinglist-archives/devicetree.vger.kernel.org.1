Return-Path: <devicetree+bounces-255778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 362DED28784
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 21:42:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E1CD630019D8
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 20:42:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04699322B74;
	Thu, 15 Jan 2026 20:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aNvyqj7s";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WrpfkZvj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F50B2D73AE
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 20:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768509755; cv=none; b=jDecbjFEWeQnjq1CT4QLS312QWPup/zv5/mggoxVpX0t7jSFaJaa7r5wmp3DetXaNSdKI0cWhvT3Q+nAQGd8jLL3NDHd+4uHODe9KeByaLILCm+Ri74s2O3xhT4eSUVjEvYOJ5ZUrUNLEXlFfRhrUFMRNQRlR5tptvT3cFjg6Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768509755; c=relaxed/simple;
	bh=/QXbmoxrKHcwhwSMMmzqdaKLWqoUg+vw5fLnNTTyduw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sUC8rtAJmtMHafdvJRCMnJ8tuXOO7MsmiQNCQ0h0+j7QNh/TprszHatdvWOqZ8/rVlpsAAt0ETtkcQgJIux6etbHGBtPzU+4oj3pFt2DuWV31bGF+uSbEHjslwKwIUlfAwKmvWZfSEczfP6Z6pN4qdTVoUpGZXAtPKTANx8rQwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aNvyqj7s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WrpfkZvj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FFYGJH2866215
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 20:42:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CN9KFL6/el4qGCt2ZWh84syvyczP7Vcktf1ONlUr/yQ=; b=aNvyqj7sn3g+pC1V
	sppHr5oxCpWuOVwbi04c4nuf6dBHDCLensJb+am/ys6KG2ny9WT5mRxBNJ66HQ6e
	q1Z+oSTHkd9D9Z5Vr+uqtkYZCzKQXMgObwo3Dpa5qLlm0cS7I1Uug/HTsO8ROJ5p
	nqJT6nkII4u9wZkxMZllOzAO7H7XlzaBR+vpPXeJlVg+jbYQE+TWGiJBCS3HU1pN
	tgwSWeqoSsVIA4nFNhnc06N8l+/VI+Ng2KdGZjs3N+vQd60zlOalObZYcsDyzsOx
	h0E9OuseE9n1AyIcTLUHhXWV5l2BZLu55e6LM8kIA8EmTm63Zf0skbWzppVzADoJ
	YUvYaw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bptu2jdmm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 20:42:33 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c1cffa1f2dso631956885a.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 12:42:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768509753; x=1769114553; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CN9KFL6/el4qGCt2ZWh84syvyczP7Vcktf1ONlUr/yQ=;
        b=WrpfkZvjYMYWfJbMgSjtSaaa14t+rIN0z+XNpgDL/w1uZYlTsQ9mK2UwrX5oHRwkDn
         d9j5i0Qyv8WurQgxJhsgLA8b/PFHVBSLz8Ssh7AXGAEXFc5k2Z+7bGWZBCEN54Bo0HFd
         wUcjE/mGErcqCIzpsLniOYJa/Ph0R3DLSVHH99LaJjwK+Jj6D2LkJiJkLe+6TFPoMPiv
         d4r6WXb0fJW1iNVXk/Dq2xKdBE2wLlTdZW1Pf1Tv/sQJVGQOQAiOY01XpdhrFzMDsmAc
         rsud38Io8Ut3ehgcTdR1/PRit+xCHoid1sKRgUJADXOtqrFu8CK97fjmvFH8weBJRGuY
         cV/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768509753; x=1769114553;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CN9KFL6/el4qGCt2ZWh84syvyczP7Vcktf1ONlUr/yQ=;
        b=Y19gAQb0q0SJ+Gu9k6fzsFm7p8x1Mo5ubj78lVVFnVwEi1XpkpwlCs6UurGcw7/ew1
         9zeGKM1VAYFUVUFLTkWXS0NZrXKH/D5GGyshqVV8GGy+lckcXZkQa6+tCD3YqMhspNmf
         FmRGTBIIw0QBRDvPpsLbduAwyTVFBmvg+RsJ809ComttPpUPRs/cYSAv+BHHbM4pt124
         8brXYgTQ5OvyEHXVses8/ZdZEd/t22272tlsfUKKoP6yaX09f6V4hI9XfNYsqaWxGgwV
         N8zy01Py1nE1qEWssqNreZ5TuNtAecVHGcmUHV4o3M2mbeh8Qd3zKbxbDqQgwbSz+peC
         MfzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVGxZ7iiZAVjUsHLPywcogrC2Xt2mt60vOUMso4bYrjjuGLpTE/KHvmGoLDcHldlwnBx1tsqeaDVjP@vger.kernel.org
X-Gm-Message-State: AOJu0YzGgR7mW0zzYunTXb46CH37Pa215EGkNzScA1qTDgYGcTp/uN9R
	+5jOUyfNhlbHy47y8fuvsKU8aG8tyn3T4gtnoUj4Yz/d5xetULePNccHSMzkatsd/zm9uZF/qTU
	RvliYUTAiwsfsWQLPcInoOrndOe63nGaJnGZsqNL3/HDew7DZShkglLpZRU38z89+
X-Gm-Gg: AY/fxX7yVucjdkRKiDJwY49AFXx2pGb0k86kfv+5AMiVGPsbkkuLGeLdMiL1bHNNkZZ
	sM4OkP/8Noq3FPke785dOkIz7iynAukA+RHfI/luVGXvEGoTGlRyjpSulQ2B4L2jzQdocwC8869
	6WrvLJHIVJ7cSaqXcBJCqlRljF1yY1MjzmH46oYhDHZ1wBO4uyZfhk5lMS8IT5wGcodr4CwYSeh
	LiuIgdeghWeFikc/H1TJsrKbpyfFcGIMwhhMpMtOHavwLKq2Zw3/u99E80rTAqDBlzNOe9H+Uzr
	SwwGjlBip6ow5qp6f7OqHZwRgiLWu0e4x03CLdSYruld5bFu/NEZL9tHQLPPLgoG+98Twq1aVaz
	McPmHpy3s56/PYNq77S8DsFQGZsMaxyhvCuVChQXHh6TNoNaIOF2F4dK7sqTejHTdNJxQyvWt+i
	//sqjByvsk66MSwQbC+zcM07c=
X-Received: by 2002:a05:620a:4591:b0:811:8bbe:7a3c with SMTP id af79cd13be357-8c5919e2c16mr586135885a.23.1768509752811;
        Thu, 15 Jan 2026 12:42:32 -0800 (PST)
X-Received: by 2002:a05:620a:4591:b0:811:8bbe:7a3c with SMTP id af79cd13be357-8c5919e2c16mr586131785a.23.1768509752277;
        Thu, 15 Jan 2026 12:42:32 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38384d3fe0fsm1589771fa.3.2026.01.15.12.42.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 12:42:30 -0800 (PST)
Date: Thu, 15 Jan 2026 22:42:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Subject: Re: [PATCH v3 03/10] arm64: dts: qcom: kaanapali: Add TSENS and
 thermal zones
Message-ID: <vjx3bd75zdgdh6hzhrmlv5tlarnf6ea3yklwhg7jx6momknase@kstxwngyicd3>
References: <20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com>
 <20260114-knp-dts-misc-v3-3-a6cc9e45de93@oss.qualcomm.com>
 <4c44mmkpsnj4cn2eh2xzraiw73xmhtx4qm3xiyhecm4vyou7os@skyj646r63d2>
 <3cbdae12-af7f-47ee-89dd-6c00660fa6da@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3cbdae12-af7f-47ee-89dd-6c00660fa6da@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDE2MiBTYWx0ZWRfX+V6HZG8hCJob
 HSlp/6GcJI+m3TL9yNL2LrudlRVe7ioKX2AKZiC3Rkz79PU+YppQZwm24QTOxbnODkEdWH9dJaf
 W8m6P0AwuhD7+4WKsgC2R1TAWXSZ2hK775Y1vp1+tGscutZC5TaRKy4p2hqkpdcXSHlz5WqDN6K
 UnJrqP3r3G9O0Qzc7BbQp0FrMraJ2oDQgul3F/op3UafDsswpqodKmUhoIeGCv8k+B908QSLtxy
 qlTfqKs74FBIkFsjIynHaLV+MHrRqJMPocxxaXWcZSfXGSt/CgC+TyE66hlyNXIFCJHY0WvlzYL
 EsxayuAigesJjGDfkLSOi60nV45SQQvZRRMmDHAAKgUlchwDEC1d8ro9QwpTi1CuUWt+sfO2IIP
 wkjDnHxT/wbYP4Vme0AVGUBDHQRb6WeS3rA6Nze12iwCOm3g3gw9H3j+3WUKLMzdnEGZdFPiQ3/
 TZEeA9V3FZcxvWuRB7w==
X-Proofpoint-ORIG-GUID: fRyYua4T99bxqDP2nK2sWQ3Zx8LLJfxc
X-Authority-Analysis: v=2.4 cv=W6Y1lBWk c=1 sm=1 tr=0 ts=69695139 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=_Yo9kbbprxnaU08VRSgA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: fRyYua4T99bxqDP2nK2sWQ3Zx8LLJfxc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_06,2026-01-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 malwarescore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601150162

On Thu, Jan 15, 2026 at 11:22:57AM +0100, Konrad Dybcio wrote:
> On 1/15/26 8:09 AM, Dmitry Baryshkov wrote:
> > On Wed, Jan 14, 2026 at 10:49:05PM -0800, Jingyi Wang wrote:
> >> From: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> >>
> >> The Kaanapali includes seven TSENS instances, with a total of 55 thermal
> >> sensors distributed across various locations on the SoC.
> >>
> >> The TSENS max/reset threshold is configured to 130°C in the hardware.
> >> Enable all TSENS instances, and define the thermal zones with a critical
> >> trip at 125°C
> >>
> >> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> >> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 745 ++++++++++++++++++++++++++++++++
> >>  1 file changed, 745 insertions(+)
> >>
> >> @@ -4795,6 +4879,667 @@ pdp_tx: scp-sram-section@100 {
> >>  		};
> >>  	};
> >>  
> >> +	thermal-zones {
> >> +		cpullc-0-0-thermal {
> >> +			thermal-sensors = <&tsens0 0>;
> >> +
> >> +			trips {
> >> +				cpullc-0-0-critical {
> >> +					temperature = <125000>;
> >> +					hysteresis = <0>;
> >> +					type = "critical";
> > 
> > I'd really suggest having several "hot" trip points at a temp less than
> > 125°C. (And 125°C for critical looks way too critical for me).
> 
> LMH and the firmware make sure this never happens, the critical trip
> point is a last resort safety mechanism

Looking at e.g. SM8650, I can't stop but notice "hot" trip points at
110°C and "critical" at 115°C. I think, LMH is a replacement for
"passive" trip points. But for the thermal shutdown we should give users
more warnings.

-- 
With best wishes
Dmitry

