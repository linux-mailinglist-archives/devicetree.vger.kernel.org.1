Return-Path: <devicetree+bounces-233161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D61C1FAB8
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 11:58:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8291D3B0FFA
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 10:58:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B14F73546F0;
	Thu, 30 Oct 2025 10:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cdCQm3Uj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZTtLbyD8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D04D351FB5
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761821924; cv=none; b=jopJN6AbnbAy5we19DLAYCqT6O/GbPihDYme9lOnm8GedWx/7H/ihUrUa86ATj7IemZ744LnXiCNNbZa925TpAx7NxieP9P8HA7j4t75dtDA1qoRmjvwKeTxEgOsSlpCPOTZpHfoM1r50vCUKFEk2NXVFxOtZj55VtmJOzDFOIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761821924; c=relaxed/simple;
	bh=tR3qQbM8e7YJICskQfi0Ipn09MpIviZyprnuDoe308M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X0yIn+uQi0rrsNR7r4gwItqjGBI954BMlh6A4iLDi9kXK1wD0Zz+c52CBIzpDebcpbywE1amj4XDjBLeKjLysCsNvf2TToSQEx5hlc38NSp5UvwG+cU5b+Jk2o58f+Y9em/0YCPvDBLHeRh/sdreKymF+TAoo6b8o7NWcuQVLf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cdCQm3Uj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZTtLbyD8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U7kukb1655576
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:58:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iPwgtHcgJ7J7nFNB+8+KqtcjajFGZXrHoBQyN9cdZmg=; b=cdCQm3UjOPs7uoYG
	eM3DsHxorUuLCdHkKoJOYgZYdCH3T9p1Wq3DkUWHu5nMBAIVPyLW/3tbIBAe4Hnf
	fyQLqE8zstRxLUpHq/hgcekP8JHRfGlJNqI0gXJWFPSzXQj/SUSp2ucCiVLKSQ8l
	gPlNpkbPgCoA5GZHVWj87b0OvD9EwV8OIy1olveVIFPnu0THEiNnZJXRRSvebLYk
	sBMxWKy3hjPfeXcezjfmByEt4ajZJshdPWQiJeY0HLkoA4eQtw6c33aRLL7U8PB3
	2sPKUkhtUb6ZEz3BQ1bmTA4uCpQs4EW/vSx8opaoqIhgO8HV/uKHTPPWUFPPUcDl
	Qv4jMA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3tptt29q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:58:42 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88020a3e4f2so1558556d6.3
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 03:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761821921; x=1762426721; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iPwgtHcgJ7J7nFNB+8+KqtcjajFGZXrHoBQyN9cdZmg=;
        b=ZTtLbyD82hdOjGDshMLM4vHHu2E2PCT/4Ag4qPPUSG9A8qQyIHM3RVtfExd+IbA5nb
         w3+O1P6JppRge4jmvVtB83WkDYnOkcqhRNHZL25UR09aKbc5mbuGAsTmvdSgQR9SF+z7
         vz1F3YIvBTP0t0E0vX1cohoEE+PYdYypYiV5VNbJorVxLhznHv+J3OEJpTDrZAvPNhye
         cPfs2JChc32ivABfcWPWcuWdBKxQUEfDLpy3UgT+W+/qz8IPASYhRr2LdcU6vh/qvQGJ
         h92/pdNqS3++PZiOUGwpgn9LDGDQQWabjyD3UUclSB5XvXTzv3s57IgUHTVeK7Nvz0T+
         eslQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761821921; x=1762426721;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iPwgtHcgJ7J7nFNB+8+KqtcjajFGZXrHoBQyN9cdZmg=;
        b=Edan5qvoQ6KEhzvTwjtgd5rNBKeTjEa6Za1QAM5lG17d+0HfDDpYLkpPaQ0qLkLl1F
         jzQamHzVTkc7w3BKYNgT/PJkqFTdoWBngoGAMXGiQYTd08BVhIxHG6QVUEIUEldcy6pM
         QEKEQQmJWOfejV4dVt8MVTKOmLTcYt07+oLHp0n85t1sLYXYcNMBe7S3Jl5GwesLzx6+
         16tFpvZazMXKC2MS3t3DBiL9EfdSC88t77kBPPUuHdPXxNhwAkq3PajwyiOFqlX2dbzv
         N9z0qe/ycS7NozqVgu/dPllfpllmmRzMj/u0AVa+QMd2usbNE2l0iGBxZkm6La7o6rPa
         pAjQ==
X-Forwarded-Encrypted: i=1; AJvYcCVRmmwOWM05sY1bTsFclxdeoJSR7Q8c69ZBmjQfJlwd8gW5GfylrVCklyKxp3XE42ao/zBLKwy0sWjc@vger.kernel.org
X-Gm-Message-State: AOJu0YyEBOOq+eDGj521SrkdLfPN6igNF/UAeSPT/ikzr7crG2nImPfK
	c9v1af2jRuXGSbR8+b3oAd9gqDewzVKAJqNoIwgavh82Yy/vxX5Xdi2SkAHcx7C5Avk1dI01Sbi
	cXvP1E1YEfE3s2gXjmPJJe0TlsRXSvmIjF4A0nrFh5gLJpQGdkLgsH6hRuLHg2xjg
