Return-Path: <devicetree+bounces-247857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDBCCCC372
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 15:15:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6CFA33012ED9
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 14:15:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C00327E074;
	Thu, 18 Dec 2025 14:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hDwRztqx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PP5bIoQV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F11C27AC21
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 14:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766067337; cv=none; b=lofeMyuQy3XNMNednSpeXAz0Zqvk1T4sXkXaTaB18q0WGjKguwflW8KL7mIivx4hMyrO6VR8rpZTvFCQaWu20X374mA/lTz5sI6ZzPEz6jI/67LZzDJBdxiN9arWAzhvuTlaNsiwSnKUjVOOIpnbJa8Q2ulM0Tcc6bchNKiFQqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766067337; c=relaxed/simple;
	bh=AUlZo7y3Dg30huPVj+URSjyAVJ4n77mqF8dsg1J3LRI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uTm3Kp4pz1Tg3A0SQhN3kFPr+ilbNw1O8/ZYKE2qsTxQ86G2QfUVF91pO6d3ZdBP2hbA2KuvWJIeC6vYE5odUFOaZ0JPXSFKmV+8nPgro9v9Ntw5SjVfA06iVan4V3FzfIwsa+t7jV52QG+JRulFYmntyjHPAXm0ZjCqOsH3YY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hDwRztqx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PP5bIoQV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI9AS5c174246
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 14:15:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uYqTnOT91m4ng7A1+8x7fNdWtleqwYmaPl3PlqN+ezw=; b=hDwRztqxKISaGMoK
	Gf/dG1ZiXry4Ut02D7xPZxZliCA5o2rPP6mrOrfgywuAbbdGterfOx1VngHkTpAe
	5uf1hoAodELF4k4ZDZQZMTB0eXdpY3kAsX8ETVwJH25vrMuMfNB0fVJLZs9RUkRb
	FJAk4K+mVSQhMO5hdG5dvfEHcWHSAEWXKQO6nSQjHJDNFovy2hGh72VdrQTBtF6Q
	Hn4R3vRKxqSi2Y1T8T+uwGPQGioDrRibn6jO/pp4PHtggIcVKAoYEYaQlnP4VBJY
	gV4emCWXWVUGkIQslXi5A/dzgq8vEkAVLK3udcGNwZ+43P3NJelxm/4QE5EeKeQw
	xRTxhQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b43nmtwrk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 14:15:33 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f34b9ab702so1376191cf.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 06:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766067332; x=1766672132; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uYqTnOT91m4ng7A1+8x7fNdWtleqwYmaPl3PlqN+ezw=;
        b=PP5bIoQVunweuw3+h/CgdgmxYUQ1CIIaDDPV+eZ/yV5UhFzVvwF96usS8wOC7rekKt
         HCHkwWOcMVqfrnKzJD29j/ZfVYBiEkL12y3JM+hHYMNdHWCHFHmmrADrEMzTQ850Nzwa
         hd1O4eZFdoKE0jd7XPJ39biMUxVA8DmsB5Sj4YlzkcuSGd7djRFAy7UjQU7MR6y0BEzd
         +7qvqnLY5iZJIlGLSJlIqsf3/ZoaraP2P8AYbSJWt3w3pgeNf7/A1vfjoGOH95ey2Xzo
         df9/UrIM7FSCOjieDclcpf1/Qf/6rJb86SD3DNwcgQ1CS7F0fxfeGLoDeN9gC1S0L4Sz
         FlcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766067332; x=1766672132;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uYqTnOT91m4ng7A1+8x7fNdWtleqwYmaPl3PlqN+ezw=;
        b=DwAYO4T4b2T4XYbkQOF7ucd5DIG7Yfm1W+ZR8h/vvSwec5uJjWLT0uOZbBxGAyRHIF
         LtNc/D6kw5ypvTOR2QKON8cipCoaORUyyOGkoTQCKGlzJ0u2oxbEPuY5tfVq9pS6v47Q
         iHLhMskxNmANCbVjn8j9c2JszGEZFrd7o+dHTYwI9MJkZRq8DQB/MsUKayUbZmYJ51g1
         b5E7EkvtRlo58TefWqUtJ1lkG49pFI/E069WZGpEiCeAbtByUGtsnq91g2ke3u4ZSknN
         hZ5XI8l7c8Eyjzj3jyw0W0+vpq1gu1lyjrJaOxLl/pqyTec8ucrMY2rrWKIde11FCF1A
         Pt/Q==
X-Forwarded-Encrypted: i=1; AJvYcCXtKIOJSjfIXqpf1YnFCX0F2YNjQvs3ZMNCrA03aNTR8U/ZVIvjNO6xqBZjh3C2S5sWv+xSlXOjhGAB@vger.kernel.org
X-Gm-Message-State: AOJu0YxWZuCZcLT2Y4xGmD7Phj4Gwx2zeIk04qnDd9HKDph6YtJHBv5t
	r/7Dc9MfzwiVfDcOWl5iI3wgyIg3aZibsE4Mz8mROGbDT579entZG/svEiIgZJCYJsSVxiQ5mqi
	x1EWtm2tDFguGmI3xTlP9D+BfAPZ94Juxk9D/Wcw2a24GUe4n6Jha0tE/Smbaayyr
