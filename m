Return-Path: <devicetree+bounces-243783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 283B0C9CA6D
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 19:34:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1227D4E3B04
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 18:34:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7D772D661D;
	Tue,  2 Dec 2025 18:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Acg6qRaA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CHSvHRyW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 913892D5940
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 18:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764700391; cv=none; b=kmvOBGItIUaTU3U6dj/aQ+NgfZ1GtrMEZlCGpwLDTS92dSuI6+hcsI3qgdJARVrMGraaTfAf/3d/QkMTOoRP72CoCnGFvmztu2Y/xXh16+1eKHLoQ4W8GmtQWH+UUeNvnUf7RvX1OZecIcD1u0HVyQYc7a0Gu4pZFANurJInaVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764700391; c=relaxed/simple;
	bh=vI/iFNrR02atgpRqIRC1zd0lHXjUwRqtFowTFXLxs3I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E2ZgpqLDSThG4OhvFy88WtbWX8wS8EjGUDd0+QuLmhnDCs2Lvlrc2OS2lJtJzbVyEnhpVGW9Uwlb/NKwLm7khx3on8jWb/BbZcfPdwHCtBCER7D4TmpiPMzWtXIh5aSPqqDcf9NXEohJEMPzbkbNBRnAgeeAGuHcJjdTf3hvcAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Acg6qRaA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CHSvHRyW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B2IRJF8385989
	for <devicetree@vger.kernel.org>; Tue, 2 Dec 2025 18:33:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UTZ9ezT7nyFnGD1bPqGMUcjxcyikL5GsbKDV2LwzjBQ=; b=Acg6qRaAnetxcTWZ
	TKy3coOnI7/2Xqwkg+AlWVvbIXKoxxsl/ULSc2VRqXCZqOoRJleLZHLxlIQkNJjk
	x+uni+QH94jBQ2QAl+nqkYH+K4h5nJCd9ZnK8l0Cy/MYUi7CDqhIZAahlOf6RSUV
	VTbxvy2laynmqeUAIAuYOGRq7uP1TypTZUlQ7X+XkFbMPLC7gN88WuEZkHwiCvnD
	axD8dvbx/4x8OQXMQoLt4wHiOnEEWxgN1pFyo/OWsahuMFufv9ZAbI0MuAi1yE19
	af2ecIXqIL0rJMECxiQzI3y3ngvXRW2yb7ckavFilkj1TDy0W1Cbx1zqksPNafAf
	lHLBJQ==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4at5db00hq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 18:33:08 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-9372084f99eso79757241.3
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 10:33:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764700388; x=1765305188; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UTZ9ezT7nyFnGD1bPqGMUcjxcyikL5GsbKDV2LwzjBQ=;
        b=CHSvHRyWqGt61SRVjsZKzQozZA7C3BezdwxIKye9rDRae+EwAGHNP1nkceHibv2kRB
         dpOV4VlQopv0+zZROaZIkjDYZ52/uryF2jexcQh3w2mthrCLKjFjA5lIzlKsU+E2VmBy
         k1RSpDu4Ek7NU5KSpf5Wi/PojnBNvLAP1Le5tO4LBDq18408ldMoBbUKwFwq5n7rqKL8
         c6hWwtFaxZlxCV87jbVlrWthnj95GrQLCK3cnaKr/c16/oE+EcnqVXc4uIw7/QUu8zlr
         f3idaNWcmel+8Njs3O1px9NJ14Vqgm6E6i2XKdYHtwRjZMep51lhJYOpBhU7oldRXfFP
         acUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764700388; x=1765305188;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UTZ9ezT7nyFnGD1bPqGMUcjxcyikL5GsbKDV2LwzjBQ=;
        b=vwsvUuEdkG0y1UNw91dIvJnBonbspS23gkoxAS+hNMQmYmZxxsvf+hZiapb36FhBuL
         qDQIrs5dqIrXZ3NGtSKptq/8DxVajWscF9ZexrCnD9k2X5yejUhjIABJmuG+l2GRIj50
         8J40tprw7uwx511CLyXDK6JHQokyKmGwg0czYa088FF51svliaYqyb1S8Qzja9Sb5S2y
         kOmLQ6cRudPoO6t3ei2DXqfJwmAiBOfSrAvlvvibc9AnPyEXJXMNrjsGzkAfAAp+MWF4
         LRklH2vniKW7kccFrHBuYBli717oq65Hyul5ZC9ZSWsba8c0T8yT5kfBeKZdLshtAUR5
         ibnA==
X-Forwarded-Encrypted: i=1; AJvYcCXXfMXXnWVK7n2t3d8GCh8GYqHeOnFbhQh6hOmKWxO238z8uVoWvkdziIBRTgM/fSi3Dob/g+8GuZ8+@vger.kernel.org
X-Gm-Message-State: AOJu0YwiH/gjtSjdA21003On8GdqrnBQ1jWPHYmgsPIWtzNjgUKtpMFW
	AT91gfF6D/xXKm7+7CqpoQgJb8EZUBaFCe4q1aahkdOaU6q2bh0JcF0Dws44uCXnks7PI9iaFNB
	4VcFDHOesiRm2T3WFpR1Rdh2tNlVMim2oKnHoJgY7rfzuLhk9POXWLrvepyhVLlwi
