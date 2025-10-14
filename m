Return-Path: <devicetree+bounces-226434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 745EFBD8A64
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:05:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B19C3ABB13
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 10:01:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9F5C2EBB87;
	Tue, 14 Oct 2025 10:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BEOJVKLG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF7C2D193C
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760436105; cv=none; b=uvrW3PXEHaM8gSMG2UdStTdn/dgnFTZe+DrX2Yhb55fxEICpvyspOGY9rJYdTGeyX8Jn8U36aAxzNws7gruoKyDsn3fdhwH5FnZjN6GvoaI0H4IXoBt6WeXWY8ovm+hUlyewrK/5ORWioxkol5Y7km0jUDXvJEDIuWgQOQ3ZPdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760436105; c=relaxed/simple;
	bh=D3JssWtrvIhSzBbDco8w9yHj80wIIo1ixaviq+V/bGw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QxqOJqzBcPu5jMphK7Id9RX8gYF2nA8YyxpNH21xXl1OXyogAyAB5Y/Li5dVnwfPKV5f33nbO/eNvBqBvapmSssapc57NA79/2LZXUILznnjvlTicPswAKJCiT/5S9WYAlfe7bNTXyDi6yOyZTlwRG5d/LalzHAOy/JhLgHaVxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BEOJVKLG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87G1W019845
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:01:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D3JssWtrvIhSzBbDco8w9yHj80wIIo1ixaviq+V/bGw=; b=BEOJVKLGT5h1eESr
	G2O9Wpjvvw6V8dnmnR3mAwWPSVJ949z9s/j/Ip3AzvILr2noC6K+7zFgashQmOs2
	aWIjkBOp+OMthuHfiQ4xpbkBw5Gim7/ei68Gx7BT0b6lWcxt9dOhWGZIUoeYaxLg
	wjlH4gyJHUngvsRhJcKHDrCi9v5o8dDTrvQlSGPoYoPbxy7IYfDX0TCSzQycYypt
	enidv5hcBWl46qGrI/DD263X5zKdn7KkirkdoRo+wESw3nNv5PeTtHdjDfgmW4vq
	Bv0dV00kk6nCt8f8qEZnuw9GxEonvXO2cvN/QZ6GslFmhr/BMgJktrdm1FM/K1A5
	+/RLJQ==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0c001g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 10:01:43 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5d420c19d09so824176137.1
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 03:01:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760436102; x=1761040902;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D3JssWtrvIhSzBbDco8w9yHj80wIIo1ixaviq+V/bGw=;
        b=Q9pYI59iQZRta5Uel4cCcjVExpxGD2/2neVI5ze6lu2lybZnYtM2WKikXejs+eInFL
         NT5ITHNcEuOsKIVDgyOqy/vTlUuYfQ797JxyatwAagK04Lk2a9C8VbeF8LRQBb1L6/Xl
         t3+in1ur8kroEF2Xz15sSjeJBG9XuCvotvG41elBZrq5AJaslwbDHlhexdL1stpQkJ1A
         Hcg7rlPII2VHB1KQ7Ui+p0NAhRUkqZSedidUU2iSGBnximCIiM94up/kCsnEea9wtuYi
         2K6K01DofQjfWQ0IDcfimgJ2+8/OE6XHZRJuVx9iv04NnP5m1woaJGNaocnsW40Fk4v2
         9QKg==
X-Forwarded-Encrypted: i=1; AJvYcCVl1e0w+hBZCHy607RShw9gvlAbhVV+oNINofYTBtGDVy/XzBxIOTCtX6kuEb8/zv66nrWs0h3Vz6oa@vger.kernel.org
X-Gm-Message-State: AOJu0YxycK6m1FF/BMvPI+rINFa9Pv8cAYKWxCDY74/an9JGT8xhNyZa
	B2YwK1Y1qn4jGbsbr0QOUCZ0+/z4qalaggeph9ebCbWlVFPargQmfQfTTPoZ/hGedj8oOvB6d88
	izL6vvLXSzANPmsR5XSBT82bhr6nxvSI2HYJQCaD1o0AclxLpeRqxQiu+jfXgqIO0
