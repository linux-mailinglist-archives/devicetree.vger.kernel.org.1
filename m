Return-Path: <devicetree+bounces-80431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8673C91982D
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 21:18:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39AB028374D
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 19:18:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68D1518A936;
	Wed, 26 Jun 2024 19:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="Xv9hF0/Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-40137.protonmail.ch (mail-40137.protonmail.ch [185.70.40.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBBB5149C57
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 19:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.40.137
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719429528; cv=none; b=SoU4zqJ/ev4qKLKSKH3q5KGZeLfeSrSRb7r7kWRi3/zIGYkmMH5G6zAWOzG2zH7OnIT6JqzSHPdSngj5Kd07Q7jx5wGMigI5SvHhzsbrGf2f5lAdzWZERbfvb/NxnOEos644luKgWYL3k1wUIXT3icata01AZCGAVwU+HPueUoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719429528; c=relaxed/simple;
	bh=TDgFK+R1DEpZpTk44rT4e1nUk9ZsMMOlU+Edg0FTZnI=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=KwwA3951WgKCwURcjWYjH2tyZJpyUzbS9v4UB+v7+oQHaBs/QENEOh7C0Or33eCjDSHZPVXQgKwa13G0FfvhGzuHvGx8Istsc5uHNVtsTVViDoLlwkMf1eA72Q19oNVKrXwKhw3SRfHZ4cWCoo04Rvl3CA66BEaboW73dbccopw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=Xv9hF0/Q; arc=none smtp.client-ip=185.70.40.137
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1719429521; x=1719688721;
	bh=TDgFK+R1DEpZpTk44rT4e1nUk9ZsMMOlU+Edg0FTZnI=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=Xv9hF0/QMmdC16t6h3Uu5SdDnse1xrsmuq1U9HSr6pJLQ78E0Arib2J18GgO4mJ7G
	 Bzfzc3nVBkcM/mbRlv/Y4L1HDZYNIi8LfmwDW4Od9Fu07hVCqKqoeMA0TgHOJdeTcj
	 fJcuVJFEO3bfs8pZbcZEDMpj/puL3iCdXQMu/P+ZTbHXJCo6EYiRioM1niIPMh5I+a
	 u8kXhv7QrccI1z3MyIHjHVaC1kDyHRhcetM7Kjnx5ZRV4DspiLaZUYgkIiMwDNyc7D
	 WBWpSe4ZsHD9bvjx5O2Aov4QqiHAbv7z4j4OLS/3sEcHO62fi3r7GCEtvaay4rxvwu
	 tv/s/t15AM1Gw==
Date: Wed, 26 Jun 2024 19:18:37 +0000
To: linux-kernel@vger.kernel.org
From: Raymond Hackley <raymondhackley@protonmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: [PATCH 0/2] ARM: dts: qcom-msm8226-samsung-ms013g: Add initial device tree
Message-ID: <20240626191829.280611-1-raymondhackley@protonmail.com>
Feedback-ID: 49437091:user:proton
X-Pm-Message-ID: 47ed34d9c1588f142ed6687bde98e9385d4c64f0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Samsung Galaxy Grand 2 is a phone based on MSM8226. It's similar to the
other Samsung devices based on MSM8226 with only a few minor differences.

The device trees contain initial support with:
 - GPIO keys
 - Regulator haptic
 - SDHCI (internal and external storage)
 - UART (on USB connector via the TI TSU6721 MUIC)
 - Regulators
 - Touchscreen
 - Accelerometer


