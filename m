Return-Path: <devicetree+bounces-250015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 29BB5CE5AB3
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 02:23:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D3DA23007964
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 01:23:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F0C621FF21;
	Mon, 29 Dec 2025 01:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XMOQhJpz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="B+/ZaMqa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 799E121576E
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 01:23:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766971422; cv=none; b=Na+plsOfrsuXy86nntbleGMRiMzcbk6ePpy4K5waeD8TjVQjNM9qIA3hmWCbX+/LT5e0b7mgOc2mj0cSvTzJb8524CHfilvCbLNrNOYlze9ZtspmsTXhgXkNjkkY8EbWVpymuN8RGh7/sXc5Bh/Fp61TLDH8FrtB8JP3vZ4j82M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766971422; c=relaxed/simple;
	bh=h3ByiyO+qZwWm45cDW+SKLguEkt9La230EHaIOqCRng=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=a6NLN47CMEfSAyCMJLZJhJgjZhhgV1pE38dZhEkZZENvMWs5zOyL0RYYN+9p1vjpzRKFxMqNA3i/a6w/ABDSTKLYqYXxxf2EqNQQD/78+XXbD+4w0qCpeEaxkhMQ3Au8wdl1uBPVY18NE1ys/fjxp1cIv44UKAnojHGet9A4S7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XMOQhJpz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B+/ZaMqa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BSNK4WG099445
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 01:23:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	h3ByiyO+qZwWm45cDW+SKLguEkt9La230EHaIOqCRng=; b=XMOQhJpzFyWGn8Zl
	6ZKeAyYnBEmBlLMMNPBLu8kOlkrotSeyO/InKKLo2/3xqmUlurxXEhx/1hlhVJ7a
	LtHWh96D0h00U7bXYrGhzOxfAWdu5bRPiHAMTWIxeNNiLKu3UjSk8SyDh/6K0si+
	ki80pQBfJKuw/f4RwV11fPJ8SEoD8zqd4HGXEREmi2clzgjZa2JPpSaAoBhXMosm
	+eGWjQWT7GOh6YV8XPlyvQN3exrAk3E3xhAxIuwMPApjSBC+kGicvyi3yw1Fcfkb
	UtXUuRD3x+G5V0Kmej+SzVbq4WjBl9iWr4IDodHtwn4QxOz8n4Xdi08NTQ8IXtV0
	lUnqkw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba71wu0gw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 01:23:39 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7f89d880668so13062078b3a.2
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 17:23:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766971418; x=1767576218; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=h3ByiyO+qZwWm45cDW+SKLguEkt9La230EHaIOqCRng=;
        b=B+/ZaMqa5RyHt8Bkcx3XSgyDfFhWijrs/eYrZnQ0CCzXLy5TsNVHPA06I7NaAx/S9V
         IrqzjxYu6fxDlTx2BJWx6OXwzW1+OMEoCAiMIY1efTOb6esbkFs1Iv4qohUtoTB2+hi8
         aPCFMS2psq8B/E9xH4VB0sZtcQflAKrYzzK0xwSXRcbdTp9Dv94DlMXF7Nd4QgdYJ48h
         sCvSoqgGuHdlAzrhwK63IhhcHE1yOi2pL3jUUskr2v/5/ALcNXhvuvcDAxnYD4mMCs42
         eRLZ16XT9chNQaEy+pxCevnJQyGSQ9AoNx/b6ehp+UZ9RDmKMDqE2RAdbTUeHWSjvUGr
         drYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766971418; x=1767576218;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h3ByiyO+qZwWm45cDW+SKLguEkt9La230EHaIOqCRng=;
        b=Sojl6g9HdpId242iIBsz1r9Pv7HOVzUkCEEOW++J2e/JCm+35LI8N6UfyhHcuP+QXv
         ZhZhiXhqzW3/p+TG0qtD2oqDWQ6OOQgU45A8NhCi+tgFjdmYfriR06A6U3T1PIWuTyS8
         Q62SKQB2OcgI7PDfALqu4l+TbW3I6yMIgdKl82UQGRMBmBTXUyju9PwGcdmlG7GRzxS+
         om6+rLv2h8ZWB95yRZahYUNQ8d3mb95l1HOeHz6kD+664fPMk6/uTHF3VZ2T86KMPZsm
         2SiQhGnxVpmHHe+8heBSeIh+0XHYxMr/I1BvET52/BnkIUFDp0IjcmoCsOK2NKenZ7ny
         DGlQ==
X-Forwarded-Encrypted: i=1; AJvYcCVrRU77cgDT3modAmhEVxZGFIFUXQvhu0R1+QeMmfAOATUb3FPgS77aXFUxBX+EEcaPhJCCb/8F5DZq@vger.kernel.org
X-Gm-Message-State: AOJu0YzUa991NOoM1xbHmKrrOjErHpljecKyvwnPnglbTGi90nMU54Ts
	9RpwRi64W80/o4zllDaZBQ1NmnFh+AU2IBZCW0lEwaDsVrXcIFeWE8KLEcvnvoXaVZWplPx5RZR
	9/89vBff/WP+8a1xpYPg/aiAMA35Ko0qqWxMQXdXeU8UrHyhz0sUMq3CGP7XZ10FP
