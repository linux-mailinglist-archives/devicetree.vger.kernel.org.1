Return-Path: <devicetree+bounces-157150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD02A5F0CB
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 11:26:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0CA87188C3DD
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 10:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E72F1266186;
	Thu, 13 Mar 2025 10:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="GFOoTSlj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FEF264F86
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741861558; cv=none; b=Gva/EaeIhGBlwqsdxoC7WcBuCRTWMtzv4kmbgvD0dpJcwlRei5byQcq0dYA1Tb5bzGmlDul66RKcyQIvEdlD1/ZNve9Nj4Hnv5jMUQhM756kDY8lARc5smqjuj4rFCCxWhYVx3+HePobAagwQR6sQJz47fJU0ubfQ4w8tNsKWbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741861558; c=relaxed/simple;
	bh=q2m71A/1Uu6Oz7dpB+yBv0X1S4e23idzdzzCe5OxYjA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=idbChr879/bAAtppzXsKG2mT0Wz92f94nnd/KGPTpodEwqpxDi1JoaY+OVOG5f4QNDpjlCVKVO4ZhKvnG1pHBWqNOlTstayDwmbaX8LtMl6CC0lWBPdcL70ZfyHFolAjf9Uq6qB0DlSjlEBN9qbMCvgCvumXvMzZAvmH6vxslmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=GFOoTSlj; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=zfbfFlb1FrJYUq
	kYysP5yx37Y76BzqPK+ZyoKRd+J/Q=; b=GFOoTSljYy+mILOJx/97gvFhi3H7Ii
	O98pcFRuDO/4+/CxuvKKk7ZArLflqYNUb5wXsgz8ngbo/egsdUI9ttYZjse4Auuq
	xB4btRQumAYVJqagNA9J0+Dq7ps8zC58qe1GOYw3oJ5p8okqQlSI34DKVXzNirD0
	m4KWN4CAUMBKHXaJB8Z2gPE1EBv1qkCZS0kd6BGidolcCqMDyZ5Xjnl/2ib5vQCx
	iIJqWcFp0TFDwK8FaSc9j7H86KCbeShVlDr9mJ4uBYYaKX3TpuLuP0z8UA5gvc7O
	SPYmFkweyJUMznq8UXq6T9jdGpSBNt9lYx9sMvrbnFQ9fKeRH5+55QJQ==
Received: (qmail 1574638 invoked from network); 13 Mar 2025 11:25:51 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 13 Mar 2025 11:25:51 +0100
X-UD-Smtp-Session: l3s3148p1@BjICvzYwGL0gAwDPXyTHAJp038nK7dx+
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-rtc@vger.kernel.org,
	Magnus Damm <magnus.damm@gmail.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Rob Herring <robh@kernel.org>
Subject: [RFC PATCH 0/4] rtc: rzn1: support XTAL clk and SCMP method
Date: Thu, 13 Mar 2025 11:25:41 +0100
Message-ID: <20250313102546.27335-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

So far, the code and the binding for the RZ/N1D RTC assumed an input
clock of 32768Hz, so it was not explicitly described. It makes sense to
do this, though. For one reason, clocks with other frequencies might be
used which this RTC supports via the SCMP counting method. Also, the
upcoming R-Car Gen5 have only the SCMP method described, so we need to
use it there.

This series is for collecting comments about the approach. I am aware
that the DTS changes no to go in separately from the code changes. And
the last patch will be updated and resent once I have tested these
patches on hardware. That might take a while but I'd like the
preparational patches to go in earlier. They are benefitial for N1D,
after all.

The series has been tested on a Renesas RZ/N1D board with hacked
devicetree values.

Looking forward to comments.


Wolfram Sang (4):
  dt-bindings: rtc: rzn1: add optional second clock
  ARM: dts: renesas: r9a06g032: add second clock input to RTC
  rtc: rzn1: support input frequencies other than 32768Hz
  WIP rtc: rzn1: add driver support for R-Car Gen5

 .../bindings/rtc/renesas,rzn1-rtc.yaml        |  8 ++-
 .../dts/renesas/r9a06g032-rzn1d400-db.dts     |  4 ++
 arch/arm/boot/dts/renesas/r9a06g032.dtsi      |  4 +-
 drivers/rtc/rtc-rzn1.c                        | 67 ++++++++++++++++---
 4 files changed, 70 insertions(+), 13 deletions(-)

-- 
2.47.2


