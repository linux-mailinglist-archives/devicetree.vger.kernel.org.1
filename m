Return-Path: <devicetree+bounces-239367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C33C643A0
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:59:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BA5DA4F23C8
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:53:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8788D332903;
	Mon, 17 Nov 2025 12:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="osiUHDMo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gQ3zusNH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD1932F740
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763383465; cv=none; b=dwB4k8nbONuJ+IlHVyx0BpTMxM0yj5o8/VwxhqqqvrFqWVdb1kh8VUPtonh6QmgT1YTfmUUgoF8Gyud2YrHlsZ06HjhQGx/DfDfkRXgbINCdd2bMMyCmtjISn03Jd0hwfWl0Y9k+0O0gjf4SwiS6m42k1GJAxBFwXEcFV83zwpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763383465; c=relaxed/simple;
	bh=dnV1PFfch5mDdlabfhFaJhpPoXxmotqCnqwvhtEtBgk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mh2Pl8cdtlH9IXjVmk7Nbo0u2tbh95DQerndBEeLK/GHSUfdr/3NXhMvjI80vwToYosORBZjg3ZR5b9MAjypvRxW/jsFZCg8gUGL74eyVvj5YZzJQEN/cHiBnyd2grtp6BBlSlXWzDqVM5kNbTuVNJ4FZfnG8a2xGoVfLv++hj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=osiUHDMo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gQ3zusNH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHB6IE84108048
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:44:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/lftkT/tjklKe1rDPsuHn+wZY50mWongrOco3Ne99DQ=; b=osiUHDMo5WAbD+1K
	wm5y9p9ykN7rtVKrN6WhTDnKdruwteaLYkXwSpnnpGmH6saen51Io7MT1onrgvlK
	rUYopazMRwB1HymbrP3W2A+6VWDjgOpAnNGX2AbZDnhrqmcpwJ4WgJGy+ADuekLf
	x1ejtQ8dGhrcI5NS8zRcfSzvo9R5HOd5qoZvAVG0X0hL/G6Y7kEYi2z05GZ1ggeK
	Pv32QyWcK2rVMdfvoDxVc7baiT8wNUVXTbP8QvPACPZy4dlW65Hs2Jx/Xp5bvwqN
	ul0BbBwBtz5sxAZFQAwuFNtejrJrKZeay0cI1lidvU714ZfQtMcgrAn9pCva2WoJ
	AXBD+A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag2hp88j3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:44:22 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b184fa3ffbso154859285a.3
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 04:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763383462; x=1763988262; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/lftkT/tjklKe1rDPsuHn+wZY50mWongrOco3Ne99DQ=;
        b=gQ3zusNHDEy1ruzjJzIzOTTB8PIYgQ3SabSOBJym5BsgGX/r9D7FEjMsvCr7fW4LXK
         HbrDxG9h/gZxqCUcLsnmh4kTOFOENg+XHrWErFCLTreqLwC3wi3pf4Qa2MVOq67j8Fqv
         cbKXMW/r7jXAkwLU/Rhg5y4/Op5vRFtwPQlj7gt/w8n+YNhvWGTfjbQ2PQHVr72D7xht
         CJtodTWK7AHKq0bm7VDAcpcJ49Sqj3Ttr3OfhbtESTe5B4XdkqGqCszZdpGNBVta2g0C
         YxemhUSZz9OCLsxhXmOKUCIAEhq7S9gNP7FhOYZ0xJr2tKhWhf5CZC53DCfWxDQSVr1k
         /3PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763383462; x=1763988262;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/lftkT/tjklKe1rDPsuHn+wZY50mWongrOco3Ne99DQ=;
        b=ElZsVAWVhaY6a8NfFekMdK6umwLFXh/tYy1z+NK4ogOiQ8Qkx2r5iR7jGFD+HE8sAu
         p2KA1h1YegCDuHgvk6nhbYc9UVA8/wo8Ay/HesIQMC2ZtzVdAePZ+ePZ9Al91ukTm9EZ
         02xRY3xBcyFBI11LpmRLRz6+IpXc0RbZoCGOv7azZHJTSJ1zQHY7u/0FaBFasrx79cYp
         39Y5sjnYmkfIbbH6CPtfl/x5kxwPSPS873rMmynsiZFNlR7vyIOOC0VLWt9UeV5O0cxD
         EoZ0btr05r9ZMGs907/ICU/V3vb+Us1Z74GXzzd1ak4ykpB1cl5lzNnJsTjKDZBE0tEW
         TLOA==
X-Forwarded-Encrypted: i=1; AJvYcCVs12RPva/LnazPDMNqXOue+qEBzl4dHB9sw2S6qo/xyQezl+slx6DLPUMwNKzfpsV+u2ry+oZbk9nn@vger.kernel.org
X-Gm-Message-State: AOJu0YwCpyj6MZAx26WTyX6zcajRFrEe9djZ75w13+gd2gEx6Khve2D3
	/Fkq/B8lJjjFs2oaBw+qFv2vWWEgIdRqngcLeqS64WohMkPmL1LqWrcjANgam9KSwNzlfgEHyKr
	9lssz1zdlQJXzqnRMRMxmyxlvUOOL1w1+uDTPi2If/H5BjfMh0kCcrgV4615k6EVT
