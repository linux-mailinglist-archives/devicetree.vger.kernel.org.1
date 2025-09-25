Return-Path: <devicetree+bounces-221587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FEBBA1334
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 21:33:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3FFF51BC65CC
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 19:33:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55D3231CA5D;
	Thu, 25 Sep 2025 19:33:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n6pMUdgg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFDE22E7F3C
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 19:33:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758828786; cv=none; b=louguRWJ9TVLZlmlExGbIzB+7uGS+vYwZEjMMoZX06+jfm5ykPbS3a2L5zLgYkD3uImEUTBUwk7GVWqMJnyQjMpOeWcE1S5/X/4oEdqM9d4gzxIW4v4rD8WHxuJ8JKfPMTRhrynVfUrsRDFzIkioVLfcTmgm8zuy0tNsZTHWmIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758828786; c=relaxed/simple;
	bh=TnBEnMqj9PcBFYUsBVb09AJzYDc97RSDWF7EDvNsZr4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ou4QN1D/niLt/ydS0aYpiynQ5Yb84F4JLV6mpUOZh146Bp1bP0g4F+rTeKIbyqQkGJOqo+Kr22hWW8CpGo4aZ8PVljCs35YSarY18LTQGRJef915o5mYZUyF30Dpt+5zxH+6NZkr67ZJKOWn2TF3IauIQHPqIWESHflFxxu3mVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n6pMUdgg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIQIje012446
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 19:33:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TnBEnMqj9PcBFYUsBVb09AJzYDc97RSDWF7EDvNsZr4=; b=n6pMUdgg7o1HOrgY
	EhGqoBKaP6P2x8Bf+fJ0BEpsE9y7I9q+ZUsYD9Upeuz+1qp3rab4zpH6l0DAbCoH
	pGmpyB/yuXh5Jd47KllaZk53mhlUdOuw4ydqth+gkoXHHIgTQdrDzi47c8soowfa
	etPQT3hvO3eavu8XhEpS77QWY3YVZlzSSvKI5qX3j+4mO+/NU+gMsgj6Y1XEXw4U
	WhDf1QgSRAOXGbm3uHmYMh9PSrAWdsA0Uhd4Y8u0pC/419B4xZOj0S2e7LND0PPA
	QK9hgYURCbFTagVrzz0yEQN4QwrN+JkNtFJaoRotH10ta5A2cVZdvP8VY2o0fkb7
	T7EO9Q==
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com [209.85.166.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0q058b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 19:33:04 +0000 (GMT)
Received: by mail-io1-f70.google.com with SMTP id ca18e2360f4ac-893656f5776so165556439f.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:33:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758828783; x=1759433583;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TnBEnMqj9PcBFYUsBVb09AJzYDc97RSDWF7EDvNsZr4=;
        b=EoI6YDNBvgcdrPe/Y9MTZYnKjzRzfpAboIX4R3aHv6jwtMtGWxlXPjNum6Wpsm6PV1
         w+XSk45ORn937nFYLfIUTuqe7y3IVGhfzjlVQ7Zw1+GRLO1GkQzRQdQ4+at6pZc/9Ir4
         H5+S2aDG+Zlev3cwraFTbSMcaqd6x3h2CRYrn/sfw8aqV/BT5y3bkd3Jqs5CY6Dq1A1i
         QJ7+okenaMfxLE2mPZfJzj1Nnu5YXXXOTLdNAc4Bd+H5+r7womeEtRasoUy4tTAqt3zk
         bhQcgs7fztLtF9kKbeWv8S1W5HYQ4gOeeSCFDV5eatluYx3MNIogBlQk2l/wIAiCs6R1
         AQZg==
X-Forwarded-Encrypted: i=1; AJvYcCXeTIto3W3H7ZVLv19aBhLTTICRLPXpNX7zUWl6jxlIw7/TjTaasy278SQlS949a+gJSU91Oxpokx+x@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8D22pILstdqm1C82QqpsgoeASXCrr5/fKhNXrCVpFnFBbz2I7
	lrafFsVJ8/RAMpEcplzZO3uMIdCeFx4ZruPGRjrDQPN6DAES4ETLRRhZOpJt8U/fn6XlrRQkIgd
	PJa8IQhTZdPb/0D79wZovCUaR4opobwTMdRD0IeR0cBW5wdvbpao/pT/cI9ExIktVOTNEcHd6A5
	U+xsV65/fT6R+OvW1Sy/nVB05OmXZy8M+auYqfF9E=
X-Gm-Gg: ASbGncuYiIIQjto/kwIbPPBIIEhyN801ankdnkTe99ziSskvNszz/DaXcyNC6WY5cLh
	HrEOfOOF5Yd6+nEdJi7AEVvUEGMCzIwsX9GejclpRH6lpeS0QCG/rKrHF6+Gpvd+KCUbe12+yF7
	t6cZs8k94FObc2pKjaCPb/TEyqZOiRXxDp+HBjDn716EZbYRqsXjwGtIvUPPCjTDvGKLJm9rXdo
	toQ0WIB
X-Received: by 2002:a05:6e02:471c:b0:425:70b9:243c with SMTP id e9e14a558f8ab-425955e5344mr62881285ab.14.1758828783013;
        Thu, 25 Sep 2025 12:33:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGM8FpReApr0CA3Q3i/iHZMzcvXpITYuK0dqKpybMbm53VSYRwCkGk4q3clx06ZAwPs9BfYLZtd0oAmaJMnlD0=
X-Received: by 2002:a05:6e02:471c:b0:425:70b9:243c with SMTP id
 e9e14a558f8ab-425955e5344mr62880955ab.14.1758828782638; Thu, 25 Sep 2025
 12:33:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250924-knp-cam-v1-0-b72d6deea054@oss.qualcomm.com> <20250924-knp-cam-v1-1-b72d6deea054@oss.qualcomm.com>
In-Reply-To: <20250924-knp-cam-v1-1-b72d6deea054@oss.qualcomm.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 21:32:51 +0200
X-Gm-Features: AS18NWBmOViIv5jdU4dSvUosy08SUKDUBUh2nCRDhTzk4mlZzt1vwqBX05hLiQM
Message-ID: <CAFEp6-38buo3WafiiXUEUs8n-=SKgacMD44gGAd1pnEDAsizCQ@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: i2c: qcom-cci: Document Kaanapali compatible
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Bryan O'Donoghue" <bod@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: 4wRoT-7lg60VrSclY_zTmXyA3nanUP2a
X-Proofpoint-GUID: 4wRoT-7lg60VrSclY_zTmXyA3nanUP2a
X-Authority-Analysis: v=2.4 cv=aZhsXBot c=1 sm=1 tr=0 ts=68d598f0 cx=c_pps
 a=x6q9Wowz3da5qcMoR2tSzg==:117 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=EUspDBNiAAAA:8 a=i1QE4n8HBj4RHUU_w4AA:9 a=QEXdDO2ut3YA:10
 a=TsFzuV67ciA61D7d30EA:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX+TEtqcGrRRiG
 o6yo4c1wlAInjU8uT9okvBisYrcqSIt/9AiwT/ysdziKd2iWTMJ/ugGjY+yhGZ0G0Eh998dgZSn
 sLZSQDjoJRSEii/Hh5nXGJQD/gaPR/Y3WFvZ62dxnLR48Eaqu4MR5CufXHyVnfJsrr2QxtKvje0
 yHoqbbsD6Xi876v8S6zj2JzdkWueNQfCoqX2mv771+2zfZt2rgGKNAmYyuEF4n2p4fkJ96LoF6c
 lqYvhzB8T1txab7Z9xSVQYh6d4+2hwGqbB+HO7X8eSLdEVj57eMXvdyEZvp92hzRmycQSaYdolR
 3bLk5XHaRO53M6XnvZsbGdvF2z5Z9dWx6fHT2OY4x91FZ/By5EwtyyeSz/NsNX4955PsbX7PDta
 YecZNXUuEq1A0ff1Rwe6A+qyTYGxTg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 suspectscore=0 malwarescore=0 adultscore=0
 clxscore=1015 impostorscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On Thu, Sep 25, 2025 at 2:02=E2=80=AFAM Jingyi Wang
<jingyi.wang@oss.qualcomm.com> wrote:
>
> From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>
> Add Kaanapali compatible consistent with CAMSS CCI interfaces. The list
> of clocks for Kaanapali requires its own compat string and definition.
> This changes the minimum number of `clocks` and `clock-names`.
>
> - const: cam_top_ahb
> - const: cci

The recently introduced qcom,qcm2290-cci has the same definition with
two clocks, ahb, and cci.

