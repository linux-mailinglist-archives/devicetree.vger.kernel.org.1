Return-Path: <devicetree+bounces-115935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 019DC9B1702
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 12:27:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E403283800
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 10:27:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69D3C1D0E23;
	Sat, 26 Oct 2024 10:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IxqRcKor"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777291C3301
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 10:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729938472; cv=none; b=UehF0Cb++1Dxxin/X8UeTkgVCSYFi48BrBUdOrY5w29gdHs+c6XQxjkKz86z/w87UendXxDVXHSNr7+T0bB68ZtYZhjfDRjw06zbBLI5faBu/l/wpcqhY25gELPHIezF+HApSQVpcb4BkCSbHRTwEUDaX80iDkngHEgKb1KOeVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729938472; c=relaxed/simple;
	bh=QARV4EjB0z9QM00KDCl1cRNblE9JjjphgNZbZBTDSAQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y2mhEHaCfDGDo0XhdSyPVmUPElTOFHTYi+eb0yClmzOOqZQVvLZ2ixxx5b2V2sDWYseKVvzG8XyiIWtm87DP/VVW1sqt/GkFZ7LkqPeIR0x2lIjEt2E//2sDb0wRA6m4AxWbuXwmf/CXm9OeQMh4hhpLVdbnGrejMWk5rwVZkBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IxqRcKor; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49Q4p32b023100
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 10:27:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XzFIZT0jT6VkNh8nT25mmdrrEwIfz6lQ7KVoOuF3F9o=; b=IxqRcKorKRdd5C4E
	qZqtiyA9hBuWgeNwesMBicWQlYfLk+0Sud/DyY+8lnQh0bPXOJSLVHHbTthOOqo0
	qXF3VWx4SZL1KfOkm37CgmbSI1fCQNetDdFivRAR6eNnrqQkb+Eb9YWk6uaYINfh
	io/7UdoqfzveD6J43CFR+s8Zn2ATRNnElMGtijivN5Oza3bzntnQZm6dxY4IbJZY
	F7T8K5nTNnw080FDhe2+xlrr9fdZPOIy+Sb6Qb3fSq1h0KcuoKeKP+/z+3cI+2MA
	uP/3oSVCc66nHUGhBUPnYcpDZcVIidNLq4+Tq17QKgf3igAzLgP2yXPsavVipwvC
	3JObyw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42gqrggrx6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 10:27:49 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6cbf3f7273cso8247976d6.3
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 03:27:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729938468; x=1730543268;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XzFIZT0jT6VkNh8nT25mmdrrEwIfz6lQ7KVoOuF3F9o=;
        b=kNWNPWs1BsMaU7eGHxMtmrbrvIm3N2PaO+LoLJXkmuu0tQY2qzygmzIW9gOWcKCR0J
         FvFCdnGcwswx3pyuhOkK9EXaOpOFUkzcJeIUDyul0LUKRmN3yyMFuOjrENFQf5jvM5TH
         ZQ/LY6HLyCR6FlHYgHwEOXpVCHudBrgAVq/nbKLwt9K0iIb0dVGLWKOGiBdiakKNXBKg
         970C82MON88xdodgI+1h1shnbVrP+f+vVrJcNaprF4vFIvo5lt0uanC9LXP9a53ZbWaG
         0O7syL5TXH9DejfNZ2z6wlME6C3MNhk+GYC76GHBL5QuKYzQOIHsQxmLQTi4IwAFHZ8Z
         3obQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7x9TRlX86ac3WjcVYk3YPe4KrXhHf+4alpu0fRsDiVr3EwMXVmRSOacBJNRkMO/XKrXZqM03aPtMC@vger.kernel.org
X-Gm-Message-State: AOJu0YzPkssBM1A1IYWwHnRecrsLK+5HSyht3AxA2/beeHV7oD7xBwsL
	0iZbBOTABl5RsWGozGJ6mZi+WN33P7cLETaj+OIlgzpaH4Q+wx0DolH0h6hQzLPrfjPnr/PF6mo
	DM/cOzo0R7RnPsA2zS9eAzHAHofs7ZugjkmrsA5thcl94cO6iDWY0BXmq6yGJOYPmAsPg
