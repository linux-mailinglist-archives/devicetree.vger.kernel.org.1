Return-Path: <devicetree+bounces-296023-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAWrBAa5Amo5wAEAu9opvQ
	(envelope-from <devicetree+bounces-296023-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 07:22:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBEB519D9C
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 07:22:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7B6D5301678C
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 05:21:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9553536B043;
	Tue, 12 May 2026 05:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjiQ+M3/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF430356767;
	Tue, 12 May 2026 05:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778563301; cv=none; b=cNUdVJbw3UmvpLExJOJXVo6sRSe2A+kJQ4C5EKhcYlgAYp0usRUg1TwZx5BxLkEIVWAgI/SaYsU9CELyH9hQTtn4TJ7QUGnLbR5ti4DqEEeaAOGqNmkvbp0pa/noaYa6u1EDt2YYKXqF7X6H68ZR3tu0SGHwzlH7SwnDi+yXkU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778563301; c=relaxed/simple;
	bh=lNV6rXAaqpbqVOMmN8yGQfNnLkgmGHXvWReklWM53c0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WrTTeWyI31yxTlVE8LLpClCpF607aZZAj/cQuXIsIEha0arDhCc3i6A4pTG6q8ew6POVQrDNUi+IuoHX0L683fo8jWRO0OXiGlZciRQwPyfM9meY88kBBKMGSZI+sJONcMp1pzk3/R8t3HVo7QOM16/PapuwQxFs6Y+j1SXlqmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjiQ+M3/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEFFC2BCFB;
	Tue, 12 May 2026 05:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778563300;
	bh=lNV6rXAaqpbqVOMmN8yGQfNnLkgmGHXvWReklWM53c0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=kjiQ+M3/iIvJCzxvEaKJfGX6RfmUNeXp7ryWAP0aNGsLgyKft9KbZh8L5SVnAgN/f
	 59EO50iCinhumsG80zP9BrgawoDXWZ7XbYj0lA1wtsrT3lO5tYYT86MytY/7DpqXU8
	 J/Jy1rxBEVttTFtn3PIlWfdTvKG0ql8LPDrFsT+EQ7tB46LY+D8VUFIuazEgp+h18t
	 QcDLZki+Cqd3LZNF4BW+ohq4ZEk3kLZmEG6aVP1W7sM9Sx0pX4nJw//Ctv7vh2HZiV
	 R2ZkQ5PBb6LoRgM8wKK/tRPblJu+M1k44xfMs9pfQc9m81FcORy78G3WjMv+AS8sx3
	 a2gENiYtRU1Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E90CD484E;
	Tue, 12 May 2026 05:21:40 +0000 (UTC)
From: Roman Vivchar via B4 Relay <devnull+rva333.protonmail.com@kernel.org>
Date: Tue, 12 May 2026 08:18:28 +0300
Subject: [PATCH v2 14/16] MAINTAINERS: add MediaTek mt6323 PMIC AUXADC
 driver maintainer
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260512-mt6323-v2-14-3efcba579e88@protonmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778563297; l=679;
 i=rva333@protonmail.com; s=20260510; h=from:subject:message-id;
 bh=hqGkTMsQwUh/P+F47/bfl+NnPVontePTFizlgJu6b+o=;
 b=/IuXBgoCNI59SNyo7+dbcOgJp2OD68fDMCBEnwGLvClBjpQt3xpA5Kc+B7BYuHj2/u+orM3Wz
 dSN1KoFoW2DDKk0aiit1Ik1HCGpOpfCEMyuTruHgXkXG9bMJWv54rpK
X-Developer-Key: i=rva333@protonmail.com; a=ed25519;
 pk=zww/nWjBGoQ4POXCG0BV6fx2iuXK6jx77rsKPA5YK5Y=
X-Endpoint-Received: by B4 Relay for rva333@protonmail.com/20260510 with
 auth_id=777
X-Original-From: Roman Vivchar <rva333@protonmail.com>
Reply-To: rva333@protonmail.com
X-Rspamd-Queue-Id: 3EBEB519D9C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296023-lists,devicetree=lfdr.de,rva333.protonmail.com];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,protonmail.com:mid,protonmail.com:replyto,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mediatek.com:email]
X-Rspamd-Action: no action

From: Roman Vivchar <rva333@protonmail.com>

Add myself as MediaTek mt6323 AUXADC driver maintainer.

Signed-off-by: Roman Vivchar <rva333@protonmail.com>
---
 MAINTAINERS | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index d1cc0e12fe1f..52249c301633 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16337,6 +16337,11 @@ S:	Orphan
 F:	Documentation/devicetree/bindings/mtd/mediatek,mtk-nfc.yaml
 F:	drivers/mtd/nand/raw/mtk_*
 
+MEDIATEK PMIC AUXADC DRIVER
+M:	Roman Vivchar <rva333@protonmail.com>
+S:	Odd Fixes
+F:	drivers/iio/adc/mt6323-auxadc.c
+
 MEDIATEK PMIC LED DRIVER
 M:	Sen Chu <sen.chu@mediatek.com>
 M:	Sean Wang <sean.wang@mediatek.com>

-- 
2.54.0



