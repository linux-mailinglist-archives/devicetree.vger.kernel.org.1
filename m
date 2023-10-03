Return-Path: <devicetree+bounces-5573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E63A7B6A9A
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 15:35:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2FD2228164D
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 13:35:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1026029402;
	Tue,  3 Oct 2023 13:35:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D7824218
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 13:35:39 +0000 (UTC)
Received: from nikam.ms.mff.cuni.cz (nikam.ms.mff.cuni.cz [195.113.20.16])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88597A6;
	Tue,  3 Oct 2023 06:35:37 -0700 (PDT)
Received: from gimli.ms.mff.cuni.cz (gimli.ms.mff.cuni.cz [195.113.20.176])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by nikam.ms.mff.cuni.cz (Postfix) with ESMTPS id 76537284EB5;
	Tue,  3 Oct 2023 15:35:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gimli.ms.mff.cuni.cz;
	s=gen1; t=1696340134;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=B4vTHC41c5OG36z6s8T2SbcOR+HJgCfAGARZnZUjEAE=;
	b=VBOMG7Q81Jman43aAtHd0D7FWgWK9uNi9aK2KNa84U0a0n99AsmTQB6iKZfHUUOg906Up/
	nIW/pq22xKx+ivGtYFKZrrUgMqChcPLqzvAZHoQgZTNo9unTPT5gi+ZJNgJEojI/ItnXEi
	SlbuoJIxlgpl2tOYRNn8wYEAUZRqrTs=
Received: from localhost (koleje-wifi-0029.koleje.cuni.cz [78.128.191.29])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: karelb)
	by gimli.ms.mff.cuni.cz (Postfix) with ESMTPSA id 541BE441AC5;
	Tue,  3 Oct 2023 15:35:34 +0200 (CEST)
From: karelb@gimli.ms.mff.cuni.cz
To: Markuss Broks <markuss.broks@gmail.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Henrik Rydberg <rydberg@bitmath.org>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht
Cc: =?UTF-8?q?Duje=20Mihanovi=C4=87?= <duje.mihanovic@skole.hr>,
	Karel Balej <karelb@gimli.ms.mff.cuni.cz>
Subject: [PATCH v2 0/5] input/touchscreen: imagis: add support for IST3032C
Date: Tue,  3 Oct 2023 15:34:14 +0200
Message-ID: <20231003133440.4696-1-karelb@gimli.ms.mff.cuni.cz>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Karel Balej <karelb@gimli.ms.mff.cuni.cz>

This patch series generalizes the Imagis touchscreen driver to support
other Imagis chips, namely IST3038B, which use a slightly different
protocol.

It also adds necessary information to the driver so that the IST3032C
touchscreen can be used with it. The motivation for this is the
samsung,coreprimevelte smartphone with which this series has been
tested. However, the support for this device is not yet in-tree, the
effort is happening at [1]. In particular, the driver for the regulator
needed by the touchscreen on this device has not been rewritten for
mainline yet.

[1] https://lore.kernel.org/all/20230812-pxa1908-lkml-v5-0-a5d51937ee34@skole.hr/
---
Changes in v2:
- Do not rename the driver.
- Do not hardcode voltage required by the IST3032C.
- Use Markuss' series which generalizes the driver.
- Separate bindings into separate patch.
- v1: https://lore.kernel.org/all/20230926173531.18715-1-balejk@matfyz.cz/
---

Karel Balej (2):
  dt-bindings: input/touchscreen: imagis: add compatible for IST3032C
  input/touchscreen: imagis: add support for IST3032C

Markuss Broks (3):
  input/touchscreen: imagis: Correct the maximum touch area value
  dt-bindings: input/touchscreen: Add compatible for IST3038B
  input/touchscreen: imagis: Add support for Imagis IST3038B

 .../input/touchscreen/imagis,ist3038c.yaml    |  2 +
 drivers/input/touchscreen/imagis.c            | 70 +++++++++++++++----
 2 files changed, 60 insertions(+), 12 deletions(-)

-- 
2.42.0


