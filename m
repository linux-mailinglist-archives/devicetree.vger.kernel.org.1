Return-Path: <devicetree+bounces-33388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6522A833380
	for <lists+devicetree@lfdr.de>; Sat, 20 Jan 2024 11:03:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B9261F22394
	for <lists+devicetree@lfdr.de>; Sat, 20 Jan 2024 10:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEC983222;
	Sat, 20 Jan 2024 10:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="pYyRL7cI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-41104.protonmail.ch (mail-41104.protonmail.ch [185.70.41.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C35ED2E2
	for <devicetree@vger.kernel.org>; Sat, 20 Jan 2024 10:03:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.41.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705745019; cv=none; b=eDohOYy1AV9ASUGb+iLdrlNA1DxXDKvU0m+Zo9FArllP1W1jcdOBT4/mjwnVlQX6b5r2/IHWr9FC3ha+McZ1pZDXDGlXLyponUK0BCN7npMn08k7iQshChj/8j/w9v2zC1JwQFawOrTOm9HsggNCQh7qrnbncIrW6YuUPfyrpDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705745019; c=relaxed/simple;
	bh=RZoW7TH2kbsBZHb7CsAaI3qYNBh3amIrMgeeFmFKJuY=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=F86rFQLMak0RLCBpCHW5wXOp9uNYOW9D63LHlLYlZHYtr0MpHuOGgKY8OHEFhCxJk/F9EzaYbc9JAFS3Y9FBmZ60nW9kpxw9183P7HbLz7oEn5hBbvTNZTJOfmNQTrIBOz/qzJrdxvyFqgaVZnHOh07zKrvMVzgVEfgep9J9GnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=pYyRL7cI; arc=none smtp.client-ip=185.70.41.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1705744666; x=1706003866;
	bh=ctT1Dh+pp05yAwHSySMlMDCmpTuJiBDyOZm4bGAOnd0=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=pYyRL7cIdRdBAA6YqRZO3iNLrQLBMxIntsgJB68GiR8K2XoO4+TGrtTyUvkLDl4+3
	 X0ta9GEppgeEymZsYOArrHN/SEnCBmaGksealrXOGyUfpkU0pvraegwThHGK6mb+Qb
	 Sir7LIb1nyg4FlJz/UALDwstMSPBmkBcWP15WFJjg+NKSvFTgaZ08K+5sQ453HAYRw
	 NKZhLYjtSWbwwMcx/8puwsvuyjhtlKJbLC5l9KKUzSTsLKE8WJtaQMXqmRDXaO47iL
	 Vjgjuoh7D7btZjm6PKC5KfkTKTjsqdsa77623LRqfvWB6UywURTguKcd1olBxPrrfK
	 JWrHqJa7FNJWg==
Date: Sat, 20 Jan 2024 09:57:27 +0000
To: linux-kernel@vger.kernel.org
From: Raymond Hackley <raymondhackley@protonmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Stephan Gerhold <stephan@gerhold.net>, Nikita Travkin <nikita@trvn.ru>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: [PATCH v3 0/3] arm64: dts: qcom: msm8916-samsung-fortuna: Add initial device trees
Message-ID: <20240120095715.13689-1-raymondhackley@protonmail.com>
Feedback-ID: 49437091:user:proton
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Samsung Galaxy Core Prime and Grand Prime are phones based on MSM8916.
They are similar to the other Samsung devices based on MSM8916 with only a
few minor differences.

This initial commit adds support for:
 - fortuna3g (SM-G530H)
 - gprimeltecan (SM-G530W)
 - grandprimelte (SM-G530FZ)
 - rossa (SM-G360G)

The device trees contain initial support with:
 - GPIO keys
 - Regulator haptic
 - SDHCI (internal and external storage)
 - USB Device Mode
 - UART (on USB connector via the SM5502/SM5504 MUIC)
 - WCNSS (WiFi/BT)
 - Regulators
 - QDSP6 audio
 - Speaker/earpiece/headphones/microphones via digital/analog codec in
   MSM8916/PM8916
 - WWAN Internet via BAM-DMUX

There are different variants of Core Prime and Grand Prime, with some
differences in accelerometer, NFC and panel.
Core Prime and Grand Prime are similar, with some differences in MUIC,
panel and touchscreen.

The common parts are shared in
msm8916-samsung-fortuna-common.dtsi and msm8916-samsung-rossa-common.dtsi
to reduce duplication.

---
v3: Drop fortunaltezt and heatqlte. Add sound and modem.
    /delete-node/ &muic; in rossa-common.dtsi
v2: Use interrupt-extended. Drop fuelgauge, sensors and NFC for now.


