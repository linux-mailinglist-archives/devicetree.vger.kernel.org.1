Return-Path: <devicetree+bounces-199438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E7885B10A2A
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 14:28:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D0F25AC7BD8
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 12:27:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CC412D1303;
	Thu, 24 Jul 2025 12:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pZ/bUx0L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4B82BE627
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:28:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753360101; cv=none; b=GbhBWR3dN8eeaVJZhayVFtoqb973xa1hswYs2XsoEndrNuW8pHQ3kcxhEJ2hW5fk7Vbmbg6B8GW5vNpRLfD+HCX62Ijon8ILcBJA0H4ZaAfo2DINkTwKzjecQR9279B3qIaG03HNhGD7kMc6UQUS0vxBDgla19ICFacXmCuR17g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753360101; c=relaxed/simple;
	bh=PS/lPEJP/kn60OGyrwca/Om4b/q/eKQQkvFZLz9f3ys=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ozSMsKO6Q51IeMfTRo5ud2G4b5890NfFBEGOY1Sm2VGkCG9Di/Sj5X8lzAO7B4lbku8cx0DfypomQOKVa8gSrfnSWEf3QivQ2Cpju9VJTo4lSbHtp8XLUozUtrIaXYIaZvgGJZGeIGHhZ6JodKPMZOY6sJ4HFB1u5W6GpFsf/tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pZ/bUx0L; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56O9XkTw015391
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:28:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B3ZLo2+2fJPY4hyQo6fk0rzcySBaD74Pvdlk+MHH6/U=; b=pZ/bUx0LPrL2GdhO
	LGFAos+lPY+CucStSNNS0Q0QtErvK1AMHffPLteTAo6QOHMDrCmEHKrGX2H4f0J2
	Jwa2Kpoe11XAnXRUDD85F1bnXabd11GGSjuC36nAtKHXW1z2LpGPWVDjtMYHEPOt
	VxOEfbPWkChvXQb56bG9pHcLOHSYFpO646b2EuWCLU+gXxUiLW4wfXQP8M86Hq20
	XZukhASBRyMlsJqFWVgRVn86bEmwD3N+58nFWjlyzejzvOe19muWqOLdNrNv73vK
	meC2cSzHSfwA0zgwQqycn5l3/5xyv3j/OiGk2Vr/gr2do1zSls54VapgoWnjzMBP
	h5LWKA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483379tuc5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:28:18 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ab716c33cdso3736251cf.0
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 05:28:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753360097; x=1753964897;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B3ZLo2+2fJPY4hyQo6fk0rzcySBaD74Pvdlk+MHH6/U=;
        b=AZ8pxX9zukAZKVFr6G9ksJp5zLWceXiCNElYu0tAQpeCTKmKSip9dO+izrvxiuNz54
         eBshU7SJeznc/4uHBq787m5VJ+1PJXp67luBnhCQTMo6Kh/ghWasQx5rqL9Ur7Y9gK0C
         X70TszfFVARZj+exYIiFkK1k4YVoxJ5B27B0izFJIdwDmxdgcBu70X32HXqfueYhciEx
         FWeU++mP1sLKXCQ7sqPY0zUsLyoJUYRdj28FT6T+cuxMTcHSJmWvGkSOT1tPrn/Kxl63
         Yy49/0KMTXDAkLrmeSQ4h9+yZtJgb9gSFIuLL4/t/KWzp6iQKrRN8n9uaIZYN8bwkFcQ
         GMyw==
X-Forwarded-Encrypted: i=1; AJvYcCXxMAD2iW4GN3gLKRc7D3COgXnxfuvzT4RvYqbKx8gZBdVlmlRLF71MUHtxSbfTkXD/nIqYurfX81L5@vger.kernel.org
X-Gm-Message-State: AOJu0Ywabjr9MPaCoKbQNFGZkCpAucHJ7iWWenwj++uE7yCVKA9FRGXy
	wc5JuoQ06b3pduDQFH/RIFWOgxbVC3BdSWTw0aeGuEyi0p5OuntTNRsE3JkaKlH7+WGkwVRZtm5
	+F4vB70emKIy0M5IEnZ+Dh1z4zWrOjXyECu5X2sJwFw2vf/3JpeuSwLMZvSnAEjWl
