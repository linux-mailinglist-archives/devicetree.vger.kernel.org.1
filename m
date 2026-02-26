Return-Path: <devicetree+bounces-268633-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBmPKcvzn2kyfAQAu9opvQ
	(envelope-from <devicetree+bounces-268633-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:18:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4990F1A1BBD
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:18:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1A84E3070B25
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:18:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B440738E11C;
	Thu, 26 Feb 2026 07:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ajv8KJeU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FH2giXHj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9A238BF87
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:18:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772090282; cv=none; b=mVAj/oomK6JgrAm9deqC7ACIBQKTAAcRfcCuD7qNaPIWuUzHEJ3fCyKs3DHCTPR/N6d2EDSPpgbpf24gbQdyPnIG2evATNO7ct1ERyuBpXaSpxicn1zrtpPjzV7Ed4iurT/BV7KotNBLEvq3vox2qxym3hDahoyR5cGih8+Nh0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772090282; c=relaxed/simple;
	bh=XM9hB/URXNGn61ZH/yTKzk+yroQbXcWWs/AUIbcpmdg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KC1KIIZR9lLwv7VIuT+6UmYkDMwU9LqX/t/C63oNQOdFX9F0qbZeUL7ENEs/sN2B7dPvCKMwovVu/Rpd7mLIVSGKKpk6Ln4EivjeuGoPLx4BgwszWN58Bp50SNwCRlOBbvpxiKhAlyXSu6n2V4saSKGcBsuGrFkpS/V465cL0I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ajv8KJeU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FH2giXHj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61Q4UujI3776984
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:18:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=90FpgvSx5KtfKkkXjvwE+nfk
	TuDUvktmJOzyvjk4Jtk=; b=ajv8KJeU7Jc5gDoNjTLK6GA0SJZmIE4lI4cMPb4/
	fn10H8xLApCytCIiuPt2CP9MgeXjXzj/SAO934sis8CMHB9vLNoloyqKADmRnSR9
	u47Kl0StA4FPKM7+H/+GGQ42CYFn9yoa7TMh86q3He2BlV6ejwH181dqPRPn5kB+
	mYNrteX4gQgdSCVTtgaJu2zjWAiP/MsCVmeTDO2W82XC4uMYjOMhF4o+l7G7ZCkr
	PgoXQbIW5nA8/hEE3+zm9ezknyv75hZCR9VPi1IvlAo2L56t7hGPTaDVep6GHf4t
	CA8sUgBa0XowpimfmOPmtR5pqLkbsyMdtiVjuD5rjC4QqQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjae0s6by-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:18:00 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb5359e9d3so468177885a.2
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 23:18:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772090279; x=1772695079; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=90FpgvSx5KtfKkkXjvwE+nfkTuDUvktmJOzyvjk4Jtk=;
        b=FH2giXHjeWijFW6sYHrbhasQ/06ZG1IhrpZvLkopTpOTUZrL9tjj+L7j3xzEnjrQv/
         xLYMMBlSiuflaptAiJp1+QbIr+jaqGgfTUtTiDAoM5K3fQHXeF4Q0df6zazON04xbk4m
         6WWku2yQ2aP4+rmJu6KhJHgiCUw9GZIl8rGMhA4Lb0fTl5eW7Nuy0cPr7oYla+xlT2ku
         beuKHhtIGBgZbFBT6x15iaweRbz725xdEEjhKUiJjCR4tIiAiAwp9l+7hRCFjd5ZoaOv
         UxVelnL9DhnHgiZihfT2jTFs1PMgg29aqWXkH9nhMjM0ISreg+WsjAK8TfuTOrzSin1V
         5wtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772090279; x=1772695079;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=90FpgvSx5KtfKkkXjvwE+nfkTuDUvktmJOzyvjk4Jtk=;
        b=JUqWpbIXkKkTnxphO5ccb1PMmGXNlmc6gvmjPiyT1aajamm/BjU0rX2UPl38I04QLF
         yVLxpTQuQZIPnWPIeeZScQsSAIDq/5Wyy5ML+x3sEOpYtTsiR01sJY8mKl+/DOQT1/0C
         5oY00rEdztG62LYB15yP9emKgrkE56YqRJ9Cm62RtKbgNP5ftBXvszTQPjCnoLC3OekF
         oDLEPnemE7cpHiRJekQGErmeBWq48KjGvZ+8PdFPpzsujqMYrHor1uLQHL6hmQJMSJV0
         W5jFAAE5KyarQ1IdUeVbGNYKZhnOOw4yZw2eF31Ua1I3PXQfRmA1YhxayuARjna/Buub
         qHmg==
X-Forwarded-Encrypted: i=1; AJvYcCWu16zpQGPpBApZ+R5oY4SBPEjcOOs2qrjaWACJtBfVFTscTMBIY2TT6/caEV5OA7rBnc2rDz3m4hX4@vger.kernel.org
X-Gm-Message-State: AOJu0YytlDZXFgphnAFxaHj8SATAtIv/lLRkSqvdJ9YArD2yK+INd6da
	egnTtkVnwlmR0h74pnFyyg0638T04DS2LWBUeT5OVz/64ZoEXPy8dqteHoDRKY6qlNgFJ9CYZHe
	iWG/YgZs6uyQ1uM0QbAFY4hETWaOCByDGaYHnyuTlla+a8szwLCuKNke8Vy7L8cuG
X-Gm-Gg: ATEYQzx9BJqKJCnAh83eXAHMRJzc1CLE+TvQzK4qEg+TRXB+V/U+RJ9BiNId+ZYBr0A
	c8sh0kt2uECTiwFe+nXMizlIRt2YEvISJqyywcr5KdxF/IDNlTsoViFoUkbM/3ablgA4UoN6vot
	hY4MGgH9D83obfBMWN+Vw63wl4K8RY/S2NsYWI5f68rJoqFJuteiA7MhBevAQI6uTxswuzfAxv6
	eHWamP/e/EbH/EZvuDQHQA5v7hDXYl9+yNteiOVmo5Wi66K6GXJZEnTm5yOqJ6tVoWhACEnSE2E
	MD/FsTDwJK6SantQia+gqVDhCm5Zoigr0ObDNnR5CGMz03iZ7rDLHeK4BQO4bEOWHf7diJnCk6g
	AAWC8KFJ6FF6x9VsOU2EzC3wL+mi+jELCYvVRbfYfgztC/NZLC5K95rKmGRl1AlRNNwlwiwy1QX
	2TG+H/XrUfGVI8drWBqFq11inrGj5Us8mw8Ac=
X-Received: by 2002:a05:620a:1a21:b0:8c7:139a:bf48 with SMTP id af79cd13be357-8cbc1190e3fmr116305485a.49.1772090279491;
        Wed, 25 Feb 2026 23:17:59 -0800 (PST)
X-Received: by 2002:a05:620a:1a21:b0:8c7:139a:bf48 with SMTP id af79cd13be357-8cbc1190e3fmr116303085a.49.1772090279034;
        Wed, 25 Feb 2026 23:17:59 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a109e33ae6sm464908e87.10.2026.02.25.23.17.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 23:17:58 -0800 (PST)
Date: Thu, 26 Feb 2026 09:17:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/3] clk: qcom: Add a driver for SM8750 GPU clocks
Message-ID: <zw3wofbrqfy7jxpyergugyhuwswue5s4f5fe3j4kuaapinn5kz@czssyedtcqjx>
References: <20260220-gpucc_sm8750_v2-v3-0-6c5408564c3c@oss.qualcomm.com>
 <20260220-gpucc_sm8750_v2-v3-2-6c5408564c3c@oss.qualcomm.com>
 <pis46xtmxgopk4w4kvu2qbbtcwchnbepaqaw3lbtfbon2cbjls@xjsfo65uj64l>
 <745022a3-ecfd-42c8-a01d-5861a9f479f1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <745022a3-ecfd-42c8-a01d-5861a9f479f1@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDA2MyBTYWx0ZWRfX+SuMf0/+sJdk
 JOogPkoVg4AOOdpZ9RI7zveeC2EwlaVmGSYv3+WBd8Gu+j409ov09fO1LCaqfc1NRQlfuutvGVK
 LOIgX2xX6YUC+j+kJntDRCF3cDxaAW38nnhHLOuAZS45kqSLrI4p+Q7nWb+9aXS2F7SJTa0YWOm
 KPQS0fI1mYX2EBUh2iurmG0epg6uNAJDeazh/lpZC1wBFyiXKtwGmb09fp2X9TBKFHVn1QSP8lC
 bmjbm9re3zeofW65j4N+uo4MBTUEN2WHnX8eBpHsJm7Lm+Iit7biN02htYlokS0VKmMIBW5Wlnj
 bF4Y7UJ8oi/PFL3rflySEzbVLEr1Z5T7p9hh4P4pcKBCNsVYsYlJE45aK1FcxYU+yjhCdFvmsQg
 enc2fbe74u3MSu5fbpVzl2soLt2SgewGNdqmaOSSXYZWMDspIpisa58TC83nOIzaQqSaR4kUVzx
 EObwAlEbbBtCR/1iODw==
