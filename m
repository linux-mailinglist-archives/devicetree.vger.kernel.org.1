Return-Path: <devicetree+bounces-205110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC955B27F1F
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 13:23:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 75F95B66969
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 11:21:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFF0C2C375F;
	Fri, 15 Aug 2025 11:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wf7M3Oz0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7838D2853E7
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 11:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755256993; cv=none; b=Z8FUpnK5Ep1DuIw54vAwFSLpFs9XRl7PzamsXwfEztVVvGh2qHrzNBnylobFlJcabDa6BFptCh2MVCQzZphn3AOOaa4bc53FFbymkT+2rO7c8tzLHDXUNtbkfGCgmN3Z85dbZu/lh86wQRvJXY90goC+hBpON4zeve9FO+KwHqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755256993; c=relaxed/simple;
	bh=Y4b9RHGk5FuTwKgZo6QSS7Z99ahbeLWA4mpKEy8knmU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RTOj/kZtE82HrH4besJCCqhhRrMkmswp1zisIcp+1ZH62kpGnCcPdub1q7AdWYMNw9oFq0Y5BblwDRTOIZT0mCp0vNJbZ+YfnOIs5hHgJGoWmTrzypHgvWhu8LJ7JsKKlRUrMIfCpKAHNlf/44PvM7KZadcGUO5xEHvisdLWQbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wf7M3Oz0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57F9lirA023922
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 11:23:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y4b9RHGk5FuTwKgZo6QSS7Z99ahbeLWA4mpKEy8knmU=; b=Wf7M3Oz01B4Q6QOQ
	zFZCh+sT2n9qM1t8rRLAybgFUzqaNVCrnOkoCoSoHXCUADUPZrhxHjkfioLJgPEB
	sWfWLjoYAuaqsOJCS6ClZ/iP0Y5yiRPlFmlzR/Fwla5D2xBSli3ENXZtsO8ryu07
	Z075qCeXgr0owQiEMdjIT4wI/HAl1VCpfJ0KxxEnYHMXDiycf9QkrRyWxsqRllTc
	5cFpg1C2JOz3myYcxeuHSosBcAh4NGiKJw7NDRemdFvPb0NXv2pb96eWwOj5dY5M
	uvFrOR6Z7UQ/v9CIzkcB8AdWD9krK2H1m3IFcLZGbJ0acDeAoWSKpitnAhxmiZ6e
	MW0vwA==
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com [209.85.166.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fjxbp3s4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 11:23:10 +0000 (GMT)
Received: by mail-io1-f72.google.com with SMTP id ca18e2360f4ac-88432d9ae89so185422339f.1
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 04:23:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755256990; x=1755861790;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y4b9RHGk5FuTwKgZo6QSS7Z99ahbeLWA4mpKEy8knmU=;
        b=NpV/HOkqycBWabq9P+oVzNxaF2DyNLpJ5DPiI4QEbDjfmrjejkvcKzx2N3DemaToEc
         /fmHVnpVcs6nR9wuZYisWCkkL0PBnBVLXO5OuAXy95iw9ZoczfdxyHyGXA0chFvmkTyC
         48eG3UDr7tOxYxiGqWYE7y8V5zN2W94Rz7FfMDLmfdvmqTVC1qV/EpuLJVs73KP5+CFk
         XJeyRzdfErnDbCjl4oEN7OZM8BJhMT6vV32R702HGbuH+OgZztmWEstDbPVaA+BsSo6B
         1vgJRTJKcdLxaOHS+tWZxSD1eyDYlmERZTnKhVbP+FOZ+pREX9yAY+j/p60TAJLZez6k
         OKow==
X-Forwarded-Encrypted: i=1; AJvYcCXdeaoK5wb9kqTooI5MRPTIb19L3isG/xwCvP0q/Imlo4gTApoKI1IV4Cy6+iueisocWUf6r/MJZIkw@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/iQxDlkfM07+dQHedLazVycv5yXScNvHqjZu8ZRuqudxxcdua
	NyCa3d0VmwZbj04E8oCc6sllqgxc1dsWDwHfiuNoSPSRsj/Tigyk+B2krvptaXiwe4jdanS0lIz
	OZMAqJKTHKMtoEn4LmXrddJsb6CrQKhNQyc7Pn2wMG10g112hTj+YJIwPZNBo022FrqVvfYOXiO
	kPFP1TYYF5OJdVXfAnjgIMaUOBL+HaATpT9tTGE38=
X-Gm-Gg: ASbGncujcvKV6n5jWC9MI/oTsRrLE+69qsaAtypUGi04M8zkSsknqs2DhOHQ/B5i6ur
	G4rKbp18mhb7GV5YOmhnjz3y1UqC4uB34KdMSuAYpr5M/2pOhtIgB3TWy8S7Gql5bcPDDH9VBsp
	pFPl9qUg3OvWMfkvWnFDZ+jA==
X-Received: by 2002:a05:6602:4f86:b0:86c:f3aa:8199 with SMTP id ca18e2360f4ac-8843e495e01mr325663639f.11.1755256989749;
        Fri, 15 Aug 2025 04:23:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZ+ruMJ4du6+6g0nP8YZAkSswv8epp8ueh0uj+5gCKOxs0IVlgGmW3dr6Fkri8yCflGk2TEH9pfq2BhwVZoJI=
X-Received: by 2002:a05:6602:4f86:b0:86c:f3aa:8199 with SMTP id
 ca18e2360f4ac-8843e495e01mr325659939f.11.1755256989397; Fri, 15 Aug 2025
 04:23:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250810-msm8953-cci-v1-0-e83f104cabfc@lucaweiss.eu>
 <20250810-msm8953-cci-v1-2-e83f104cabfc@lucaweiss.eu> <aJnefpETGJm_cuRY@shikoro>
 <f956eccec6b8ae2737b1e758b8357051@lucaweiss.eu> <aJ7wWDejA0KDarIE@shikoro>
In-Reply-To: <aJ7wWDejA0KDarIE@shikoro>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Fri, 15 Aug 2025 13:22:57 +0200
X-Gm-Features: Ac12FXyHLyjoE0VR2tgvZT9ZWKQ9V1qYGFU3UagVhwtyFYiZHmsAWnzbmBeXE0Q
Message-ID: <CAFEp6-3pZAt9557us4ihM3-ifrUVkYx+LneuORVafYQGeVyiVA@mail.gmail.com>
Subject: Re: [PATCH 2/7] i2c: qcom-cci: Add msm8953 compatible
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Luca Weiss <luca@lucaweiss.eu>
Cc: Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=G6EcE8k5 c=1 sm=1 tr=0 ts=689f189e cx=c_pps
 a=uNfGY+tMOExK0qre0aeUgg==:117 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10
 a=LDBv8-xUAAAA:8 a=EUspDBNiAAAA:8 a=y0T5QYlTslmZlUxBBQIA:9 a=QEXdDO2ut3YA:10
 a=61Ooq9ZcVZHF1UnRMGoz:22 a=DZeXCJrVpAJBw65Qk4Ds:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA5NyBTYWx0ZWRfX4+c3MEN1md+K
 fqjZ93HS9+l0qEaKR4CnfeFj/Uuup/nY/ka9WN49ytCdUBjkh+ECKKWxmjk57Xwce3BrMqACwiS
 OfKmXpoPkuoONEJJZ+hM6ARi6HmocTp7F65vHI6xMSuvJHLMbseAn4Teoy5nlqK/uT/Vl92FsZ9
 ACpFS+u6yMMYDuxedp8lGxk7oo/mNuMDKUUaSCANOtVYGLre/YrnOfOQUwtKfRVJCYDU0r/hrFS
 H6buqgRnPMIw8+O8Efv59FLygp42rIREFj7yP52Mht7AzpsEHPGNBdCoX5EK7E/b14f8AVJm/Zv
 z6wt00rd2GhDK8L5kCMhhc9bgcetbnaNd7CP2zDL+vZBfzASGncUbMn0sDu924hMPkxRoIhIrY/
 HvgBFtDh
X-Proofpoint-ORIG-GUID: eXxA8edVP6o4moHoikqKGrCeXn1upB5Q
X-Proofpoint-GUID: eXxA8edVP6o4moHoikqKGrCeXn1upB5Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_04,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1011
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110097

On Fri, Aug 15, 2025 at 10:31=E2=80=AFAM Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
>
> Hi Luca,
>
> > I'm also not sure what these parameters depend on, if it's CCI HW versi=
on,
> > or
> > something else. So naming it after the SoC should be a safer bet. Also =
the
> > msm8974-cci was only named 'v1.5' because it's an inbetween mix of the =
v1
> > and
> > v2 that were already upstream so arguably that one shouldn't have been
> > called
> > v1.5 in the first place either.

That's correct, this is a local version, not matching HW IP version.
The config depends both on the HW version and the CCI core clock.
As our timings are statically configured we should also ensure that
the CCI clock is correct...

> >
> > Let me know what you think. Maybe also someone from Qualcomm/Linaro can=
 jump
> > in and share their thoughts, if someone knows more what these params de=
pend
> > on.

That's fair enough.

Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>

