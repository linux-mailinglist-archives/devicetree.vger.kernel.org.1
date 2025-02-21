Return-Path: <devicetree+bounces-149637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECA2A3FFAC
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 20:23:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5269619E07B8
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 19:23:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11423253326;
	Fri, 21 Feb 2025 19:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CPaCY9zx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF391D7E50
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 19:23:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740165802; cv=none; b=sS1+7c9/hCKWbVnU5JVwaKoH5NyId6fspj+hZgb16f5w3nLo6DP8Pr6Ysu6k+B8T6H2o66UWoXknfhnrUd7JYPty4Plp3wMpkiyX46V3WkQPLLa0qwPlkewS2PI7dEOmiWkjQPySY8YTPy4vf1sTBGAHh7H6WKI5QgvsscgiGnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740165802; c=relaxed/simple;
	bh=WylaHPl7kQFGmSp8WXjj7W2gvI+NBOhDbeMQbmwatU0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ctbcSJ2ldl3VzuGWXgERmHDuS3DPorNaACiuHT8Hxa2F8KKYhXaA37dt+hDEEKMH0qIaCFY3qslFLPA6K4hl3/JcgX3kaBEL6nRgNbHuHYRhx3ztCWrwGZ8+ETHNy0Hs86SMxrOSaGobWZZJWMdsTU4IuKD5UlZCA7FCdfVlU4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CPaCY9zx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51LCmjCV015223
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 19:23:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Km9ahlx1nwdQ8uA3tj/aNXPGPboPCEVKF4XebUprYcE=; b=CPaCY9zx7jOEU+h4
	KxzFB0N3q1cHyfn0Y81LZCvGWDuOGwfstj5bjhSW0Xfqk4Z7tklRUZ1snaJyPYHH
	JYc4d6Wf2yQ5rsok+WGulQn2Iw/yLc44CQWRO6zcQN0s9mg7q5Xz0yRqbVl1gajx
	YDimZf+ZtQaBxmDDOjSlZvxaOINafDvbhGF7ALQFyXYwKsRybv95G7B/4uMbW0F6
	Wvfxx/m/f3BsZ4kPVM5nZYEwth68Ew56GQ6KoIgIyh5RlKz0AwGCHdYEI3i7xbB8
	ADfbTPyTPyyW0IQu2fX8UzrkL33KWid8QvcRcwxCBrnh79l1KQSY2fdYQ8WsKSFG
	kt9zrg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44vyy4k2j3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 19:23:18 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e19bfc2025so3528646d6.1
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 11:23:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740165798; x=1740770598;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Km9ahlx1nwdQ8uA3tj/aNXPGPboPCEVKF4XebUprYcE=;
        b=d92Zb37mfVUcexiazguLWigXD2X6BTBXwdszjqZ9/6GN0IGtRrl6OEj8U01k6cADJ8
         7M69PRjAInB1poEBs6GyWlw0oksOb+OfivmGnJ1o71wPBRJoXavtDx3gRq4hGANht+th
         T3nfPA9ftHwDfWjjR1AQSqnZDAs4QggGNhuoqjnlKo4iDp1c4F8W1faqROD1A/mfFlea
         fPiAIOD7xzCcax9zOxH6vIv7Jxq04uORKMtLG3QvX/uAR4j7CNz0Q5aKIgiOB07lVqAK
         n9xO4eEh9QwzVV38lwMyAUuf4OyvQfyekq5BE1kgmf/JcQZcmYzE6kYTcwIhHWRClnlb
         AufQ==
X-Forwarded-Encrypted: i=1; AJvYcCXlMgMSRgyQQHMc3YDFygrcr31FQ0cH7hd647BvicB4+lAikA+pASSxyk8ueJcqUHs4lf0I0MaCY+JT@vger.kernel.org
X-Gm-Message-State: AOJu0YxInjmsKDRqeeBFe72FvAdtekLdJhetdgaTEN2fpSbRxds2CZmT
	UPixoYGI+ysIIREGdiCgjuLnR3oAepSsfvX8Ebwr7ICfbUCY5k6C4+AFA6gDaY/bQRPWQ8ga0L9
	UC5m5HRGpOVQOBIUQxgJRC9eoFU3JfcgSTIu/CTVMwB/hnevtnWt8RE95h7vj
