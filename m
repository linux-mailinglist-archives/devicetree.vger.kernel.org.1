Return-Path: <devicetree+bounces-267123-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IPGMNAT4mWmSXgMAu9opvQ
	(envelope-from <devicetree+bounces-267123-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 19:23:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id F35C816D7D8
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 19:22:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5AD5930462DA
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 18:22:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 714EB30ACE8;
	Sat, 21 Feb 2026 18:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OhAnhOdt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WL2g0Ao8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0812F60B2
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 18:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771698176; cv=none; b=kv6nAprl7EjhyAfKqko5fj3rycS5AXZNtEshRbQkNwYpwR3IIw4pYR2wDe+rEoiW84BzMEukTVPkFNl333EzEYE4vK5bLp8AhBZTdFY6HmUZpjK8YGFfbWCgdCBFzHpBhNnZBaiEKUFGIcpKCEB5i13FTqSbHKpweJgLbVbOq7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771698176; c=relaxed/simple;
	bh=j8YzehGleE4Bcxai9TU+Rb7l+5Rkd2EJJJhmu0Oe5hM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VVVZHfgXO783ki3gKWFoMaE6ADDJcWE6+OVmqYTq/j2O4qPyf6BERsTP9FPRpwG1JkDIeXIu8CSrrU0gNpsPMuG1ohv8FaFu2UCpe1LFAiHGJrcyO0J0vSvPIydP0PUqcVp5EH9ZnPkH21/ASbn9szUuueZ3QCHHVuSWArG2IZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OhAnhOdt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WL2g0Ao8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61L5CmPB1560164
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 18:22:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RBC96Crr9eVFMb2/ro/RokIXk1UZeAJM2LYx/7JosQ4=; b=OhAnhOdtcg9OVMuN
	10Z6cQnhJohMbDoeia2T/TtOZDQhLsJDCs1zILzZ1EOnfPTQtisE72uF/DpXcqB6
	CUmR0qn/JATZUu44oDvGtGM1n864CF7yx+uvCG9apaMAVQu68ExQDh3p0BjociKO
	kTpTjfLyEth9nFqzvO07a97+m7xTcVVp9fEbzkHUUxAmRZkkgtZMoQSb64nqmfjO
	GyCPWRUF+h/7rn73+i+GmBrbqVm/sKcZ5mJVTeiALbi3EmF26aMTEAF5+WTR5g2X
	+6EjdG1AuyXMQiYYQbmwv7TsHst3fdfJwsMNWPxadjYDiNhPp7f41WnydTPJs2yw
	jNNiMw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5v3s4p3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 18:22:48 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a9638b0422so17633025ad.3
        for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 10:22:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771698167; x=1772302967; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RBC96Crr9eVFMb2/ro/RokIXk1UZeAJM2LYx/7JosQ4=;
        b=WL2g0Ao8bPp7OA/KhjJ6EjahujaCk+jQkWTzSe4hWPUUGXJFOWf0yCqhlC7v1JqVnt
         ZyHA7+21BEWPZbHqFUT7tbhVkPNgdDr13mYbU4iUVGSdN7HCsIMKppJDDZzdhQkqPu2g
         HujEgSfMaTyd5LnFBtG1wm7xuRDdbW2h4JSaiad/KZZjnXZWR7Srl5lRzDYW9+My7cDh
         pGX8dT1hMQZAgfBZXjaaGXIDnqLBz0pFt/lzV8H5ybK2lsmEEh1Y0oVbvw3kxdR8ybfA
         Wshht5V0ly9DUKQetIgNBaRqZinaDT7t+5O6qYES98Z7wADTdaAvyZJDRgiyj7GSnfr5
         aEqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771698167; x=1772302967;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RBC96Crr9eVFMb2/ro/RokIXk1UZeAJM2LYx/7JosQ4=;
        b=aAloEBj0aFYBrxnsPrYksb2ZUYTL5VzfO3Gaf5T/uk/dn7LIp+e+mvXCFDbPIINdPg
         BenCF4Q/uYSnDZoF4mQrdbTkNh8c5uTPBT9/Ddp2qDCEnyFSGr6hyZhT5Gs4PPOFGPtm
         5+/hvvzGrgkOhfL52Zl6GUPTAt/gSfK/vFB7wFdDNdiZlusWBVjcdMQ7VPq+tnzcV6rM
         opPOvXzp79oUt1uNMRmJdgz3+U8vm6vlQnFn8tJnp0BS3dcUQXhHYEridkkAiiciXK7c
         H8hIHkaN0lS/IGsDyIawhGodppnrmnU+MWZQa7icF1SqxHTGi3HRvcaCbHo2UVlMLuBO
         hN7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUYRmsuyChfAhIwc9RDTL1aTZsWaxvqF7kK20cBDyd8Wee9ayAsExj6pG5QRLeOjx8Rz9HCd9aUWmd9@vger.kernel.org
X-Gm-Message-State: AOJu0YxPx11JZflON0wHokYqPFa7Z0HTnPp76YuD/ZvqXyAjeC6tZGQo
	SbpViM7N4STwQFdP2G4tIUEYS2GL7gm6p6JC6iSRbXNl90scWMbz4hACGiD2ddmWXDK7D6LaNPu
	D05/aexH3MJuFx7S5MtLJcYCSeDxDZPBDE8JG803XMedU6rCZCvOll8av2Y1iAvO/
X-Gm-Gg: AZuq6aLaNNOq2Ip19dWFiq6iTooZaQ1NXS6gfntpC28tcb0SrX7QXe9XnCZWelzg5za
	6x1ndBz1bcKegRTgrtnFyeZHu76e0MPQLPWixWmpQShJ3ieLPu//BqLDVNA2Lk4AEYMFcGn928D
	3YApwkOR4A/gEUP2yiG2eK8bIfzyt1uobmVuyrNe/NY2SlkKVqud7WGDRbc8ZktHWAxf9ihEDt3
	oV4tgKJ1rZB5mRnEoQfJjI9DnlFAyXnY/MhmCBs6CoYNJlr32RCVH21qFzXw2zd70VNOJROMO22
	lGu6O88fpKS+cdklzYkzTfwcaeirI3cyV+jJUuB0jKI93WkzxowIw5aN73ymd2sUNQhwj0IsAvY
	d/iaXVSVzsGBk7rdjxq6A7k+7OFSAr7eUxAAd2jgr+qJsVzc=
X-Received: by 2002:a17:902:e542:b0:2aa:ecec:a43d with SMTP id d9443c01a7336-2ad744a0062mr42498715ad.21.1771698167454;
        Sat, 21 Feb 2026 10:22:47 -0800 (PST)
X-Received: by 2002:a17:902:e542:b0:2aa:ecec:a43d with SMTP id d9443c01a7336-2ad744a0062mr42498465ad.21.1771698166964;
        Sat, 21 Feb 2026 10:22:46 -0800 (PST)
Received: from [192.168.1.11] ([106.222.231.179])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7504379csm25510135ad.83.2026.02.21.10.22.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Feb 2026 10:22:46 -0800 (PST)
Message-ID: <7dbc0e99-cffb-403a-be7a-27d1b47712fd@oss.qualcomm.com>
Date: Sat, 21 Feb 2026 23:52:40 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: sm8750: Add GPU clock & IOMMU
 nodes
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20260220-gpucc_sm8750_v2-v3-0-6c5408564c3c@oss.qualcomm.com>
 <20260220-gpucc_sm8750_v2-v3-3-6c5408564c3c@oss.qualcomm.com>
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20260220-gpucc_sm8750_v2-v3-3-6c5408564c3c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=YL6SCBGx c=1 sm=1 tr=0 ts=6999f7f8 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nGub0OD3bIp9TpioTFTxbA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=_nDl3K6yXJEX041QHmYA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: aBzpRzVd-G81gagqtynkq2ZqRfLFAVhE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIxMDE3NSBTYWx0ZWRfX9oAaFK3/t8J5
 dkOstzXoeHsYXq4GD/X1bjc1msnHUqSsaKLQLWuxt53tccBogh2USyjzjmanp/606xfIMRhumCN
 P97skIpqr48LIVTh+zHaZ2RqTQresywedaNumB5VpSc5maKMPUboho6ahl3wi4ghbZqLCos6P++
 WScCVIjRoP4HI2biCF5nXj4jdBVycLWT4RxajM+YCTbt1WnBYkCmpiGUWpsmNO17MiIceMJ8E+o
 AK1nnhsc00cQzcLKuusHf5P4CRLsxicI+Yi4xhAIiW0IaZH9XP9o63rByFQeiIA6A0hY04CEppt
 cHrUnzczxAj0NSHokhcT1VrukGa2lBptsJUiX+5ehQFkabac95FKZ6nl/ly3+Nukid5TaWfI8wW
 yshiBr74L/UgRjtiR6/LKTHELXUFOvS642lRsC1fA8tsvlT3dqtJSK32TLP0FPmw9Y0hn82Q649
 66CII7UCjwQslyP3hCQ==
X-Proofpoint-GUID: aBzpRzVd-G81gagqtynkq2ZqRfLFAVhE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-21_05,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0 phishscore=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602210175
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-267123-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[3d90000:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,3d64000:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilpo@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.228.225.192:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F35C816D7D8
X-Rspamd-Action: no action

On 2/20/2026 11:24 AM, Taniya Das wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Add the GPU_CC and GX_CC (brand new! as far as we're concerned, this
> is simply a separate block housing the GX GDSC) nodes, required to
> power up the graphics-related hardware.
> 
> Make use of it by enabling the associated IOMMU as well. The GPU itself
> needs some more work and will be enabled later.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 64 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 64 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index f56b1f889b857a28859910f5c4465c8ce3473b00..0cc931d0bc96e9563ce4e7989ecd4ba50bd424f8 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -4,7 +4,9 @@
>   */
>  
>  #include <dt-bindings/clock/qcom,rpmh.h>
> +#include <dt-bindings/clock/qcom,kaanapali-gxclkctl.h>
>  #include <dt-bindings/clock/qcom,sm8750-gcc.h>
> +#include <dt-bindings/clock/qcom,sm8750-gpucc.h>
>  #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
>  #include <dt-bindings/clock/qcom,sm8750-videocc.h>
>  #include <dt-bindings/dma/qcom-gpi.h>
> @@ -3001,6 +3003,30 @@ videocc: clock-controller@aaf0000 {
>  			#power-domain-cells = <1>;
>  		};
>  
> +		gxclkctl: clock-controller@3d64000 {
> +			compatible = "qcom,sm8750-gxclkctl";
> +			reg = <0x0 0x03d64000 0x0 0x6000>;
> +
> +			power-domains = <&rpmhpd RPMHPD_GFX>,
> +					<&rpmhpd RPMHPD_GMXC>,
> +					<&gpucc GPU_CC_CX_GDSC>;
> +
> +			#power-domain-cells = <1>;
> +		};
> +
> +		gpucc: clock-controller@3d90000 {
> +			compatible = "qcom,sm8750-gpucc";
> +			reg = <0x0 0x03d90000 0x0 0x9800>;
> +
> +			clocks = <&bi_tcxo_div2>,
> +				 <&gcc GCC_GPU_GPLL0_CLK_SRC>,
> +				 <&gcc GCC_GPU_GPLL0_DIV_CLK_SRC>;
> +
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +			#power-domain-cells = <1>;

On Pakala and newer GPUs, we need to scale GMU (which is connected to
the CX GDSC) freq. Is this DT description sufficient to allow scaling of
GMU OPP?

-Akhil.

> +		};
> +
>  		pdc: interrupt-controller@b220000 {
>  			compatible = "qcom,sm8750-pdc", "qcom,pdc";
>  			reg = <0x0 0x0b220000 0x0 0x10000>, <0x0 0x164400f0 0x0 0x64>;
> @@ -4515,6 +4541,44 @@ tpdm_swao_out: endpoint {
>  			};
>  		};
>  
> +		adreno_smmu: iommu@3da0000 {
> +			compatible = "qcom,sm8750-smmu-500", "qcom,adreno-smmu",
> +				     "qcom,smmu-500", "arm,mmu-500";
> +			reg = <0x0 0x03da0000 0x0 0x40000>;
> +			#iommu-cells = <2>;
> +			#global-interrupts = <1>;
> +			interrupts = <GIC_SPI 674 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 678 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 679 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 680 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 681 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 682 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 683 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 684 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 685 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 686 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 687 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 688 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 476 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 574 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 575 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 576 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 577 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 660 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 662 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 665 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 666 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 667 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 669 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 670 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 700 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>;
> +			clock-names = "hlos";
> +			power-domains = <&gpucc GPU_CC_CX_GDSC>;
> +			dma-coherent;
> +		};
> +
>  		apps_smmu: iommu@15000000 {
>  			compatible = "qcom,sm8750-smmu-500", "qcom,smmu-500", "arm,mmu-500";
>  			reg = <0x0 0x15000000 0x0 0x100000>;
> 


