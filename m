Return-Path: <devicetree+bounces-233158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7B4C1FAB0
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 11:58:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 250194E9CC7
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 10:56:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCD25351FD5;
	Thu, 30 Oct 2025 10:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="opbndffT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NyOmSFYA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F87350D42
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761821790; cv=none; b=aPNsXU91v2j/e4v85b1PYYpiHBVojvEcS2SB4PquvxR3q7WIxC6a21wAMTlsn0MiB2TTZ+1yr/zhVqSOA+7KTSmZ+SgRvrj4qy8tIJFMhMlVuLcEtkragxcnc02C5YUqhFZct/ELQdEt5Ncom3hWDJbK9wr5ta8TqTRKpTSEXNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761821790; c=relaxed/simple;
	bh=ChtEYnzjuKaC4SDWmheNdDU3f/VplhQ3Ufhx1G6GkS4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SEgk1Oh77EWN/A7BD8LScQCiF98cc/896S3s8MDGLlYMhIbOOYUrAqEUhVtETidKSZn5UPOqSEUUXDmrzk2kGgJFuWOSLFdhsuDffujIXJQNM0ad/DgcoccpD/Sr2bt/Jek08MOPAYjwJZfzDI5ZRR6n1F797VR7gIJglQhZ3D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=opbndffT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NyOmSFYA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U9c1Le1995212
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:56:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T/TCXmsRvRDA7nNRz1j5erhF8Ni7prlvwsDHy+DOMaY=; b=opbndffTVV6Nwej0
	99YHvMFEg56ivyyDJ9SzZKao7p641f79F0PPYFGUCpWq4xQlUVkxO+/1Tc5HswW+
	eZJbj3W206FUMQE1cXhTL4Eo/Qm8ziSsH875iIOGuK7BQ918ZZ9iJYsj2E2m94c7
	Sf/I1vIu2qQEyDdVM/BsdH+6klxD4SgvF/Vp7lLCQI0zztIjyz8rujg4oDyIoM38
	wsEZecOMxuUgE00WJzCjewaHW3h1u8tjVnCeUbdFmU+5KUK8LpNceCBibs+Gf1s7
	W69a0FH8SzLRZbAhrWphwBnLFiQ70giSEb46WBGm2J6j9lQM9213K3oLS2WOvgJv
	/lBtRA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3wr71ju1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 10:56:27 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8801e695903so1314316d6.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 03:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761821787; x=1762426587; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T/TCXmsRvRDA7nNRz1j5erhF8Ni7prlvwsDHy+DOMaY=;
        b=NyOmSFYATSX/JBc0YzNbrzXGEnmPkbaDoSMeCionXaTQw1Emo7zg9cHj7ZzLo2+iW5
         +YgCqoPeW/TDth4LSXdgCsVWezcbXvGoGAbBV1Dm/mZOPjzvhWVkzngCyyHQ1OR/bqji
         ahmtZlt3wXg0a4Xcyfw1zwx84JEr6icSaDhgVijgSk5wIubLaZebexCKJI+93TE2zpUJ
         5LZuyDbTY65ppl5XFacjNsNQP4h3nP+37xdNV+iuOpNCVEdN3Sn3Ks7ng8kwLJj21VhM
         rsWCb5KIenXmyLUp0QH+////ZW8BaonnEk+6iS1Q1nhNOq8GprcFgTm+EPvu8fujFhMX
         vUiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761821787; x=1762426587;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T/TCXmsRvRDA7nNRz1j5erhF8Ni7prlvwsDHy+DOMaY=;
        b=KnXgR5uyVyKX3baxo2+Si4LPmiZGQkcAbY4jZb6KT49QM/wcHxUXaf3pPG1yaAUudW
         aQdPJGc3eCFFZmuEj2CT1GiLqS8ua6BnJ0wF7UsFyRvQDAj2EWydxcU+Fq6WFDPeBfaA
         l0DLGyq3CGzJh8lYg4IC3jqPT+5mB7BH7aikSE+R09C33CmAfI4klgmekbtk2OlfjqeA
         A/i25Ss07Fw038AO4uv8Bl+HsLLfX04d4esJPOIl9F9XqgUs7WvOCi0yCOszLyz2rD0Y
         f9QiR4/omPhr0w8qSlZlsEW8n7zf1vu9aH/DphC+AtlI7XOQK5aaNKVXRQQboyKWOOLG
         TBYQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4HNclx9/xq74cXe5zwoDJ06dWBOHO3+JqinUUMvGR6OLVUorexjRJKuai0uF1P+3pKOiVR8f3XNga@vger.kernel.org
X-Gm-Message-State: AOJu0YzITx9C+ZCO7xUmyhxHlq48sOp3seCpIkejqaIPMQTbQWNLn1y5
	eY1dTpHqmhpufG+IeE1wsvO1xxi4hJZotyDqDRnAA7d2tqKcSLmlp0BSshU89BiZ5g+CBRjGlrw
	/Yq+sVewfixR78mK4MpRtLErNQkIjpqRKAcq+aLLAilYknDEmpb/l9jEsgqL3XfYo
