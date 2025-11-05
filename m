Return-Path: <devicetree+bounces-235157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64163C34F84
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 10:52:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 352604643FF
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 09:51:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31921308F23;
	Wed,  5 Nov 2025 09:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HWZ7Yygb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UzoBfa6P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B020D2DE1FE
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 09:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762336260; cv=none; b=nKM5LUdZKadj2ms3SxKNrFON88ldTAdULQIAtp6aZKcTLO1XGpr6FAAwWebkPeYvx47S7yWuAT63CKXnohctewA2aiE5lGZ0GTB6QFaiMZ2yWEMGdoAhsWIkBKdP9OyVWKYjhWXPoY2Nbv8AAaGobQlZsWknW+z8hvJbOj6hGuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762336260; c=relaxed/simple;
	bh=Wz9pz6+tUXLoQmGQHZtV2nfAHoQ3q7VvMhyrm4ZiN9c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ulDpGG5urYgSIsyLt7DXOA3ivbwPOVVxRPkbcJW9WMSUH9TRakw22oOVSysqiBw+LbVyXz/X6cOVHLx7SjiEXStRX6pKN8ZOt0UtQMcmb0/RS8TIi5zyANbkil2dmYuKBsXYi7NUkktTCoTB6eQ/YNZ3cPBh/Mi+B7V24Ku2Wnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HWZ7Yygb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UzoBfa6P; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A571PhH050980
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 09:50:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ne1vLI6iVgsCQJEMuLTX74xqCKIhtplm71Ycr58Qp4Q=; b=HWZ7YygbsUnH8nYI
	+DqZotw9gcbMFfmNKo88cPp/sOj0ogWBMXTtbQ/2IITJ65Q/12l2Q4hz2kiDEIou
	dNnCcisD4J6Xd33zxEA0XdxOZDe3Fy+55Lu4eEQRm0gk5pej/cF5mygK7q3jPfjo
	keV/M49YHsX93a5jXQt0NhEWQe2ZKNvC/qufXxbMM4t+Bk/ELJtNVu0B+8LqXHnn
	p75rJLYMklfQy20iQEQTFq49XxYIUlKa1LIzHvCIPEnDUZQKGF+290u3jYhPx4Os
	1c+YZAvPhtlcfc3k73Pk6yH3YCEjHf9sf6EKB4vhRMstDUu5Y0CrBgTFkpzovjvz
	EVWqfQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a81u0gfpv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 09:50:57 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-293063da120so18539535ad.0
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 01:50:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762336257; x=1762941057; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ne1vLI6iVgsCQJEMuLTX74xqCKIhtplm71Ycr58Qp4Q=;
        b=UzoBfa6POtCJ2n76AOUCUzCegIRAJEJ7qLuCkuWHNg+g0z0ARp2e4FE8CvkfJ3T3rA
         oPqzBC0wG6pC7fXoqM/LGpRYoDI38yHdIOF+6M9YFC6anREzL5Ina8mfSBkZsteON1bc
         1sqK//tcaKVYhyDqzXvBu3f31oHqpwnMWVeL1FhYaeG8nfYlMcSK9b1VJEpZOWIeO9rR
         HkNyGf5+VOayAtaEvHKGexyatDQ87xgYMZR9PY98oyjDzGeykGm5TtxKAxDR4tWKAFf+
         MrV24+ZYEfwHFRWwU8Ruld6PSOVO+taYZX1I2/h2CQ1rdH+nQIf1tBf8mpUkATYZgplD
         14lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762336257; x=1762941057;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ne1vLI6iVgsCQJEMuLTX74xqCKIhtplm71Ycr58Qp4Q=;
        b=BzXIl7HK5AZf2LDCdEBQKLX9A5YZk2Zcff/wR0zJpurFKEsR/Q8Fc9U6IYBcBwueUv
         A7m09NLJ9cGln4DPI0a72kQ9rlJBRCUcHMWlXjEIWA0A4hei43rPLmj/CEUYEFw0DXFh
         C5koULrGkurAUlGuGtblfaxwe01fLRYcQpXzkNB4ZOayOvOqBf0vyDgd/hB3zYRgQlxA
         IMihzWKTHhD9Mf7NDQQ566IMHbcLbUSqTgM2iU0J2lvrPvnlCPlaSU4pYiMlMYpA1pvr
         jCvwcwERGKh3Ekl1iJIqwDZmVOJVkUZWMsl0ektEIleLfWqIriqSmNPil3phxV9ycA4N
         +Mlg==
X-Forwarded-Encrypted: i=1; AJvYcCUVB/eRjrKxm0/GL6JpW7GcRSzvIReqguNELD9KwhBZA4IfOlOLCEROoQVadwGHDMBQpWJbIhXcAT20@vger.kernel.org
X-Gm-Message-State: AOJu0YwEwwsLm8PSdS9LiZt0afBF66ooxRE2MDORKgo2YMeYxZ+Su5Ry
	uLPmJb7b7DWWqpgFk3LXb10yt98kk/p7K4NqeLAOXe3vGL2EKxvReMSKGcQXzmvCZ0o1NjiEMGQ
	p+Ii4jbMOIgA5pyb39mzGpxWt8pcxPwaYpQ0WMDm0Vl4JMjs8GL3lKtazjFwpUMyr
