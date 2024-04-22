Return-Path: <devicetree+bounces-61454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 401B48ACBB6
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 13:12:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 600431C227A5
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 11:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D708E146A81;
	Mon, 22 Apr 2024 11:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDgilJIk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE2C9146012;
	Mon, 22 Apr 2024 11:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713784333; cv=none; b=R1oPF3GLPgT4OPDx/GuBwwviUmkZuBEZlo6lc2peYsLmrg9z5NOvAC5imVYryv4auKa1amN8JV09eOgj/euBj6I2SVZNqsKsRtfqzZXJtuQTNVE0wf/c4/iKKhyebR/pJ35xtzZ0bVl9zI2TRCQpwMOcwCCBHZXSe0RwBCMHHMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713784333; c=relaxed/simple;
	bh=jYWnCuITKVGeyc1t8hsHiTcjXug06ly8BmUw+OWZjmo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=As6ddu2sCAYBXf41a9Ky5a5sEzSjiFtYithf6VBQpdtshTusbkumdwO9hxhPLyWQwAg41osQDz8yUlhPVNtb04O7doAdhrfoj5y3HhWxjWeBQ94O7NBvCTcRJmdaScCPDhn+NU1JMFBV3F5WuA7tTQaG+dNSwgDIX7JO6YktXwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDgilJIk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 51CA5C2BD11;
	Mon, 22 Apr 2024 11:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713784333;
	bh=jYWnCuITKVGeyc1t8hsHiTcjXug06ly8BmUw+OWZjmo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=mDgilJIk0XYOo7/8ZK7h4v5of2zefwB24hE+6TydEv1oSuWBrufxIB2BekbKPsxoL
	 xvtf8z8BnLCHa+4NurOfsPC+/vhh3z1tYJTQov28t2Ax2gSuWoGkuFZXEvbFmL1PBj
	 wdhqCCXlIFUvF6iR20hwy3dkD+iAwpi+TfJOcDgzSQoxpdAWGC4C46CX11WXjxCuQs
	 2Ex0VblbXqmjMzruDZwb7wEOKt3/VuQokpquIB71PqBW1gjHPTn4K+jPCUWk3zGW+D
	 8b8J0GHK2rrZFxvTCPZLLaheCA6Pld9wDsn0CNKlt8DzdCgQ/FUEx6L+GOj1L2PdGz
	 h7g8y09fWfUeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3CB3AC10F1A;
	Mon, 22 Apr 2024 11:12:13 +0000 (UTC)
From: Kelvin Zhang via B4 Relay <devnull+kelvin.zhang.amlogic.com@kernel.org>
Date: Mon, 22 Apr 2024 19:11:44 +0800
Subject: [PATCH v2 2/3] reset: reset-meson: Add support for Amlogic T7 SoC
 reset controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240422-t7-reset-v2-2-cb82271d3296@amlogic.com>
References: <20240422-t7-reset-v2-0-cb82271d3296@amlogic.com>
In-Reply-To: <20240422-t7-reset-v2-0-cb82271d3296@amlogic.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Zelong Dong <zelong.dong@amlogic.com>, 
 Kelvin Zhang <kelvin.zhang@amlogic.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1713784331; l=1542;
 i=kelvin.zhang@amlogic.com; s=20240329; h=from:subject:message-id;
 bh=V9Mku9OeTyU3lnGbQaD9sh0OS9qpGjOnwcE8yjtQxFM=;
 b=VDZujYI/hY37dRyDX1UhtvU4NDwHA/K1jjD+Rm4uyzS+R08RTkxnMoRisdtTCSgF5kU2LT9tn
 Lb/NQJbYztNCbz+HGSyUwV67i0NL1aV0Q/9tbcC/+wekdfMLHnPCALG
X-Developer-Key: i=kelvin.zhang@amlogic.com; a=ed25519;
 pk=pgnle7HTNvnNTcOoGejvtTC7BJT30HUNXfMHRRXSylI=
X-Endpoint-Received: by B4 Relay for kelvin.zhang@amlogic.com/20240329 with
 auth_id=148
X-Original-From: Kelvin Zhang <kelvin.zhang@amlogic.com>
Reply-To: kelvin.zhang@amlogic.com

From: Zelong Dong <zelong.dong@amlogic.com>

There are 7 sets of Reset Source in Amlogic T7 SoC reset controller,
and the offset between base and level registers is 0x40.
Add a new compatible string and struct meson_reset_param to support
the reset controller on T7 SoC.

Signed-off-by: Zelong Dong <zelong.dong@amlogic.com>
Signed-off-by: Kelvin Zhang <kelvin.zhang@amlogic.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/reset/reset-meson.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/reset/reset-meson.c b/drivers/reset/reset-meson.c
index f78be97898bc..1e9fca3e30e8 100644
--- a/drivers/reset/reset-meson.c
+++ b/drivers/reset/reset-meson.c
@@ -102,6 +102,11 @@ static const struct meson_reset_param meson_s4_param = {
 	.level_offset	= 0x40,
 };
 
+static const struct meson_reset_param t7_param = {
+	.reg_count      = 7,
+	.level_offset   = 0x40,
+};
+
 static const struct of_device_id meson_reset_dt_ids[] = {
 	 { .compatible = "amlogic,meson8b-reset",    .data = &meson8b_param},
 	 { .compatible = "amlogic,meson-gxbb-reset", .data = &meson8b_param},
@@ -109,6 +114,7 @@ static const struct of_device_id meson_reset_dt_ids[] = {
 	 { .compatible = "amlogic,meson-a1-reset",   .data = &meson_a1_param},
 	 { .compatible = "amlogic,meson-s4-reset",   .data = &meson_s4_param},
 	 { .compatible = "amlogic,c3-reset",   .data = &meson_s4_param},
+	 { .compatible = "amlogic,t7-reset",   .data = &t7_param},
 	 { /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, meson_reset_dt_ids);

-- 
2.37.1



