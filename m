Return-Path: <devicetree+bounces-296021-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BskMXC5AmonwAEAu9opvQ
	(envelope-from <devicetree+bounces-296021-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 07:24:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C599519EB2
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 07:24:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AFB383057059
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 05:21:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5430C3644A3;
	Tue, 12 May 2026 05:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngQRF1m3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787A833DEF7;
	Tue, 12 May 2026 05:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778563300; cv=none; b=tHH+9WHy9GPJDAKryOvP0LF2+mwsKruiFl3A8XN6Hdlat9K2j9elvBdPV439RWtsWcoe/ZNcm1oRr5GCRHR818VJ92uf7PsN1JU2hrwzpfmC5bsi+ffZhlcT7rn8oy8lxLLabSFxjTG4LYUR7S98+2EzFTr/3LdsNHs2I8zYqZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778563300; c=relaxed/simple;
	bh=6SFZF+NTen922PE1ArSi08AMU2PZI8nLuqrAISJituw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DyROLFD28oBJAPDfhVGyVVOty8ETxHpezZzpBzATkxJFn72+7S9ZbOiebkgu5+EZxlz6eP2SvkHgTfyBmCqO6ytCykGpju4Y2mK+ss094dBs5qnc0p6anL9d5HlzQ8GXb568wGp8i3lsF2NfTMoWYqj2U4XyUZAsHTA2BJHEKzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngQRF1m3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4E956C2BD01;
	Tue, 12 May 2026 05:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778563300;
	bh=6SFZF+NTen922PE1ArSi08AMU2PZI8nLuqrAISJituw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=ngQRF1m3bmKPnZEetHyr/RJFmkI4HWtEiADfmg4SspfXAiJ0vQ66BuS9gh0Y/FV8/
	 te3tq5eJW1vj76NW4IS0rXOvTFBCas7qCMzurmVKPZ2ygVonbcITI1LMyWnsYflpk3
	 mTo8XqiWu35y1H7Sw2WY1CCmdMTrRbCNVaC4WOIqJkpCr8vIculFkgDEAWa75g40c6
	 YvFZSkuBeMeIG7o1SzNQLMGqqQGqJpJsj3sDMu/mi2Nd9gCS3mOLQDT5Git7nFmDlk
	 kMRrs8+TJhp7qEq0wJGm5j4V7EJRE3ck6KzIJ0rNzrHqQIfv69fBntNg8aCNoQE6My
	 vH/Mfi6+E7gMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3CB78CD4F23;
	Tue, 12 May 2026 05:21:40 +0000 (UTC)
From: Roman Vivchar via B4 Relay <devnull+rva333.protonmail.com@kernel.org>
Date: Tue, 12 May 2026 08:18:23 +0300
Subject: [PATCH v2 09/16] mfd: mt6397-core: add mt6323 EFUSE support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260512-mt6323-v2-9-3efcba579e88@protonmail.com>
References: <20260512-mt6323-v2-0-3efcba579e88@protonmail.com>
In-Reply-To: <20260512-mt6323-v2-0-3efcba579e88@protonmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, 
 Macpaul Lin <macpaul.lin@mediatek.com>, Lee Jones <lee@kernel.org>, 
 Roman Vivchar <rva333@protonmail.com>, 
 Srinivas Kandagatla <srini@kernel.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org, 
 Ben Grisdale <bengris32@protonmail.ch>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778563297; l=882;
 i=rva333@protonmail.com; s=20260510; h=from:subject:message-id;
 bh=GPch+58r1L1I1B+sfDoMb6oSqyH40wZP5mRd3W4Ge0A=;
 b=tidA5C6NziO4sL+9a0SjQtog/7ftV7CvyorPKf+60ZERSXZz2+v5rX/xDIdLu57Z7UiXac42D
 iV0kIewiS6lB0Hk3oYfitPbziysOltdHyhzIiYHcUz9FDMuHQWXA0A6
X-Developer-Key: i=rva333@protonmail.com; a=ed25519;
 pk=zww/nWjBGoQ4POXCG0BV6fx2iuXK6jx77rsKPA5YK5Y=
X-Endpoint-Received: by B4 Relay for rva333@protonmail.com/20260510 with
 auth_id=777
X-Original-From: Roman Vivchar <rva333@protonmail.com>
Reply-To: rva333@protonmail.com
X-Rspamd-Queue-Id: 3C599519EB2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296021-lists,devicetree=lfdr.de,rva333.protonmail.com];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,collabora.com,mediatek.com,protonmail.com,intel.com,arm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_REPLYTO(0.00)[protonmail.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[rva333@protonmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.ch:email,protonmail.com:email,protonmail.com:mid,protonmail.com:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

From: Roman Vivchar <rva333@protonmail.com>

The mt6323 PMIC includes an EFUSE. Register the EFUSE in the mt6323
devices array to allow the corresponding driver to probe using compatible
string.

Tested-by: Ben Grisdale <bengris32@protonmail.ch> # Amazon Echo Dot (2nd Generation)
Signed-off-by: Roman Vivchar <rva333@protonmail.com>
---
 drivers/mfd/mt6397-core.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
index 013b0857fb54..2d9419b80a5c 100644
--- a/drivers/mfd/mt6397-core.c
+++ b/drivers/mfd/mt6397-core.c
@@ -127,6 +127,9 @@ static const struct mfd_cell mt6323_devs[] = {
 	{
 		.name = "mt6323-auxadc",
 		.of_compatible = "mediatek,mt6323-auxadc",
+	}, {
+		.name = "mt6323-efuse",
+		.of_compatible = "mediatek,mt6323-efuse",
 	}, {
 		.name = "mt6323-rtc",
 		.num_resources = ARRAY_SIZE(mt6323_rtc_resources),

-- 
2.54.0



