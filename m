Return-Path: <devicetree+bounces-228844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 31418BF12D5
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 14:29:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1441F4F494A
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 12:29:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 588CC3126A4;
	Mon, 20 Oct 2025 12:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cThWQ2Yr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA14B311978
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760963373; cv=none; b=IgnBA2vt4st+A7i3VAoHaWRiPGB4/vfDfJaDsqk+rglr8qQUEG+04ik001d+oYggJVWG6pTGzin/SWGYMo556ilyaqD/2WeqNdpvfsH2iEcUsiuT/Xckg22Q5ZChEoNzlfXUdUZ2P0Za8yfKh5iTh4NP4FqHCNU/PgtxVC7qobc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760963373; c=relaxed/simple;
	bh=By4gOhzgftPHwGUyIhrk5JkXD50v475jHppkhs0x1Qk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KFwROR0kbRivlvkmIxVggInjMr0aR9i7FYPpFvhB89vVkE/iloQ5d9c1+FSXqz0LRY2z9lkxxSKHLH5w6i2NsxmahFASRAXPVHFArwvQVZS3YFwYTUDNSqSvlPIn8QWRFb6w7aiSZ3AxWs7zqd3WR3I+UGJAEuo+vV/0xkdN2w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cThWQ2Yr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59KBktFk013109
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:29:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SlkF8eWD1We9s4Yi5xxwuMqmhkIuqXs6z1JCL27wQxA=; b=cThWQ2YrRAGKTAQc
	P7yrF//YZn8xELhD9SLaTUFuAHAbU49ttgjIw8mxZ6ReSIJHHhJge9Cjemq1b3Zo
	Whw8eYpu8FDsHtW9TP7wIblzR3tFGQ6f6G1ldWBaPpK+g58XbilaHzAek7iiy97y
	n5B961GKcnulbN3jlxGi9wVBLsZklvSIedPTUSsjeDVEA47TxlvPxTpd1B0KizmF
	qKiGn6/Cdi5AI/EkinhPsIAbx5J6q5jdx1ktZGO3i+cQ3fSg5w0D6Vs0U9VWUoLe
	Sjn756A/g9Mnu3oEq6i9d/Y2LwxqIn/U91zJb19Ta5JHWRiiH4ftSYSQT9IEd2b2
	0ZLruA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v3nfcphg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:29:31 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-890cb81b3dfso149999485a.3
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 05:29:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760963369; x=1761568169;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SlkF8eWD1We9s4Yi5xxwuMqmhkIuqXs6z1JCL27wQxA=;
        b=SdjavGalCQBnUtzj4urceNoMPCj6EvRRyEPyC1M9iFhO98a+b3cp1UZC0N6E0zgc5m
         OBXUWSTaRgileX/l1I5TEohKCeqMAAbdMLHyo/eROf9taVFVG5Dp6tEnuOybQ8G3qErt
         /V7NUpC15pXIPFIYG64dcsJ3LI+nZCHVNTgBwyqNV1bSGQmHkqmvPPn/E0xin+7ubvUT
         jNLSIcnaQzYC9/ZDYvnCCjTLhYgHTO+hs832xE8dhGd8kPxgA/Ny7M8+da6FV48dAbFb
         uSw6zhATvApKV5XiDtByoRqMYF2u+jmaxLZSel6ST7FdLQzK05WZoyGkd4rDdkRRxXDg
         DmIg==
X-Forwarded-Encrypted: i=1; AJvYcCUJbyKbJbRpXf96ruKUrOqil8BYgLahmpDzW57z6fac+Jh+HLGst0NQmgDHaRbSwt8EKyc/u9hOc4NF@vger.kernel.org
X-Gm-Message-State: AOJu0YxMdPrFBJBR1OMGryvQcohuDHxvlmzYCr6RS+JH97F58Vi+yskE
	J/WaU1ZG8AKggIuxNrlYxG0dL+s68JdPoVczLG6rFzt0Yg8+WGcpncnzrK6lhAS2FEM5ijmASlM
	5sqS/yKMDSFGLFM1Mfnea0bfX94gRrnD6UNgeuYQfwFQzFVhw9QWCoA4DFnA2eWDg
X-Gm-Gg: ASbGncsCwCe2aEOOay6FmOpXFEIPa6f9hBq/RKoHI0VuYXN2OiazIUGDhp0YPtkez21
	ZIF1PTbBlnuaxGE1ir/460E65lpDugHh1RHAOrbpYfS168Vti3mo56lCo8rjzM45Ld9f7kdh2XM
	+YVkI4hayJRiHYrZE1cpcQnwGD/D1UdUfe7ruRVMbeIOfWIT85w7mcjycDUjxLMwjZch/9XPxgV
	wlqyQf+lSQ01qcACwJQnvW3OH2oZa+xeQFA37V7H+9ko+4aYx3Z4SbSAHJ1rIa+g9KZ72xmfQMN
	P2kj/OhZbQQZvZe165TVEg2hmOy7JWZwHvYLbo4jaz37LoV4L9oXLvOscHMtrZEoxArDscMmhfX
	hwpaogvxPGuRYe4ucYr2EeaKkEGj4AFPrWflZSCKZ8foED8fSDIGA54Dm