X-Gm-Gg: ASbGnctxMdtwtYZk6h/zLKoy5FHMjW+nwtF/YKCuykJf4ZHxIMoWuGZ3xEDHN1qecUu
	V9H5iJE1eVIgaQCAXyxB2fGwy8w0oDXaZ9s1ryxnOEh+cwf3+FpUew7RXT5pKMygt4LyirakRYf
	hDrKhx9r94FlFTXLVILSz3525LVjGR7u2hsOX1o74qDst40TAXX+zFFZDQmJG0ofFI2V9Eehxi3
	NEOdh+9FIeTp/8JGd440CA+kWKtfHRiRB3kDLWiu9/EGTqniA7VSoL8+EYNKsdszWED0I05EBad
	9XMycaQaf5A7PyG/JRPlNWD7lpJGyxkFb3v+PBrT7+AbFCEFM9J8WRDNoYCgFNsDzt/rXVj2+yG
	LkTqATMuwY6q4iHLAcQ==
X-Received: by 2002:a05:622a:1485:b0:47a:e81b:cca6 with SMTP id d75a77b69052e-4ae6df19501mr42399391cf.10.1753360096926;
        Thu, 24 Jul 2025 05:28:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG04/Btn8OG5XttwObKWzhY9/1kfcycD5C2rV8n13Z+RV0wFel9k+duC5TJvgsreuW5Pjh9YA==
X-Received: by 2002:a05:622a:1485:b0:47a:e81b:cca6 with SMTP id d75a77b69052e-4ae6df19501mr42399071cf.10.1753360096374;
        Thu, 24 Jul 2025 05:28:16 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af47ff439aesm104487066b.150.2025.07.24.05.28.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jul 2025 05:28:15 -0700 (PDT)
Message-ID: <91857a0f-f21a-44b8-ac50-a551abe7c5e6@oss.qualcomm.com>
Date: Thu, 24 Jul 2025 14:28:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] arm64: dts: qcom: x1e80100: add empty mdss_dp3_out
 endpoint
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250724-move-edp-endpoints-v1-0-6ca569812838@oss.qualcomm.com>
 <20250724-move-edp-endpoints-v1-3-6ca569812838@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250724-move-edp-endpoints-v1-3-6ca569812838@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: kqNXdhEdNXruwhZ6LdYZ6QKedlGDA0Eq
X-Authority-Analysis: v=2.4 cv=btxMBFai c=1 sm=1 tr=0 ts=688226e2 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=6j0C0c8BI2W-d_oQNA0A:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDA5MyBTYWx0ZWRfX4B3KhcVWyn7v
 ymgYtNFaaYxLkKGRfUN2hzQIG1r22TGqXI/MtjdqrsZv4JrxmmU4DPG2tpv/XLYxXHM93N2jf06
 fOsk4LmtCf65wJ2HBUSlKW5AoqpSaFuyuVh1loeqmteZSjw13yu1kr2vyOuFW6tt4tio+BBk9I2
 MQqZSbfVn7Pge88X/02H3iRLkyTsZIjYMLijW3dv2/TFfQQWv9wNvwwCOwtTEJWzMEz87XIiPvV
 FoJusbE+YNmSUIz9RmLgDnR+K/chpK2BvdR4W7ofIJs09etKZxs32qvPSfVyT23dZzr25msOF/J
 atYKHG53bmA9G74hB11kl2D5vXU8WVgS6NVo736ebuwI+9EnehTKTs4YbvP4mN/9q9osPeL0+7w
 T7xY50bSdS4y4EfjkLQFxBI6bWLA90fvWn1v6PNu3W3flAX6Sl8ZjBoZAA2cBZTCTK7+hY8j
X-Proofpoint-ORIG-GUID: kqNXdhEdNXruwhZ6LdYZ6QKedlGDA0Eq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=715 impostorscore=0 mlxscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 lowpriorityscore=0 spamscore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507240093

On 7/24/25 2:23 PM, Dmitry Baryshkov wrote:
> Follow the example of other DP controllers and also eDP controller on
> SC7280 and move mdss_dp3_out endpoint declaration to the SoC
> DTSI. This slightly reduces the boilerplate in the platform DT files and
> also reduces the difference between DP and eDP controllers.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

