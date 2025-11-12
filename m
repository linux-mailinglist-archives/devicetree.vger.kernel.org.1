Return-Path: <devicetree+bounces-237487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F158C51740
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 10:49:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 06B42188437C
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 09:47:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F28352F998D;
	Wed, 12 Nov 2025 09:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mw6t/RvO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BvvWOTlW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D482EA732
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762940842; cv=none; b=RWkK9bszPUiccprJWE96Ar/gAhjTNxufO5v3Xjuu4ETX1Yumt1pZ7QJEgy3JzFbtQjTSuXGKisXBpan99TwH45R8o1GDIZfPJvTHE91JxkT5c06eEAH/FrqwInqWei6iHnZ7AiLx6rIxE2T0WUG7dRxhq6MhddbOdqp6k3MNqMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762940842; c=relaxed/simple;
	bh=x9HZDMX3Zl7CIXyTCe51Kaaysc210oZGR++rzbzttjw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ieXi/Ba8zwIrYiagL+8tg5G27MfYQ35nuUapl34NpWMBl2AqF2ovnTpvoiRpBtqrL2wb87FeXcpioN/l7b9gSzMwbHaae1xJz9UFIdLgPP4m4KBIQQqpTjh/d77o/2I9SQgooWz8oLZ8l+2n0dbz1qaF3IXif7iOqCnLi5UVb9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mw6t/RvO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BvvWOTlW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC9CZjA510056
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:47:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LP0rQwhtBnPbXDJLLh9Cb7GUk7T1lPnHvrnhjlBK9gk=; b=mw6t/RvOzawLe/O7
	jAaHOnYA86/+4455aXIAk3wk5pIXd9CPeqaqhzPOkjVd7nvagTiMlJS3L2v5CLAE
	hsB5REIrLL952+Qizg25AnjYyfzR3w6Rje+XDXF+Vxp34FkVVM+tnXXdMBecmoyR
	HKdFSzB8LwByF4LNE/OcEIKbO9TK1aj6ezf6xGTUFckHl3wkXYsyrSAcIYdSIH6A
	KfqY4sq3KKZSrSQrTnFNYFQ/P3tigo77ofhIxsNZz1EP4wbqBB02+rMoievKdhUN
	56K5OsWXlSezcx9adFwde7mf3b238ffq/cL9k9jlwvqHH3AqiCGMAfTAizcU5bLa
	FNYYVg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acqdgg6cv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:47:20 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-297f91638b5so1940655ad.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 01:47:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762940840; x=1763545640; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LP0rQwhtBnPbXDJLLh9Cb7GUk7T1lPnHvrnhjlBK9gk=;
        b=BvvWOTlWnZpKWz+l7bEYN9rqz46mwvhDzu0F9XCFpEPPUfVCFPFN17fXZVIGgSZlvD
         nEPIAJkOgY8KxvnYnBIeqtwl7D8r5NQJ2PTD7tcCFysquFnZailvBu6H6rpR1DBhsXl5
         In+BLmx8H4rQY/Y8NUeWLdlsRJE0Yyb4nZ0y//WvvYoaHlsUTCabJX7wKUtW1FwiR0ZI
         El5EEfUhRYYdIblgObONCza2GvaIQYiB7dFzHvV8kn08BiMWA1iik2UNhvAcTDbM9hel
         Kve6VIWyPVaeuk5vQqowyUAfrI58p11t7+rmMzY2CI7gWDoIwb2bq1ZfIMKan/89Xdir
         nllg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762940840; x=1763545640;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LP0rQwhtBnPbXDJLLh9Cb7GUk7T1lPnHvrnhjlBK9gk=;
        b=lb9YcKU6eheeYwywpatrT7U+WTq93qq3q/Ftwl5CmEs2jBcagGyfQqWELIA3NREtpM
         TzbCVhRs8+SsOKAEq8Z0zExQB94vK4t92T0em6M0qZO1yaOXQxdDEmDulK0te/OyJ+bJ
         4HpQGHgMEb2RMuaPremZZoFE1yyRTUA5iNYeScuwb6CbUXGXgmC/qHnSJocQPRdNxY/D
         +4ApYb361N2ypom750Ebyk6X7A/nJqh7ffxL3WH8oNF23ubtwjNXTaUsTu4asNMKxXj9
         EkUT7nTlBwQ5Wa4FekJh4GORYYAKBzFTbV+siX2NLakGPuIgMHQYtxuA99PhG7PthyYz
         SMoQ==