X-Authority-Analysis: v=2.4 cv=O7Q0fR9W c=1 sm=1 tr=0 ts=699ff3a8 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=EZ8H8NPY6tu1Lwj6EPMA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: COaN7yoUyKF6k3J0y_SEgiNTjZ5BWuiK
X-Proofpoint-GUID: COaN7yoUyKF6k3J0y_SEgiNTjZ5BWuiK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 spamscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602260063
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268633-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4990F1A1BBD
X-Rspamd-Action: no action

On Thu, Feb 26, 2026 at 10:15:42AM +0530, Taniya Das wrote:
> 
> 
> On 2/23/2026 3:06 AM, Dmitry Baryshkov wrote:
> > On Fri, Feb 20, 2026 at 11:24:21AM +0530, Taniya Das wrote:
> >> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >>
> >> Support the graphics clock controller for SM8750 for Graphics SW
> >> driver to use the clocks. GXCLKCTL (Graphics GX Clock Controller) is a
> >> block dedicated to managing clocks for the GPU subsystem on GX power
> >> domain. The GX clock controller driver manages only the GX GDSC and the
> >> rest of the resources of the controller are managed by the firmware.
> > 
> > You missed patches for the gxclkctl driver.
> > 
> 
> Yes, my bad :(, I missed committing the change.
> 
> >>
> >> Update the compatible for Graphics GX Clock Controller for SM8750 as the
> >> GX clock controller is a reuse of the Kaanapali driver.
> >>
> >> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> >> Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
> >> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> >> ---
> >>  drivers/clk/qcom/Kconfig        |   9 +
> >>  drivers/clk/qcom/Makefile       |   1 +
> >>  drivers/clk/qcom/gpucc-sm8750.c | 472 ++++++++++++++++++++++++++++++++++++++++
> >>  3 files changed, 482 insertions(+)
> >>
> >> diff --git a/drivers/clk/qcom/Makefile b/drivers/clk/qcom/Makefile
> >> index 6b0ad8832b55f1914079f15323b8cdd1608ad4c0..817b13f5e78cb534e165b09d95e70cd4a58b12bd 100644
> >> --- a/drivers/clk/qcom/Makefile
> >> +++ b/drivers/clk/qcom/Makefile
> >> @@ -180,6 +180,7 @@ obj-$(CONFIG_SM_GPUCC_8350) += gpucc-sm8350.o
> >>  obj-$(CONFIG_SM_GPUCC_8450) += gpucc-sm8450.o
> >>  obj-$(CONFIG_SM_GPUCC_8550) += gpucc-sm8550.o
> >>  obj-$(CONFIG_SM_GPUCC_8650) += gpucc-sm8650.o
> >> +obj-$(CONFIG_SM_GPUCC_8750) += gpucc-sm8750.o gxclkctl-kaanapali.o
> > 
> > I think, If both drivers are built-in, this will result in the object
> > file being added twice and, thus, a conflict.
> 
> I have tried compiling both kaanapali and sm8750 as built-in drivers and
> I do not see any conflict. Please let me know if I am missing something
> here.

Hmm, I might be mistaken. I will try compiling once you post the next
iteration.

> 
> > 
> >>  obj-$(CONFIG_SM_GPUCC_MILOS) += gpucc-milos.o
> >>  obj-$(CONFIG_SM_LPASSCC_6115) += lpasscc-sm6115.o
> >>  obj-$(CONFIG_SM_TCSRCC_8550) += tcsrcc-sm8550.o
> > 
> 
> -- 
> Thanks,
> Taniya Das
> 

-- 
With best wishes
Dmitry

