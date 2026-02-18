Return-Path: <devicetree+bounces-266423-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICkIGI+9lWkfUgIAu9opvQ
	(envelope-from <devicetree+bounces-266423-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:24:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D71AF156979
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:24:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 96A06301023E
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:24:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 649902C3259;
	Wed, 18 Feb 2026 13:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="Nw1b2R3O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay154-hz1.antispameurope.com (mx-relay154-hz1.antispameurope.com [94.100.133.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98D352D12ED
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.195
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771421045; cv=pass; b=YYZYWCexRga5M6qK/ZGlOAxVaLtrunoQMIZRrlk5eA6xmywzamlZhzsP0RO1k1EoTTVuyS/VubMIjK8aaidj3pAvvLq2taZdII0jPnV9FH2QA8v/mnLte2FjHgSriyvlCY9b0BsrYOkQYS1lpRQJtNLDq4NnM+VwwZvhFI7G9r0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771421045; c=relaxed/simple;
	bh=UlU8u45N+iRUHhs+x+q8Eg58og+sPs+uhkmSpDxADd0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=syVJFK3Eqr4e55uNugXM31U4uAKXBG4VHzuPEpq5XqHIWzOWAg+rg1bUXv6oJoE/QF9wMC9PGJ2jxypVjUg2kv2zX//sCPQqsKxYGAq+bADgmunLwkYyXAwkqzfCWy1Em7+acnGKjlgIlzl3dMJlwsg1YOls+FZ5e8zhRqaEXB4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Nw1b2R3O; arc=pass smtp.client-ip=94.100.133.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate154-hz1.hornetsecurity.com 1;
 spf=pass reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out03-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=Xp6NT0DBPlQZavb5HOX3AnM891/YuQXLWauhDrKKecs=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1771420998;
 b=SnLPj/3ybqn2K7oRLBQNOsag2b5D0t8JGOBLpBiRsCX/tWqF+LMhA5985liKbH3y90w9Ph8j
 0RKiQl+TTNwQcBwG289rYA7ZN7Gi4hwmr+BwmThROgRvObHZoN/2x1VUsq6k0D/lJGlQatzz6xY
 SYkpDm+MBEbIOSxqf4WbtUGz0dYiy7ApfCf+0KmUiLivMtUKekdTkI6NRYWediRWCl8zFEqvQem
 SsZRlARJ3AXMIrq+Zx5GXykers4bUUPFrliYofAfwWQqFryrCwnefcvMft+Xl0lBipWHjJdkfS5
 uxd1tDfmpFCGzf/yZ7PLBctFgIrvpzCIEgqGUUlmeB7Gw==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1771420998;
 b=Lxp0B8Bl7o4M0oWUcJjL5WVL6F+YcDJULHfUEYHwFXUarGhGKWSqfal8hrCHP60Mei3TXqZo
 EgroKpADq+7M/LbKK8zaBzd+j93E13SygW1nC7pRtfUR9Skaq68TKPY/rQa9pYWbm4Eg67KU7tW
 B03xjYeZUQd62b3OfAwzlPRXCn+LaR2UqO0xTKY2LzxZizsCewInq2ixCjRCsT9fxZ6GhH+xC7G
 l+vmBjzA5sOCBvX4GloQXllvh52t/CnAPMaitqU7S1+7ICFCRfZCmL5QtbbZe/PNSPdLlUQKCwX
 HvbH5dvJ0ge2XGRHHtbDBWkxZWPHaS6NQjNGJHpq8HsGg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay154-hz1.antispameurope.com;
 Wed, 18 Feb 2026 14:23:17 +0100
Received: from merchelm-W2.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: max.merchel@ew.tq-group.com)
	by hmail-p-smtp01-out03-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 1A25FCC0CB7;
	Wed, 18 Feb 2026 14:23:11 +0100 (CET)
From: Max Merchel <Max.Merchel@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Max Merchel <Max.Merchel@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] ARM: dts: TQMa6: modify for use in bootloaders
Date: Wed, 18 Feb 2026 14:22:21 +0100
Message-ID: <20260218132228.32056-1-Max.Merchel@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:max.merchel@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: max.merchel@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay154-hz1.antispameurope.com with 4fGHJH68KVz3K5Dn
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:c9bad0062c84e180e2c681c5257030e8
X-cloud-security:scantime:2.185
DKIM-Signature: a=rsa-sha256;
 bh=Xp6NT0DBPlQZavb5HOX3AnM891/YuQXLWauhDrKKecs=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1771420997; v=1;
 b=Nw1b2R3OoAiY9VRapdNcdgA8abILR+jmRShTKf617G+Hrh2scq56SfmrmsZEVtorpEx5aAg9
 y4ct0sfeCrbas0IKx/xQx9z/w3Sz9iU/Y/4QNm7WFz9XeCzdFmR7d0W8Cb6znnFALVVxNM1imWn
 1LxABhL3jDbkoiAbJUkWF6TxZWNNpe2aTquED5yvssSN7h3Nc6fQZ3WyoYaaWIzjbD6QFPWYGzg
 13PXPHeNrbfNy5SRyEjgoXg6MkbuEuDIxnGtOs+UhAUo29OBJ9p3+DGv6Y3mhLXHYjWFAz79gO7
 u2EzGuuvMMFvbvbaeB6xgZSWaLd27dn46ADEVIqpLX1Jw==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266423-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Max.Merchel@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,ew.tq-group.com:mid,ew.tq-group.com:dkim]
X-Rspamd-Queue-Id: D71AF156979
X-Rspamd-Action: no action

This series contains modifications for using Linux device trees
in bootloaders. Changes from U-Boot bootloader are incorporated
directly into the Linux device trees.

Max Merchel (4):
  ARM: dts: imx6qdl-tqma6: add missing labels
  ARM: dts: imx6qdl: add boot phase properties
  ARM: dts: imx6qdl-tqma6: add boot phase properties
  ARM: dts: imx6qdl-mba6: add boot phase properties

 arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi   | 12 ++++++++++++
 arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6.dtsi  | 11 +++++++++++
 arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6a.dtsi |  5 +++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-tqma6b.dtsi |  6 ++++--
 arch/arm/boot/dts/nxp/imx/imx6qdl.dtsi        |  6 ++++++
 5 files changed, 36 insertions(+), 4 deletions(-)

-- 
2.43.0


