Return-Path: <devicetree+bounces-273562-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLPyMPklsGnYgQIAu9opvQ
	(envelope-from <devicetree+bounces-273562-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:08:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6830D251643
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:08:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D007F335D69C
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:37:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F07F738D69B;
	Tue, 10 Mar 2026 13:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jyx8zu5k";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XaCZ9SFy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8E3C38AC93
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773149612; cv=none; b=C3lD5mvE8Cq0MhjbiOXCdV9Vcp+0L2NqoMQHB1vYOOwDRWyoEIgYTkCmFeAn3jJUm153adWaddcB4RdSCDGFMm7vSqh0XLaY5qlNxwLmJObvVdiND7+RbSrgS02fjtah7gUwqNQzKYXiwtcOhhHe7ELwWD3GRAI9aaAzl0gLRGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773149612; c=relaxed/simple;
	bh=ohlf204PBPyGkfGsfwjB4Rhue1MGahmTmkrmmngXz/w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VTbWcaOsB5j5YRuB0VHr87Zl9Yc75Lm4CEelo5Uz+0Ei3UoPadSJz8pyqRoKx6rFPefIRnnexz6LnT4d8QI3Aw3dqb0+PpArSgXxdNqXftkHOu4YWYg6WkUq82411yJLkKeRzsA6h5pnUMtb0gbOHgJdk8JIzXVnGIG7wAqoW2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jyx8zu5k; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XaCZ9SFy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACaWbw303893
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:33:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Eyn73kUkWiqNnNNT+/vwQ6yPvEiwRA7Z6RtRnIDL/oY=; b=Jyx8zu5kysUx+Cqa
	7c56vpi/wpeqlij6PFjnhpoEuX14b6StAUMOmacLO/swlipQIPFjA+HfrgrXTEM2
	6iiM/eJ5dyn0sOb22yxvon6OaHtTOZ676TXrmprqa46Ce0t+aBtFjuIZ7sfgxM1U
	FEDF0wU2Le+W7Ogd61pXyWGWIvVRhwZdRqrwm1sv0gc4VpzoJPD4IG+8K824zvIO
	GPazb7z0oEnjkaBIUTtI1vkelif/OunGwI2RTRD2WID2Ny0ScMWRtxY0ZBiLvqNV
	U7sbwuIAAggzXnuU9S9PzZPzejmtKHO7W3pRwOhVrfBCKqgisNiVEie5pbz2wqJH
	ponhqg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cthjf0p13-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:33:30 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd8e89d19bso114206585a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773149610; x=1773754410; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Eyn73kUkWiqNnNNT+/vwQ6yPvEiwRA7Z6RtRnIDL/oY=;
        b=XaCZ9SFyl00xYz6U8sTaltBtOVzcKW26pkWcOMhFYuZozth/8irrtUZZE6KBvWK+eq
         wEMmO2I8qWi76dvsORHPAGtaUu/bh/ys9MPCxvR2QaXQVgy10mS3scXJ9Z7NQo+gm4xq
         fVw9Qi5DcD8oayAUb84DjUGbHLvUwSZN5keixgx7E3pyoSU2M4qzMPj310R5iySPrZfk
         0C2STpJfn+j6nx/KKqDiLD2DYnh5xIS9/pzVk4uHl6BLNTyBi6+sN/78zJ9l67dlN32P
         nLf1Le6LdmL86IVayyzb+P3+pg4XjamiX/mOfm24k1xLlr8WvXN+9aeiloInvd9xTeBP
         NVZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773149610; x=1773754410;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Eyn73kUkWiqNnNNT+/vwQ6yPvEiwRA7Z6RtRnIDL/oY=;
        b=wfZtwbImPnQJ18yHuCTEuN8P4oGrValU67B1PtiA1cc1mGxNBHHiCzB72B7PdxR9QY
         GztaXG0rwEz7BvLjIE+Cw4mZd63jLKEm0Ie/r0ENdc0snDIQCEtAwzevvkf9oNC1S15c
         RTNWsQ/ge37Y+XES15liW503P83+u29sv1zToFSmnE5El7bRv2UR0VcOXLbo2QIv9Hk6
         xJBA1SQc23uM2hjfjDBYeXLJUbH960aJb+DKMfbcNMjemSTeVwVKOdQ/PHAxqWYAzNac
         bi8u8kmWLqIcbYAvFHWN894mhHgFM7IHXCjH2xzyvHCOeRdpoKTNPUjjQhSAttX8l7jU
         rTOA==
X-Forwarded-Encrypted: i=1; AJvYcCUmUyt3B3jcUMX+ZLT01WJ9MhKabrCLVoYbmCRGWbOn+LkObz5/31U+eCJ7vnwOJIJ0Zy9rXKUhtCyB@vger.kernel.org
X-Gm-Message-State: AOJu0YwA/xSzkLw3cNqsKn1BbZsZMV0lMPb2taphIlqi4cZZNMWpYc24
	phiiTAOuAxfUNiIc0hwzpw8c9MBkQ/nazNKCrNfyHggW5xRvM/yayiYhs/KqCT69cTHhrmQh4Yk
	364xo2MUqybpLz8CzllZV/tuvF4lS0jCLHIQjT8ve8pffo2vmZ6kULdaKUhgmBqXm
X-Gm-Gg: ATEYQzxwAat++Ti73QOkx1zNwkx+ZYXma3cMJFcdVU97kyc1zqhwQIBchJHGmi/c1Ww
	HbkBO8naft4EWLGS5r5WTDnk1okUpr91wJLsJb0s7vUdMQaR+0mT5xLDMYQFk/yw48i+Tn7fUKP
	4hKQ50Ray9KYUMmvBSDbClaOLnEoPRLRGxtpYTOxlRZCmhYasAtOtnMxZ+mLOLC0enyM/KXrRMx
	tfrsXyu8VYPMN8X/5SuTl7cXckhe8dh5CgVQTcDu63KhaQcH2J9BGPwEQhUIyaq+Z4mDj5jkgtU
	KdxU8zLgDK69YVNpi9LdG6FU1wJRUtLJxrkwdxABPp4fVb7Ya9QbPdas36mmjh8fPnkuqss8Fv8
	SE3bTsDfUCVZT2+zJqcXAglSGQlc+GD6WwnDauMTLRz/mMFXBkSfB0rg8hDoLouTKNI7IbezgL9
	3ebyc=
X-Received: by 2002:a05:620a:25d0:b0:8cb:3fa7:c4f0 with SMTP id af79cd13be357-8cd6d42bc36mr1491331585a.5.1773149609986;
        Tue, 10 Mar 2026 06:33:29 -0700 (PDT)
X-Received: by 2002:a05:620a:25d0:b0:8cb:3fa7:c4f0 with SMTP id af79cd13be357-8cd6d42bc36mr1491326785a.5.1773149609479;
        Tue, 10 Mar 2026 06:33:29 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942f18902bsm477819166b.61.2026.03.10.06.33.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 06:33:28 -0700 (PDT)
Message-ID: <2f4f298c-5fc0-46e6-a1bb-4c37c21786da@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 14:33:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] arm64: dts: qcom: sm8750: Add GPU clock & IOMMU
 nodes
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20260305-gpucc_sm8750_v2-v5-0-78292b40b053@oss.qualcomm.com>
 <20260305-gpucc_sm8750_v2-v5-3-78292b40b053@oss.qualcomm.com>
 <67922413-af8d-4e75-aa49-079889576a73@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <67922413-af8d-4e75-aa49-079889576a73@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: As8-zVHpvmyQMUpBS0aEH3UtvbvaeTXU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDExOCBTYWx0ZWRfX+WyH/I7Tr0mO
 il7WwGRdPcb1BhzQWnh6Qu3w7cXxh/rwAvMX/bP3YPh0DkUHeByNOIw9uoank9z+QD+QGfndK2Q
 NoMbd/O8p2sjLNzj4jLWSbIXaOXz+RnEs1uEqezq6/MFVHBINxsfdnJYSMzZ0hqZnLfm8Xwkv1R
 m7d+IZjG8vWRxyg1ODb3b3OoqUue63z2gARnyaD5AGE3kAMh+PWr0jEgNVgbR3uowcnPrPCV1Yd
 fkjw//DEBEot3OSHTHTeuzWw8eVcUYAS2dEMdtVX/3a2RmX9ZvMNaNaERwDTf6EFDznRAICoWzl
 fygIM4obivUKiqxKE7LxZzncftPdtFVWhy8w2/Lnv3/GipRZJvYokS/NUv0JWTuRlOizjRoqHzF
 /P7TYqXMxzKHBnbEfisV8FAhCreKuCN3gz+8QuXblv6uOjalIJFzuBA4x64IbNqH4z22XVLlEzS
 r4HKPTApoCYRYAIEpLg==
