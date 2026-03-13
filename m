Return-Path: <devicetree+bounces-275346-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDNwCLQntGkQiQAAu9opvQ
	(envelope-from <devicetree+bounces-275346-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:05:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7884D28587D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:05:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8545630BA399
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:02:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB53F3A8749;
	Fri, 13 Mar 2026 15:02:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E6wFI0Kg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gIDGAdSv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A26E83A873D
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773414147; cv=none; b=pyQEU8LiQaynfx/XJ37DS+ObGQciGJEe3apiD4p9VGeIcXpQUlirxO+oJ71alw3Zkz81f+vnbzQh+vOYekgvuGia4VKma3pfAj3MzFOcMifpsK8JDsNu8ZP/ZcMAZ+E8J6745Aw+SKJcAkILWbABWztkHWFDRpbgn3w8kTQy54g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773414147; c=relaxed/simple;
	bh=mzZtPop+kd9wHX66geTaApsjeGRa3Ox7dMES620e74M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZzqlRxOzyJvsAVg4RBDkB4x9eUbTUxPl0Z9GPAMXhk4xosPwAmm15IigNHMHYSvFvf6enMmxNee6tK7B91DbKfFwseXvELdEKTtIHIMQetcUtWx2YdOOKMv8nc/gUcLfh9HiLk98LV3oi9MMhzKkHhddui6edI4VUQyxKQ8PyYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E6wFI0Kg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gIDGAdSv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DAms1h2390601
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:02:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WMUq5P4ypLEyeKmuS5tsKloR
	VL58fpkquz0oY5oAxeI=; b=E6wFI0KgMwmyFaLzBNeAR8bTpbglXb2Nd1dAYC+V
	pegAe8uqUFODo/Ezs/mofND0DIxT0of5gcxkR3LF+O3An4mx1eOc+FmGLBD+xZz/
	zIMX9FJO41XWy7TSjkvgbR9ZXs9ObIVhK5vb+Xpng5L+rrFtSu8qtSSTLJTuZgYR
	+xGtA90qf3kHBRDyUC1BitX7rK8jtJSB1k+ssgz46WgpLMxa7GhbjIhTT++0yNM4
	eZ9rJcbVPVpqcg67/s43vevPJdCfqEbmj4ZXYsqm67swWanxJxCnceRNtH7sVfxA
	W/6GofkjWrXR9+zvIwt21hY3apBgYsXEOzRGfIOPAOuUvw==
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvh5m8tv1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:02:25 +0000 (GMT)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-67bcaf9a123so34477085eaf.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773414145; x=1774018945; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WMUq5P4ypLEyeKmuS5tsKloRVL58fpkquz0oY5oAxeI=;
        b=gIDGAdSvNmu3dGMvhTzoKQYwpmynOo9t8PHYL2i3S+hZM9QYQWO/MbXV4TqUBsyr/4
         3OYTKa6Z+/zUJ6IUu1zpgWN1n4eWF5q5k7XHFdpZv8qsHccf6ru8SXPNkYKURLAJ5zYz
         Wm3CWwqOjyZt8pfwiDku/MsYOw21kLetEXwwj8PDKJSEThLipv4xOkimARUSntdgjoa2
         iPjyZPTmUEe+OcFJLCtZi38vEz6u+KqJ47fYGcnLPaSQDGcAGRMDqqteEvxshicVfTZJ
         KclAcO1IKzlAU8arGqpFU6D2le/m5TaoEhOcAmqUa7DS9cC3kp97sdKvlv1NBQejpUjo
         M/KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773414145; x=1774018945;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WMUq5P4ypLEyeKmuS5tsKloRVL58fpkquz0oY5oAxeI=;
        b=bkOAL20C1MOS3C5WEZ9i6nKtueOQLKFZEObn/WqJYjsOj9X5IB/13nN2tya+BCU/Mu
         q4Sb24vaXqkhPHWe9Kw/JVJBMuD08Lx5OZg5J7Yjwp/RMVXy48wCwZ5JGuK4zoMCtbAk
         yytj6HMqp3ctryuI2O1CB+LNDNoRqroYv5lpmVSTeZhzWjBBUrxuZ6Yu/vA98+gI8e2s
         MW5qU9e2NIvz2EbwCEgxRzMCN7T2LBjFchBB0z1kuAWJhBNJEktM5y5QnHdyK05k+EfB
         YO0qRv7V71R5Cf+3iRZsCyWq6xH/fHUkEwMvJeAf5M5ejbIIOXp4wQvloFfI+A9fRvh2
         lKWA==
X-Forwarded-Encrypted: i=1; AJvYcCXwUDsQAtcZeNO8Ml6UoQIUY0VSEL8ev8pEX25NdryvhM5UujZkgYSAtMvPAm/HtSjj78zY79+uMNkC@vger.kernel.org
X-Gm-Message-State: AOJu0Yx50mE5tDJLiaXHGX3/qPw9mI2C/2K8yV3NB4AaTNY0qw67o1U5
	15baxgDgGEQ22DY5Gptl/T1vrM14/Qb/fmNBZehOR9zn0jniPy+6Kw0c/kDDPVu7QOdf2fio2kn
	37b3hKCD8V4fbn0rjjXMM/R0U8stvL5HZi4GSqSRonjGkpRLc4zLAh0+0E4VGgWkT
X-Gm-Gg: ATEYQzwjVtL4qckr6RgujGzbNu3rHGG3YJfBKt12pW8FifG7luWvhD/U0/YmqcRAV8y
	PlgovWUawHBmJQDzgRR63jCL3uX4f4RUTXKWXfzl6zBbobmeuuzf2umvnHO2+6gmsdTrDd9mtuE
	4WJzBNaor5p5/OcunBrV/tHEmnHUXJ/6syQTZQgFkxOoYe0J8RoD04CibCLYc1/CztUFaZp2pHh
	sR2x+EX8XUK7GUbo8HTmX8fIklFMEhaJvkZCVsP4X+hJ4lYuPnt/yO5n2V7MZH756KXedVL2pyv
	42j5jtbp4g4wkD+gSfnhY/icT73dvGRjuY4ldw4vv2iHKK/p+Y93vCI7MM0XxW8OOVg6RPy0Swa
	CI8yfY432bVMeTCuf99KpEFS92vG3IMq6/61EZBvZfYlhZcU7K752ipBfUtnF6ff9mpwkbMXvPU
	7V3oYxDZ7US2h7k9IDTRk5MjqPDZI2u9udHic=
X-Received: by 2002:a05:6820:6ac8:b0:679:e930:b553 with SMTP id 006d021491bc7-67bda9ea0a4mr2208360eaf.32.1773414144533;
        Fri, 13 Mar 2026 08:02:24 -0700 (PDT)
X-Received: by 2002:a05:6820:6ac8:b0:679:e930:b553 with SMTP id 006d021491bc7-67bda9ea0a4mr2208321eaf.32.1773414143791;
        Fri, 13 Mar 2026 08:02:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15635786bsm1534849e87.61.2026.03.13.08.02.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 08:02:22 -0700 (PDT)
Date: Fri, 13 Mar 2026 17:02:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 1/7] media: dt-bindings: qcom-kaanapali-iris: Add
 kaanapali video codec binding
