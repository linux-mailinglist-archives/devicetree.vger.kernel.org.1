Return-Path: <devicetree+bounces-255982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DA137D2F4B9
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:09:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F66530B2389
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1FCF35EDD9;
	Fri, 16 Jan 2026 10:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FJwTJJGg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BWtQcUd+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B82A031D393
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768558082; cv=none; b=R4xEnb1ODEV1D2BHGOUlf2r0BN1ZrG3VKMSw/ZSrU8Sg26I7R4QE/JFj/XELhfrFaxLy0xGT6dSOgz4Nw7Oe/+jDMEH19RKazJrgBhzyAzsU0pSnd/df/T+9fE+BAIYC9wiU+tWSJxVnmlLpEKzjDdOnt/Ieqn2tJcz1QxIohKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768558082; c=relaxed/simple;
	bh=4QebrYHi8s49B6sj+XuT+a7lSGj2d/XpXHh/yb6bJ8A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X/zTA5qbVW63bOriSGyHx72OayJ+Hr13fur7HRqoTFBjBIXVhf44vA9dBdYIxGhDtUsVGv4wPWlz2enx7zcPOmOQvjBNVVoJnShBTN1rm+tSuqCgQ2dqXgYVtkhUC8USHy3dDuoEZTcgt8meAulclGiBlHZVlFJOK/s+7bG/wvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FJwTJJGg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BWtQcUd+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G88hZG3892777
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:08:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gMp21ney8bm54p1fps9Pw9iiGOGyYYMunTK1tTna0vY=; b=FJwTJJGgW7eFqUaI
	6GTfqzIUGeKJva8mYQ4CVVPw6t0zLMsTCiZZKCkfHsi3cbvl2mQdJ5oq+t8mYnPq
	wY8cD7SvhiT1K3pMBK810jXv382zUkBCW9Js8ZxE+9Ot274WqpxhD1eNAMtM9VCV
	C2faTy3nsHxuLLb1MpBhVnKEamC9ZRxWK+ydhrrdLsBogMYmspZ8YBIq4+mnqE3X
	fiUCq4sY0KJuIVFZoQqR9BI+jcSVJMs4C5W4Qr13hXCOmTQfT7GBemWVRnPt7Cgj
	b8cG/XzCI8Giifi7jz4SX+gAfjDSGqZB8rbXFW/SzztNmhzPTZtu6ivTK6yRVplF
	t85RWg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq9b09qju-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:08:00 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c52de12a65so46372585a.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 02:08:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768558080; x=1769162880; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gMp21ney8bm54p1fps9Pw9iiGOGyYYMunTK1tTna0vY=;
        b=BWtQcUd+9ibywMpnJZCz/MJMAQvGJj3JrrznDDqCstsA3Zmx/ALgfrLPsFyX7XQ/SC
         euBaDdPEXVS+/frgXqz4yi15o9iccPQ0p8ni2pJUrRniSE5cKNpXvoUcwRSFTOl/ew/4
         nnvGCn/82gGtTODWbEAv8l8H4sYN6E6+YSRZa3ETrft7wJFshXRxtiCSJ/666/Dr7f4u
         3ncI3cpdFZe/OFHTatFWvSOxDMzBxakrP2f5mDU4mSzOJZmkTSSGW5vzoPEyKa0aNJeK
         Gm435Wm6lhCX7cRQs85kLDONEt6lxp4hShuxdjzId7XZwMvYTb1N1KtJvZ/bOY59+Qry
         14ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768558080; x=1769162880;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gMp21ney8bm54p1fps9Pw9iiGOGyYYMunTK1tTna0vY=;
        b=n4/6hDGQYRvRuoD28tA3fgJyqxQ1l0VYM4BIP7spyBVXZC66pCFBtugjztP3PPzikk
         Re6mncDdim/16sySQkAP46PmEnqmhtPabBdP4afrbKvV3dkXUhmQuS7bIBj6WtFlDkb/
         iH83PRxa3BA67aq3BbqWxcl4ys1wE8RjbtvYGDHblwDShspnZKSiLyRby4idWb7bo6ip
         f0cPCf8KMCF5l34fgq5awptmkeq3XGqOiUlBWQNB98uZm8u+5h7Sb4vqUxxXAK617bWN
         U3IkKHzzWF+mBWFfaumGFx91ov7fiScHrlNyCU65WslLBlhj/9ON2FB3PpSL+lFfWcUS
         L6dw==
X-Forwarded-Encrypted: i=1; AJvYcCVTDa6DJboCwz3i/swNQG8TG9q+7xcfDDu3KPhtOx2YUUdUglCLEi1JGCADqA91Gg1FSnnAv6mIlmo8@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8a5vdC7yKe19SLyyMC6xAz3p57NpgQCTU61KMbm6gnrM/ZwOf
	UlCciw9AOVzw4DFVpWjcCFZs2wv6oWERavkHnaYYqWcHCM8Y2VpDz3fZTssHpp9L2Nn73BhkE+R
	znrI59K44ShUcYC2lUhnGVz68NUnkLfReuG11XBbeXc/JD+7Z87KEP5G8b+mWBH8S
