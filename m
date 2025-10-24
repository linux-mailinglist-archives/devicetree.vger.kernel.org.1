Return-Path: <devicetree+bounces-230678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 70908C04FF7
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 10:14:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 52F9C19A8653
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 08:14:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85937302158;
	Fri, 24 Oct 2025 08:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N+9kQP6K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE9462F5A1F
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761293643; cv=none; b=jKixz72BL5mJPIuHSLlbaBrnK0tvvRoUfqXVj9K8XP7O571qXIHvZM3uPIwNCziVx4Wlat1vZN736wMfk/ZnWvP/mI78WHsCBbC69zZ3jNoWvjlNd4PWLFAZm8mNarrF6GSmeQ2y2+J7KZruX6hO7VRv5nu7oT5B4Rm9CYe1zaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761293643; c=relaxed/simple;
	bh=4LQY3pdZ96rnqQXgBIRUHW9rIPYIt55eL9zhEIQ1qs0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CjBs//grU8vhHCcxLyR4xrkffuOzvh5cRljp9KqxObMVFhVXqDWseq5JkSgPotfltHkLu28J6t0+EO79KMfqGgY+AA0uFtMGOlcBa9qva/AqTeaE6HsQ2Y5Tul//FiNtyDnDCagTUsuIA/kgD8Jt0OPfzslJWVnrwnZpXcuOoR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N+9kQP6K; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59O3Fkh4021725
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:14:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EzKZx0KdaXQPdMY8n8YdZTFhqr+6LBjxgD7f+bSFhX4=; b=N+9kQP6K3q05ylN0
	1rj4qkXLo/nbcCi5iNDpsxHs0aJDWzafnV9TR8HUdGIiZzSeVFnpX61zQG7IaHUT
	lgLYgCT+6kYqlDuiIRckPEpMyCn7a12cFprp9xdtroCp+raUfRQ0KRDsL1auHQB6
	I4XeysUiaXwzs7ffctWnvmJzBPhhCqHwRLVEivh5sOkSDgflaTQuHPp2AAmMvlic
	0EYamGSrvt8dneXsHlB3HqbW9OCLSBtEARN+i5USPMJiFqyPaG6r/DudQOVvdSje
	GMML/ErnCvRY6jZEBJAPgaY/mEEjJkqYDdDNddiDdyVwa+jdj2BBo2xJmCZcS6ga
	/A740w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w8b9cv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:14:00 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-87c1c70f1faso6677446d6.3
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 01:14:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761293640; x=1761898440;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EzKZx0KdaXQPdMY8n8YdZTFhqr+6LBjxgD7f+bSFhX4=;
        b=Waku1abyhRYk5UG8QIYli+XCb9NN1XNU3XLzV5daljXxamNtnHTRRrechS0+3+G/BD
         kYa8jxRGQ3wcezr+LX1m6dbcbs0ukE+fjtiXqNG4C3Rwyvxd5myF/jN64Xw136XdlfOC
         USY2i5OMUT8fVG35U61ZZc0wP8XBBQfK9h65ONaLP/G/v1LJ1XqKheT4egLrLfLeUuqy
         VkS4CrkaLPYZxpuuHHYnI2YAYJN23NYjEFlZSLwTJAdmMaN3EzeQ7zuAdl+qWXOQc6pw
         1aet4hf0FUBFLouDXkqLJWkRe2rhK3uPipF0MWWeOdXvtKGj0pW3wuGnimg68YWL0x1n
         PdkQ==
X-Forwarded-Encrypted: i=1; AJvYcCUP5ONxAA020y7oUpTU12Vqrq79yfCToTYj8db7lYhPhWRgO2eBk/tKzTZuCNAdNzoe53j1kqAaxevU@vger.kernel.org
X-Gm-Message-State: AOJu0Yw79t2MUsYKgUwtHjQQHVrLozVw68iMWVjesL3FkLcjcXqcJrno
	sUWpk6oa6uiBmHy0qX9Oyq9U7BqaGXZx7VHTLyqATl2sFfEZ8aWIJDY1AiOA8muKBHo7PguAmyG
	4J8ml7+uqd9f6EFAlYiPITlW8rU/oaQDFXObI81COXIfTvKtysAouYfA/M9AsV1Wt
X-Gm-Gg: ASbGncvFIVmeI+Xt1vDqqsizP27gOjxZGVIhOsIw5OCmH9GlOK/ldVZX8oSuYF4dvxg
	MZn2r2eGwuTDds+u0u1D+OT03SpCBiEjfLy4gGmRFIwDpTjCUjN4ifjvdxHOcy52huUGdgtuxxF
	ohFoRDUF+mwbQgQ2sXpQw6lVw7fBSwMENBibgPvf+7+8vgY7lyf8DNeG900kG/tjC8HY3wBgBHF
	7l69ecWDO9Zy411jASw32ZtwlRizRnJSlmSKirpDHDlI2hf1t8EUGEFZpLU4BWIS3kW3tFBR7Vc
	b71wwBL8iBQx+rIgR7eVXKt0wWx1TfRM4iUua2XDqB7Nw/WZu+T47H/cKBJxQr1DjU2NvsRQbBK
	xwwI87aM8bPtamGJuNV1Qj0yDHeZfGqLWhphk2u/Gn/bJmBSllKV13hkT
