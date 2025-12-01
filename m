Return-Path: <devicetree+bounces-243387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FD7C97551
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 13:42:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C9083A3B19
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 12:42:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EBCB30C63D;
	Mon,  1 Dec 2025 12:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XfSegWom";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WgEzLYwx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5838730BBB6
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 12:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764592915; cv=none; b=Tts8eGErRJOtK9jgVZ8RSrWBn9Q2hVqK7I3mpojBi+uX41Crfj2F/kTxy3kjUoCgCqfd9dPvJmQDSig6feRthDgo+J9fdpVG/I7BWyWwZEK0dYYFdRKbwj9/f9RkbnZngoiNIF6JJ+wcsQdNLFdyUHWqaywBQ/nIIXZ99lmP+kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764592915; c=relaxed/simple;
	bh=fWDw6+qdb045VDfrfsusUVHCedGA4zHWbEtbTShoaas=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DWC4lo7ZJw2csS2YjvZ+y9DAy/cr0HkFbGOnCK4N/O1Bhuv7JxqwPABkXuUdLze36x98ZbJhJpbfRwLmPLYPOqPQEkVdZnqyKUzm9YHcnIKMSrQNVTnNlKBrD2VEgtBupvnrB6z10l+mX8wvz7o8VfIkogywSknUFmApIYdsWSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XfSegWom; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WgEzLYwx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B16ihUg3689189
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 12:41:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	efxguySsNIbSl9hBDOqgLLXXN2ezOMoBT0kkasWh2J8=; b=XfSegWomeJRUX9WQ
	3PPNCaLGV3jSWO8NK7EO2iWSlknFhQppCPSDiRa6pCnTLSne43fCusrO4e9MqepB
	tV3JHigZkGZd5Xh7aAa9HflEpvNZSDw9RnFqvVcu//WxcfOKHsnUnRULEhvD74ow
	66HmB7spE0JdRn46sx6y6WL4mRX+mJpODykNBRALch2iQWN1lZ7+1WzyPnuKjcId
	t8si/APr84N86RmDVsQbZ9D970YeXiynm2RLowsQ9c82EM6OfuYqyGwJqqLd+Okb
	8mLxLOZdG39/UzOiRp93atJ7q1V6yT01hNhzEM4e9d0OrQxYoD8Br0l6gMkLF+JE
	0Tn4yg==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4as61411tp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 12:41:53 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5dbd3b72401so403081137.2
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 04:41:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764592912; x=1765197712; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=efxguySsNIbSl9hBDOqgLLXXN2ezOMoBT0kkasWh2J8=;
        b=WgEzLYwxCukxibmcIAhvK7fFo/XMOuTT6l3MNBYMuH8UFCM4WyDXbJ+U33S5M+AQOo
         3hfkKevcHErN/MNVmye3rYiUY7ybJW9DdM3hCwftBgHzj52ul3NifeYh1o17sezEs+Zm
         7LWfjS4J9DyPPYPGCSqK1JiOaYK6WrUm7Pz/70TMS5Ygx9H0nwYhZIxCCEdZWBLfjfOc
         BubklvjQ/Xbs79eHLe/KRXfY2YvbHfQzpr9wx3FLbSxLREOZQ1rWyHlZSuC5gtCMxBn+
         MRrWOaxaJm7GpqfAPqaiIL7IYoeUoFu/IC6hc+Hvp/jgLFvCFmkuCYYaypn4fYM+S9AJ
         fDZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764592912; x=1765197712;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=efxguySsNIbSl9hBDOqgLLXXN2ezOMoBT0kkasWh2J8=;
        b=Tf5A1Iux37Q7ddZjxluQ14HxrOMAXVXFE4s7+6iR9xojFlS2VV86VCAn3bGlfRay9W
         vThgGC5bdiZ9PlTrQOO6FdiKtm2PawqOs22gLUhoWpmlj8EOPCJvmAod36HCD/ii5H8R
         PxPZLHZS9ZCIciXXpBc+NiPC1BmE1KrSb+8j2+2/ZNAo7JY/Q7qpW7JWEnACa0XXyQkv
         PxfvZzpBztzCo+vLS5gCjV+TqeC9J4VntIabJAJCw/ceAs9BUwyipCLOz5AIzKz4sKXL
         kSfbFjchUq47FaH5Er21pRQ8vnT34XlBrFQ2EyctpxKIyf6yN2zJqglMWomIyHtc3faO
         NnNg==
