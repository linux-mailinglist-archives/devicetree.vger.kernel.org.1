Return-Path: <devicetree+bounces-126466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F819E17DB
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 10:38:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DAEC416391A
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 09:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53A761DFDAA;
	Tue,  3 Dec 2024 09:37:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF1171DFD96
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 09:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733218663; cv=none; b=T0WiKKRK7rcUCBRUKjyFImgHqgvEZwsd99EhSiTnOwwM8ZhaBKzantCMwUIjVtvtPA0Ks+cqpZSc2Zea7h9XSa7v8sUzgfsznVhbh8eFN7zT19OjQTAuVTN4PUlivnV9wbcS551GdIjrLxWZ3tMSAhaux1kpOpgXuBUvJMjy/7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733218663; c=relaxed/simple;
	bh=7ev4NVxVo+TJSeuLy6DxDZOiuXgvvpucuXg1z5L2tY8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=g1gJuJlvoSl7opM69MQzpYi1/DXnqOvRRSRePeUZzBsNVWLPcga76MUVzWOHx+z+CzTOoJFHGrBXD2FohsCNfBpUvrwLzqDUxOadZaUaErfIOXv3v0hUVgeJ7StayqxMwdHN7InfFMcpqjaIECMZb0pktqVDIZxKOP6lPK9IMFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1tIPLZ-0006C6-GQ; Tue, 03 Dec 2024 10:37:33 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Subject: [PATCH v2 0/3] Add support for Fujitsu MB85RS128TY
Date: Tue, 03 Dec 2024 10:37:24 +0100
Message-Id: <20241203-mb85rs128ty-v2-0-42df3e7ff147@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFTRTmcC/1XMQQ6DIBCF4auYWZcGiFDoyns0LlSmOouCAWs0h
 ruX2lU3k/yTvO+AhJEwwb06IOJKiYIvIS8VDFPnR2TkSoPkshZCWvbqjYpJSLPsTCuLRljOrbp
 BWcwRn7Sd2qMtPVFaQtxPfBXf788p589ZBeOs05r3urbcDaaZ0Y/vJQZP29UhtDnnDyv0186rA
 AAA
X-Change-ID: 20241129-mb85rs128ty-659e81900957
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Schocher <hs@denx.de>
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, David Jander <david@protonic.nl>, 
 kernel@pengutronix.de, Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=997; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=7ev4NVxVo+TJSeuLy6DxDZOiuXgvvpucuXg1z5L2tY8=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYkj3uxgW8ufDefNr6a93WP5onTXH7feiiLPehjFS04y+6
 x/YLcmY1VHKwiDGwSArpsgSqyanIGTsf92s0i4WZg4rE8gQBi5OAZhIdg/DH55fC1+aaZYUbW5i
 OVmotP6BP0eaPoPhzCm+82TPbljFN4eRYV/+l8wFiYXn4vR9lntHzsz1kZvANjP3Q2bdLS82pb+
 5nAA=
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
Changes in v2:
- Correct dt schema in Documentation/devicetree/bindings/mtd/microchip,mchp48l640.yaml
- Link to v1: https://lore.kernel.org/r/20241202-mb85rs128ty-v1-0-a660b6490dc8@pengutronix.de

---
David Jander (2):
      mtd: mchp48l640: make WEL behaviour configurable
      mtd: mchp48l640: add support for Fujitsu MB85RS128TY FRAM

Jonas Rebmann (1):
      dt-bindings: mtd: mchp48l640 add mb85rs128ty compatible

 .../bindings/mtd/microchip,mchp48l640.yaml         |  5 ++--
 drivers/mtd/devices/mchp48l640.c                   | 28 +++++++++++++++++++---
 2 files changed, 28 insertions(+), 5 deletions(-)
---
base-commit: 7af08b57bcb9ebf78675c50069c54125c0a8b795
change-id: 20241129-mb85rs128ty-659e81900957

Best regards,
-- 
Jonas Rebmann <jre@pengutronix.de>