X-Gm-Gg: AY/fxX6gtD8iIIquIQ5X5YiZmsU5VgjGLXMW8a6UOGX2d/sYssYi2d9WAHWU03mcS/4
	fCzzSielrU66S0QUrQFgUG6WjJ3PAy5Ame6u1DXrnJFvwfPfYk49hMGxoetOuOv2vIQT7KJhUgM
	SfVwTlwF7ZjNCQ/LDDzvnjZXOFuuNaJYb5uhkjSQNrwRepT0D5ON9bmMAsL4J6MLTuWXhSOwIZ9
	uzj0IXGS3B7G8q+mMMBFNULJFqJmeE+Mbu9h2GgqFUQAapqsa+TW5NsspX4igd8zb56AvTNZKVI
	x16pq4d+eAg3y7PFSfO8kEIfc0Yb7WW/8brEEpJS2tuLPdRsv6tNe+zDrhE3zvKRI8SwnbXhFNA
	kl8YlSXkNycjDGx+xIeNa18JZhNOXoBSslMr82AuoG8B9OlSEezJuNs7s11PL6udgs+KlKA==
X-Received: by 2002:a05:6a00:1ca7:b0:7e8:4398:b36d with SMTP id d2e1a72fcca58-7ff66c6b029mr26705746b3a.64.1766971418223;
        Sun, 28 Dec 2025 17:23:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF57beAFXoLQfaN7nUzE3lasCyqk/WiGfw81D/UVS9sdMdYvKqvKNCuxa22U3+420FV/pHlzw==
X-Received: by 2002:a05:6a00:1ca7:b0:7e8:4398:b36d with SMTP id d2e1a72fcca58-7ff66c6b029mr26705731b3a.64.1766971417746;
        Sun, 28 Dec 2025 17:23:37 -0800 (PST)
Received: from [10.133.33.21] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e197983sm27696979b3a.33.2025.12.28.17.23.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Dec 2025 17:23:37 -0800 (PST)
Message-ID: <4f79d090-7d1c-4fb3-a835-a7e4ff96f79c@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 09:23:32 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Commonize IQ-X-IOT DTSI
From: Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
        YijieYang <yijie.yang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
 <20251222060335.3485729-3-yijie.yang@oss.qualcomm.com>
 <20251222-fluorescent-turkey-of-gallantry-df0906@quoll>
 <b8f0e8d9-449e-4f32-832e-f1d5597ff496@oss.qualcomm.com>
 <6421f044-2b07-4518-9edc-b9b2ef49f4fb@kernel.org>
 <8bcf058f-5bf9-46ce-a188-e94954101f2f@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <8bcf058f-5bf9-46ce-a188-e94954101f2f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDAxMCBTYWx0ZWRfX8ln9YTKwQcdV
 XSc7GOaiocLEy+umcwkHCIOmpuafOyz6glwtcZjswRJBabvtKiFUo3Bl5njHihmMApcj9PdfLYa
 RgR4MnNeF81R5yVpi/F1t87bgPP19jkGi9LYxpjLBMsVWO7/hDydGnA+W8khV9LpxGmfd8vYBne
 3OyURVrmg2ktvCHM3Ta/dH3a+fKoetE8CpxjB9N/OLaXcXq2yHyZjbmJbikwzBqFdwfnvjSJZQb
 nT3uupzgCkqG3fzm535+3tVB6l9LXjwz8YwnAsjcs1/sYHun7GzhALsr8/jEKdtSOeAijkfpnMM
 AUpxk5dzLRq1/VxH4OshvLGkQJ0wfbXAuGFmrsuiWJvpmQ3Cc/KhZhrmcitgKOHxYP4SJAH95tx
 QpMZUqOucgB39Z4YiybFZmDrsT3ibiKWbd/Pw0nUnXfy6UJEN9gxUOkryxYHhJXhCdEgqdOdAD+
 e5h23IJ9convrf8VpmA==
X-Proofpoint-ORIG-GUID: yvFKdR-UzSWJtLv8ND7xi0MVFPsrze9y
X-Proofpoint-GUID: yvFKdR-UzSWJtLv8ND7xi0MVFPsrze9y
X-Authority-Analysis: v=2.4 cv=CK4nnBrD c=1 sm=1 tr=0 ts=6951d81b cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6y73sl-2QnXYpYKhnwwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-28_08,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 adultscore=0 suspectscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290010



On 12/24/2025 8:12 AM, Tingwei Zhang wrote:
>
> On 12/23/2025 9:41 PM, Krzysztof Kozlowski wrote:
>> On 23/12/2025 04:38, Tingwei Zhang wrote:
>>> On 12/22/2025 5:11 PM, Krzysztof Kozlowski wrote:
>>>> On Mon, Dec 22, 2025 at 02:03:28PM +0800, YijieYang wrote:
>>>>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>>
>>>>> HAMOA-IOT-EVK and PURWA-IOT-EVK share a similar board design. Extract
>>>>> the common components into separate files for better maintainability.
>>>> SoMs do not share actual hardware. DTSI does not represent what looks
>>>> similar to you, but actually common parts.
>>> Purwa SOM board and Hamoa SOM board share same design. They share same PCB.
>>> The difference is only on chip. Purwa SOM board has Purwa and Hamoa SOM board
>>> has Hamoa on it. 
>> I do not speak about boards. Read carefully feedback and respond to the
>> actual feedback, not some other arguments.
>>
>> NAK
> In this change, the SoM hardware except SoC is described by iq-x-iot-som.dtsi since it's common between Hamoa and Purwa. Hamoa and Purwa SoC hardware is described in hamoa.dtsi and purwa.dtsi. Hamoa-iot-som.dtsi includes iq-x-iot-som.dtsi and hamoa.dtsi. This change could reduce the duplicate code and review effort on a totally new purwa-iot-som.dtsi. If we found any bug, it can be fixed in one common file instead of two separate files. Same idea is used in x1-crd.dtsi. X1e80100-crd.dts include x1-crd.dtsi and hamoa.dtsi.
Krzysztof,
Please let me know your opinion on this. This could be a common case for
Hamoa/Purwa boards share same PCB. Share same dtsi file like x1-crd.dtsi
would reduce maintenance effort.
>> Best regards,
>> Krzysztof


