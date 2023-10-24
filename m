Return-Path: <devicetree+bounces-11473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2988D7D5E34
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 00:31:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C5213B20FF8
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 22:31:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 076552100;
	Tue, 24 Oct 2023 22:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="uzFlkGFQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8F411BDC7
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 22:31:15 +0000 (UTC)
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [IPv6:2001:df5:b000:5::4])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A5663840
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:30:42 -0700 (PDT)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 5208C2C02E0;
	Wed, 25 Oct 2023 11:30:35 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1698186635;
	bh=BJyb8WCZNp/Hae7wlZqfwiEnwQZsmQKh19okRh+cMxw=;
	h=From:To:Cc:Subject:Date:From;
	b=uzFlkGFQrkoMNSt/vOaQDLPxO9T1c/ee5kk4Z+BU6meMvLYLVnvIVKkyXSomppUZR
	 nC2G8VxoVyAQgYByl/0Dcr4/LnqUa/5qfua4dELW+gsWbIYABTSBVnZ3a1ScSqY9oC
	 lwglbP6bM+QbsMFtS9KX2o2hFG4AwiEn6kPvQZYp4TW3s2mPl164gwn22RlBv98ru7
	 oLzOvXRlvZ6wnyEi08HFXRiixHA6fn5+b6MGfyVkIVVJWCMG+8kNm1HDhaS+s3svjO
	 0pW9CobR+5bhSB0yQC8F+3mx8RJTn2txowcJGA0tFjo4NaT3+/JiyLBw6zNP9IJ1bD
	 h/49+hUZwgSCQ==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B6538458b0000>; Wed, 25 Oct 2023 11:30:35 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 1363413EDA9;
	Wed, 25 Oct 2023 11:30:35 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 0EF36280F0D; Wed, 25 Oct 2023 11:30:35 +1300 (NZDT)
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
Subject: [PATCH v4 0/2] i2c: mv64xxx: reset-gpios
Date: Wed, 25 Oct 2023 11:30:30 +1300
Message-ID: <20231024223032.3387487-1-chris.packham@alliedtelesis.co.nz>
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

 .../bindings/i2c/marvell,mv64xxx-i2c.yaml        | 10 ++++++++++
 drivers/i2c/busses/i2c-mv64xxx.c                 | 16 ++++++++++++++++
 2 files changed, 26 insertions(+)

--=20
2.42.0


