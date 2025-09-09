Return-Path: <devicetree+bounces-215010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 930C5B500C3
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 17:14:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 643447ABABB
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 15:12:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D2EB352084;
	Tue,  9 Sep 2025 15:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QJLJCZ4s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD18334F47E
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 15:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757430828; cv=none; b=IXDnzA0Xv8UGSQkC5u+QNTO408r63cHixKTQBF8FVTcuO4nW2zPPapId7wDkDq4XBcnDkLzrmr7SyCNrjP+NJoodcZXI8mMt0yBQlGJ/dMMLvF6fpnzPQL5/9hzaBjAXYYRVw4WN9V7QDwA1QKJ5dZ17mhxXqVOJMdVXdCrqMGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757430828; c=relaxed/simple;
	bh=tBUZulCM1QmYag/rYO1gJeRa4CPakZQb8P0yx0qaPpA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ldTP04CtBh8GjdThNyI3J2K/uPAfxh53Ac6hQeYo7ggH+c094nh+EPVICL/xswdB5jOa1tYuqpHL9JZUUjDw6/mkWIO7qdiM4FVPOLVV1cFTq06TiBLpYGjgNi/JHxEK3C4+1qXtpliPZKFAbFMA5dYxKQZaV6rVHve3hp84xQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QJLJCZ4s; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899M2Cl002301
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 15:13:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tBUZulCM1QmYag/rYO1gJeRa4CPakZQb8P0yx0qaPpA=; b=QJLJCZ4sqDs8saa3
	NEDg0HB7QVplC5FmWvBH0bQt5bRe+DCYWaEfZ1r/Yf8fIn4sNeH07nWf5MgyM160
	CMVE2YkCCRWAX/7IPf74A86bR2YBFfARvlCRKrMZz/KWKTJDiKa+YqhcgFNOVA3I
	PA917cbbFFdqopTiN8r3Y/CkZ0DaXnGOZvAHn6dRYkpvPqqM3z+hQ65e+eSozMd3
	7y8EBrF4XkLPkJNazcnkl94rsrYosmiY+NEPCcLFf/fY3NetQsXkvLmcbhRe2K7x
	qHDtOONgnkncLJKwUQb3ixwAssSRxVUsqkhofCZbThx+U2izRUXMtmJoX12jmkeu
	KTJgUA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqg0gcq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 15:13:45 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8078f1bc588so1546720385a.2
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 08:13:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757430824; x=1758035624;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tBUZulCM1QmYag/rYO1gJeRa4CPakZQb8P0yx0qaPpA=;
        b=aDivq4Ok6Ad63CdEMlvhcYoCC5h3Zgp5ASQ+oFh/WLc9/2K9W8iw1666hgeUSv5e4+
         bvX5Rkkygai5/Si4wCOxHiO19sAsY1AJ1N4kfd8YjNtVxmtMTTYrdBqAgRGE19cP1lbh
         gtqGhb+8CwXhrMueyrWzIMeoj+Ph0n4B3VAVTg2DQ+kTUhyYR1oWsgJXmIaAY8ZtV6n1
         BjYe/HSwWqS6d3DFxmgoKB8MK/GXUbAJl73dE1RNkqmbGbtIep/6bPKFeNk6GhApeNTI
         2JYuSqOY9caJfAM9VSEZ5KMZeKyw2rYercMiNMECUCZ6rD8tThSVxNU8bCyZR87LsUW0
         VNSw==
X-Forwarded-Encrypted: i=1; AJvYcCVarFTlnPvxuRQQyKrZLsXAO+vt6j3Gyw4dIN5I49p+kYUkKmoZv73VVVqf4TyeXyN6uJryc6GRCIBw@vger.kernel.org
X-Gm-Message-State: AOJu0YzPJ+Ha1hm6Mpi8tdcn/z7HKgD766YezngH3MHmy7SeGuRysXol
	NeoGM/APJwUyEkXqg7kwFysf+kFE/j+3tAr4dyiDKqHOi/Zsv4Ikfzmfhy+FhS9gJyZKNv589uC
	T1qoz1RGdiD0AOTAnv67KbQhMpWFogUhOPva/KJ6EOREPa9+/r0E25hfg5X6PzWHWoMnWjTAiPX
	jzvr4wdLsIM+TWxqcmN3n9juEBKpEYKrWnLD6P0W8=
