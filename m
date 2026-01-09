Return-Path: <devicetree+bounces-253294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CC4D0A55E
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 14:17:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C614730C026A
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 12:54:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BFA735C182;
	Fri,  9 Jan 2026 12:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="isagW9Oa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PeJ8+G8t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C533358D30
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 12:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767963230; cv=none; b=f5et+G8zoTvObbqZ1c/azQ60hkkGWHnohRIw9zLjvB/G7T5VCLjO9ZLrlli9wItXksnTc3rskcBPGHpHwwwcw2O/iNJYhK0xSVsdhg+Ppu+h192fkr+uvlARM/v3e72KXHY4CPAD+y8ESaFyzMVQ5OdUFHLxNtKbMaPUhcOwLzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767963230; c=relaxed/simple;
	bh=QnYYrlkVYCiOvJybO7kvRZie0Ce4eLvKW8PoPZQrr/4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PxxtXIR6O4wwo4edFrRc146z4lpvqgNNXWfcvvatlEoXmFa+PlvFwuUdomD8ShLyn2VORhqvaYcnxNzGECDpFcydsXHI+RUW2t8ClcD9SPJ8/spnHkmus4YdAXX277o2FYpWdqDTZk365SzPRmc6lnzXwJCGGotAKsKBA72VVUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=isagW9Oa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PeJ8+G8t; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6099XhC61048220
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 12:53:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vm/SUKhAk9K8mnKqx93R11C/mB3zc2gCcqEuYGanqE8=; b=isagW9OaX1wmnQQn
	BkJg8gEWx9S9Jnst1tymTCkHCB1Af/PelmcQurgA7IA2ajg/J26NctQnoOvOZyMb
	ydBNQvvXPKr+EjNNRIEhiRSPrKDnyDIazKakg3dCF+yiJdzhRvhQH8k+YfEydnT9
	A4J2lgTPrpN8d+vRxB2x8g+WEXvNLiSRaslNseheZ3UMfj+ADVshcPrtDj1ZLeU2
	qMUv9j5PTzu1D/mNvpNpTvvtnFOXvXrQUQdMUj7YnNSkJ5eUxYU1bszT5tQTX3to
	H6jgSdqzzed6bO4NBclCGeS6/aUI66iaMclYkLKUB2ZhZ9D9zwHMSZv+SVwkY+S7
	iPIQVA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjy5b8hb1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 12:53:48 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29f2b45ecffso58902085ad.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 04:53:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767963226; x=1768568026; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vm/SUKhAk9K8mnKqx93R11C/mB3zc2gCcqEuYGanqE8=;
        b=PeJ8+G8tPwW2ecAEzm0R4zhPmUfYptTllxPuLFW+Vi/oFzIIIKFkiEXxV8E8KDucq6
         Rk3vaVmyj/HFf/P07q4ifWmvWvpiPS/b+fdHw5s0+jOmjHx6eEhs3wpxAwDyA3nXFluV
         VG28+XTxJK5aTOIlvN0YbMUi3Yt+YiJrhY+Q2rRG3Y6DIELApjaC7Pe7lZ68zHNQHOaG
         bSpQKdqaCdFa1Ur/ioZwc65zJtM84FJN6Ld2CuWZ7qfOmFzzyOdP573tiwNq+DBocKj2
         cmJz0w07+bsyvWdcfqyP2N5m0dmzlbmpQR8zB+pTqSzMVcfFsdYY7fe7I5PpMrYsQKMN
         zOSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767963226; x=1768568026;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vm/SUKhAk9K8mnKqx93R11C/mB3zc2gCcqEuYGanqE8=;
        b=nx7GL0oWNQO+gklHRthVPTKr7LtkIrvBFyiiKEfU3FtpCtGO25jIOzP/az5M71KwZ1
         35cWL928U9oUCiamGVRD/bhdG8FG4nwkbUm234zzTMkhnfQ3YixlkTmS/SeUqAFprGMk
         9qBjFtqKyHJQz52S9fBm8XMAoeJbsjuCcSaa3fZps9fE5qcuM64MftOFEGxgGvqylqTi
         lH7Q3RBBRNEgfb/5b5g/dLCF2s5SGsDHP8DGEtMEinOFgYycYWbFcwyExj/DCgHaau9Y
         yTnnaxkv5atMg85gNs9glHjvqkNLDH+mw3CxhPTnlsO1tLK0j+LKd8mrnYxvV4CKbK9y
         6KIA==
X-Forwarded-Encrypted: i=1; AJvYcCXF5gwnDrNaJXt88e4KpHqQNT337HYgx7thF27vg0NnmbwvPDKfhjheru2fdaA8jZxu0ZqJUFmOmGcS@vger.kernel.org
X-Gm-Message-State: AOJu0YzNQ0qnhahh0/yEg1ZY+O6tl+q70svhjWQmuLAwDTwsx+gyo7lg
	SAPV34R1d7/Lh6HtsREvuB690pNFyIMgjG/vi7sW9aCQQDvggSlLS7X08XfCAcQLaWzniHSXWUP
	5PYLAXMCtp8PxIey7Kfa+cm9aKTR6JdQ6UWc16YBbz17rvrSoCMkZ+DpWRFrlPcE6
