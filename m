Return-Path: <devicetree+bounces-162196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B50CBA77642
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 10:21:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD98718892D4
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 08:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57C841E98F8;
	Tue,  1 Apr 2025 08:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chir.rs header.i=lotte@chir.rs header.b="YMBsE16Q"
X-Original-To: devicetree@vger.kernel.org
Received: from sender-op-o17.zoho.eu (sender-op-o17.zoho.eu [136.143.169.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514711EB184
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 08:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.169.17
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743495596; cv=pass; b=kZynpVp9oTGzKnGRLgHgLbe5M1CGlb8JGNj34dpoMS0MXzKcLmAgx8dCU0J6Gp66wZtslzBUhMtocW1PUKMkCordwo+RTmYauKiqPCUv1N9QJj2lHpIRpay1dV3LEFlxEoj0jzCknPcoHSs9tkwkGdO4LN5N2A3E4CTcKxpKNKQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743495596; c=relaxed/simple;
	bh=pTCQB0gM1iH0vy/KyRCFBtfEoTxJD8u1Wse1yiltnjE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=iZTm+uI9B+oTNNb1GtoX3XQZLlY7OWRNKJ+OEorKaAYFJTLJnd8E2ztj96cRw1FToNzmdSNRBdD+LQcU4Q0gncupOHDrSGXHfnjl46cAbfsm3yYVcBV2IAQZmfyuc5do5zZa89Ezn73HdbKxHrt7OXwQ1DkdqqWKrU9omL5gfMs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=chir.rs; spf=pass smtp.mailfrom=chir.rs; dkim=pass (1024-bit key) header.d=chir.rs header.i=lotte@chir.rs header.b=YMBsE16Q; arc=pass smtp.client-ip=136.143.169.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=chir.rs
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chir.rs
ARC-Seal: i=1; a=rsa-sha256; t=1743495553; cv=none; 
	d=zohomail.eu; s=zohoarc; 
	b=bnUeaESSZiOvk18jfd9NqyilfTpZ37Z5HjWmmkYPhPFAiwf8aKs/2mxanNYj9WGGTTVjKXoy7VstD24JzEKcXRqCBpJ1gZHXQkTtFPmLnd2gijQBtHkvDc033b65Qb/+BFqngzp4dOiCox2JgU4TKxx29mS1mS9nAAdPUuaj4io=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu; s=zohoarc; 
	t=1743495553; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=pTCQB0gM1iH0vy/KyRCFBtfEoTxJD8u1Wse1yiltnjE=; 
	b=P/qmd0BU2fQ2u4aillXudrrxhHymlzpXHo4PpzTg1KRuCuRsATSdE0vulbULBOTiOuYfV0eIDASLA9Tugsvpl+VZYFjXeiW9ch/8pfa017Ilkefr9r8jpXKtVdCGx7CanTSo8yEESBXZSWka3yzA1chxzV0+Z57bQchOCbinnIw=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
	dkim=pass  header.i=chir.rs;
	spf=pass  smtp.mailfrom=lotte@chir.rs;
	dmarc=pass header.from=<lotte@chir.rs>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1743495553;
	s=zmail; d=chir.rs; i=lotte@chir.rs;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=pTCQB0gM1iH0vy/KyRCFBtfEoTxJD8u1Wse1yiltnjE=;
	b=YMBsE16QvUsJcnBVlJKsGQki4FRJQ8sNLhNjuUQpKeIcycJx3XP5mv3GyTSYtv9u
	BVd1UpQxFaTfLoVaqf/YfkCCkOpZMQwvj0qXaYu4iQrpU+2He0eOv6XIJ7HZa4cZZqH
	aBGIY/536PMga1/k3YtAU7TdJZ/CzyTHgDl1/YA8=
Received: by mx.zoho.eu with SMTPS id 1743495550257642.4299015885807;
	Tue, 1 Apr 2025 10:19:10 +0200 (CEST)
From: =?UTF-8?q?Charlotte=20=Dele=C5=84kec?= <lotte@chir.rs>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	max@maxfierke.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/4] Introduce ClockworkPi CWD686 DRM panel driver
Date: Tue,  1 Apr 2025 09:18:30 +0100
Message-ID: <20250401081852.283532-1-lotte@chir.rs>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External

The ClockworkPi DevTerm (all models) uses a 6.86" IPS display
of unknown provenance, which uses the Chipone ICNL9707 IC driver[1].

The display panel Max Fierke has has two model numbers: TXW686001 and
WTL068601G, but couldn’t find any manufacturer associated with either, so
he opted for the ClockworkPi model number.

This driver is based on the GPL-licensed driver released by ClockworkPi[1],
authored by Pinfan Zhu, with some additional cleanup, rotation support,
and display sleep re-enabling done by Max Fierke.

[1] https://github.com/clockworkpi/DevTerm/blob/main/Schematics/ICNL9707_Datasheet.pdf
[2] https://github.com/clockworkpi/DevTerm/blob/main/Code/patch/armbian_build_a06/patch/kernel-004-panel.patch

Thanks to Krzysztof Kozlowski, Rob Herring, and Sam Ravnborg for their
prior reviews.

I hope this is the correct way of reviving old patches.

Changes in v4:
 - Use existing clockwork vendor ID
 - Update the panel initalization code for DRM changes

Changes in v3:
 - dt-bindings: add missing lines for spacing

Changes in v2:
 - dt-bindings: remove redundant backlight example
 - add missing regulators
 - remove some unused properties from definition (e.g. enable_gpio, supply)
 - reorder includes
 - remove redundant ctx->backlight in favor of backlight through drm_panel_of_backlight
 - remove now-unneeded ctx->enabled and enable/disable hooks
 - replace ICNL9707_DCS macro with mipi_dsi_dcs_write_seq
 - use dev_err_probe instead of checking EPROBE_DEFER
 - fixed return type of cwd686_remove to be void following changes to mipi_dsi_driver
 - add .get_orientation callback



