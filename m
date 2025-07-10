Return-Path: <devicetree+bounces-195004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DDAB00203
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 14:33:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C26514A46C1
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 12:33:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AC14291C0E;
	Thu, 10 Jul 2025 12:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GvAHkV1D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC7912571B6
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 12:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752150628; cv=none; b=p33SJyeD756ogBhPrNK072fCO+8kFAJSXvtMIbyUYDvta8KvQe8g6FVcDaPIUKEr4Q55onm4v7lNU39nXli+08fV3bdi6gP/mmoTr1VdQobGAQv+KQDZfaW39dYkQWwwOLsSkP1hP2DxkVw7oBSYN/xT9TlahiiEAnwM9OpJqtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752150628; c=relaxed/simple;
	bh=WUgGtb3FaJy2c6fVmMZ8K9Seh3fLz4hey9Em2827A1o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nDgVC4gPism1QV4XvZnjZeFBt58Ry6Oic68HEJYDAMsN4osAGE1OimeajEbYW42wP7DF/AlJNpcuL/a3n+Cp+TQpf6FDVDFndUuC33CkGRON48ijJ1W6PyXKIG8rb9NgFAZN2DEw3FYcZ2TeTkeixUmVbaL08P6WDoa6a2HxkDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GvAHkV1D; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A8FGaw002166
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 12:30:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	15LoABqpDtCIfi1It9cCfUAX1KivEg4wXRkHbkRQbuY=; b=GvAHkV1DbISamq3D
	SKvn1J+QmP0su7Bxm4EJlhWwxpZXQUxUz8hd6Whpr1uBSbNjFoEi7KjHbfG544mT
	OYY9q0MrKi+MF7QoSSz8/JlWKufKbJZe9qRWt2UzP51aSsf37eztDP7DtCehT95F
	LXYsE5ENzw6zBK9LK+CEjqkiJUrCNeGtXHgy2VeQL0Q5dIwiKN6BN2WYVU6rxeLu
	7b/TN2LfiFNmCSlbMLaVKxJfS4xJbO2d64tcx6EVujoV1qGT4bCyXmpoysOKLMQJ
	P+nVEvgTbX7elXBzS7nRRizVw6Z/uk4BkcC7jlEZkcO4iDkujZwKBgKXmQKgcdPt
	DiT1KQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smap4xxt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 12:30:25 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d0979e6263so16193785a.2
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 05:30:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752150625; x=1752755425;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=15LoABqpDtCIfi1It9cCfUAX1KivEg4wXRkHbkRQbuY=;
        b=jGIDziffX/oys1ZJ6zeGwFtHlKrZFFsIll11EngMOwt8prLF/ebdARUhuQIwqtnsE7
         WZQtefqeb09KHC+Vqv/Gw3K4pM3dxOuzdmOE6f52OCv4CaEeBjRPRWugvsCMzGgFroLH
         4kVeVzDcWw4OxmCorMJP0uCPtqsrfJ0DV0z9TS1KjstpxV0QwO1YKHWWO4cuB8Pr6exl
         uLxvsJWGJnbCa22yWwpw2Zr16XmUxpiuVSvmZDJhIGVDLd7pkjoh+ay8G2YsvSrOqrXa
         Lruwfl4CHHMLiND+C853lqOSNnjv1b0bSIhv/ndgKFhWufIjfKK1EyQfKiP7N/MqIlot
         7K4w==
X-Forwarded-Encrypted: i=1; AJvYcCX3xoRfyrGcDBM5LxnucnwuCxtkSI4g5cFSHT0wtY9fCF0Ti01TSY1q4jKIBOPzZuiYYNmbFfsMrC6P@vger.kernel.org
X-Gm-Message-State: AOJu0YztgqxnefOYPZTzgmnZSOOE6iSaaT++p9Ho3qVT4/QJLeyKI6Gg
	2Tfx3xc2eJ9K8P/bvdJyoeNm24gMLd7ruCVD0D0GnM74ISdZOVn69e8EDkIj0e1Gzal7umDMiZk
	dmQfuq0aUnbdah8IAY0Xfari5kniSIPMy7eRmWrZx3DNVdisL0PtWWZNchRWivKKP