Message-ID: <hfuqu5uwjuh4ie55zwaqqbsflhf5yn55hnjva356nivoq46m2i@o5pkjnfrwycq>
References: <20260313-kaanapali-iris-v3-0-9c0d1a67af4b@oss.qualcomm.com>
 <20260313-kaanapali-iris-v3-1-9c0d1a67af4b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313-kaanapali-iris-v3-1-9c0d1a67af4b@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: rQ1ZLIOUrM4SwDfFjUMATwf4j8WkWz-o
X-Proofpoint-GUID: rQ1ZLIOUrM4SwDfFjUMATwf4j8WkWz-o
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDExOCBTYWx0ZWRfX/BojHoUTvVqg
 sTldvauDVwSQ7C/by8KScA5Sv0z6rit3Ex7cw5Xkh0ZTJRG6PcWIAjvCyIUBR73uyIt7fPs1A4d
 cYfBHQOUp3tEj/V0yzcSp4TmJE/2DY3KfkgcaHDMAf0zmCS8l7EKqYmfUDpaZFg06re4+XE0JI9
 cGfD+/huea9SOdPZ2gk8y7ny+rgbPz3IbkQzhU7TpMoolyFdlq/3YVvfxyatLs+zCnzIW5VABf7
 FTdZzcHrGNXWD11185OkZ6n99h3HnCOZyugSTeSJVXdXjngirn1aTd5YSSKXrFc5b3rcLfgKZzL
 tvCvGckSTZYsFGP6fKnlLIMUz6WPx+mI6kK6pyTNY4fKqO5AAc4ify6c8HNav5mmo6va9b84shG
 0P96sVAvGwMSBtQIqDCuGLoupzLc8kd1c6XVZ8oRxjNelMT2IrkCjq7ePbuFuFWKAmC2dNLb321
 SRYeVAbiO3sz4N5vA/w==
X-Authority-Analysis: v=2.4 cv=S6TUAYsP c=1 sm=1 tr=0 ts=69b42701 cx=c_pps
 a=lVi5GcDxkcJcfCmEjVJoaw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=NEAV23lmAAAA:8
 a=EUspDBNiAAAA:8 a=aeCAS9ip0PrbuPtrNpkA:9 a=CjuIK1q_8ugA:10
 a=rBiNkAWo9uy_4UTK5NWh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130118
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275346-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,0.30.132.128:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7884D28587D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 06:49:35PM +0530, Vikash Garodia wrote:
> Kaanapali SOC brings in the new generation of video IP i.e iris4. When
> compared to previous generation, iris3x, it has,
> - separate power domains for stream and pixel processing hardware blocks
>   (bse and vpp).
> - additional power domain for apv codec.
> - power domains for individual pipes (VPPx).
> - different clocks and reset lines.
> 
> This patch depends on
> https://github.com/devicetree-org/dt-schema/pull/184/changes/d341298d62805bc972dfba691da6b3b62aa3ff15
> 
> Nacked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> ---
>  .../bindings/media/qcom,kaanapali-iris.yaml        | 254 +++++++++++++++++++++
>  include/dt-bindings/media/qcom,kaanapali-iris.h    |  18 ++
>  2 files changed, 272 insertions(+)

