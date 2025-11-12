Return-Path: <devicetree+bounces-237470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE39C514E9
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 10:19:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6000D4F4D5E
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 09:15:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9F73274B28;
	Wed, 12 Nov 2025 09:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Doa5BFkw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZqVHpVIH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8ED7B3E1
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762938946; cv=none; b=F1cUygbFbcJaWUmgVUzWCWfb4atdrKatlq7brjVVsUGl3BT0L7xrV+m6v9Yf3bdqKrZpvD4IUUi/VQFANgQzwORD16xan1JYodFkL2T08uF7TyuqeE/vjMtSoEPtNE5ahkK69tGB3HTErFzRic60hNg9vERECfbDTsWTqLseSIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762938946; c=relaxed/simple;
	bh=rlf8y0snDV9ee74P7g1N2IjYrAAhAKaZER9lUpbbuiU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SIGu/ATGuHjbZZFpVC6qrK6S4Ia+CV2y22ivU+J/yTn3a83ekb2xCwjVNi8KosA08UHUBUPEE4LI9KLBAGfCoWBk85jn472rEAT5r3EVMGMdylc3IGDKAjoA/0L9EQ4PZT0NUwxYe0JwmeMUYw47+xUfqUC9S06ZGFN8AXayJv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Doa5BFkw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZqVHpVIH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC6SkTc350167
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:15:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3PUnj++Jn64hBRSEDXwukit2wa8UGEl9FRtBeYAMRBk=; b=Doa5BFkw/Zs/X+nL
	KBN+Vxy4zE9s1VKhe18qUQVuzoiGeq4eoywSmAVOIRZDYMEYUSzPUZNGyKqj5CKJ
	3IwGEUkhoGWeqUR1m3nwseJIrk6pFcgCOZyoemObsjRNQsvusohGHhukTGaJV13C
	d7mR95RO38IWA9QHPSF+IMEu1n2CTJYcmrBwi62jBW0fLiuEQyX3UsMKOGZN01J/
	LIjth3N0Y8Ym4N+V+2o+v1DL2EW/lYbvHjM8E9KR+RPjObZeNSqdU4SCscxqR0Kx
	sobE4YgDUwt8CdIQ0VjNdRQlk7Ld6nUMMph2zXuPDoe0nyT2M7fLwPNQyNz2EkyF
	wFFvlA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acn0nrftv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:15:44 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edace8bc76so2105341cf.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 01:15:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762938943; x=1763543743; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3PUnj++Jn64hBRSEDXwukit2wa8UGEl9FRtBeYAMRBk=;
        b=ZqVHpVIHYStZ5fAZNHezRYlmouQ1SM8yCNDQkCSy9elVbxJB7lWrTPYP4tU3zGVK+p
         vWPIwQF2FRe1oMB4XazFV2o5iatCgM3Ne3w2NK4GXvIzA7FX2dnys7nDwqBKMw2ERO3y
         xp6ykyDsmEuC1G9KVXXoku6a7/c/v+IMReH+iH901OZaOXx5C7j77rm5aANmkVAsZ7QO
         kgKrOUiv04KhjJGTEOwUSJq8f4IjIoRzr8Dj8RY1CZVWmEn+bgaVdxWLMfp9cCu9fou0
         aKGbqh4Imui+TIzMjCli2K5yBFGO3IsAp1wZ3pqkuwHYtRCV2W18b38YSgugsAM625O/
         eNqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762938943; x=1763543743;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3PUnj++Jn64hBRSEDXwukit2wa8UGEl9FRtBeYAMRBk=;
        b=wW7MiBYNkYB5l/Gt8onEXybI3hFwnnIpLwkwuUEbqWZzcWzMOgXmY1IbX2IRiAHcbX
         vSXpBMQMIk6poJo2Co9pNeI9LfUCY4gsVwnC/ht4giEmcFHT7rUZf/Ln1WOZGZ9iYfEP
         0/ioPJ7F3/6GzdzeTXJgm1/4xBv5eUug3Nv2V2Y57PaDJxLFdLexoD8sAtNNDKl7Afpy
         5oGvVtZgb40uJsIkvKEG57Jd0lhF/1aFLsDHs0pNqQrTj+V41s7mhxEm1Ag7zf9D7FZ9
         Dg0vFdZI9Lgr67/xVqnRpZx7YM5/LaSAYe0kcQed82BOcGzbDpv01Pgrcjp1z4oi88u1
         ANpg==
X-Forwarded-Encrypted: i=1; AJvYcCWRQPj4DVQsCuiBZVpaIVi9hFfivLy0dGFIW4St+O6+KRxES1YTN+fWRCDwT7uAe69HZFrkwcxzdtMu@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8vFyZ/jDsSspAJXXIQrQRHUMq0yvfJWcM+11iGS7bIlSCzN6Y
	emnGH49vYMS6rIZZWfk5qLksg4uCYepyOub2UAvtgiQkYnCvAO/3Dvj6l4sJrwRXy7711GwL3eX
	5r9z7hRMx5OrkCuyxzwKxNyUM9h0NoRya+adUtho+5Xkjo4hXsRoPIdLYiEUiY/JI
