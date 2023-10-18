Return-Path: <devicetree+bounces-9816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB587CE9BF
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 23:08:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A7ABB1C20D67
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 21:08:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC07542925;
	Wed, 18 Oct 2023 21:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="tfsi7lUX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AC064291F
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 21:08:16 +0000 (UTC)
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E71EB1B5
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 14:08:13 -0700 (PDT)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 1E27C2C04A8;
	Thu, 19 Oct 2023 10:08:10 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1697663290;
	bh=+Mz6a/fjJta9Jhb4FwxyqF6StNC2MRU2k5KJDvqxmcs=;
	h=From:To:Cc:Subject:Date:From;
	b=tfsi7lUX3bS3Vx9lK9EMc4owTa0mi5GmxgHT9PwWkhBEe+oxg18cs9Px02Sm88+sx
	 D+Luwcddh4Ah8wOAoY8ua1y7WckH1TVz2C/EzsDu06ODhtFScdq2M5Ebl3id6odG2m
	 QlsyfULaGgeDCVoQjTynFnVAV8CKuk7UJqDPIwvLcTu/LMus4xo9/S6XRZWffeJhL3
	 aafgQYIV1eQ8IseSJy/eCcOfAOyHIJKLr+2LWGrSca55UbFx/Gj1c2AgpcnUCGQP+x
	 gKMP8W2kFoNpycDEmkQ4/sh2txps8DiOAeBKDnG2Ppb0SGxZEP7SZxonqJjBedNj1D
	 vP9fOuxLpg4CA==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B653049390000>; Thu, 19 Oct 2023 10:08:09 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 581F313ECD2;
	Thu, 19 Oct 2023 10:08:09 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 544BB2808BA; Thu, 19 Oct 2023 10:08:09 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: gregory.clement@bootlin.com,
	andi.shyti@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v3 0/2] i2c: mv64xxx: reset-gpios
Date: Thu, 19 Oct 2023 10:08:03 +1300
Message-ID: <20231018210805.1569987-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.3 cv=L6ZjvNb8 c=1 sm=1 tr=0 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=bhdUkHdE2iEA:10 a=DesYK6339MVhjp1_Vu4A:9
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

This series adds the ability to associate a gpio with an I2C bus so that
downstream devices can be brought out of reset when the host controller i=
s
probed.

Chris Packham (2):
  dt-bindings: i2c: mv64xxx: add reset-gpios property
  i2c: mv64xxx: add an optional reset-gpios property

 .../bindings/i2c/marvell,mv64xxx-i2c.yaml         | 10 ++++++++++
 drivers/i2c/busses/i2c-mv64xxx.c                  | 15 +++++++++++++++
 2 files changed, 25 insertions(+)

--=20
2.42.0