X-Gm-Gg: ASbGncsZtpEh+Gm2ra7AugPq/PIyfbW2GtowhWQd6MfSSf1awwZAPZm8494+YLZVnpW
	nmDV8Oku1kV54hLWVelrj321nVrj8kGN9r7mHge+k4mHBIvjzbLo6wx6Bk+qU1iMcieDmZ0n58T
	8wh0mhyysPFALNkfey5zRO4+Kv22UOnHQbzZaeWBtn1KInsCRSIdpnI/PRn7SWjejuSSMZJ210A
	3VEIKooYbTnAO61l7QxIl5ee0onYGgjZVzDSb5+BjTpppyqNoMotToPQac45tGkWpOKaINtMIvb
	wJFCseDue2NK4ZVqTwFVszWNz1K02PHBUJLis2QgdSP5kwO3xRdRTzuz0n9kfh6C3SVL0sqntBU
	KdfIlu2hmDd+pnUlRPvPX8VZnOlKgfyQXsnz9tqzlYTIyNeAzOn9AMeeq
X-Received: by 2002:ac8:6f08:0:b0:4ee:1063:d0f3 with SMTP id d75a77b69052e-4ee1063d7d8mr70733841cf.11.1763383461909;
        Mon, 17 Nov 2025 04:44:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFHR33oOLsBt89AmYPqYYf6ff1bqIAYFfqdO1YyIpeWjwi0X8p/qCxou9qnDInOO3zMDw3qmA==
X-Received: by 2002:ac8:6f08:0:b0:4ee:1063:d0f3 with SMTP id d75a77b69052e-4ee1063d7d8mr70733511cf.11.1763383461507;
        Mon, 17 Nov 2025 04:44:21 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad4487sm1100223266b.22.2025.11.17.04.44.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 04:44:20 -0800 (PST)
Message-ID: <8a2f9708-6f3e-4c4b-942a-8df7b4d6e127@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 13:44:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] dt-bindings: pinctrl:
 qcom,sa8775p-lpass-lpi-pinctrl: Add SA8775P LPASS pinctrl
To: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, ajay.nandam@oss.qualcomm.com,
        ravi.hothi@oss.qualcomm.com
References: <20251116171656.3105461-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20251116171656.3105461-2-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251116171656.3105461-2-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: YOe08sj2880qB0BiHSr2rzpxX6hnkKE_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDEwNyBTYWx0ZWRfX8oBAbQZH06eU
 yN4TkHPSmDci+4u+U88R90zND6crJtBUGDHY7E1cXXHSkJWfELZfJhlOqW7z6mTx6uiu/P8jwMs
 FhkwGnmUYpfC0CqTTHRUrX8PWb/Ty9jglrf10+uLqBqYSaU8QeIx+NQJi0CXo3kuory+mMc4xsy
 q+m6XvWizxJyIN9LG5Artzjfw2wFOead55pc0uxMRYF2xBSZAWCD9w4e29Tg761QWXnkV3y6oEg
 0euQVG2Wfae4TAgPYzcEwNbc6PQxeI10I4gEJYgkHmS9bkFGoYFhtJdo6Yr3VoLVAg4HTnPSjqO
 CNUa9ZxIG7YLBTkq7LSzEOxTaByBDpo2V5hcSnDp7InRaes7OK6pLn64vcxSdtNybday/tmfPIe
 UR+NP6UFLVOJ/8Oopae666GDjx3y1Q==
X-Proofpoint-ORIG-GUID: YOe08sj2880qB0BiHSr2rzpxX6hnkKE_
X-Authority-Analysis: v=2.4 cv=Y5L1cxeN c=1 sm=1 tr=0 ts=691b18a6 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=qV-wR8aR0mFXBdsaau8A:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511170107

On 11/16/25 6:16 PM, Mohammad Rafi Shaik wrote:
> Add bindings for the pin controller in Low Power Audio SubSystem (LPASS)
> of Qualcomm SA8775P SoC.
> 
> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> ---
>  .../qcom,sa8775p-lpass-lpi-pinctrl.yaml       | 106 ++++++++++++++++++
>  1 file changed, 106 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-lpass-lpi-pinctrl.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-lpass-lpi-pinctrl.yaml
> new file mode 100644
> index 000000000000..01a56dbeaeff
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-lpass-lpi-pinctrl.yaml
> @@ -0,0 +1,106 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pinctrl/qcom,sa8775p-lpass-lpi-pinctrl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm SA8775P SoC LPASS LPI TLMM
> +
> +maintainers:
> +  - Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> +
> +description:
> +  Top Level Mode Multiplexer pin controller in the Low Power Audio SubSystem
> +  (LPASS) Low Power Island (LPI) of Qualcomm SA8775P SoC.
> +
> +properties:
> +  compatible:
> +    const: qcom,sa8775p-lpass-lpi-pinctrl

Are the mappings the same for monaco? You can preemptively add the
compatible here too, if so

Konrad