X-Gm-Gg: ASbGnctY1QbUMb0oEqcmlhM/Rm/G1HSiJ9V/gPFXwuK4tbGs6CdVhNb+tfi/V/mDIBh
	OQED3+h2h+l9YkabRR2JWuaJNQJk4q5KRLk8xaqUNfe2eeoTTjinVE0LALhd27lLh+b4PDUKSDO
	/P9fdWpI7UFcBao/VORNHwBKvqc+Na7RHXghp21MFK7AXy7vtFJTA2G32uzhKdwaVr0vOacEtiW
	hNXXpstXh0zrm1gbgp5PM0QEckb32Gz5LVMXrhK41hQYo8yEK5HA+CZyulREvCpzwpCn31sqa5a
	CHxaynm73aXi+96Vwxm6avDRVDaULB/rgsYpsBJR4QldmYDVrm+zPl+xNoAPMnpCoEhqmT+u79f
	4GYSwplqNNzuhI77f0jJYPzz96oFfEdaKVww6Cw3vuUFi3nhisqTz5BY1
X-Received: by 2002:a05:6214:20a8:b0:70d:e7e1:840f with SMTP id 6a1803df08f44-88009bc1287mr53179416d6.3.1761821921503;
        Thu, 30 Oct 2025 03:58:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGx5k1wZsBuuiVnl4Eqgxl3d+N7Q6Xo/AuQPcR9rB0PHtOmAMEcobsr2Sp3u/2nCVQlyhDFDQ==
X-Received: by 2002:a05:6214:20a8:b0:70d:e7e1:840f with SMTP id 6a1803df08f44-88009bc1287mr53179326d6.3.1761821921098;
        Thu, 30 Oct 2025 03:58:41 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d853f3851sm1719266366b.48.2025.10.30.03.58.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 03:58:40 -0700 (PDT)
Message-ID: <c90b917e-b3bc-42fb-a127-ab47d5154d0d@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 11:58:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] arm64: dts: qcom: sc8180x: create common zap-shader
 node
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251028-dt-zap-shader-v1-0-7eccb823b986@oss.qualcomm.com>
 <20251028-dt-zap-shader-v1-3-7eccb823b986@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251028-dt-zap-shader-v1-3-7eccb823b986@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA4OSBTYWx0ZWRfX3JOgLFnQqvrD
 PIXdxUsbrEsphODFJKobQss8erVdVbL70vYtWK73LFj7Jpq3GH+vw7GMr6zudB76uM+va6H1uK0
 jYW2HSqsjCkoYvxPHSgscB/aPYgWJzLZHlVIhWcCUaXToG+hA3vMnXltweBAT5AJLNiqOR2PjVs
 cKJxSsbn3upOZptpCQwlhfa3z+XUMoWlNsyGIM/UTVPwL25s9DLuvWaGtiRLkuIzOBRcf2TCziF
 MHFjC0U9WS0nBlxt4gYVZuGurvA7MXtvCVoHM37kCRqd9rrD9lq46YmlJ5gGKlATbslgCKqLbxj
 WxSENNwypOgC8XIJmw0CU0dqbRjCJhMw43/DZ325hiNcbUcG9j0seM52Q0URBbj5LborGpcrnhe
 iix36WSekeTSrmhLNA0jJFuOnTHx5g==
X-Proofpoint-GUID: QZ4qmGzyLoSobtA04L9Vh3Yu8oz3UdXc
X-Authority-Analysis: v=2.4 cv=MuRfKmae c=1 sm=1 tr=0 ts=690344e2 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=3S55o6r4CRsqHmcx2iYA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: QZ4qmGzyLoSobtA04L9Vh3Yu8oz3UdXc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 phishscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300089

On 10/28/25 10:00 PM, Dmitry Baryshkov wrote:
> In order to reduce duplication, move common GPU memory configuration
> from individual board files to sc8180x.dtsi.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

[...]

> diff --git a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts b/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
> index 93de9fe918ebdadf239832db647b84ac9d5a33f6..069953dcad378448800d45e14931efe1fe1a69fc 100644
> --- a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
> @@ -14,6 +14,8 @@
>  #include "sc8180x.dtsi"
>  #include "sc8180x-pmics.dtsi"
>  
> +/delete-node/ &gpu_mem;
> +
>  / {
>  	model = "Qualcomm SC8180x Primus";
>  	compatible = "qcom,sc8180x-primus", "qcom,sc8180x";
> @@ -444,7 +446,6 @@ &gpu {
>  	status = "okay";
>  
>  	zap-shader {
> -		memory-region = <&gpu_mem>;

Hm?

Konrad