X-Gm-Gg: AY/fxX6byDvhW1bembC71o8GNPiJ9c+dYBLvyqNuN0971xrcFFpDovZ6cwF+OF7iLlP
	UShldS3++DDFNzFXHf6hc8S5PyvGleRv4rWMFtITcK9jv0EOTLGJ2reJ/JFbbrHiFUC/jVjeBG2
	R0NXOkZTKNLsz1SpbTkxzQlnIBGJHCeoR/PyHphs2cmZLTkNtdGoNEDO9/2wApujZEhsaPY64lC
	2t5k9CdDPvCwV6S4M9Egc45TzYjPjwjPlPrCQlykfaTszukGe7ruvyO22h4wWkZBJOoshpTbEkd
	3bI0uORgOGyNs7oFaLlDEePXHqq52iv0w9LvEjlMgMh3L8ITwyn/u03zo2aHxmdWCeD4/zSfcto
	5Fv6ej8TMBrJw6GGTtqVAQpw44B/hS8icor6OZ71tkFdB8gRh8eHc/0OjkpxAiUZ9Qw==
X-Received: by 2002:a05:622a:1b90:b0:4f1:96c5:b592 with SMTP id d75a77b69052e-4f361189f54mr21475881cf.10.1766067332155;
        Thu, 18 Dec 2025 06:15:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGbKcPhLTi95myOrrgVwOR7cxMWFybCHxSy+FkHP4hhMqvQyasR8A0JUNadn/IEP58AaOumew==
X-Received: by 2002:a05:622a:1b90:b0:4f1:96c5:b592 with SMTP id d75a77b69052e-4f361189f54mr21474891cf.10.1766067331395;
        Thu, 18 Dec 2025 06:15:31 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b80230d0e11sm241715966b.16.2025.12.18.06.15.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Dec 2025 06:15:30 -0800 (PST)
Message-ID: <438a352e-5174-4361-b6e5-6ff5fe1ce0c0@oss.qualcomm.com>
Date: Thu, 18 Dec 2025 15:15:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/6] dt-bindings: arm: qcom: Document Microsoft Surface
 Pro 11
To: jerome.debretagne@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Johannes Berg <johannes@sipsolutions.net>,
        Lorenzo Bianconi <lorenzo@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Hans de Goede <hansg@kernel.org>,
        =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Jeff Johnson <jjohnson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
        platform-driver-x86@vger.kernel.org, ath12k@lists.infradead.org,
        Dale Whinham <daleyo@gmail.com>
References: <20251218-surface-sp11-for-next-v3-0-875afc7bd3b7@gmail.com>
 <20251218-surface-sp11-for-next-v3-1-875afc7bd3b7@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251218-surface-sp11-for-next-v3-1-875afc7bd3b7@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: h1ONAp8k9S_koZFxEmU9R01wRZeyW6ZS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDExOCBTYWx0ZWRfX6WmpNqhXxoBB
 PvHwQ0B/zUbFJzfBlNJZ5e+ZB+bH0jmLXqcB/E+fG3tceBOnii1DgldDXpjylnHCANLqbmrds67
 ahf5J/giqzMCvuKhGPvwtrJ/xLSarYyT77uuUj6N4V0jcpgRAC2K3lo4lTxcZFVNE8c4B41QoTF
 hu1s9c3QJPxon+qhAqIYRDgbONbHSuPy6/X0A1X1/itwyk919G014xHrCGpXjGjYOZ/FUnNgEap
 bFtXz6lRo00cTsjUCVpG59uLSoPcpviQIwQwlxIGsGRPkUevP4g97cXisVl9I6HAW67pA2auWkN
 /fPhdO22FwR2fzlUnT1EWqXszZFLrPBjenPXdTyUB6eMZeZTZzJL0DSATU3i9CObGILdALXxwYJ
 Lf4bhR4NJjOptQZ1shBE6Mh8xnEvBw==
X-Proofpoint-ORIG-GUID: h1ONAp8k9S_koZFxEmU9R01wRZeyW6ZS
X-Authority-Analysis: v=2.4 cv=A6Zh/qWG c=1 sm=1 tr=0 ts=69440c85 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=Os-eGSRfLiUiT30J7OMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_02,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 impostorscore=0 priorityscore=1501 spamscore=0
 bulkscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180118

On 12/18/25 12:56 AM, Jérôme de Bretagne via B4 Relay wrote:
> From: Jérôme de Bretagne <jerome.debretagne@gmail.com>
> 
> Add the compatibles for the Qualcomm-based Microsoft Surface Pro 11,
> using its Denali codename.
> 
> The LCD models are using the Qualcomm Snapdragon X1 Plus (X1P64100),
> the OLED ones are using the Qualcomm Snapdragon X1 Elite (X1E80100).
> 
> Due to the difference in how the built-in panel is being handled
> between the OLED variant and LCD one, it is required to have two
> separate DTBs, so document the compatible string for both variants.
> 
> Signed-off-by: Jérôme de Bretagne <jerome.debretagne@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index d84bd3bca2010508a8225b9549d8c634efa06531..7c99bc0d3aae3dc6e9c08fef0a535e114a3297a8 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -1067,6 +1067,14 @@ properties:
>            - const: qcom,x1e78100
>            - const: qcom,x1e80100
>  
> +      - items:
> +          - enum:
> +              - microsoft,denali-lcd
> +              - microsoft,denali-oled
> +          - const: microsoft,denali
> +          - const: qcom,x1p64100
> +          - const: qcom,x1e80100

As the bot pointed out, this is valid, but not what you want:

This expects

"microsoft,denali-(lcd/oled)", "microsoft,denali", "qcom,x1p64100",
"qcom,x1e80100"

whereas you're looking for 2 entries:

- items:
	const: microsoft,denali-lcd
	const: microsoft,denali
	const: qcom,x1p64100
	const: qcom,x1e80100

- items:
	const: microsoft,denali-oled
	const: microsoft,denali
	const: qcom,x1e80100

Konrad