X-Gm-Gg: ASbGncsIxH8ySGYQShseryOAXT1uUDxnh+KN7JSDsEuJ7zvJdnphogMZz6L0zO9PxYr
	sfJLpxoXPy/0dkziRriam2JmC2C6DFYk06I9jN3OXAUW8gv+QIB0kqd/nZjsrxeT6POqualLpvs
	zv5PZIB88zW90npWFF/0recEfL8AT1mQZAuNUJ2fzkRzNRSpx3WHG+RC3k/B/orxB4XRUDzvdzp
	k0Muj7Mbz0OC1guOtBhnnx85SMtAbyFmi0K1upfnb8S4lq3HPXFSPsmwL6sNf6Zuf+r/7MsvzRH
	pMNTkan0cDrHKgF0yOiXwanlvdqlj6PtIIqvHmyGyyZVegXQO038g1yEWzZt+m2KyLqT2g9i06h
	bhkzXs0do8U0pQq8qiMeNi/B8ijle5ahRtIfhNUw4Y7B1XlC3LPzBRTib
X-Received: by 2002:ad4:4eeb:0:b0:81f:3abf:dc1f with SMTP id 6a1803df08f44-88009c1dcc8mr51763946d6.8.1761821787316;
        Thu, 30 Oct 2025 03:56:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFG+/yzl3davDjwv6/DM9zcJ4xPDF3vhfNj0ICvz/YR1vfHlrpaf9O6QpYRS2pKAA00OSQcHQ==
X-Received: by 2002:ad4:4eeb:0:b0:81f:3abf:dc1f with SMTP id 6a1803df08f44-88009c1dcc8mr51763736d6.8.1761821786757;
        Thu, 30 Oct 2025 03:56:26 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d85413b88sm1692077866b.55.2025.10.30.03.56.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 03:56:26 -0700 (PDT)
Message-ID: <625c1a6f-3449-48e4-b217-725bc2bda6e4@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 11:56:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/24] arm64: dts: qcom: glymur: Add QUPv3 configuration
 for serial engines
To: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-4-24b601bbecc0@oss.qualcomm.com>
 <8828946b-3979-4e7b-a11c-740d8a6253ce@oss.qualcomm.com>
 <5931e2eb-5f2d-49bb-8b9c-b49f77d7fcbf@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5931e2eb-5f2d-49bb-8b9c-b49f77d7fcbf@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA4OSBTYWx0ZWRfX/x0OSCKR9zC2
 v8ipfCk/1cMXdcEgRKol9fQfUTg6PTwU9weEL3qw9xiJxJv3JTWeswJ/ItQYMGfCJ6olkvGbxux
 y51dS3iE74O4hQoAoaE96WYcT8H6qjOmnTFJVAXOj5mN8IY0tU00X+ght+MzOOOTR2l2Ln/Pycs
 cXNvCyVf7WYnxtCNrpg1LeovTeeEeVsjTW8RQhQfmq21Am+gBv6wlxB3VWF3bVqaGV49WEu5+09
 7ZjndMnW/Ru4ttD37tYRJA+JdmPLvMzlMmIN8PJOxEWCxrJrq2qFWybviYqP4QN4evkc9yuTWoA
 YrtxL6cbsgD1qU2JLzYw00rwd/6zOwnaddXEQ/qZ1FKRG8Kx+nV1tQYLsxtq8Q8tJBzk4EVgE+Q
 OmcOXT1yzq3flLkOonK/MQRgcWLQ7g==
X-Authority-Analysis: v=2.4 cv=P+Y3RyAu c=1 sm=1 tr=0 ts=6903445b cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=EyQ-x-pg-_UwrLxwVegA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: Rdw3f41Kyj204yJObOtNiAzRrH3OGOMR
X-Proofpoint-GUID: Rdw3f41Kyj204yJObOtNiAzRrH3OGOMR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 spamscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 adultscore=0 impostorscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300089

On 10/15/25 12:24 PM, Jyothi Kumar Seerapu wrote:
> 
> On 9/25/2025 3:48 PM, Konrad Dybcio wrote:
>> On 9/25/25 8:32 AM, Pankaj Patil wrote:
>>> From: Jyothi Kumar Seerapu<jyothi.seerapu@oss.qualcomm.com>
>>>
>>> Add device tree support for QUPv3 serial engine protocols on Glymur.
>>> Glymur has 24 QUP serial engines across 3 QUP wrappers, each with
>>> support of GPI DMA engines.
>>>
>>> Signed-off-by: Jyothi Kumar Seerapu<jyothi.seerapu@oss.qualcomm.com>
>>> Signed-off-by: Pankaj Patil<pankaj.patil@oss.qualcomm.com>
>>> ---
>> [...]
>>
>>> +        gpi_dma2: dma-controller@800000 {
>>> +            compatible = "qcom,glymur-gpi-dma", "qcom,sm6350-gpi-dma";
>>> +            reg = <0 0x00800000 0 0x60000>;
>>> +            interrupts = <GIC_SPI 588 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 589 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 590 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 591 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 592 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 593 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 594 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 595 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 596 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 597 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 598 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_SPI 599 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_ESPI 129 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_ESPI 130 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_ESPI 131 IRQ_TYPE_LEVEL_HIGH>,
>>> +                     <GIC_ESPI 132 IRQ_TYPE_LEVEL_HIGH>;
>>> +            dma-channels = <16>;
>>> +            dma-channel-mask = <0x3f>;
>>> +            #dma-cells = <3>;
>>> +            iommus = <&apps_smmu 0xd76 0x0>;
>>> +            status = "ok";
>> this is implied by default, drop
> 
> Hi Konard,
> 
> Do you mean we should remove the |status| property for all QUPs and GPI_DMAs from the common device tree (SOC) and enable them only in the board-specific device tree files?

Generally you don't need to specify status = "okay" at all (unless someone
set the status to "disabled"/"reserved" before, such as the initial
definition in the included DTSI)

But I believe you should be able to keep these enabled everywhere, as
the secure configuration which (dis)allows this is SoC-bound 99.9% of
the time

Konrad