X-Forwarded-Encrypted: i=1; AJvYcCXh3dpRsnpLyNRyxPx5w6DQFsBMdIfKwaDdD7S9bxD02+Dt85mD9VyrmXjrdEhejuyEhojA2UzuVCnh@vger.kernel.org
X-Gm-Message-State: AOJu0YwQhumIvaZrNwCgPGPGBhlIPAYcFv6DchK+Kr/lO6NfEo9Zzl7U
	VbsWanA+yoz4RnIc2P2XOcp/tK8cQzWzR1rSou1ngh7nPTmAkkmruUONyO6mz3a5k1FRGMHzmiT
	UISTs+J8r9t3HhowgqcpQIVWybHZOYMnrV4f/GWV4kFdBzKm3rlbOgw8OJcYJ1y/Y
X-Gm-Gg: ASbGncuJCDgoub4Fw5uI2BWS5+wGqS1IainPsu9V4N8URkPJKqwB+nEPwsZMBVG6y3U
	EpkdsBcr7TTCSBFesDIIPychSI9Hg3/iz7cC5LflBVVn/rTEKDbwcOUYUcig8AQoKJN7qgN/UBV
	gE2USBCrLO4nkBJ8B+5Y66XLrkEr/wfzI9G1IEzElV1rA//BJls/3lXZmKHyoPU2iw4SD8ljHkW
	sfZ0KeOuE5Mzz+TcHnBRrg4Ywp6SaVQJjXXdArCqCBRgteozlEYXLZSd0DXnKF5aIYwfGi8XImB
	DC4kLbZk7KqZFWr9pKnPcL3Oex5GY51mMnVd1yMghG5iz3WHYRBZOuh3uxXiaAiiAa1gBmeB3OI
	+WcJ9qAHcDJrjwxrhb2TbQTThzHHDUYrOn5ZZvvF4mhCE0k/tNzxnOvor
X-Received: by 2002:ac8:5dc7:0:b0:4eb:9cb1:c290 with SMTP id d75a77b69052e-4eddbc9b895mr18101641cf.4.1762940354045;
        Wed, 12 Nov 2025 01:39:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGCn/jV7wFdg3W1AVfUFL8B7J0xd9T8o01wXhaCJP9H2hJuRKsMlSsXgVFBDzEZebZV6pBNAA==
X-Received: by 2002:ac8:5dc7:0:b0:4eb:9cb1:c290 with SMTP id d75a77b69052e-4eddbc9b895mr18101571cf.4.1762940353655;
        Wed, 12 Nov 2025 01:39:13 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bdbcea8csm1551575466b.8.2025.11.12.01.39.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 01:39:12 -0800 (PST)
Message-ID: <db7ca9cc-46e7-4edf-8419-eb03782c2346@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 10:39:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: hamoa-iot-evk: Add backlight support
 for eDP panel
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
References: <20251112-hamoa_dvt_backlight-v3-1-f35b44af7fc4@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251112-hamoa_dvt_backlight-v3-1-f35b44af7fc4@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dtrWylg4 c=1 sm=1 tr=0 ts=691457a8 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=nPG1Do-yNho4o320QkMA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 8BWmHNMHxc2RF8eBi7T1nb-5Sd37mENZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDA3OCBTYWx0ZWRfX62fZsvNXKp8f
 hPbtsPz5/mGpEHY5zEhQ8BVZIoHhEoNM0oUPNIxmm+09Ol61/vfrAO6BeIiAlANpAR72uHHSYdX
 ukHufW6ETIIsYrWivgfcm+ZKVpnpxkjY/Uk/DChBSFmsBUnItqnw8vAG0CWVX23409qCqrOjVB4
 sdtO73eA+by11Duwc/vZfXLFvPRKDCqprklFqyV8GaR9Dlz09dEgU+vKaQoFPnufPoQQbXH29ty
 IMV8Lq09tVdGne6MUORxvBA4TJRFSXDAEv+CEAh8tAAbXoRG/TEFqCm8bgZj67xckxqD61tDtye
 YHmL9iw0Nrks7egpATXHFwuFxyrEZXtYGfiFVsMGzfGhXg5i9DYhcILmGuclCsuJ5BtJlQmvKwV
 CKIxstWV4LzHgQbLLzl255DUofB2OA==
X-Proofpoint-ORIG-GUID: 8BWmHNMHxc2RF8eBi7T1nb-5Sd37mENZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_03,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 clxscore=1015 adultscore=0
 impostorscore=0 spamscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120078

On 11/12/25 5:21 AM, Yongxing Mou wrote:
> The backlight on the Hamoa IoT EVK is controlled through a PWM signal.
> Aligned with other x1e80100-based platforms: the PWM signal is controlled
> by PMK8550, and the backlight enable signal is handled by PMC8380.
> 
> Describe the backlight device and connect it to the eDP panel to allow
> for brightness control.
> 
> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