X-Gm-Gg: AY/fxX6sCzlN4fWCvsyyBtTtpF0VQ9rvk9On1NNe+u4VYZqwiJ2VrOI3JOVDKVzGnV/
	6E/AuWvrgPhAHQ92GpwJuPIZaINfZlU9ek0fK0zOq/kQ/e1ydKFxR4JxvNybaqX9WQIYwEEjHgO
	eNItd4FQmujo4zJXuenaTQ0FmoyW6pSp3Oq5YnjwoiheJcz01Q6stLVVBh1kBKG5sRoRWjxHR63
	G6f5/PHsQDdzfd/la1ijf/ThZyPBIQwQ65PyQMccRUq0Ew/tTuDwvWuFa0Iv+oZzUKg4+bT93Vf
	ZUJEp5uchycZMwjITFGx0GLwWRj6vdjH7pbMLj+T8d2uhCGndf9mqEP2gni5+3XlZztNWc5juWW
	0EphDCnb7XDdFrx/W/3BSk7o+j3/xBdKheIhO9pwneA==
X-Received: by 2002:a17:902:cccc:b0:2a0:980a:4f0b with SMTP id d9443c01a7336-2a3ee49c6e8mr110019475ad.40.1767963225700;
        Fri, 09 Jan 2026 04:53:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHCAxCgt3csbgYVuO8d3lkQPzp1KHgfQ/XXqrK1SLB1uYiZr92CZeF2Ey6XP0Z1Aldq+GsmnQ==
X-Received: by 2002:a17:902:cccc:b0:2a0:980a:4f0b with SMTP id d9443c01a7336-2a3ee49c6e8mr110019155ad.40.1767963225231;
        Fri, 09 Jan 2026 04:53:45 -0800 (PST)
Received: from [10.218.4.221] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c4796asm107201835ad.34.2026.01.09.04.53.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 04:53:44 -0800 (PST)
Message-ID: <5cdfe5a5-3c78-45a2-886c-768b224ad776@oss.qualcomm.com>
Date: Fri, 9 Jan 2026 18:23:39 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: qcs6490-rb3gen2: Enable CAN bus
 controller
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com,
        mailhol@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com
References: <20260108125200.2803112-1-viken.dadhaniya@oss.qualcomm.com>
 <20260108125200.2803112-3-viken.dadhaniya@oss.qualcomm.com>
 <n6affntgff5wy4xmm255v5h2ejpepicpz2cybcuvsxmry5td6u@jucskv7zrzvv>
Content-Language: en-US
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
In-Reply-To: <n6affntgff5wy4xmm255v5h2ejpepicpz2cybcuvsxmry5td6u@jucskv7zrzvv>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: _caw6VC3dGR5JocZfYFt6V0u3d7qNZOq
X-Authority-Analysis: v=2.4 cv=JP42csKb c=1 sm=1 tr=0 ts=6960fa5c cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=pyxDk7YZ_2sT_cTTTuQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA5NSBTYWx0ZWRfX4U6a2Qz2QYsI
 EzjmJcg+Ia4X0+1mx8lL7FeIZlKHq9oMD3Gm6POrruYlQSLMheMmOc9AguOSqALV5/SzZlAM9F3
 IJPywCIValY716z7jkNR1cxmXUAFlX+yE381twX6P8pO8odjJTflbyZ3uoRfkY5L2Kr/tbFuNxC
 8YA/DN2AmJ5pi662ypRghBKE3rleXiBMATokmMY0CLwZJmn2nFpAs0uAMkkJhDujVyFksZF1+Lm
 vujg4xW4YF8ygYEvh2dPj1BveIhLMWFne/3pBaJZHDsOHZ6UWA6oInekDhScXAq6TcE+Fh9AeJM
 XtBewyErAtjZE+dEXgoK5Qkts4pss+xq4C7BEoHHfOJ64GYi/mvKVMdroMESb+nRLXHevoeQqjW
 afwIa4jFo8iOjFSjFNWT7naxcnFxfz0JZTAoviFXtI7fkcrJljTwPBqBcivbfoPB4+CFMW5BlRd
 My5TvS4VDnblsegiFkA==
X-Proofpoint-GUID: _caw6VC3dGR5JocZfYFt6V0u3d7qNZOq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 clxscore=1015 malwarescore=0 bulkscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090095



On 1/8/2026 7:33 PM, Dmitry Baryshkov wrote:
> On Thu, Jan 08, 2026 at 06:22:00PM +0530, Viken Dadhaniya wrote:
>> Enable the MCP2518FD CAN controller on the QCS6490 RB3 Gen2 platform.
>> The controller is connected via SPI3 and uses a 40 MHz oscillator.
>> A GPIO hog for GPIO0 is included to configure the CAN transceiver in
>> Normal mode during boot.
> 
> The main question is: what is so different between RB3 Gen2 and previous
> RB boards which also incorporated this CAN controller? Are there any
> board differences or is it that nobody tested the CAN beforehand?
> 

The behavior is consistent across platforms, but I do not have details on
how other platforms were tested.

On the RB3Gen2 board, communication with the PCAN interface requires the
CAN transceiver to be in normal mode. Since the GPIO-controller support
was recently integrated into the driver, I configured the transceiver using a
GPIO hog property. Without this configuration, the transceiver is not set
to normal mode, and CAN communication does not work.

>>
>> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 30 ++++++++++++++++++++
>>  1 file changed, 30 insertions(+)
>>
> 

