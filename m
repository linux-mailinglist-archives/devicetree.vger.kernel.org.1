Return-Path: <devicetree+bounces-287518-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNJONIZN32mFRQAAu9opvQ
	(envelope-from <devicetree+bounces-287518-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 10:34:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACAA402082
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 10:34:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D910B3030185
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 08:34:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E7913D0932;
	Wed, 15 Apr 2026 08:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqqobZoQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A066393DDC;
	Wed, 15 Apr 2026 08:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776242052; cv=none; b=eFFOlLvScQtBbwqpUtMRTey7s5k9382Z2gYK2EF3da2SPj52RTBl7WVsCe8zKKKjTMahbg074YZj4d99sWm+jc1G4sUszZuS6VjUfv1U6e2ubAWF8zvzTu4dnm7eiSOa+2NGEzwHawUcvMJNgvZ7YDIWM17EQn8jzpy1ZTs/x0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776242052; c=relaxed/simple;
	bh=FfXjRFmg7qIWDzIcMzkkgcBil928LcG9XVE51++/LHM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hgkR8fBZUHYLvK3Cfh+glU+yGjYaS3xc5Rg76od6d+HSlE7ffuKxWE/4HFadAd+7BMmfcj4gkd7Q9Hxmv9bL38Nu65XUNXRYH1UZvUJxQidoJfA1jGJYyhKOTvHTncITj3Z1vkFv7SW8jl6aGheTNnxGXSQwDQZiZzglHUA4Iis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqqobZoQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9D6DC2BCB7;
	Wed, 15 Apr 2026 08:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776242052;
	bh=FfXjRFmg7qIWDzIcMzkkgcBil928LcG9XVE51++/LHM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=TqqobZoQWkl5dARinKIGTjyWtV9xL9giB7g8TENIQvAJ6UH/4yj0HGvQ5hPnEIEZc
	 3JaGasO2EFf2ag9UlV9TI3w0FaRTfjIG5DPuZb6Wv2UGdoSng3xFS6RD2oWRc7+iqy
	 Oid+M4E/5iVijnXFZbkTsO3yhbJzYM31b4aSlJbqoD7X90EuxpodnoynpH7oBnb9lN
	 e6bPTR6alrRZkn7N1huiHWpLNWO4Cum+Uf5U9LRLC1bxYD/niDMqh22NP99x89oaox
	 aV9BazmTV0wzXsihbcWIDCdxcYEani3yg2oK/5mRk4cWaarWyzpHqBJn8xGeUIMgSq
	 tjCGKpvnH5kHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE290FA0C4B;
	Wed, 15 Apr 2026 08:34:11 +0000 (UTC)
From: Jian Hu via B4 Relay <devnull+jian.hu.amlogic.com@kernel.org>
Date: Wed, 15 Apr 2026 16:33:43 +0800
Subject: [PATCH v2 3/4] arm64: dts: meson: a1: Add clk measure support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260415-clkmsr_a1_t7-v2-3-02b6314427e6@amlogic.com>
References: <20260415-clkmsr_a1_t7-v2-0-02b6314427e6@amlogic.com>
In-Reply-To: <20260415-clkmsr_a1_t7-v2-0-02b6314427e6@amlogic.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jian Hu <jian.hu@amlogic.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776242050; l=739;
 i=jian.hu@amlogic.com; s=20260415; h=from:subject:message-id;
 bh=dY5flplQX4DkVTZxyXyrnyiX8aeclNtTfDgXIhbj2+E=;
 b=kZKAk3CaLVxGsvBI6801SS/Zq8bVLAttiPeNXu9Dp0er+VPBcZ6OoefdFluiAN81gL5xM3ydS
 YIdNIdZMhRiBSh4ytmBC17LHkGoqg2iNjMV47w9JAlTor7dgh7MN29j
X-Developer-Key: i=jian.hu@amlogic.com; a=ed25519;
 pk=zHUE+rNtH9z+Sb8au1/elWknjFQmy5QDVkBoxleuOIA=
X-Endpoint-Received: by B4 Relay for jian.hu@amlogic.com/20260415 with
 auth_id=735
X-Original-From: Jian Hu <jian.hu@amlogic.com>
Reply-To: jian.hu@amlogic.com
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287518-lists,devicetree=lfdr.de,jian.hu.amlogic.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,baylibre.com,googlemail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[jian.hu@amlogic.com]
X-Rspamd-Queue-Id: 6ACAA402082
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Jian Hu <jian.hu@amlogic.com>

Add the clock measure device to the A1 SoC family.

Signed-off-by: Jian Hu <jian.hu@amlogic.com>
---
 arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
index 348411411f3d..6f6a6145cba1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
@@ -576,6 +576,11 @@ saradc: adc@2c00 {
 				status = "disabled";
 			};
 
+			clock-measurer@3400 {
+				compatible = "amlogic,a1-clk-measure";
+				reg = <0x0 0x3400 0x0 0x1c>;
+			};
+
 			i2c1: i2c@5c00 {
 				compatible = "amlogic,meson-axg-i2c";
 				status = "disabled";

-- 
2.47.1



