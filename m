Return-Path: <devicetree+bounces-326216-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id J8nCH04vVmrw0wAAu9opvQ
	(envelope-from <devicetree+bounces-326216-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 14:45:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF90754B17
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 14:45:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=OKu1WK5d;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326216-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326216-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7F91430074AB
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 12:45:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 431A63D9043;
	Tue, 14 Jul 2026 12:45:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6E7391E55;
	Tue, 14 Jul 2026 12:44:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784033100; cv=none; b=N+IOQHObvPQkOg4dIez5f/Q+Jhvkh/8eCnrWjMRqDZiYF2mpz0kI33KLOGq76Ymg2Dw3aiYTqoaAA9Gj5G1BNBeTXAj4MyTWSwIAqykRF27pEid53FuxGbRzdaJ4AGWNr9V3POO7FLzZZBmQvDhx+5t6XZTceDHoQSzQT2obDjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784033100; c=relaxed/simple;
	bh=Nn/jrapi0kptlJ39pA0zVXo92X49jLlO8HGLvAXNkrM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ClhEm4qceKFl8+dEjDuX3zht38fUU6jEuMbkOjaZqNrdP8aa94yVRMvlcSMmW/+CLXqJw7D14+VNfVXvqirKuSeJBQpOBpMrHuBNjOyalW3d2RQWOdVsCXcgftaTR7xgvMxYpvEN3mPF9UTYuSEykbUh8RnDsxbK31YqSyFs+No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKu1WK5d; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3EB1C2BCB8;
	Tue, 14 Jul 2026 12:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784033099;
	bh=Nn/jrapi0kptlJ39pA0zVXo92X49jLlO8HGLvAXNkrM=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=OKu1WK5d0CKd+GZLAWHMYagMNsyC7Y3VP8MEYqDELMxl3+RUbKKpitvNsHoK1GooD
	 eDUe+btuv+ZkbkHUKluTNftiHzJamni8Byde3D8qDf92jkKRz85nMMQEBBV+r9Hva/
	 o2acmnMRa5S04ECQh/305brlEPUWO2WFmav3GMbv/TrV9lkw3GrM//UPYzawZw/4lk
	 CIDuawyODaFlaC5WkP0AlLTB4jb4HTLQA29H56AuFjp1ARCwadcw3x0EUo1ecwS/BE
	 Kf/al7nABTva0caIDO/KR3e+FIBoMAblULvk8D4JgwPsQ4Ar0BW0ZCxh1GLNOXVQGX
	 aonIwesSHK9jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71436C43458;
	Tue, 14 Jul 2026 12:44:59 +0000 (UTC)
From: Roman Vivchar via B4 Relay <devnull+rva333.protonmail.com@kernel.org>
Subject: [PATCH 0/3] soc: mediatek: pwrap: mt6572 support + log level fixes
Date: Tue, 14 Jul 2026 15:42:02 +0300
Message-Id: <20260714-6572-pwrap-v1-0-d8e5a39cf7ef@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMTQ5AMBBA4avIrDXRKRWuIhbUYCxoWn+JuLti+
 S3eu8CTY/JQRhc42tnzMgfIOAIzNvNAgrtgwAR1kksUOstR2MM1VqSmkJlWpu9QQQiso57Pb1b
 Vv/3WTmTW9wD3/QC2rBQtbgAAAA==
X-Change-ID: 20260712-6572-pwrap-4c91563cfd23
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Flora Fu <flora.fu@mediatek.com>, Alexandre Mergnat <amergnat@baylibre.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Roman Vivchar <rva333@protonmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784033096; l=1009;
 i=rva333@protonmail.com; s=20260510; h=from:subject:message-id;
 bh=Nn/jrapi0kptlJ39pA0zVXo92X49jLlO8HGLvAXNkrM=;
 b=blv4Al/GQ3QV1Qr4XT5gNVLbbMpXXuOLHXeoPuWo0bBGSh4WjPO4Up+DtLqb5j+MR6nC5M7Um
 KXoGJK1ssy6DA4yHMT0E9aGC1lrF5UkrcpnHhtUXlNwrT8jVXHQ/N43
X-Developer-Key: i=rva333@protonmail.com; a=ed25519;
 pk=zww/nWjBGoQ4POXCG0BV6fx2iuXK6jx77rsKPA5YK5Y=
X-Endpoint-Received: by B4 Relay for rva333@protonmail.com/20260510 with
 auth_id=777
X-Original-From: Roman Vivchar <rva333@protonmail.com>
Reply-To: rva333@protonmail.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com,baylibre.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:flora.fu@mediatek.com,m:amergnat@baylibre.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:rva333@protonmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_REPLYTO(0.00)[protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-326216-lists,devicetree=lfdr.de,rva333.protonmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,protonmail.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	HAS_REPLYTO(0.00)[rva333@protonmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,protonmail.com:mid,protonmail.com:email,protonmail.com:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0FF90754B17

This patch series adds support for the mt6572 pwrap.

All known mt6572 devices use mt6323 PMIC, which is already supported
by the upstream drivers. mt6572 also shares SoC-specific init with
mt2701.

Patch 1 adds dt-bindings compatible.
Patch 2 fixes improper log levels in the driver, improving UX when
debugging.
Patch 3 adds mt6572 support.

Tested on various mt6572 devices without any failures.

Signed-off-by: Roman Vivchar <rva333@protonmail.com>
---
Roman Vivchar (3):
      dt-bindings: soc: mediatek: pwrap: add mt6572
      soc: mediatek: pwrap: use correct log level
      soc: mediatek: pwrap: add mt6572 support

 .../bindings/soc/mediatek/mediatek,pwrap.yaml      |   1 +
 drivers/soc/mediatek/mtk-pmic-wrap.c               | 156 +++++++++++++++++----
 2 files changed, 129 insertions(+), 28 deletions(-)
---
base-commit: 8cd9520d35a6c38db6567e97dd93b1f11f185dc6
change-id: 20260712-6572-pwrap-4c91563cfd23

Best regards,
--  
Roman Vivchar <rva333@protonmail.com>