X-Gm-Gg: ASbGncvp2JuN3gJ2rMiIgLdB3MdvOJ0cHiUDudW9Lwa5ZjkN1cdfZ5l1XKcVDMtDN4n
	zDYcEuH9UBoCV7K9tvIf0x/bHKSXBTlYAmPLzshOo5Nul9KnGpXVNvC/28Jf9e1SVg8SDHWhuJB
	aDf9ZmzOfppfhn88nW8pn2Rw==
X-Received: by 2002:a05:620a:1914:b0:80e:ea60:5ab5 with SMTP id af79cd13be357-813bdf6573cmr1065329485a.5.1757430824262;
        Tue, 09 Sep 2025 08:13:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEP3m8TQXurtP7EDNoZFjviZYeRLBktqofFy6NzKQ58AmpuPf7TH8c5DGH/g48atlE9EDXdL4RKC+aicughQAs=
X-Received: by 2002:a05:620a:1914:b0:80e:ea60:5ab5 with SMTP id
 af79cd13be357-813bdf6573cmr1065323685a.5.1757430823532; Tue, 09 Sep 2025
 08:13:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250519094745.32511-1-loic.poulain@oss.qualcomm.com> <4bldj7jjsi4o2wz4wij2ggog4no2nndavk4r7frvd6fv5fjtfn@4unsvlv2mdl7>
In-Reply-To: <4bldj7jjsi4o2wz4wij2ggog4no2nndavk4r7frvd6fv5fjtfn@4unsvlv2mdl7>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Tue, 9 Sep 2025 17:13:32 +0200
X-Gm-Features: Ac12FXzTNyQG9gZZK-bmNMKPyGvG8QLL-KjBIb-H6FUgWO4cQO4LwfZ749ugKXs
Message-ID: <CAFEp6-1naKYksWBSeAFSPeWvsaZXYxsMvXrGN6R4bJZNMzsiYQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: i2c: qcom-cci: Document QCM2290 compatible
To: andi.shyti@kernel.org
Cc: rfoss@kernel.org, Bjorn Andersson <andersson@kernel.org>, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: lBMCzA1xFuAVSoAEojq3uO9yzM-kbWiR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfX6OtURquLVM1A
 0xTYGj/0jotu7plXCj0MeOCS2+SwkzFd5CDZHpNy+qHW+rkbY3gZwm380fFj+867WWvcHZJgMzY
 8XGqmczP1IeQaU0NPzDev7biofEPynJpsF4dyt4/rKvg0Vh6OOAPoBA8CNiSMnvbXEOKmpPGnSJ
 Ne1vB7Mk4h+HFa9yVqwM+jHgjwO8AiDnJTb6C6QtYd30n+/zCWViXGeTu+Lx5ZyL9Mk0usochA7
 1LKVxduXYyzUwmluiMpelB5+X9hh6FOlpinbzvrMrDsC0GJ8qUZA3lHwLjZPHZ2qOajt3pXjCjm
 v6aBLjFZ3YTCzaxbREjSdpi0jDaAY2VlHFyR6cryN1UhqUBS8W6Erj2VGUqRaVt4/zkl7ojv6Wa
 6BaP0N1G
X-Proofpoint-GUID: lBMCzA1xFuAVSoAEojq3uO9yzM-kbWiR
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68c04429 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=KBZmAnGqXSic2IO25hUA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_02,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035

Hi Andi,

On Mon, Aug 11, 2025 at 9:46=E2=80=AFPM Bjorn Andersson <andersson@kernel.o=
rg> wrote:
>
> On Mon, May 19, 2025 at 11:47:44AM +0200, Loic Poulain wrote:
> > The CCI on QCM2290 is the interface for controlling camera sensor over =
I2C.
> > It requires only two clocks.
> >
> > Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
>
> Andi, can you please pick this binding, so I can pick the dts change?

This patch is reported as NOT APPLICABLE in patchwork, should I resend
the series?