X-Authority-Analysis: v=2.4 cv=A71h/qWG c=1 sm=1 tr=0 ts=69b01daa cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=6F_KMvjuWJjJSnLB6NgA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: As8-zVHpvmyQMUpBS0aEH3UtvbvaeTXU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 adultscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100118
X-Rspamd-Queue-Id: 6830D251643
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-273562-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,b220000:email,3d64000:email,aaf0000:email,3da0000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/6/26 10:40 AM, Akhil P Oommen wrote:
> On 3/5/2026 4:10 PM, Taniya Das wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> Add the GPU_CC and GX_CC (brand new! as far as we're concerned, this
>> is simply a separate block housing the GX GDSC) nodes, required to
>> power up the graphics-related hardware.
>>
>> Make use of it by enabling the associated IOMMU as well. The GPU itself
>> needs some more work and will be enabled later.
>>
>> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 68 ++++++++++++++++++++++++++++++++++++
>>  1 file changed, 68 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> index f56b1f889b857a28859910f5c4465c8ce3473b00..0e7a343297e3f5d7a8189f50726dc6279078c21c 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
>> @@ -4,7 +4,9 @@
>>   */
>>  
>>  #include <dt-bindings/clock/qcom,rpmh.h>
>> +#include <dt-bindings/clock/qcom,kaanapali-gxclkctl.h>
>>  #include <dt-bindings/clock/qcom,sm8750-gcc.h>
>> +#include <dt-bindings/clock/qcom,sm8750-gpucc.h>
>>  #include <dt-bindings/clock/qcom,sm8750-tcsr.h>
>>  #include <dt-bindings/clock/qcom,sm8750-videocc.h>
>>  #include <dt-bindings/dma/qcom-gpi.h>
>> @@ -3001,6 +3003,34 @@ videocc: clock-controller@aaf0000 {
>>  			#power-domain-cells = <1>;
>>  		};
>>  
>> +		gxclkctl: clock-controller@3d64000 {
>> +			compatible = "qcom,sm8750-gxclkctl";
>> +			reg = <0x0 0x03d64000 0x0 0x6000>;
>> +
>> +			power-domains = <&rpmhpd RPMHPD_GFX>,
>> +					<&rpmhpd RPMHPD_GMXC>,
>> +					<&gpucc GPU_CC_CX_GDSC>;
>> +
>> +			#power-domain-cells = <1>;
>> +		};
>> +
>> +		gpucc: clock-controller@3d90000 {
>> +			compatible = "qcom,sm8750-gpucc";
>> +			reg = <0x0 0x03d90000 0x0 0x9800>;
>> +
>> +			clocks = <&bi_tcxo_div2>,
>> +				 <&gcc GCC_GPU_GPLL0_CLK_SRC>,
>> +				 <&gcc GCC_GPU_GPLL0_DIV_CLK_SRC>;
>> +
>> +			power-domains = <&rpmhpd RPMHPD_MX>,
>> +					<&rpmhpd RPMHPD_CX>;
>> +			required-opps = <&rpmhpd_opp_low_svs>,
>> +					<&rpmhpd_opp_low_svs>;
>> +			#clock-cells = <1>;
>> +			#reset-cells = <1>;
>> +			#power-domain-cells = <1>;
>> +		};
>> +
>>  		pdc: interrupt-controller@b220000 {
>>  			compatible = "qcom,sm8750-pdc", "qcom,pdc";
>>  			reg = <0x0 0x0b220000 0x0 0x10000>, <0x0 0x164400f0 0x0 0x64>;
>> @@ -4515,6 +4545,44 @@ tpdm_swao_out: endpoint {
>>  			};
>>  		};
>>  
>> +		adreno_smmu: iommu@3da0000 {
> 
> Should we move this node right after the gpucc node to sort based on
> address?

Yes, this might have been a rebase artifact

Konrad

