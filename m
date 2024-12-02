Return-Path: <devicetree+bounces-126214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA739E0B30
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 19:38:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BAF5FB2CF6F
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:37:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F00F1DDC19;
	Mon,  2 Dec 2024 16:35:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB7D81DD889
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 16:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733157347; cv=none; b=VP9tYZmPhZ5ISXpWfyvTT76xtLeZDVrJs5d+Ry/I4F3gUuj2f33L9Va6kBAwRx27zZYJ4paEeHbZbIPvjRGEjA6mcRB9PgIBauBMyJ/lFanTXjz5cQhxxkFwSaqlvnxRqsJCFC1WBz0BSHn/PA2oALrx8DlDX7Qf7Xvn7e9VOp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733157347; c=relaxed/simple;
	bh=N/KblnNkQgu8OfZGvboZSwnR5GTetQaJWrhDYvUvQ14=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=iGKIr8Tmo+G3MAeRxiFEJoyM7yeKz3C11QiYYWcK2VBIIuv6xXCNGRdptKWw1xvyDVCDn55DXnS1xNwaa0NqZGZUnJNwypPTr/g/iKnEfVuruup57rEnmwLivBNTGeG7iAa/1BUecWpvSxUIBcEdWmofr+IR9l58ZS5u2BAjlCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1tI9Od-0004Mi-4G; Mon, 02 Dec 2024 17:35:39 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Subject: [PATCH 0/3] Add support for Fujitsu MB85RS128TY
Date: Mon, 02 Dec 2024 17:35:19 +0100
Message-Id: <20241202-mb85rs128ty-v1-0-a660b6490dc8@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMfhTWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDQyNL3dwkC9OiYkMji5JKXTNTy1QLQ0sDA0tTcyWgjoKi1LTMCrBp0bG
 1tQByA2NzXQAAAA==
X-Change-ID: 20241129-mb85rs128ty-659e81900957
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Schocher <hs@denx.de>
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, David Jander <david@protonic.nl>, 
 kernel@pengutronix.de, Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=788; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=N/KblnNkQgu8OfZGvboZSwnR5GTetQaJWrhDYvUvQ14=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYkj3fXjJctWKp7lTm6aq8XF9t7eTWVQU7X1rafvu0mPb/
 mz7Lcf+t6OUhUGMg0FWTJElVk1OQcjY/7pZpV0szBxWJpAhDFycAjCRUEdGhjNSR16f39Pyptdn
 +pL9Ew2dn0tGyvDm5de3TdFe+m3H+UuMDO1/HnTnqqj+sGDwkGU4wabG2Hdfck+dwMMTVWt71h5
 +yA8A
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::ac
X-SA-Exim-Mail-From: jre@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The Fujitsu MB85RS128TY FRAM chips behave almost identically to the
Microchip 48L640. This series adds their support to the mchp48l640
driver.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
David Jander (2):
      mtd: mchp48l640: make WEL behaviour configurable
      mtd: mchp48l640: add support for Fujitsu MB85RS128TY FRAM

Jonas Rebmann (1):
      dt-bindings: mtd: mchp48l640 add mb85rs128ty compatible

 .../bindings/mtd/microchip,mchp48l640.yaml         |  1 +
 drivers/mtd/devices/mchp48l640.c                   | 28 +++++++++++++++++++---
 2 files changed, 26 insertions(+), 3 deletions(-)
---
base-commit: 7af08b57bcb9ebf78675c50069c54125c0a8b795
change-id: 20241129-mb85rs128ty-659e81900957

Best regards,
-- 
Jonas Rebmann <jre@pengutronix.de>