X-Forwarded-Encrypted: i=1; AJvYcCVJBZ5zpFSXCQfoRlj/v/QORcWY4DEMXWF70f8/4ZvXNho0Qo3vPcovmkXFlyQ4uUdUZTZ6k4UXP7wu@vger.kernel.org
X-Gm-Message-State: AOJu0YxK9HMitJoI+6cwvY2umBC16zpXgqi3y3vNWuX+XVzW4ITfzw2D
	YnbE9jvM21tZXQ1tdQ7M6dCkmAGHjok0ugD+qwnZjrQy9M4EJKZQLZA4efeZBVp85NPoy2tUOzz
	rs1WhXlZRdscbipKuWAED1ztnRmukRfuX3VjnWIZ3gujvtzwfS3zuDpSxHkmVUPH/
X-Gm-Gg: ASbGncvBgY2sCfxuwwRWz8WB6TqgfPhnGVFmluctpmHZ9azFvFc/+/ZXgxo2Iz2niL2
	rEAT7f61d4rvAD4zC1P1Xx3rz0QMKrA9MSzdfltHd3uKeDb2vQUoY4f+mtFG9Hvr9HGib0/nvav
	u8o3IByLLNFfDvYnCppT7i52xgCeFD90Lvu3OHcmLTfJO49Utr4dw10/hXBfWE0xODR+yKMmfVt
	pcrIozO/boNIKR8098iJpIMJTIJiSUNcjhpu9BKLRgAFigtsEF1jUlKdg4Hsk01AH9C1Ea3rBCd
	SHeSLj2RVWW52WuCXG9fs+GdDTLV3o99vwaRIuI4gWGfHSbge4uwPL35kKWpKnS21aGfrIgb/+M
	HCjlL1tRBkvuRwXL+nrCWelNoLHcHHzS1ULR8ChuCtfvDrN8qeLOkv/VLQo7z07kq2r8=
X-Received: by 2002:a05:6102:5089:b0:5df:aa2b:180d with SMTP id ada2fe7eead31-5e1dde61b92mr8252676137.0.1764592912409;
        Mon, 01 Dec 2025 04:41:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFew/hIB70b1KHsS/i5fEdNSchR06vLXyv46KJ/nhatuVYJMecxasmxd9pXWF4Ak6k3OjUlVw==
X-Received: by 2002:a05:6102:5089:b0:5df:aa2b:180d with SMTP id ada2fe7eead31-5e1dde61b92mr8252661137.0.1764592911790;
        Mon, 01 Dec 2025 04:41:51 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f51a9819sm1235023266b.25.2025.12.01.04.41.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 04:41:51 -0800 (PST)
Message-ID: <adcac270-3668-4b17-b430-d67ef311dd7c@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 13:41:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 12/12] arm64: dts: qcom: sdm845-lg-common: remove
 framebuffer reserved-mem
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20251125-judyln-dts-v4-0-a5a60500b267@postmarketos.org>
 <20251125-judyln-dts-v4-12-a5a60500b267@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251125-judyln-dts-v4-12-a5a60500b267@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=J/KnLQnS c=1 sm=1 tr=0 ts=692d8d11 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Gbw9aFdXAAAA:8 a=9kGY3m0iPZF_axRxbP0A:9
 a=QEXdDO2ut3YA:10 a=ODZdjJIeia2B_SHc_B0f:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-GUID: gGqWDBTVfPpOI2cpIbirnQK_avpRs2Fz
X-Proofpoint-ORIG-GUID: gGqWDBTVfPpOI2cpIbirnQK_avpRs2Fz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDEwMyBTYWx0ZWRfX1g39ccRJRNLb
 wAlrRX3Cfq6yLNqHlweyVbVQpSrxkQYwbHxmz5Prvd6CHI+Q8uBInQDZ27JQHLwC63JIoQ4tcjP
 HIARQgizK8eum3A6enA9BM6V3wR9zjEXion7obwCKlxR0Pal2KulG/LL9xF9BFEmy1MFybCyQ7Q
 9EFjbKgF86kQEJMt7hyX7jk52g5shBEXaOZaX6B6YaK17Vj4lREKZxkX9w/E62Uek7cLGOAi9BZ
 Ua6IBufd0f4KinAMAyVZEXN1J6seM6ZaBWRyFSnUXluhu5z4iHW6AOV2UW+lBNkuJqF+d1mvN2M
 R7/Yfh+v6Iy8lOwCygoq0XZXUAiFpaJeCQMouFcKmp/2643nCQwAryunZoNnjqDwoz2nu1em1CC
 WPIfjLxvxm0Z1BYcsRO/HmsxE0I62g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 lowpriorityscore=0
 adultscore=0 phishscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512010103

On 11/25/25 9:12 AM, Paul Sajna wrote:
> It causes this warning
> 
> [ 0.000000] OF: reserved mem: OVERLAP DETECTED!
> framebuffer@9d400000
> (0x000000009d400000--0x000000009f800000) overlaps with
> memory@9d400000 (0x000000009d400000--0x000000009f800000)
> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---

It's defined for both devices that include this dtsi.. perhaps you
could remove it from there

Konrad

