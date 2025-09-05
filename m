Return-Path: <devicetree+bounces-213280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA26B45017
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 09:40:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4EA23189FC6B
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 07:41:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 577F226B2A5;
	Fri,  5 Sep 2025 07:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cC8Crezs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E5625EFBE
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 07:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757058052; cv=none; b=t+0hFYDN2VDyyWdo/apEQtG93Y2LcIq2L3ylpqkzRm2noC6Xzy15wiL/Zs/t/tYc0Ez7IyxOe3EUkLDCEeTOXniQCJtXhKjGIwczFyVwILHQa+DBFokioKlpbCSKOlCmVVEPNeYldfQpt9bViU9OStTfe7h0fiImHMqfyO6F+wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757058052; c=relaxed/simple;
	bh=aNaqpe3eKn0SXFHe4+sS13pZjbDnk3IS1mI8IMjAwXA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=U1cjBvZ3tW1FfCdAKgqQJQExRRXecTcBW2jAQo8+l1sO1bMgTMgKk7h+nQpeTD8+Co5R2aIjdsdYH7HxNvPY1eFvdGzxsrd/MsSc6aCv5bZK/3tFxFu2xsKoaQo5C/XUPqP1hY+3uLs/9s/cdgS9q024RFy0rR3XfrU93DuNuY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cC8Crezs; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 585772LH002378
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 07:40:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aNaqpe3eKn0SXFHe4+sS13pZjbDnk3IS1mI8IMjAwXA=; b=cC8CrezsdIPF7Mm7
	g+X9RApeAKFePMkGEJQMxK31GBQCQH74ErAyGG8HsI65Hy0zU8zkgo1zuYvWF4I3
	o8Te1jssHHgpiV8V1bfGjeVa90iInOzC9AeY8/U0XZMzBIziGkAtWIfnwQwsdshq
	NJYq7bOrDA7VPNQ04jH4buSAr3fOYaCJXhyS0to0uvOlA4vcumt6ULUpru+fZI7Z
	Wjq12nmWoUrR0yNXrKPcesd3P5TInVOGAJfcFaXFmVP5FZbYgJLwOyFbu4jze6SC
	IDuMVesY3yP+LT5FSKytKr2ZK6NFIhRFGMOLUM9kjgwQv1f0IA/n9Bg+anWpTtVB
	HN9Ljw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ush3a5ys-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 07:40:50 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-80fcac99fe1so106291385a.2
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 00:40:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757058049; x=1757662849;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aNaqpe3eKn0SXFHe4+sS13pZjbDnk3IS1mI8IMjAwXA=;
        b=PuVj0OkLncvABajiqj+31xxdFXNs4mvSBvcq/aQ8WNNOpEd7w4lRYQVFl5HCHalwAh
         bPODWkv+kSWpr1iRH7rrV7Fh+GDaaiD2YuAqA8e1M/gl7lwG9VqSoTIPgXF9RqxNPKX4
         q1qwi3o3JqdZe1S4A+NQo75+8ZmsMoC3m9S4uQZTkF8V0vzQLn0e4eVudZ+rCPETgp9a
         jXfGg1HMBzP7S0dJ8oQzSh25wVY4GiD7EfZzqpXflxaNon5OS9s3Mf+toU3TVUnmmKgo
         kWUtbHZBJf1LeTqprCU2BkOmSzAMeeqN6Rz5tyMKIDKxCWTYL+4CoCVxwtHExt0lxTt9
         tUIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXg29XMRUv0tohtbJiXBG7HUzRWfvBvNG6/JTyV+Ta4rChoJcpY8kgs0MdZUdidb98xNkvVZ2YjOK0W@vger.kernel.org
