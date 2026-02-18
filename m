Return-Path: <devicetree+bounces-266332-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDNKCimFlWmwSAIAu9opvQ
	(envelope-from <devicetree+bounces-266332-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:23:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9756B154B13
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:23:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 60A913012BD4
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 09:23:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5545233B947;
	Wed, 18 Feb 2026 09:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="OtR4LkBW"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82CB2F12DA;
	Wed, 18 Feb 2026 09:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771406629; cv=none; b=OjuzodpTlxb4fg2pQqDsB07FX0CXeyldoP8194A3qBnrPKx7hw6pTfPY8X5SwbN3QXN2CsnH5uDF3QAtjAWXaS9p+acAMa35zOBw/nCuWzFdWXmzInqj64wGfaHE2cMjFVpwHP/cYTW06tGHxsZuB6jv0SL99UKLTb0wnEya28M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771406629; c=relaxed/simple;
	bh=/0hkWzIe4d8EKtH2G9BKPTi25LCzBo6R8Hd9DQCMMu0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=lHx4LHF9tojNy11+76MV3ykwBe2Df7TKmOnPWa7jcm+DBiVFlqd1zUYetDY0NJ5FYJ7Bx4AYB0MVagw7uB+2UWylLlabmzcZb0skKRpJ2rQF2vBvLye60GTaX+3p89B9DjSNAncxrmVmK6qaZL2dpaiACP9WpMewzthk+eDHs68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=OtR4LkBW; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771406625;
	bh=/0hkWzIe4d8EKtH2G9BKPTi25LCzBo6R8Hd9DQCMMu0=;
	h=From:Subject:Date:To:Cc:From;
	b=OtR4LkBWQP1eFthukqCvn48r59GyipT2E8fCFZQKjKzawoJ+tvAc+ffk6fWaibeM3
	 vAbwFO2Gs0+omd/xKoGSxp+xQzcZrpP5mW5W6w9UopJx/VSzXNrqWZFa2Dy62nSivu
	 aXrCy6E2E9y834bmoP9yVRK6GFj5IkhDtMfwzukr9mpX6eg8Rqm/3DM4HLjW7RgT9h
	 DRLtJgHQ4unjj/2WeKum2LkZ5etPpsokVh6cviQ/sG6x+VGacThto9dZ+oWe4FXFtA
	 R+CZL8ml39Btka5xNQey9iCob3xBkC6VPmstMCv0FOX0iowbVfTo/CsU8OBLxkyb6z
	 V07tZFJis7bSw==
Received: from yukiji.home (amontpellier-657-1-116-247.w83-113.abo.wanadoo.fr [83.113.51.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5205117E04DC;
	Wed, 18 Feb 2026 10:23:45 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Subject: [PATCH 0/3] Add mmc aliases for Mediatek Genio boards
Date: Wed, 18 Feb 2026 10:23:01 +0100
Message-Id: <20260218-mtk-genio-mmc-aliases-v1-0-e218e9f771c5@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/y2NQQrCMBBFrxJm7UAbsDa9inSRxGkdNIlmohRK7
 95gXb4P7/0VhDKTwKBWyPRl4RQrtCcF/m7jTMi3yqAb3TW67TGUB84UOWEIHu2TrZAgeWPPpnf
 GmQmq+8o08fLrXseDM70/NV+OEVz10KcQuAwq0lLwf3GBcdt2+kCgDpgAAAA=
X-Change-ID: 20260218-mtk-genio-mmc-aliases-ec9a598b9b9f
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771406625; l=974;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=/0hkWzIe4d8EKtH2G9BKPTi25LCzBo6R8Hd9DQCMMu0=;
 b=0xtamJWjRnVkzg3XXOQQ8Gj6AYz91OVmmy/C3+F8bFJ52kEnsonP0yTwupEnEKW9NoO0qzjC8
 6cxOuUUaWlqAgi6vZFFAeccEcVEmaHp5wqJirpRmc3DU1mCvNX6Pq2B
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266332-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[louisalexis.eyraud@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,collabora.com:mid,collabora.com:dkim,collabora.com:email]
X-Rspamd-Queue-Id: 9756B154B13
X-Rspamd-Action: no action

This series adds mmc for the Mediatek Genio boards mmc aliases in the
board devicetrees that do not have them, so that mmc host controllers
get enumerated in a consistent order.

This series is based on linux-next next-20260217 tag.

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
Louis-Alexis Eyraud (3):
      arm64: dts: mediatek: mt8395-genio-common: add mmc aliases
      arm64: dts: mediatek: mt8395-radxa-nio-12l: add mmc aliases
      arm64: dts: mediatek: mt8365-evk: add mmc aliases

 arch/arm64/boot/dts/mediatek/mt8365-evk.dts           | 4 +++-
 arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi | 4 +++-
 arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts | 4 +++-
 3 files changed, 9 insertions(+), 3 deletions(-)
---
base-commit: 5295425d4409ca3afec37f78306e09b2e9e92e7a
change-id: 20260218-mtk-genio-mmc-aliases-ec9a598b9b9f

Best regards,
-- 
Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>