> +
> +    video-codec@2000000 {
> +        compatible = "qcom,kaanapali-iris";
> +        reg = <0x02000000 0xf0000>;
> +
> +        clocks = <&gcc_video_axi0_clk>,
> +                 <&video_cc_mvs0c_clk>,
> +                 <&video_cc_mvs0_clk>,
> +                 <&gcc_video_axi1_clk>,
> +                 <&video_cc_mvs0c_freerun_clk>,
> +                 <&video_cc_mvs0_freerun_clk>,
> +                 <&video_cc_mvs0b_clk>,
> +                 <&video_cc_mvs0_vpp0_clk>,
> +                 <&video_cc_mvs0_vpp1_clk>,
> +                 <&video_cc_mvs0a_clk>;
> +        clock-names = "iface",
> +                      "core",
> +                      "vcodec0_core",
> +                      "iface1",
> +                      "core_freerun",
> +                      "vcodec0_core_freerun",
> +                      "vcodec_bse",
> +                      "vcodec_vpp0",
> +                      "vcodec_vpp1",
> +                      "vcodec_apv";
> +
> +        dma-coherent;
> +
> +        interconnects = <&gem_noc_master_appss_proc &config_noc_slave_venus_cfg>,
> +                        <&mmss_noc_master_video_mvp &mc_virt_slave_ebi1>;
> +        interconnect-names = "cpu-cfg",
> +                             "video-mem";
> +
> +        interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
> +
> +        iommu-map = <IRIS_BITSTREAM &apps_smmu 0x1944 0x0 0x1>,
> +                    <IRIS_NON_PIXEL &apps_smmu 0x1940 0x0 0x1>,
> +                    <IRIS_NON_PIXEL &apps_smmu 0x1a20 0x0 0x1>,

It think we still haven't settled on letting iommu-map to have several
entries for a single function.

> +                    <IRIS_PIXEL &apps_smmu 0x1943 0x0 0x1>,
> +                    <IRIS_SECURE_BITSTREAM &apps_smmu 0x1946 0x0 0x1>,
> +                    <IRIS_SECURE_NON_PIXEL &apps_smmu 0x1941 0x0 0x1>,
> +                    <IRIS_SECURE_NON_PIXEL &apps_smmu 0x1a21 0x0 0x1>,
> +                    <IRIS_SECURE_PIXEL &apps_smmu 0x1945 0x0 0x1>,
> +                    <IRIS_FIRMWARE &apps_smmu 0x1a22 0x0 0x1>;
> +
> +        memory-region = <&video_mem>;
> +
> +        operating-points-v2 = <&iris_opp_table>;
> +
> +        power-domains = <&video_cc_mvs0c_gdsc>,
> +                        <&video_cc_mvs0_gdsc>,
> +                        <&rpmhpd RPMHPD_MXC>,
> +                        <&rpmhpd RPMHPD_MMCX>,
> +                        <&video_cc_mvs0_vpp0_gdsc>,
> +                        <&video_cc_mvs0_vpp1_gdsc>,
> +                        <&video_cc_mvs0a_gdsc>;
> +        power-domain-names = "venus",
> +                             "vcodec0",
> +                             "mxc",
> +                             "mmcx",
> +                             "vpp0",
> +                             "vpp1",
> +                             "apv";
> +
> +        resets = <&gcc_video_axi0_clk_ares>,
> +                 <&gcc_video_axi1_clk_ares>,
> +                 <&video_cc_mvs0c_freerun_clk_ares>,
> +                 <&video_cc_mvs0_freerun_clk_ares>;
> +        reset-names = "bus0",
> +                      "bus1",
> +                      "core",
> +                      "vcodec0_core";
> +
> +        iris_opp_table: opp-table {
> +            compatible = "operating-points-v2";
> +
> +            opp-240000000 {
> +                opp-hz = /bits/ 64 <240000000 240000000 240000000 360000000>;
> +                required-opps = <&rpmhpd_opp_low_svs_d1>,
> +                                <&rpmhpd_opp_low_svs_d1>;

It's a DT and not the schema question, but please cross-check the OPP
points here. If I understand Taniya correctly, we should be using
corners from the PLL type rather than from the video_cc clock plan (they
differ for some reason). Downstream videocc driver also should have
correct rail corners for the PLLs.

> +            };
> +

-- 
With best wishes
Dmitry

