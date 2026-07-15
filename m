Return-Path: <devicetree+bounces-327069-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0Jt+Ms6SV2o7XQAAu9opvQ
	(envelope-from <devicetree+bounces-327069-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:01:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C6C75F193
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:01:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=BR5Wo6Zi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327069-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-327069-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E0FC4301D07C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:54:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D55A8329E6C;
	Wed, 15 Jul 2026 13:54:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0CDD31E859;
	Wed, 15 Jul 2026 13:54:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784123647; cv=none; b=YIMxGZM41lQ7p01br3myfFaTnC+kIgwzGJANvRh1Qt74cW4DBKrhPkAwRlRTW6ufTUoahzoJUGca6ErEfhmRtgaYqycR7JxJjr2NL9bwSfiN6JTd2wZjmoqRdkwSj4z25Y06le4Dr/px69V+2DPoYrsOaxenz1UtNwgLq61TfVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784123647; c=relaxed/simple;
	bh=SndKUrIl65Q0YHdMMBjkX5YO+fLIisdvVTIzp4QFMcA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=tjQfQ7Tgn78yQTzv11SttyUuApr7bqU+xtazckKl8Z4uDCpp6AOIQh4/yOT3KU/IfroUYqDA2mh+Od9jlsWoDwZARxp+bcziBgGYsRiXjSi+yQQfjPrEXrBdbLm5jFQXqtqPw4luTZ9t3px/0cDQ9zAh+LuHjFywVMUkdLnkUR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BR5Wo6Zi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 61BACC19425;
	Wed, 15 Jul 2026 13:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784123647;
	bh=SndKUrIl65Q0YHdMMBjkX5YO+fLIisdvVTIzp4QFMcA=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=BR5Wo6ZiKp7S8y5HOpKPJvYeTGChxEX1Y7GKLZygA1GthyCVs8eNpo5zzaHwRPRHS
	 Zby4xb69AlUmkSW5XxQFgNduGi+ohIFGqEOZXGO8zacL0M3KLFmpy+qe3X6WB5zg9c
	 6IfkyT+3og52omwTF0BfS6EODr3nRUMLNksXqHF47fAQhycot+uf8/rmhw3zXBg+Rm
	 n3TSB+gx2Sld614vuVYF4svE5Nast1rfhb11LksjvSYJhqiPt0TrRlLb7TNIF7f6WL
	 Vymi/IIu7azw4nwGFX+QHIplWBllQypQ/SF21qi1rGksTRiZMTPTq2Ovvz6E0dgZBR
	 pgfoX/BnNHQEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E872C44508;
	Wed, 15 Jul 2026 13:54:07 +0000 (UTC)
From: Nikolai Burov via B4 Relay <devnull+nikolai.burov.jolla.com@kernel.org>
Subject: [PATCH v2 0/3] pmdomain: mediatek: Add MT6858 support
Date: Wed, 15 Jul 2026 16:54:04 +0300
Message-Id: <20260715-mt6858-pmdomain-v2-0-6293e87fc093@jolla.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPyQV2oC/2WNwQ6CMBAFf4Xs2Zq2gQKe+A/DgZZFllBKWiQaw
 r9bMJ48TjJv3gYBPWGAW7KBx5UCuSmCvCRg+mZ6IKM2MkguFc+FZHZRRVaw2bbONjQxLXSaKVM
 qlWcQV7PHjl5n8V5/OTz1gGY5MofRU1icf5+Xqzi8Xz39q6+CcZZ2vNRaF1IirwY3js3VOAv1v
 u8fY6KQ6MAAAAA=
X-Change-ID: 20260712-mt6858-pmdomain-b1b456c96675
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Ulf Hansson <ulfh@kernel.org>
Cc: Matthias Brugger <mbrugger@suse.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org, 
 Nikolai Burov <nikolai.burov@jolla.com>, 
 Nikolai Burov <nikolai.burov+review@abscue.de>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784123646; l=2497;
 i=nikolai.burov@jolla.com; s=20260707; h=from:subject:message-id;
 bh=SndKUrIl65Q0YHdMMBjkX5YO+fLIisdvVTIzp4QFMcA=;
 b=GP/gTYWvBC55nTBI3qp/3X3jxAhhSE5tHraNPRtWw+Pvpd6bpDHywCmKpXmxFtlc5RfHtQU3j
 ZJbIYEtaSdLAaFVNRT2BydqF5rKQehTqAISiXoONr/HBuL4TFuHF+2w
X-Developer-Key: i=nikolai.burov@jolla.com; a=ed25519;
 pk=yzpa+PD+ovHUFMIOBA9o2QqGwI110jM6hdGHLc7jtoQ=
X-Endpoint-Received: by B4 Relay for nikolai.burov@jolla.com/20260707 with
 auth_id=859
X-Original-From: Nikolai Burov <nikolai.burov@jolla.com>
Reply-To: nikolai.burov@jolla.com
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	TAGGED_FROM(0.00)[bounces-327069-lists,devicetree=lfdr.de,nikolai.burov.jolla.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:ulfh@kernel.org,m:mbrugger@suse.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:linux-pm@vger.kernel.org,m:nikolai.burov@jolla.com,m:nikolai.burov+review@abscue.de,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,m:nikolai.burov@abscue.de,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[nikolai.burov@jolla.com];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,review];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[krzk.kernel.org:server fail,devnull@kernel.org:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 76C6C75F193
X-Rspamd-Action: no action

Add power domain driver support for the MediaTek Dimensity 7100 (MT6858)
SoC. On this SoC, there are some new subsystem-specific bus protection
blocks, which are listed here in ascending address order:

- IMG_SUB0 at 0x1502f000
- CAM_SUB1 at 0x1a00c000
- CAM_SUB0 at 0x1a00d000
- IPE_SUB0 at 0x1b00e000

The VLPCFG bus configuration registers at 0x1c00c000 are also new.

Additionally, implement the SMC-based power sequence required for
enabling the modem power domain on this SoC.

Signed-off-by: Nikolai Burov <nikolai.burov@jolla.com>
---
Changes in v2:
- Rebase
- MTK_SCPD_MODEM_SECURE -> MTK_SCPD_MODEM_SECURE_PWRSEQ
- Convert SMC command enum to defines
- Based on the new SIMPLE_PWRSEQ changes, skip the sram_pdn stage for
  MODEM_SECURE_PWRSEQ too since it wasn't intended to have an effect
- Clarify that the SMC call also handles bus protection
- Simply if/else code based on the assumption *_PWRSEQ are mutually
  exclusive
- Add comment explaining that PWR_STA_2ND is skipped for modem
  (mentioned in Sashiko report)
- Link to v1: https://patch.msgid.link/20260714-mt6858-pmdomain-v1-0-4f09bbb822e0@jolla.com

To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Ulf Hansson <ulfh@kernel.org>
Cc: Matthias Brugger <mbrugger@suse.com>
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
Cc: linux-pm@vger.kernel.org

---
Nikolai Burov (3):
      dt-bindings: power: Add MediaTek MT6858 power domain controller
      pmdomain: mediatek: Add support for secure modem power domain control
      pmdomain: mediatek: Add support for MT6858 SoC

 .../bindings/power/mediatek,power-controller.yaml  |  21 +-
 drivers/pmdomain/mediatek/mt6858-pm-domains.h      | 466 +++++++++++++++++++++
 drivers/pmdomain/mediatek/mtk-pm-domains.c         |  52 ++-
 drivers/pmdomain/mediatek/mtk-pm-domains.h         |   6 +
 include/dt-bindings/power/mediatek,mt6858-power.h  |  23 +
 include/linux/soc/mediatek/mtk_sip_svc.h           |   3 +
 6 files changed, 566 insertions(+), 5 deletions(-)
---
base-commit: cc2b5f627e8ccbae1188ef2d8be3e451d7f933a5
change-id: 20260712-mt6858-pmdomain-b1b456c96675

Best regards,
--  
Nikolai Burov <nikolai.burov@jolla.com>



