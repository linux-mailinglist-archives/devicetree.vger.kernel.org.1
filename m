Return-Path: <devicetree+bounces-3600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2797AF6EE
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 01:48:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id A76911C209E3
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 23:48:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 489AA4BDC9;
	Tue, 26 Sep 2023 23:48:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03B094B234
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 23:48:13 +0000 (UTC)
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 044DD19A3
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 16:48:10 -0700 (PDT)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 4CCF52C0526;
	Wed, 27 Sep 2023 12:48:08 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1695772088;
	bh=b75WKuP+3dUziG2rTJfVWwAGvRIdFNM7vfhk4HCV9Ek=;
	h=From:To:Cc:Subject:Date:From;
	b=ju6VS0VBNlA1OUCc9HW5b0DAexJKmQJUYnFhhNMF+Rp36liw+KMN3ZIWs4KEb/xdC
	 iQD0F4yAH5AYvbrBfDYjoeM8xIO/y+7ohWn6prMXKnQIWopLmCfNZMx4UeBZuVpA5L
	 oZ/ncGAgHQJXZ8nsDmkUo3gGhfR93zkArAr4Pl7tgC19qa1YGFi3d3yH93ov6XDxP2
	 BOl9/IPGsS+/l291J5YuZK/dtctXezls4cR5ArDeJCj1vqTvnlwIoHjrrOVy57VnkC
	 49gFQgGMdy3zxnF6+cXo13zd5HMjHIOFeXBGCMxJTZhj5Ke4wx3yY7ojEjuEFYN1BJ
	 VCYT5HswjG4MQ==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B65136db70000>; Wed, 27 Sep 2023 12:48:08 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id E8CC713EE32;
	Wed, 27 Sep 2023 12:48:07 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id E563328160F; Wed, 27 Sep 2023 12:48:07 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: gregory.clement@bootlin.com,
	andi.shyti@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	pierre.gondois@arm.com
Cc: linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH 0/3] i2c: mv64xxx: Support for I2C unstuck
Date: Wed, 27 Sep 2023 12:47:58 +1300
Message-ID: <20230926234801.4078042-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.3 cv=fOpHIqSe c=1 sm=1 tr=0 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=zNV7Rl7Rt7sA:10 a=N-MdeIapwvzwuhZPf1QA:9
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Some newer Marvell SoCs natively support a recovery mechanisim. This can =
be
used as an alternative to the generic pinctrl/GPIO recovery mechanism use=
d on
the older SoCs.

Chris Packham (3):
  dt-bindings: i2c: mv64xxx: update bindings for unstuck register
  arm64: dts: marvell: AC5: use I2C unstuck function
  i2c: mv64xxx: add support for FSM based recovery

 .../bindings/i2c/marvell,mv64xxx-i2c.yaml     |  5 +-
 arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi | 14 ++--
 drivers/i2c/busses/i2c-mv64xxx.c              | 71 +++++++++++++++++--
 3 files changed, 75 insertions(+), 15 deletions(-)

--=20
2.42.0


