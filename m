Return-Path: <devicetree+bounces-90788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A226946CE1
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 08:59:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B4C4EB211BC
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 06:59:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3932134A0;
	Sun,  4 Aug 2024 06:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=proton.me header.i=@proton.me header.b="Gqa98tbq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-40138.protonmail.ch (mail-40138.protonmail.ch [185.70.40.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 871A91173F
	for <devicetree@vger.kernel.org>; Sun,  4 Aug 2024 06:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.40.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722754760; cv=none; b=CjCQ4wTsJGp877yinqlrHtaSS8caJRTHeWjQKYfLmQ3R5jMvzLLw+jX6w6xmzTz5MX1rLbAcU76iWXr4n1ELZaDpWm9dDujvYo2H+hDBQELIksQ5Ajw1dpmDU/rBxeYGMzYxcEe6/FQOZgaJX5YmEwQllqSGo416tYbPXATEJmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722754760; c=relaxed/simple;
	bh=Z+qTihX6x3+6FAP4dsakLUwWFtd7Rrt8oTHZNAGWloo=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=rTUMCpQurq8IZQr2ZAqutvBs02BzJLAX2jHt29RM8i3zORD9V56wOmeg60MwD6S0Jg7fUwebo7+JH1XNTXm5/6qDPu43zBkyv1eDz3MRMrDR03/pOWI3QFgUG1FDXgs8ZNJJ+Uun9LUK8woGxID9TiwKAj9ogTBOuCZneYs+NVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=proton.me; spf=pass smtp.mailfrom=proton.me; dkim=pass (2048-bit key) header.d=proton.me header.i=@proton.me header.b=Gqa98tbq; arc=none smtp.client-ip=185.70.40.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=proton.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=proton.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1722754750; x=1723013950;
	bh=L9ZRJxfz5SocDyyJtAnrmEuD2dObSXF7JlEVLZKy4fE=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=Gqa98tbqaMb2RpFyznsLgdZ6kLBAgp6Gvjv/owqbfuOSJPtx1NaAkbYHvO1l92SH8
	 oi9/52vEGmyiyyb2e4OBRl+mfN06f3FxrnFJnNNVinHzE55Uo3ytOlmANC1ypLjmlU
	 Lk0w/bRf8OxR4kKlv8Cam5Vupw9YuZiD4wCynvE1iGvHTqJvMQrDMmKci/dz3AYwLV
	 BJVFqq3ArAmzZ9EUuXauIXlcLVFa4oMyYs/oZCfuvzndRufVhLbFFsw+bWeO4psrXh
	 eKRFSNR5gaUnVpcfpCajsOGIeG9RSQbzTGcMvbtJ/w+aPJKwrCfjtqwc03qyrBlZXz
	 bzFs1w9GiFDKw==
Date: Sun, 04 Aug 2024 06:59:06 +0000
To: linux-kernel@vger.kernel.org
From: "Lin, Meng-Bo" <linmengbo06890@proton.me>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Stephan Gerhold <stephan@gerhold.net>, Nikita Travkin <nikita@trvn.ru>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: [PATCH v2 0/2] arm64: dts: qcom: msm8916-samsung-j3ltetw: Add initial device tree
Message-ID: <20240804065854.42437-1-linmengbo06890@proton.me>
Feedback-ID: 112742687:user:proton
X-Pm-Message-ID: 0654f3f8bdbc3d6f772f62b9592ac9245da5b47b
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

The dts and dtsi add support for msm8916 variant of Samsung Galaxy J3
SM-J320YZ smartphone released in 2016.

Add a device tree for SM-J320YZ with initial support for:

- GPIO keys
- SDHCI (internal and external storage)
- USB Device Mode
- UART (on USB connector via the SM5703 MUIC)
- WCNSS (WiFi/BT)
- Regulators
- QDSP6 audio
- Speaker/earpiece/headphones/microphones via digital/analog codec in
  MSM8916/PM8916
- WWAN Internet via BAM-DMUX
- Touchscreen
- Accelerometer

There are different variants of J3, with some differences in MUIC, sensor,
NFC and touch key I2C buses.

The common parts are shared in msm8916-samsung-j3-common.dtsi to reduce
duplication.

---
v2: Add accelerometer
V1: Initial device tree
Link: https://lore.kernel.org/r/20240802080701.3643-1-linmengbo06890@proton=
.me