X-Received: by 2002:a05:620a:4621:b0:88f:561:d952 with SMTP id af79cd13be357-89070dd72f2mr1010369685a.12.1760963369047;
        Mon, 20 Oct 2025 05:29:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtKce77jyrjI+Q3dWbyvJ8XAStKr+D5wxNDmpYHRE6h3Vda1qthUxSCuU16i/bVy/FmBEyVw==
X-Received: by 2002:a05:620a:4621:b0:88f:561:d952 with SMTP id af79cd13be357-89070dd72f2mr1010366285a.12.1760963368465;
        Mon, 20 Oct 2025 05:29:28 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e7da3412sm778937566b.3.2025.10.20.05.29.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 05:29:27 -0700 (PDT)
Message-ID: <9e4afde2-1171-4cdb-adac-3a496b8c53c3@oss.qualcomm.com>
Date: Mon, 20 Oct 2025 14:29:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sdm630: Add FastRPC nodes to ADSP
To: Nickolay Goppen <setotau@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org
References: <20251019-qcom-sdm660-cdsp-adsp-dts-v1-0-9ab5f2865a6e@mainlining.org>
 <20251019-qcom-sdm660-cdsp-adsp-dts-v1-2-9ab5f2865a6e@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251019-qcom-sdm660-cdsp-adsp-dts-v1-2-9ab5f2865a6e@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: TiS5iSydJCO57wSItozIH9ic2pXv-uoK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyNyBTYWx0ZWRfX6YzT01cRqri5
 BZjFdOmqZYrFfutgkDKaxyOpX69aoo/xh8JGvfb1tDgPHD+A/qUxv7ZNuMVaWtVNbXGy2a74Dy0
 Mvkbe737T77VvZZEQXJ4u41Ytqz+gemQkQXksSYVs1Bincty7fqRD69zYm42EOek62weFhyPsTi
 UmekHfDowWU8BRzloagk1848LY+xK4C4UEQvuM8md5jQH6OQgy5RWqGvLGxk7FLi8meYFmvGapi
 ozdQ62hRdiSeT3UNP0DoN2UZVEJiSheGhdsVRBApTvgFL/gfQd/lVa9W53U/N9GpwBZ0DNOyQM+
 Bniwx3VBhYx4lXycqbLTZlWRw7lhassuAAi86IGBeSy6YaNGtf23Uo5A3Vkh8tooNwAmqxmeuqH
 F6Nx+z8awUYXBCU/XmDJmj8l/MojhQ==
X-Proofpoint-GUID: TiS5iSydJCO57wSItozIH9ic2pXv-uoK
X-Authority-Analysis: v=2.4 cv=EYjFgfmC c=1 sm=1 tr=0 ts=68f62b2b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=OuZLqq7tAAAA:8 a=6XgSZUbUjBfQJWIQPfwA:9 a=0bXxn9q0MV6snEgNplNhOjQmxlI=:19
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 spamscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180027

On 10/19/25 6:27 PM, Nickolay Goppen wrote:
> This includes:
>  * Add missing vote clock and GDSC to lpass_smmu

This is a separate fix
>  * Add FastRPC subnode with compute-cb subnodes to ADSP node

And this is a feature addon

please separate this into two commits

> 
> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm630.dtsi | 38 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
> index a6a1933229b9..2764666714e6 100644
> --- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
> @@ -1217,6 +1217,11 @@ lpass_smmu: iommu@5100000 {
>  			reg = <0x05100000 0x40000>;
>  			#iommu-cells = <1>;
>  
> +			clocks = <&gcc GCC_HLOS1_VOTE_LPASS_ADSP_SMMU_CLK>;
> +			clock-names = "bus";
> +
> +			power-domains = <&gcc HLOS1_VOTE_LPASS_ADSP_GDSC>;
> +
>  			#global-interrupts = <2>;
>  			interrupts =
>  				<GIC_SPI 229 IRQ_TYPE_LEVEL_HIGH>,
> @@ -2337,6 +2342,39 @@ q6routing: routing {
>  						};
>  					};
>  				};
> +
> +				fastrpc {
> +					compatible = "qcom,fastrpc";
> +					qcom,glink-channels = "fastrpcglink-apps-dsp";
> +					label = "adsp";
> +					qcom,non-secure-domain;

I don't think this is valid for ADSP, +Srini please confirm

Konrad

