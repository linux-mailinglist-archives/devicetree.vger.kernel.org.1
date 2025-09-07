Return-Path: <devicetree+bounces-213985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A063B47B32
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 14:09:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7ECBC4E0FE8
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 12:08:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9F33261585;
	Sun,  7 Sep 2025 12:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YMq8n7GD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C5A1C84A6
	for <devicetree@vger.kernel.org>; Sun,  7 Sep 2025 12:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757246936; cv=none; b=o72SfuotRJUsq2SDdFoRSGQ05C6vfFgB4XpZ+OXslCqQD/QaUzxedA8QJUsoMLkuNxofvoc/BL0qgUGFG3AGCgqFKZ8RjexIuV7pTVf3oj9FbiLhjW2g6IgjXJqwXOCH8MgjLIfXXZSDw5JDiU3YiHf62yIoqP2cuoQI14fReyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757246936; c=relaxed/simple;
	bh=UvYO/S4FYhKI0uz8CMzGpm+g7Q7gNLGJVRelkJqcjb8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=s1lNCelSPZaZSAfzGc8Id8VvAxbvX3svLvAhMwt2yeRWDZ8B2JxxfWCT5tG2DeWkaXWXIwBIiGm47X25OEy5HhH/YVxY/tbtHq9KBYU/bkSphInKv3qNMMHwVD44f+NV68RZyMyWILjo2yJFpE6csZtA6x5A051k9W3stHm2gEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YMq8n7GD; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-56088927dcbso4369486e87.3
        for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 05:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757246933; x=1757851733; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UvYO/S4FYhKI0uz8CMzGpm+g7Q7gNLGJVRelkJqcjb8=;
        b=YMq8n7GD/jiXUkjmjzaeNgJb2lY9K2Eu2jjoQ1L4PBeh7mvuba8aXyB0QldwTrHAzL
         6yfd0Lr4Rv2zKRqTMHSxBW0s+GEZJQeRhCfepgi+CGRjoNCf0Aw/espERTecMAGYhh+Q
         MWZZGua1PjmiQOeG7BN3efYI3XU673boCwjMht2E5LLyeC5CI+75Du0bi33rCuB5mh+d
         S/1UhlVElRRx+uimQFVIx+vbPd042ybsR9WRFV7G149nkyvnXYHmzmVuyNVcFtQ5F1e+
         8C+LzPyZLw4UUg2+LW5cVQPdKL2YMM5ngqYfPkYFt5WPSjurntA5cCtAMa1Y5BGVBQkJ
         poWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757246933; x=1757851733;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UvYO/S4FYhKI0uz8CMzGpm+g7Q7gNLGJVRelkJqcjb8=;
        b=qThhX9R0a+QSwwo7SA1Qc1zLTUu/temxdRNlxX6xoUqI7rlytY9ontpNRn5/dOGFRG
         GG/dPlMn6wzVzJijiZVaadyalmGJfgV1Ugh27qK0eO5lD6tWJKLfw/wM+1pFdZOFpK+j
         fyT58Las0WkVZKrTNoDrSIT5U03P7oMEZCSVfY2D6gTyJiD6Sdao5qSNwpe1EH4Cxl2x
         zMIqwbH90lrYLI6XKLqVPb7T4WdRJompl3K2/WDRnZw/KAo1I8Aw9KLDPmuY69j2b0ze
         FTX95TYW9XNWZL9bBDOa3Ee1NpWspsipnRhgN7qTnY9VZgKnGH78pQVcOAPM+jsPrkGc
         pirg==
X-Forwarded-Encrypted: i=1; AJvYcCWBlCkIwLyoXJTVDboC+DJmQ3OFIpN+VAd65ICR9dlnj7Fat37ViUqar/b9I26hgRSdBuw7MwjJK9+j@vger.kernel.org
X-Gm-Message-State: AOJu0YySFtBvGwq1Bjp4PEXN1TTLsbD87CE+L4/ZL2TIrFJsyT70HKRT
	vXCuckqInwd9K2iNU5+HeRZuYn07vbb8H43ze828QsYmxi1wiegxL0gW3BSiAgqZSnlLop2mSTC
	2bLI/MlayF7aJDiuZwErumXXbJrwi1Kw=
X-Gm-Gg: ASbGncvVqe8CI/nD4cvb2pISlYlQTL1lBTjzzNbrxZo7hkTZKCutwaPEwCxhloJYjhK
	rcMqFEQ9SIOSrjRxRSM/rddTzv0lK8kDfMv4+5nwrtnFLCiSSX3baa5P8opgKEzj1lGCqxak5BY
	ugVZsmiOzuMNTvAWNxk/Sd29duBOpO6D04/J1ATuSAH9FrBeA99PjGq/0sDdcWMqnlGu3KQYU+q
	GqI7Q9qn1rKCFpNkGRm4yUMazl8salOZpCnGyM=
X-Google-Smtp-Source: AGHT+IGrEzNmX98J8zp7sY+Ald9ZYuJH0r/0Ssh4ZtSYuV9uFp0res4ux6xHCtdVqLPlU9LHSnqcTKQ8SYrzmI51LWA=
X-Received: by 2002:a05:6512:61a2:b0:55f:498f:f092 with SMTP id
 2adb3069b0e04-5625f34b7bbmr1041045e87.13.1757246932714; Sun, 07 Sep 2025
 05:08:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250906231930.461022-1-festevam@gmail.com> <20250907-tactful-blazing-urchin-9f8bd9@kuoka>
In-Reply-To: <20250907-tactful-blazing-urchin-9f8bd9@kuoka>
From: Fabio Estevam <festevam@gmail.com>
Date: Sun, 7 Sep 2025 09:08:40 -0300
X-Gm-Features: Ac12FXxD25D2Xhy55N3oPMgOYy8YykUrFoPxT2XRnO8uFjbMIcyKxtnqeIt-168
Message-ID: <CAOMZO5AaNGGXiy1gH2Z9OWs--t8kaUQ=odOcoUABMA8=CJ5E3Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: cpus: Document pu-supply
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, Frank.Li@nxp.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 7, 2025 at 6:57=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:

> This awfully looks like typo of cpu-supply, so I don't get why you just
> cannot fix the DTS?

It is not a typo.

The i.MX6Q Reference Manual does reference it as PU:

"10.4.1.1.1
Digital LDO Regulators
The integrated PMU includes three digital LDO regulators: LDO_ARM, LDO_PU, =
and
LDO_SOC. These regulators provide power to the ARM_Core power domain, the
combined VPU, IPU and GPU power domain, and the rest of the SoC logic (exce=
pt
always-ON SNVS domain)."

The imx6dl.dtsi uses the correct names:

arm-supply =3D <&reg_arm>;
pu-supply =3D <&reg_pu>;
soc-supply =3D <&reg_soc>;