X-Gm-Gg: ASbGnculptgCHRRC20njmoiuHn/wWJTW6/jVvlqB0sKK8GC0lXb5ByLsyyBNBIACF57
	ZT34EqcNzx7821ppOMcxVQPjyD+XOBjsR2WwUwsnW4vDCiWSXsLo425lb2jook78r+px2eZlDEt
	PRTo0C9FnZLYh11lxenbfFIc2vs+EvAJ+ON9Ik2z55JRSMn7oFx5t0TXAbbi9CZ0KnRD3+9405s
	HT8Omqfx8WkI8Lz6kXO+0cDayehCvTX2yDgf9OMS0VpmaoBAC/moQcH8332YtdNDHUaFoFs3goY
	1n9IKsQPKhgPVCNbcwebtB5fngpQajFpRynffYchcFGnP5gNZ65sP0ndCSFY+urh0qVFyYHwwFo
	g1+hyNe7anzF75LXRs0ltOCxS6OVvr7/awC1GqeV2AB/+ZTbZo+Jl+yhS
X-Received: by 2002:a05:622a:1316:b0:4ed:b409:ca27 with SMTP id d75a77b69052e-4eddbd65605mr19011741cf.10.1762938943557;
        Wed, 12 Nov 2025 01:15:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGIdhR2DGreZqzZEtahMhnF+t1wp8gNXxchmAbpfq57uIBaqNWhaIUDo4VDLqiBRn37Rf8YVQ==
X-Received: by 2002:a05:622a:1316:b0:4ed:b409:ca27 with SMTP id d75a77b69052e-4eddbd65605mr19011641cf.10.1762938943105;
        Wed, 12 Nov 2025 01:15:43 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf9bc214sm1602419566b.52.2025.11.12.01.15.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 01:15:42 -0800 (PST)
Message-ID: <66b634ef-6a69-4275-b28d-2b148df22b24@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 10:15:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: monaco-evk: Enable PCIe0 and PCIe1 on
 monaco-evk
To: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ziyue.zhang@oss.qualcomm.com,
        krishna.chundru@oss.qualcomm.com
References: <20251111-monaco-evk-pci-v1-1-8013d0d6a7ca@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251111-monaco-evk-pci-v1-1-8013d0d6a7ca@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: pfB4BzEXl_-7NEVtgSiaivQHwAVCscYw
X-Proofpoint-ORIG-GUID: pfB4BzEXl_-7NEVtgSiaivQHwAVCscYw
X-Authority-Analysis: v=2.4 cv=acRsXBot c=1 sm=1 tr=0 ts=69145040 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=9FffyO56NNMGgoAXEYMA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDA3MyBTYWx0ZWRfX4zkODSV4QMyC
 uKw5Vgyc45CTBUAtFF64K5tNTi/nA3AXp5bw33YZGx253fV9R9zTNSoe4zcVyBm1+ivkzUippZF
 UwRa2dHApPDZt0rKjZy0sr4y18u9uv19oQyo7Z1PJoUt1WUwE4s7VydMkJR64585Xv4pXpy54VB
 C1uVlhxMOYJmM+6CS33kSV+Pcnxc2vFbfL/aOxDVXmUo31Prhudc1tmJ4pzAlmvMZnL/Edqkt+l
 HhpwFer2+RIWnBDyhEU7kRw1MRjpe1mGeegKsyzJ03MAgGBCO78emRPb/97sRiu+jFuOnd01o8O
 lMdSPJex0uBGrWRIOnxjgMvSqCRrlwfNKWel2vs+Wl5brn24Pr/g1yVWkLyu07d0isGe9fMibEa
 0HVk/NBZ8oARude5KLjLd/vAix7iFQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_03,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 bulkscore=0 clxscore=1015 spamscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 impostorscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511120073

On 11/11/25 11:08 AM, Sushrut Shree Trivedi wrote:
> Enables PCIe0 and PCIe1 controller and phy-nodes.
> 
> PCIe0 is routed to an m.2 E key connector on the mainboard for wifi
> attaches while PCIe1 routes to a standard PCIe x4 expansion slot.
> 
> Signed-off-by: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
> ---
> This patch depends on the series:
> https://lore.kernel.org/all/20251024095609.48096-1-ziyue.zhang@oss.qualcomm.com/
> ---

[...]

> +		perst-pins {
> +			pins = "gpio2";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-down;
> +		};

Neither of the two active-low reset pins should be pull-down, use
bias-disable to avoid spurious assertions

Konrad