X-Gm-Gg: ASbGncspa/RHiPvibf5LjGb63mhbpA9Ovz3WKA01iqwtBR7LCa9XuXY3gAGAynB4G2V
	2WAy2JB2olTm1GB2aHBcS7nSdm627xKonv5MIFo6KuS9TKQ0DXoEa1RZI72OQoy0foq1Uj17UEJ
	kvzt6OFbMvwSVy7NLJI4zEyXxj/orNMYohpHbbyInlHcid33IkYT7fT6nQXyMauym0qFCGlWPZK
	+Z57VQAED2G9xa10vzeGtjmBTeU8615O4kk48eL1iid0fFlTJ+yLrLOPKbSf/gaqPL7znIXCQfS
	1h8P/9J5JWmgW83/5RiYsDgJgh2ZXTLuDRfYQ0sT7H+afTfJCs48xUgeZSL0YUj1o++bV4Lq5aA
	GgDy461UdQqQfS6ttzuE+HgJZqC88kFWP/3eoeLN3ejL/XdqJ3eT8dxl+8h1/sCN5PQ==
X-Received: by 2002:a05:6122:8b8b:b0:559:a30f:1648 with SMTP id 71dfb90a1353d-55b9a9358c4mr8858934e0c.0.1764700387739;
        Tue, 02 Dec 2025 10:33:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGpY9cKSl/V+gAyrouw/8QhAjwytVZCUeiBW2NObAM2TSyVQCYY8PvtHzcTjaPD2mc9GE5AYA==
X-Received: by 2002:a05:6122:8b8b:b0:559:a30f:1648 with SMTP id 71dfb90a1353d-55b9a9358c4mr8858904e0c.0.1764700387244;
        Tue, 02 Dec 2025 10:33:07 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647509896d1sm16592100a12.0.2025.12.02.10.33.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 10:33:06 -0800 (PST)
Message-ID: <9dabc745-1464-48f2-8687-2b849a7fca95@oss.qualcomm.com>
Date: Tue, 2 Dec 2025 19:33:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/20] arm64: dts: qcom: Introduce Kaanapali platform
 device tree
To: Pavel Machek <pavel@ucw.cz>, Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manish Pandey <manish.pandey@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <aS8uJCnb0xOd6uby@duo.ucw.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aS8uJCnb0xOd6uby@duo.ucw.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: xIax5kZswgm3h67DSIdyPC0mQxyCXZbO
X-Proofpoint-GUID: xIax5kZswgm3h67DSIdyPC0mQxyCXZbO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAyMDE0NiBTYWx0ZWRfX+ZGv05J6Nao1
 PQsrJgf3+ygLVKYP2cj/f7ar+sdiksFpPg+ynOmfIiIGhVAOaq8HJxW5zmgH4f34k70irEbQb+G
 0oZQU9sphOHvIom2x/QkBsuhjbHVHjx7oJ6fJBUXO2BEhi57ADjBxMXIE8TXOdiles0S598meRe
 Hft1M4jrhdk+DGaYHCNB2NyKL71UbcvuJMBKgBDRyKNnX7WgbKhMaWKqUa6SIMTG/WxP/5Bpm4a
 Qyc9xZEaI2Z6c5eEU6BBDzUeuNdMbTIpPM50XdmT1Y2HeZ1QeAUHC+bLNgQm5AAR3y74k24GHVS
 RggczXc3DepmV0oLF3lfPxJmf+gKmOqAI24xW3FvpMVeCEjFktXO3r61uMY9aAwQQ9YWV+J8raL
 VbsA9z2PLPwcSesHThBpSY05OWtC/A==
X-Authority-Analysis: v=2.4 cv=VoMuwu2n c=1 sm=1 tr=0 ts=692f30e4 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=XELJwKCvV24u9bmaNtkA:9
 a=QEXdDO2ut3YA:10 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-01_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512020146

On 12/2/25 7:21 PM, Pavel Machek wrote:
> Hi!
> 
>> Introduce the Device Tree for the recently announced Snapdragon SoC from Qualcomm:
>> https://www.qualcomm.com/products/mobile/snapdragon/smartphones/snapdragon-8-series-mobile-platforms/snapdragon-8-elite-gen-5
>>
>> Bindings and base Device Tree for the Kaanapali SoC, MTP (Mobile Test Platform)
>> and QRD (Qualcommm Reference Device) are splited in three:
>>
>> - 1-3: MTP board boot-to-shell with basic function.
>> - 4-16: More feature including PCIE, sdcard, usb, DSPs, PMIC related, tsense, bus, crypto etc. Add QRD board support.
>> - 17-20: Multimedia features including audio, video and camss.
> 
> Thanks for doing this. I assume there devices available with this are
> quite expensive/hard to get at this point?

A number of them seem available at most shops now, but they just came out
recently and they're all flagship phones so understandably it'll probably
take some time before enthusiasts poke at them

Konrad 

