Return-Path: <devicetree+bounces-71452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EB65A8D6F93
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2024 13:54:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A95921F223BA
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2024 11:54:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63CE22F873;
	Sat,  1 Jun 2024 11:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="mDHXjVaA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-0301.mail-europe.com (mail-0301.mail-europe.com [188.165.51.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D76D0365
	for <devicetree@vger.kernel.org>; Sat,  1 Jun 2024 11:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.165.51.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717242843; cv=none; b=bFv9XpH+qiLc3xTv3Z13RiueaXLHf/O7rRgSRdrqa5fz2QyyROrurISO+M0m1borr7gwwB6ONWXvjPEQWZq3EoHilR3qB9kNBUiG8IG/MqdGzK8vaLD3bhUZP0h9sD45VU2xldV+1ML8x2bKBpr0RENoONTEselp43PnqW5P2l8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717242843; c=relaxed/simple;
	bh=PdnLYCmmE5nov31Q1GMGmkrrW4cbOZEfyTbCiV4zdV8=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=NCX/w6DPhfcb81CtA8BZLB9hSN7gO55xqMLto2YMX1ZBlKRPAYVj6XxnkEE1jpiyeEJ1+t8SGha1f3s0bDVbb2vuZAqGvalI7WxZSiTxuSepH9mSSD9ZbsJBuRADCtQdyS9GKg0mi3zj4ufn5WWsp+uUAtrb0SS9hTjRWKwZdEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=mDHXjVaA; arc=none smtp.client-ip=188.165.51.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1717242825; x=1717502025;
	bh=PdnLYCmmE5nov31Q1GMGmkrrW4cbOZEfyTbCiV4zdV8=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=mDHXjVaA2vCZ7XgNqjDI05y6whSFzmchbSfkGIlbvwKMf9i09peywsuUnAFspYvKr
	 buqfcKII8hZXr1LjNvSGPth0TT5yBmwtk4ElN/681tSlC1h2offLFVWZJgOByfjqax
	 wxishZNth/tDicTiW46qb5TycNnlilz9jhVzrxSqJp8maeSdfiFsOrJQPvEe61ZLrR
	 vB2F/pMp22D6ci/mCwr9qo0BEHR01fOv1FzkaWqyh6LQA3KF/CaobBvftHvvwXH9FD
	 BChzEcLH3Ox04yK9cdj8M6uIc1RyOmwtLawiZg71YV9EVtOsiVJpZBfU6JVX4GfYPS
	 0AwjbjNApc01g==
Date: Sat, 01 Jun 2024 11:53:38 +0000
To: linux-kernel@vger.kernel.org
From: Raymond Hackley <raymondhackley@protonmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Siddharth Manthan <siddharth.manthan@gmail.com>, Stephan Gerhold <stephan@gerhold.net>, Nikita Travkin <nikita@trvn.ru>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: [PATCH 0/3] arm64: dts: qcom: msm8916-samsung-fortuna: Add msm8916-samsung-fortuna/rossa: Add S3FWRN5 NFC and RT5033 PMIC/charger
Message-ID: <20240601115321.25314-1-raymondhackley@protonmail.com>
Feedback-ID: 49437091:user:proton
X-Pm-Message-ID: 6d3c47b5f0e095a6b2829bbced80f601634dce0f
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Some variants of Samsung Galaxy Core Prime LTE / Grand Prime LTE have
a Samsung S3FWRN5 NFC chip that works quite well with the s3fwrn5 driver
in the Linux NFC subsystem.

All of Samsung Galaxy Core Prime LTE/ Grand Prime have Richtek RT5033 PMIC
and charger.

Add support for them.


