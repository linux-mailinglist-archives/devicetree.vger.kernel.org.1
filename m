Return-Path: <devicetree+bounces-290424-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BngBt4V72kQ6AAAu9opvQ
	(envelope-from <devicetree+bounces-290424-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 09:53:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7764C46EA03
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 09:53:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B0C0730158B4
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 07:50:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB4693976A4;
	Mon, 27 Apr 2026 07:50:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFF3370D7B
	for <devicetree@vger.kernel.org>; Mon, 27 Apr 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777276238; cv=none; b=fnsRMj3Pirkmm7lb6fZc4iN0HEpouLyETlMCDH3OtkPOdWm7CiHD5dDBKOKhTOkFvMxH5Zm/9+io/fr06K3dqGTzvbO1n5jW2uCpIPKVu3DKhJ9mYZDbOtgphyiwv/n1cQBT91Ff83M1v0PjosGTuGCmi5b85N+3SFvVFi61kvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777276238; c=relaxed/simple;
	bh=O7oo+kb1+XQt3S9Y/6kii+A0dxE31ApZ3KySU/VSVTI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=FR/CVyQL8XxX9QbuR0h14AbYmzwLsQfxxaL1ECN9LRr+SuVVNA4hJg0CmB9IbYtfwv2O/4szJC2K1ogLeRdThYIEY4GYosC2u12yKgJIG5ULwMHnOBBQZJWabdYFkUo6NcukvIHSdkIgcrk3f9x56ePsTiHW5cBMvxPdPUludD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1wHGja-00032N-QO; Mon, 27 Apr 2026 09:50:26 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Subject: [PATCH v2 0/2] arm64: dts: imx8mp-skov: add new 7" variant
Date: Mon, 27 Apr 2026 09:50:12 +0200
Message-Id: <20260427-v7-0-topic-imx8mp-skov-dts-jutouch-7inch-v2-0-e2b79fc24391@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADQV72kC/5WOQQ6CMBBFr0Jm7ZjSioorjRuXLtwZFtJWGQwta
 UuDMdzdiidwM8n/eflv3uC1I+1hl73B6UierEmBLzKQzc08NJJKGTjjayZ4gXGDDIPtSSJ147b
 r0T9tRBU8tkOwg2xwQyZdoWpZrwp2E6WENNc7fadxVl3hfLgcT1D9aj/UrZbhq/mCDflg3Wt+K
 eYz/r895gnMGS8KxcV6Jcp9r81jCM4aGpdKQzVN0weE5Z4Y/gAAAA==
X-Change-ID: 20260325-v7-0-topic-imx8mp-skov-dts-jutouch-7inch-3dbcb450a39c
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Queue-Id: 7764C46EA03
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-290424-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.trumtrar@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]

Add a new board variant for the Skov i.MX8MP based family of boards.

This variant uses a different 7" panel than the existing ones.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Changes in v2:
- rebase to v7.1-rc1
- Link to v1: https://patch.msgid.link/20260325-v7-0-topic-imx8mp-skov-dts-jutouch-7inch-v1-0-10255d236439@pengutronix.de

To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Shawn Guo <shawnguo@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
To: Pengutronix Kernel Team <kernel@pengutronix.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: imx@lists.linux.dev
Cc: linux-arm-kernel@lists.infradead.org

---
Steffen Trumtrar (2):
      dt-bindings: arm: fsl: add compatible for new Skov I.MX8MP variant
      arm64: dts: imx8mp-skov: support new 7inch panel board

 Documentation/devicetree/bindings/arm/fsl.yaml     |  1 +
 arch/arm64/boot/dts/freescale/Makefile             |  1 +
 .../imx8mp-skov-revc-jutouch-jt070tm041.dts        | 79 ++++++++++++++++++++++
 3 files changed, 81 insertions(+)
---
base-commit: 254f49634ee16a731174d2ae34bc50bd5f45e731
change-id: 20260325-v7-0-topic-imx8mp-skov-dts-jutouch-7inch-3dbcb450a39c

Best regards,
--  
Steffen Trumtrar <s.trumtrar@pengutronix.de>