X-Gm-Gg: ASbGncsOGa/V0UJibqtyK9Wtm18gYunWunTInQhdJ1us0IcVnVZcRTdZsxenHggHCJS
	v5xXKdZj9o//J03rIEMMgqhOV517kpkM7pKe2tU/I0zTVw4kADvrTo5oQUc95dhk809SohPHKDF
	+eXf0hp+2vnZfFYfEVy4wJTE3U7xSJ1E/QzTw82pjG1M0zVQU5edEXVpJ124D1M9qI2wnu5Iuge
	9G9+As1L9feU5JflQsktnnemFVWjBIVcg/t0mCGIxRSpBznYucw2xAoNBmsXvHT5WmLNwh+5uxv
	+M80NP+NJHcmJ3ux0I7LdSsq0p+XTjixrFPigYjpCGcGKfCJy6jBLlTDIxS2bWIZAgEJDw==
X-Received: by 2002:ad4:5be2:0:b0:6d4:2db5:e585 with SMTP id 6a1803df08f44-6e6ae7d85e7mr22638796d6.1.1740165797727;
        Fri, 21 Feb 2025 11:23:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEhe3D2pb35rVzYTf0irYbfcNunEhouF+kKjaEaBYD9eenWOnmtYKYr2TVvZBWUT1AJ8DrVIQ==
X-Received: by 2002:ad4:5be2:0:b0:6d4:2db5:e585 with SMTP id 6a1803df08f44-6e6ae7d85e7mr22638616d6.1.1740165797364;
        Fri, 21 Feb 2025 11:23:17 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb7f766313sm1255261366b.142.2025.02.21.11.23.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 11:23:16 -0800 (PST)
Message-ID: <916d3d13-acf1-4ae9-81f3-7539172ee8aa@oss.qualcomm.com>
Date: Fri, 21 Feb 2025 20:23:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] PCI: dwc: pcie-qcom-ep: enable EP support for
 SAR2130P
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250217-sar2130p-pci-v1-0-94b20ec70a14@linaro.org>
 <20250217-sar2130p-pci-v1-4-94b20ec70a14@linaro.org>
 <20250220072310.kahf4w4u43slbwke@thinkpad>
 <wa4vr63eiaiqq54aauxviwph2wbosrmfypxpxtw7w32la6qz7q@flhdoc4k3d6e>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <wa4vr63eiaiqq54aauxviwph2wbosrmfypxpxtw7w32la6qz7q@flhdoc4k3d6e>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: c8g6zzflo15TOJ4yEvWcx3S1Pqr2UIRW
X-Proofpoint-ORIG-GUID: c8g6zzflo15TOJ4yEvWcx3S1Pqr2UIRW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-21_07,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 mlxlogscore=999 spamscore=0 adultscore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502210133

On 20.02.2025 11:50 AM, Dmitry Baryshkov wrote:
> On Thu, Feb 20, 2025 at 12:53:10PM +0530, Manivannan Sadhasivam wrote:
>> On Mon, Feb 17, 2025 at 08:56:16PM +0200, Dmitry Baryshkov wrote:
>>> Enable PCIe endpoint support for the Qualcomm SAR2130P platform.
>>>
>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> ---
>>>  drivers/pci/controller/dwc/pcie-qcom-ep.c | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
>>> index c08f64d7a825fa5da22976c8020f96ee5faa5462..dec5675c7c9d52b77f084ae139845b488fa02d2c 100644
>>> --- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
>>> +++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
>>> @@ -933,6 +933,7 @@ static const struct of_device_id qcom_pcie_ep_match[] = {
>>>  	{ .compatible = "qcom,sa8775p-pcie-ep", .data = &cfg_1_34_0},
>>>  	{ .compatible = "qcom,sdx55-pcie-ep", },
>>>  	{ .compatible = "qcom,sm8450-pcie-ep", },
>>> +	{ .compatible = "qcom,sar2130p-pcie-ep", },
>>
>> Could you please use a fallback? I'd prefer to not add compatible to the driver
>> unless it requires special config.
> 
> This is a tough question, I have been thinking about it too. But granted
> the differences in clocks used by the controller I opted to use
> different compat strings without a fallback. I think it would be hard to
> describe the schema otherwise.

You could use if-else ordering or is: instead of contains: but I don't mind

Konrad