X-Gm-Gg: ASbGnctjaUgFrGhVWee9BqlVpwjycsCO6QRPtfkQTFoDXo/09gOu02TdQBR9JoaABo3
	Ugmb3v9YYX3VOKwnvYQ/rPOGxrGqKy0C/AkZo0fZgQSEDVexjlsJScsaSFIdl3wKRBMw9fGkam0
	ynEj4n6nvPAueaBhLKJ6MkqAFsFOh1emx43pJcMGK+VC4XXYTsnFcm2U0scxup0Imd7FNSV91X/
	doGPYg/8q9P4cpvCVYCZeW1ghhkj2Wp9copkfH5vLD6iiN/0SnU/MQBXt0t/DS6TLJRk5lI16Fo
	wkgKnNFpd5YcI2NwVnT60ntY3l8u23pgd2a/CV0C1OG75sYplxGtYuHZuWwoFUlT2OTkWvAQlr6
	uhY4=
X-Received: by 2002:a05:620a:2991:b0:7d3:b0a3:6aa7 with SMTP id af79cd13be357-7db7b32643dmr353143185a.3.1752150624636;
        Thu, 10 Jul 2025 05:30:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEsy/uwC8lYDsPl33xS2aWjef2zzPFzxubl0Sd+4pv/iDw2dT0HSHhNS3QAIS3hF+0xe82zKw==
X-Received: by 2002:a05:620a:2991:b0:7d3:b0a3:6aa7 with SMTP id af79cd13be357-7db7b32643dmr353139185a.3.1752150624050;
        Thu, 10 Jul 2025 05:30:24 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8291bbesm121349866b.126.2025.07.10.05.30.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jul 2025 05:30:23 -0700 (PDT)
Message-ID: <3604f025-d04b-4d40-9d7d-1f9ce147c5db@oss.qualcomm.com>
Date: Thu, 10 Jul 2025 14:30:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 3/3] arm64: dts: qcom: x1-hp-x14: Add support for
 X1P42100 HP Omnibook X14
To: jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250710-hp-x14-x1p-v7-0-19c10c81713a@oldschoolsolutions.biz>
 <20250710-hp-x14-x1p-v7-3-19c10c81713a@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250710-hp-x14-x1p-v7-3-19c10c81713a@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Ar7u3P9P c=1 sm=1 tr=0 ts=686fb261 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=cH6R9-kdAAAA:8 a=gxl3bz0cAAAA:8
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=co6Q_9sMOBM-pvAMSzgA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=kiRiLd-pWN9FGgpmzFdl:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 9TclFspOBSKW3SLY6Jhr_pS0dAUwCHL9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDEwNyBTYWx0ZWRfX0G5Gpfoz+ubt
 OU4TUqfMi20kjH1ms/GzIEbRz6oeNJbZqcz/w0iiVp3ZbmDOq/z6/Ftqz+GN48kY86RsNBvdBdg
 vGy4eVvmoufBKz+lGLEO4CTfYxgeL+R8GEMKkBVk6xkzfKGWhFBSegJidNhmDhbZXIs5Owi3grM
 NXLLah5hiT4A0MwFazS7efrjFGDK1Z7G6Nv05wCDuSVpArIQ4RIvOJyVTMdsI+T+zIEMFochEOX
 tx9DoNbarf98qKNE6EQVoLyj9qS8bHvvPJLRK9E54rN3Z1h8hFaB0zOz7s62UozCzjIf1g3jjbX
 Tr8Q8jjN8arxjuzToEsFsYme8NNVBJ6b7H+UBUhRAZ8Zt6fSOBoJOEqnulIbxA2QgQ7ukBquluZ
 +SfysxMtHncDKrtsb1GcvpWWf8sIIwsKyLqbM+IYY/hlT+J3QvtvD9TaSF+Oa3miOzhXqTV5
X-Proofpoint-GUID: 9TclFspOBSKW3SLY6Jhr_pS0dAUwCHL9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_02,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=872 clxscore=1015 adultscore=0
 phishscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507100107

On 7/10/25 12:50 PM, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> These laptops are the same as the already known 14-fe0xxx models, but
> with a Purwa SoC, SKU number 14-fe1xxx. [1]
> 
> The supported features are the same as for the original Omnibook X14:
> 
> - Keyboard (no function keys though)
> - Display
> - PWM brightness control
> - Touchpad
> - Touchscreen
> - PCIe ports (pcie4, pcie6a)
> - USB type-c, type-a
> - WCN6855 Wifi-6E
> - WCN6855 Bluetooth
> - ADSP and CDSP
> - X1 GPU
> - GPIO Keys (Lid switch)
> - Audio definition (works via USB and with internal speakers)
> 
> [1]: https://www.hp.com/us-en/shop/pdp/hp-omnibook-x-laptop-next-gen-ai-pc-14-fe100-14-a4nd1av-1#techSpecs
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