X-Gm-Gg: ASbGncstr7APDzhdbeagM1yOiZuM6dUh3VB3dWHS50xEt0Apwer8XeDXwc9iDNQdYPA
	HXyOKchWp859wOXJ8+ujl96T8A4Z/p8Sijw56vdig9w0WnAAXseA4QaRhHm+Vq7w0C5QpLPfrm7
	ewIfon6qLxSLxcAAXXOn23pClMmnDperQC0x5pZoYgtQqix/32M+H/NM51SNDGnAY6QEGqtHHaq
	nGcUd1npiVTxKIB/asfNJ7HUD+FsdrO+6QoyhAScqdXO4zcpnGvf38jbmerBj5jFET2knUAJUcQ
	hK0pUZ2OG59wuR6+hG/hpT3+rDxKYFuNf6DH1KVqzlB9oKbmDvRLVQu1Edc/HOJ+MPqE2/MML4V
	aqV9sHCx52JkMQXW1QyJpw0UEbVJPa8tV3YAQshiwiSS5zD46u5WLh7ZkFgeTFlst4w==
X-Received: by 2002:a17:902:d481:b0:26b:1871:1f70 with SMTP id d9443c01a7336-2962adfc959mr20850125ad.5.1762336257175;
        Wed, 05 Nov 2025 01:50:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHqwv1Ydy5K3oHLxa6rtDjqvwFgbdcNFOCKsKVhYaJblg2CGwvVVnkiFHWhkWFXCyv8JvmyUQ==
X-Received: by 2002:a17:902:d481:b0:26b:1871:1f70 with SMTP id d9443c01a7336-2962adfc959mr20849955ad.5.1762336256582;
        Wed, 05 Nov 2025 01:50:56 -0800 (PST)
Received: from [10.133.33.129] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29601a74214sm54253835ad.97.2025.11.05.01.50.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Nov 2025 01:50:55 -0800 (PST)
Message-ID: <d8b302ca-c2fc-4583-be77-6b720d5bdab7@oss.qualcomm.com>
Date: Wed, 5 Nov 2025 17:50:51 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: dma: qcom,gpi: Document the Kaanapali GPI
 DMA engine
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
References: <20250924-knp-bus-v1-1-f2f2c6e6a797@oss.qualcomm.com>
Content-Language: en-US
From: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
In-Reply-To: <20250924-knp-bus-v1-1-f2f2c6e6a797@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: r81RbbRe9uztAy1nzvCVVGo5YgLMUc4L
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDA3MiBTYWx0ZWRfX5+bM8F/jHvSs
 5lhfXDS8KOGCiYMnY0BTYRADDY7Kloi1L0YP6FcNsdpMVu9XRiKxUxpzUQ3uJre+ZuQcX9zsuSZ
 4slZGY4Fer+096ZcrRQn26gN1anCXMbyTOakNuJ4+svnQ+KjLTh4OXB7VKdhRx7NBFRkc272Ehk
 aKHNNjftN8rWhCL6kegYZ4FLw+w5oe9AI4lGw/vsa8EFgKCqknnk8ZjCE7twglnTM6WaoGOfAry
 U94Avkpob5NHoQJhOVi9FaElgMNlbC0eHCOhl7WWbjgr/1iWtHqs1JnZWL52xc+lGACUFOiHUKG
 CnxxPUQL+NWVYyIdHaqUFbwdZKcQAauXjBWUSvIzscL2iTYrVEyrJZxQOllqCow+7l95tMKt2nm
 4JI8GHJdSIjx7myuDBW/XOwJjYE+Nw==
X-Authority-Analysis: v=2.4 cv=KaXfcAYD c=1 sm=1 tr=0 ts=690b1e01 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=2uM0ewAiIFN9BRPiibcA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: r81RbbRe9uztAy1nzvCVVGo5YgLMUc4L
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_04,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511050072

On 9/25/2025 7:44 AM, Jingyi Wang wrote:
> From: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> 
> Document the GPI DMA engine on the Kaanapali platform.
> 
> Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/dma/qcom,gpi.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
> index bbe4da2a1105..e7b8f59a5264 100644
> --- a/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
> +++ b/Documentation/devicetree/bindings/dma/qcom,gpi.yaml
> @@ -24,6 +24,7 @@ properties:
>            - qcom,sm6350-gpi-dma
>        - items:
>            - enum:
> +              - qcom,kaanapali-gpi-dma
>                - qcom,milos-gpi-dma
>                - qcom,qcm2290-gpi-dma
>                - qcom,qcs8300-gpi-dma
> 
> ---
> base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
> change-id: 20250917-knp-bus-e5ede66d8e0e
> 
> Best regards,

Suggest to have glymur support[1] as well like other similar bindings
change:
[1]https://lore.kernel.org/all/20250920133305.412974-1-pankaj.patil@oss.qualcomm.com/

-- 
Thx and BRs,
Aiqun(Maria) Yu

