Return-Path: <devicetree+bounces-305186-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GwLJq2WHWrOcQkAu9opvQ
	(envelope-from <devicetree+bounces-305186-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 16:26:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A42EB620D68
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 16:26:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3F4B930498DC
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 14:16:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04FA421CC51;
	Mon,  1 Jun 2026 14:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="TQqevynx"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5FB6433AD;
	Mon,  1 Jun 2026 14:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780323359; cv=none; b=Wh5WvTSEGeJ7qmEfiAGjd8TboRSVn/llRPc3NXIumTYMaBvbEkbtBdJF626l8juFZbwMsMULqmyOgHnH42wuU8U+VZ9+EURK1o4a8QjBvnr0moh7HXBo9xVIV4/iS3AmqarbehehYixIPJzvsFSzovXot7o9pVshq1oJe7ChTQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780323359; c=relaxed/simple;
	bh=2mlmflu75mdtBiODN+bKBCjJEH/3vnThy91d+Mg/u+s=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=t7vqVKDYnwkMJzBRAhN8o4Q4dRMfGu6BpwDKHRzcbVJ37kzSgvbYIM5kxYv3/uRcqu0yxa5w2K+jMJcs+I1mdrJnLBK48DaeGz1EGhzZLRr8RpNiOnaZF8Mw1jLbvb7kOPhtbZIZs8T1yKusSF37nUhxJMRgMnuKv5xtrsLcSMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=TQqevynx; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1780323356;
	bh=2mlmflu75mdtBiODN+bKBCjJEH/3vnThy91d+Mg/u+s=;
	h=From:Subject:Date:To:Cc:From;
	b=TQqevynxWt7ybbB9ihSdaiBs4YiYH1mkyc8Hz4bAOgPcyv/zjrVrDm8i/3jXk0eDz
	 ILArlOCVNFnH1qCRejVHUpodlzcVyCnAnh2Qb3mw7p5Rjyvwqv/FFbVEYTuL0DmYaI
	 e9sf4IeYIB5lCqdsmRS8KSwMm6138r50DyNRumcJh345xsDyWxIjnOGeFukFyQGGoA
	 YGILQOn+2EEqkcl6kftQpZPi+pv2gJVREv8l6dbEvoLUv1cqsdYT9ChfpAiobSTzRC
	 tbis/2hsJr61i5iFnRncUwC4kwWmeogzcBV32mpJpTRVhe2jr5xObnkLZH1GtXKwpV
	 P24UwsRst1+pQ==
Received: from yukiji.home (unknown [100.64.0.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DBA5F17E06C5;
	Mon,  1 Jun 2026 16:15:55 +0200 (CEST)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Subject: [PATCH 0/3] Mediatek Genio EVK: add MT6365 PMIC supplies
Date: Mon, 01 Jun 2026 16:15:44 +0200
Message-Id: <20260601-mtk-genio-mt6359-pmic-supplies-v1-0-05750080ba59@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yWNyw6CMBBFf6WZtZOUKg3wK4ZFLSNOtA/bYkgI/
 24Du3vu4pwNMiWmDIPYINGPMwdfobkIsC/jZ0KeKoOSSkstG3TljTN5DnXpa9tjdGwxLzF+qge
 1sVJ3erop1UGVxERPXo/AfTw50XepnXKe8DCZ0AbnuAzC01rwaLWqh3Hf/wxTizyhAAAA
X-Change-ID: 20260601-mtk-genio-mt6359-pmic-supplies-6ac0686d4228
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780323355; l=1490;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=2mlmflu75mdtBiODN+bKBCjJEH/3vnThy91d+Mg/u+s=;
 b=b0c7tjNI5hl4SC9H1ekB6QEqDOxB922gw9bmkdU1mRhNqWUvmbdea6cnqbX9liXfg0v6iso+J
 2JsHZ77q+vqAj6JqXyQTK8VcaEg/8RT4er/9LPOkao/Intv+5YU1DCf
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-305186-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	DKIM_TRACE(0.00)[collabora.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[louisalexis.eyraud@collabora.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,collabora.com:mid,collabora.com:dkim,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: A42EB620D68
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Several Mediatek and Radxa boards, based on MT8370, MT8390 or MT8395
SoC, integrate the MT6365 PMIC, that is a MT6359P variant.

This PMIC dt-bindings for recently gained property definitions for the
power inputs for its various buck and LDO regulators ([1]).

The goal of this series is to add the supplies for this PMIC regulators
in the following board devicetrees:
- MTK Genio 510-EVK
- MTK Genio 700-EVK
- MTK Genio 1200-EVK
- Radxa NIO-12L

The series is based on linux-next tree (tag: next-20260529) and has
been tested on Mediatek Genio 510, 700 and 1200-EVK boards.

[1]: https://lore.kernel.org/linux-mediatek/20260514091520.2718987-2-wenst@chromium.org/

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
Louis-Alexis Eyraud (3):
      arm64: dts: mediatek: mt8390-genio-common: Add MT6365 PMIC supplies
      arm64: dts: mediatek: mt8395-genio-common: Add MT6365 PMIC supplies
      arm64: dts: mediatek: mt8395-radxa-nio-12l: Add MT6365 PMIC supplies

 arch/arm64/boot/dts/mediatek/mt8390-genio-common.dtsi | 17 +++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8395-genio-common.dtsi | 17 +++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts | 17 +++++++++++++++++
 3 files changed, 51 insertions(+)
---
base-commit: 697a0e31ee66f5ddb929c09895139779fff33f20
change-id: 20260601-mtk-genio-mt6359-pmic-supplies-6ac0686d4228

Best regards,
-- 
Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>