X-Gm-Gg: ASbGncv3hw2F9shfni9LVheZ4BqrohxBxysC/vHmK+e8Z3f6Pn6L1WUCZSXHVhjFnd4
	0r0Euw+dY90asPzo3jCFO7xG0O8i1L9ne3+/v9uMWo5O6OB2vWZzxzuUpJnKT9XXJyDaL/sy58V
	5tw0AYexv/480fJ/50vRw2T5vGCVUvdkM5IChdydWI91jwh7VJuyM9ASICZsQPVLF8rs333V2jb
	UBAs3pA/SNFGgzn8WghgQTzyLpLe7IB+XlJZOVLgj/1mUlYY63FMhyRT3EBiuWOiwOAfJPoVG2c
	IdQNsDNXRB9v9iJmRxslLoxhTcniWA6IWh63WA4mlLxlc67PiHVDxvExgTXLFvvUmniYt1TF6T5
	tc5U09Mb0OsyMoU/XgKqYyA==
X-Received: by 2002:a05:6122:2a92:b0:554:fdff:f3ba with SMTP id 71dfb90a1353d-554fdffffbdmr659636e0c.2.1760436101832;
        Tue, 14 Oct 2025 03:01:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTz9yawJiPf7YIyriQbzNgRPBm+dfvbCiuWFvtl/QW91dwMWxpX+kI9Ls3+XCel3PRAPzGHw==
X-Received: by 2002:a05:6122:2a92:b0:554:fdff:f3ba with SMTP id 71dfb90a1353d-554fdffffbdmr659621e0c.2.1760436101312;
        Tue, 14 Oct 2025 03:01:41 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d9526885sm1120614566b.84.2025.10.14.03.01.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 03:01:40 -0700 (PDT)
Message-ID: <e114504e-4bdd-46b9-b708-8eebc3075163@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 12:01:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] arm64: dts: qcom: r0q: add touchscreen support
To: =?UTF-8?Q?Eric_Gon=C3=A7alves?= <ghatto404@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251014044135.177210-1-ghatto404@gmail.com>
 <20251014044135.177210-4-ghatto404@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251014044135.177210-4-ghatto404@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: TvII4QampvvYcdDeMZ55HDFc_yVaQwxc
X-Proofpoint-ORIG-GUID: TvII4QampvvYcdDeMZ55HDFc_yVaQwxc
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68ee1f87 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=dCpwloqO8bWZMPXPVoYA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfX0PiXmxg99AJE
 PWk+aytdspjpVdfq73zSkyPHWniR5/9x+yU1/wqkCUUs0PfzGXfGJwtrbS9RtfiXIJR+Uk82t2m
 r0RrSkgOqpLeRCPzasSjJMsh1Ign0zlPEhzKXL07qR8pO+ySNSGLc+j6eUoJQHst82tKa97lfOL
 D4Xf7B0HPpNwtwc6mRM6CV5ncGwk5rEDcw8UDC86HpQ9dZAF/69wyIa5kRdDnaJ6+gwOf7V/Hbr
 JNsXgAOI4igNks6wi+EQHnDOimMih4TW7bU+gYZCGgLq41jqXBXg6J2HdzThZZhmtB1pwSdt/Bf
 esb7V67vfThr69DSbXzdB1uhwNlPsxYUZraMld8d+PWtsB6GRX2p/dcxZi3v/H7Qw1DX2rmG9tB
 Pr5+oPziDx/D2p8dzkd27MzkBYbTZA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022

On 10/14/25 6:41 AM, Eric Gonçalves wrote:
> Enable the ST-Microelectronics FTS2BA61Y touchscreen. This patch
> depends on "Input: add support for the STM FTS2BA61Y touchscreen".

The second sentence doesn't really make sense to be included in
the git log

> The device has an issue where SPI 8 (the bus which the touchscreen is
> connected to) is not working properly right now, so
> spi-gpio is used instead.

Some Samsung devices used to use spi/i2c-gpio intentionally, also
on downstream. I'm assuming this isn't the case for r0q.

Did you enable gpi_dma1, qupv3_id_1 before spi8, when testing
that? I don't see any obvious errors in the dt that would cause
problems

Konrad