X-Received: by 2002:a05:6214:1ccd:b0:87d:c7db:7897 with SMTP id 6a1803df08f44-87de70be59fmr111017206d6.2.1761293639834;
        Fri, 24 Oct 2025 01:13:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFkuQteOXxBMGqxcPQtHgaZ3r3sh4noI2NNA0gmaTaiHoQCDysA26yJKDtBnRE/gNxqBULdog==
X-Received: by 2002:a05:6214:1ccd:b0:87d:c7db:7897 with SMTP id 6a1803df08f44-87de70be59fmr111017056d6.2.1761293639396;
        Fri, 24 Oct 2025 01:13:59 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e3f316cccsm3683716a12.24.2025.10.24.01.13.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 01:13:58 -0700 (PDT)
Message-ID: <cc7399ed-db57-42cf-a944-6213a8df8491@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 10:13:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] arm64: dts: qcom: sm6150: Add gpr node
To: Le Qi <le.qi@oss.qualcomm.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com
References: <20251024023720.3928547-1-le.qi@oss.qualcomm.com>
 <20251024023720.3928547-2-le.qi@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251024023720.3928547-2-le.qi@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfX1D18LUKWA+nw
 ToOl8teqSFEbHADnwhRQ1FMXgFGFw7uPbHBM/SuwKLuqM3FEtFJHWaiYz9oLpJwSKld5c2NZR9r
 4TOQFiveqpNxokqzOHplG+7Rrv72RX8Iv7m1VYDNk5yfSI0sHTPOkG+iwKC3mYdU4L8+h8AhEnv
 36EBDywQWgvATCltN+puzRu1NTXUc78aSRYXSIx51oxQm8XwPw6Kd7drgPY5xFy1qUOEOW1/73S
 2sbckCthJYX6yE2/SkI5zH1XtZrbMgJA4SPhiw7KcI1gSzNzTV8xrCtHObdfCWRwBwo+1cnlxov
 wYAXcNl4LIWxj1mn1N8el1O0Ik6q4QUwfIOxfKVmWdE68+0NtuxYFMq5QOt9A+33SdqXgtrhD9/
 IacGA1sIQD6TSJXaWnY3a0kwUFmj7Q==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68fb3548 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=GhKeX4-ZSDom7ex7ThkA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: 4FgxlFKD7YABlebpWCO7CoEG3Ov071k8
X-Proofpoint-ORIG-GUID: 4FgxlFKD7YABlebpWCO7CoEG3Ov071k8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015

On 10/24/25 4:37 AM, Le Qi wrote:
> Add GPR(Generic Pack router) node along with
> APM(Audio Process Manager) and PRM(Proxy resource
> Manager) audio services.

This is a really weird
way of breaking your message that makes
it difficult to read

(stick to something more like 72 characters, please)

> 
> Signed-off-by: Le Qi <le.qi@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6150.dtsi | 36 ++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6150.dtsi b/arch/arm64/boot/dts/qcom/sm6150.dtsi
> index 3d2a1cb02b62..ec244c47983e 100644
> --- a/arch/arm64/boot/dts/qcom/sm6150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6150.dtsi
> @@ -16,6 +16,7 @@
>  #include <dt-bindings/power/qcom-rpmpd.h>
>  #include <dt-bindings/power/qcom,rpmhpd.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> +#include <dt-bindings/soc/qcom,gpr.h>
>  
>  / {
>  	interrupt-parent = <&intc>;
> @@ -4246,6 +4247,41 @@ compute-cb@6 {
>  						dma-coherent;
>  					};
>  				};
> +
> +				gpr: gpr {
> +					compatible = "qcom,gpr";
> +					qcom,glink-channels = "adsp_apps";
> +					qcom,domain = <GPR_DOMAIN_ID_ADSP>;
> +					qcom,intents = <512 20>;
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					q6apm: service@1 {
> +						compatible = "qcom,q6apm";
> +						reg = <GPR_APM_MODULE_IID>;
> +						#sound-dai-cells = <0>;
> +
> +						q6apmbedai: bedais {
> +							compatible = "qcom,q6apm-lpass-dais";
> +							#sound-dai-cells = <1>;
> +						};
> +
> +						q6apmdai: dais {
> +							compatible = "qcom,q6apm-dais";
> +							iommus = <&apps_smmu 0x1721 0x0>;

I see that the documentation mentions a mask of 0x0 (like you did
here), but downstream does something funny here:

iommus = <&apps_smmu 0x1721 0x0>;
qcom,smmu-sid-mask = /bits/ 64 <0xf>;

with the latter value being consumed by the driver manually and when
it binds some sort of DMA_BUFs, the effective SID (ID & mask -- notice
there's no bitflipping of the mask part here unlike in the SMMU driver)
is prepended to the address:

smmu->pa |= ((sid & mask) << 32);

We can then check that the SMMU driver reads the SMR mask as a 16b field,
meaning the result is (sid & 0xffff) and not (sid & 0xf).. 

If we take the hardcoded-downstream mask and compare it with the HSR,
we can notice that all the streams in the 0x172X range correspond to
LPASS_ADSP, so perhaps it's a design choice that the DSP end only cares
about the least significant digit

TLDR this seems to be all OK

Konrad