X-Gm-Message-State: AOJu0YzeRDDDeDMPhxCfkoJubzEBhBz0KxV3jnhwOZH2vKNxC/BCPp/3
	gDbH0zrJ71judtx7W+x9nqlTjSsyub8Lfu+viBTLX8gOwEU/BTiwvqlknEmKZcs2B94mc18dKOv
	fbguat7oGMU+/dvNfq8OGhEqME2Y6QpDYaXgTZy2rSIVr8jzIS8mZd1K6j15cnvYkliGt2+wTTr
	mXP9qImoOe5IHkH4/abtYWN6sypXl+e8ovP9QB8eM=
X-Gm-Gg: ASbGnct87nolrdIJPJR8VveAzRlxkJ7XdCf3FEOOFHs5cT2sdF4n1cUVkfb3/G9jqMC
	gI30MX2LE46iS4b15/8qr22P+N+b23riQa4EDeOaekXm+v7qj2D2M+bYUwt5x10RTZPHz5rqCVR
	aN8Gms38VS2WkeZPLXQey6PQ==
X-Received: by 2002:a05:620a:404f:b0:80b:985d:e95b with SMTP id af79cd13be357-80b985deb8dmr899753685a.24.1757058048492;
        Fri, 05 Sep 2025 00:40:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGoxJ9P36GbctHvHUxJl/9V01vETlBu8LzDJ85/s2mRR3AeBsS9PRGoiGtTDM8984W6MkNJxER0waAPHV5MbWA=
X-Received: by 2002:a05:620a:404f:b0:80b:985d:e95b with SMTP id
 af79cd13be357-80b985deb8dmr899750885a.24.1757058047925; Fri, 05 Sep 2025
 00:40:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250904-topic-cci_updates-v1-0-d38559692703@oss.qualcomm.com> <20250904-topic-cci_updates-v1-3-d38559692703@oss.qualcomm.com>
In-Reply-To: <20250904-topic-cci_updates-v1-3-d38559692703@oss.qualcomm.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Fri, 5 Sep 2025 09:40:36 +0200
X-Gm-Features: Ac12FXyqn9ppURnIPAqvfCXakPYOpLFP9nsbO3QeaahXeWnA8qDEtILMrIYc5IY
Message-ID: <CAFEp6-0KPueV9Hwg-qkWZUmNSXECUvV8AkAywZCdEtBwBx95UA@mail.gmail.com>
Subject: Re: [PATCH 3/5] i2c: qcom-cci: Drop single-line wrappers
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMiBTYWx0ZWRfX6PYIdXzpewhk
 ND0D2uJebd3CDmc/p/X+ZEETTpi3cUMawDh60Jz7WsXxMXgF0/6REoLSFr5KUrLm8BmgjEx3Ivm
 79aSI6JQwRMyCbMnJLJ7ZeGBas7sLDodBZ4HbVsBQzVattrmD5eJWu9TCJkHpZnaenL02xlwYZp
 FdUv4v/YZvbOHD9PLNqG+ulWJT0MURwcy4q3ffwYcF+u2AECw2scH2LszHjCewJMM3JW08UnKZl
 8ocGQQm7PNCz3dsWZtc6yFS2hu5LUTKyJyJXctTDlMeyKGrbmZwGfIXYcERJgH4aCYys2CoXBxD
 EwIKBxwYDuNM1Xf5t3q9+H3lgAnfLmbBjkPQW93O7XhybF3qk9QcSZ20c+o5mfcN0z4UPN0xYE6
 HmqBM+cs
X-Proofpoint-ORIG-GUID: LFhiOqY7AT2TxmPYk1uEVGSb9GoyEuCa
X-Proofpoint-GUID: LFhiOqY7AT2TxmPYk1uEVGSb9GoyEuCa
X-Authority-Analysis: v=2.4 cv=M9NNKzws c=1 sm=1 tr=0 ts=68ba9402 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=XIB30I8Fq4NfyXnsoAUA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_02,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300032

On Thu, Sep 4, 2025 at 4:31=E2=80=AFPM Konrad Dybcio <konradybcio@kernel.or=
g> wrote:
>
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> The CCI clock en/disable functions simply call bulk_ops, remove them.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>