X-Received: by 2002:ad4:5bc1:0:b0:6c3:6d25:2578 with SMTP id 6a1803df08f44-6d185816bf1mr15219216d6.8.1729938468494;
        Sat, 26 Oct 2024 03:27:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFCNDP+6JHefX6RVjlAZtf6vip20ovujCjMO0p56BAyhfQufvRH2h6sFOUe4+iPWQTZMoRidg==
X-Received: by 2002:ad4:5bc1:0:b0:6c3:6d25:2578 with SMTP id 6a1803df08f44-6d185816bf1mr15219116d6.8.1729938468131;
        Sat, 26 Oct 2024 03:27:48 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1f02951esm161891666b.71.2024.10.26.03.27.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2024 03:27:47 -0700 (PDT)
Message-ID: <07f712be-e30b-40e9-ac64-5fd8a26b145c@oss.qualcomm.com>
Date: Sat, 26 Oct 2024 12:27:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Add Xiaomi Poco F1 touchscreen support
To: "Rob Herring (Arm)" <robh@kernel.org>,
        Joel Selvaraj <foss@joelselvaraj.com>
Cc: linux-arm-msm@vger.kernel.org, Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org,
        Joel Selvaraj <jo@jsfamily.in>, linux-kernel@vger.kernel.org,
        Joel Selvaraj <joelselvaraj.oss@gmail.com>
References: <20241007-pocof1-touchscreen-support-v1-0-db31b21818c5@joelselvaraj.com>
 <172839929004.1375659.17484732521935836404.robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <172839929004.1375659.17484732521935836404.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: fYEmVhqH5f2hN5YL22MD2oq-pRRrQp5Y
X-Proofpoint-GUID: fYEmVhqH5f2hN5YL22MD2oq-pRRrQp5Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 suspectscore=0 spamscore=0 mlxscore=0
 adultscore=0 priorityscore=1501 mlxlogscore=761 phishscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410260087

On 8.10.2024 4:56 PM, Rob Herring (Arm) wrote:
> 
> On Mon, 07 Oct 2024 21:59:25 -0500, Joel Selvaraj wrote:
>> In the first patch, I have enabled the  qupv3_id_1 and gpi_dma1 as they
>> are required for configuring touchscreen. Also added the pinctrl configurations.
>> These are common for both the Poco F1 Tianma and EBBG panel variant.
>>
>> In the subsequent patches, I have enabled support for the Novatek NT36672a
>> touchscreen and FocalTech FT8719 touchscreen that are used in the Poco F1
>> Tianma and EBBG panel variant respectively.
>>
>> Signed-off-by: Joel Selvaraj <foss@joelselvaraj.com>
>> ---

[...]


> New warnings running 'make CHECK_DTBS=y qcom/sdm845-xiaomi-beryllium-ebbg.dtb qcom/sdm845-xiaomi-beryllium-tianma.dtb' for 20241007-pocof1-touchscreen-support-v1-0-db31b21818c5@joelselvaraj.com:
> 
> arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-ebbg.dtb: touchscreen@38: 'panel' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/input/touchscreen/edt-ft5x06.yaml#

This needs a bindings update

> arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-tianma.dtb: pinctrl@3400000: ts-int-default-state: 'oneOf' conditional failed, one must be fixed:
> 	'bias-pull-down', 'drive-strength', 'function', 'input-enable', 'pins' do not match any of the regexes: '-pins$', 'pinctrl-[0-9]+'
> 	False schema does not allow True
> 	from schema $id: http://devicetree.org/schemas/pinctrl/qcom,sdm845-pinctrl.yaml#

I think these warnings are unhappy about input-enable (which is not really a
thing on TLMM, see:

e49eabe3e13f ("pinctrl: qcom: Support OUTPUT_ENABLE; deprecate INPUT_ENABLE")

Konrad

