Return-Path: <devicetree+bounces-198785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFB0B0E3DF
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 21:08:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8EB646C2C34
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 19:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19F6B2836B0;
	Tue, 22 Jul 2025 19:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="WSlFLoSf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9072278E5A
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 19:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753211279; cv=none; b=ddCFVptbLEPD+SilPWrTubOOuBvQgFHYRXN9u4qb6LDWxtCoQd3POMBOHmaOGLEi61NFjxET40DakX+BK8TTtw+qmdi03cy895m2hsFbrG4sdo9ArI9+jkYtAbbEfaYDqdFNHNm+KmKSKG/ulvQN6McGizq8nlSa2ADj0Inl6lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753211279; c=relaxed/simple;
	bh=0bxIOh3uY0gYgCupAJY4wapGnWHsicf67eepzJtD9Q0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IgNNbFjDjwV0iiG3ZnLppFFfAM+EBs0gx5sUJIu3XxgWhzgpzQXO6r5miVUi+KfgGZXus1MdYypNPxtRjElE5iYtIi62ezF4fo65pxHILlxbPI1IM9RTHoLKMTIvxf+nMxH0sJj0qgEPik8AFbPWafSk+y8JhrftyhtE5XtA3dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=WSlFLoSf; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=jhmRhKQ3uBZR68
	PwHbt4FpVH5/DxMJnUwPll1eKv7Y8=; b=WSlFLoSfU+OnStkzR/wf3n+JJ4HIjB
	zLLvVV8fWJtPJGhfNlDc6yWTA0gq02zvbx/cQ/e74rI9NIQfZqyMq4iTNux0vYt9
	gllk+IlkydiRC8QtytqLL4uUyW2N+4ezg4a7wHpYGvA0FyIuQplqFrQX0v54KeeJ
	uBL22QfhKBIFQlT+eAFGgEBRHs+iFxbh0HyRAKvRUdAxB71EyTzghgIxG6M0K8TW
	OqG8ZRaWAEyFF8fRjXTt4tP3Upixzbsl3cxQHJy7xXZfFxkbBJxCktphr/fBp1+Y
	vwyBMY3yo5eTaggfk35DbZamVXnnNTwDpkIQkshaivf+Z/KETz5zP7OQ==
Received: (qmail 1426940 invoked from network); 22 Jul 2025 21:07:51 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 22 Jul 2025 21:07:51 +0200
X-UD-Smtp-Session: l3s3148p1@Pt0MT4k6QIggAwDPXyBWAATEinPyanBm
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Frank Li <Frank.Li@nxp.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-hardening@vger.kernel.org,
	linux-i3c@lists.infradead.org,
	Magnus Damm <magnus.damm@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Subject: [PATCH v4 0/4] i3c: add support for the Renesas controller
Date: Tue, 22 Jul 2025 21:07:42 +0200
Message-ID: <20250722190749.6264-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Detailed changes since v3 are described in the individual patches. A
branch with enablement patches for RZ/G3S+G3E can be found here:

git://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git renesas/g3s/i3c

Old coverletter:

Here is a basic driver for the I3C IP found in various Renesas SoCs like
RZ/G3S and G3E. Missing features to be added incrementally are IBI,
HotJoin and maybe target support. Other than that, this driver has been
tested with I3C pure busses (2 targets) and mixed busses (2 I3C +
various I2C targets). DAA and reading/writing to the temperature sensors
worked reliably at different speeds. Scoping the bus, the output from
the protocol analyzer seems reasonable, too. It was created by merging
two versions of it from two different BSPs. Then, improved according to
code analyzers, cleaned up with regard to coding style, and then
refactored to hopefully match I3C subsystem standards.

Looking forward to comments,

   Wolfram


Tommaso Merciai (1):
  dt-bindings: i3c: Add Renesas I3C controller

Wolfram Sang (3):
  i3c: Standardize defines for specification parameters
  i3c: Add more parameters for controllers to the header
  i3c: master: Add basic driver for the Renesas I3C controller

 .../devicetree/bindings/i3c/renesas,i3c.yaml  |  179 +++
 MAINTAINERS                                   |    7 +
 drivers/i3c/master.c                          |   12 +-
 drivers/i3c/master/Kconfig                    |   10 +
 drivers/i3c/master/Makefile                   |    1 +
 drivers/i3c/master/dw-i3c-master.c            |    4 +-
 drivers/i3c/master/renesas-i3c.c              | 1404 +++++++++++++++++
 include/linux/i3c/master.h                    |   16 +-
 8 files changed, 1621 insertions(+), 12 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/i3c/renesas,i3c.yaml
 create mode 100644 drivers/i3c/master/renesas-i3c.c

-- 
2.47.2