X-Gm-Gg: AY/fxX6QLn3UlLHSrhrnsQGl9rXVH1qPuJnAf8zl3E1zz13SCgKuUamQmAk4WEAQKNm
	tGOJhjt7SKbNoBJaAq88OcuIGbFl9BvrP6XL+bUxQBAdm0g9XeNbBS8p/jT2rjOzmPOr0S2tYS2
	K9xEKS8BVD2SUPGF3SN+IqNy5N6kWvqG0ckU4XHYtR++zT1DsZDa6vxiKmEn4gQ41Ho8uvkc4OL
	KFxYWJzvQxYIFAVsK/TuI6twBEANf4HNwzagL2ZyvtT5PzS0UdpYK+WZLn0tDLcVOtXAc/qkEvJ
	B0ACRO2xc/o0vUyU10QON8XLEiXbXLM1Ryu8KvJv8uBIeg49Feg2UZh9BTuXJ3yzIfQJLwghRXM
	WCCXFNI+L/qUUHjNw7qtiPedkyvoa1MKkJ7nBn04MurbiWMXcfbDArrVTbfCMq0UX6ig=
X-Received: by 2002:a05:620a:4111:b0:8b1:fa2a:702f with SMTP id af79cd13be357-8c6a670cca8mr237361485a.3.1768558079681;
        Fri, 16 Jan 2026 02:07:59 -0800 (PST)
X-Received: by 2002:a05:620a:4111:b0:8b1:fa2a:702f with SMTP id af79cd13be357-8c6a670cca8mr237358785a.3.1768558079218;
        Fri, 16 Jan 2026 02:07:59 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654534c8c82sm2074279a12.29.2026.01.16.02.07.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 02:07:58 -0800 (PST)
Message-ID: <66a1716a-47f1-42ce-a72d-8c69d29410d3@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 11:07:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 7/7] arm64: dts: qcom: msm8953-xiaomi-daisy: fix
 backlight
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Lee Jones <lee@kernel.org>, Daniel Thompson <danielt@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Kiran Gunda <quic_kgunda@quicinc.com>, Helge Deller <deller@gmx.de>,
        Luca Weiss <luca@lucaweiss.eu>, Konrad Dybcio <konradybcio@kernel.org>,
        Eugene Lepshy <fekz115@gmail.com>,
        Gianluca Boiano <morf3089@gmail.com>,
        Alejandro Tafalla <atafalla@dnyon.com>
Cc: dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Daniel Thompson <daniel.thompson@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-fbdev@vger.kernel.org
References: <20260116-pmi8950-wled-v3-0-e6c93de84079@mainlining.org>
 <20260116-pmi8950-wled-v3-7-e6c93de84079@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260116-pmi8950-wled-v3-7-e6c93de84079@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 8EeH7wLhQyqKhEL3BrSG7nXytVXfz_zf
X-Proofpoint-ORIG-GUID: 8EeH7wLhQyqKhEL3BrSG7nXytVXfz_zf
X-Authority-Analysis: v=2.4 cv=TcmbdBQh c=1 sm=1 tr=0 ts=696a0e01 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8
 a=HVKn8-F_4eW3eUG8FJoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=zZCYzV9kfG8A:10 a=IoWCM6iH3mJn3m4BftBB:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA3NSBTYWx0ZWRfXxncvx5DO14m+
 coN9k2YmNlVFXWFxAtYTrPNEH+lfeIVlN3QKDXnrVvZ0MqWe3k7W0kibiN2sLiyn/49uKaADrlS
 cU6b7WekIZGY+Ds7axBb+QGGdAijdlcW+btMuqaD+JHYEFoHYHlwcWrMnt090eRuvErkvnEC8tG
 fTtpBiosGbfM7sI56LhOd220tA7qYHpBkqxT69cYSzZ8BmpEFCGxoQHT3aPamTdhxm6RoSnav5D
 A3+zwP5bJFnwOLmdn0YFMIz1m5Uwbi8dCEWgK9SUX6pDjKTEo/ygEGiX5uvZoFYYT1v6HlMBFhZ
 82zGNxAdbyXN2FBWxWaPbJjc+jYegn8vY4SFIlDa5ehDY4ofVBRPHrrzoaz8N8zTM118fCr99s2
 +j5qK28FzjPBLT2rIlFn+xtXBuawQ/YH6JeJov0UMkD8iUyU3zNZgZmrUsBMYKxiRz7UtTaIFxc
 YoO0bFSv3zoJ4Q8AL3A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 adultscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160075

On 1/16/26 8:07 AM, Barnabás Czémán wrote:
> The backlight on this device is connected via 3 strings. Currently,
> the DT claims only two are present, which results in visible stripes
> on the display (since every third backlight string remains unconfigured).
> 
> Fix the number of strings to avoid that.
> 
> Fixes: 38d779c26395 ("arm64: dts: qcom: msm8953: Add device tree for Xiaomi Mi A2 Lite")
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


