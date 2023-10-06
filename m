Return-Path: <devicetree+bounces-6332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1667E7BAF9F
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 02:33:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 804CD28219D
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 00:33:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07D99110A;
	Fri,  6 Oct 2023 00:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="miOVLVIY"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8B47FF
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 00:33:34 +0000 (UTC)
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [IPv6:2001:df5:b000:5::4])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7F61EA
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 17:33:31 -0700 (PDT)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 88A732C0230;
	Fri,  6 Oct 2023 13:33:28 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1696552408;
	bh=DmxnxtxA14LlUu8TmQPpx7lwT0LaFzzAJ4Qykq3hDQc=;
	h=From:To:Cc:Subject:Date:From;
	b=miOVLVIYlWc0k1nBGffvson+WQ/KALMh8XI3smlUlNwIYFZZurnZV8deM+K8fcTrs
	 V4oEX6ogXEHjK6AfpPEMigUkvftjvIGiCxejfmeuvP9x1ych/GWC6H3c4QLJ5WOo+Y
	 GnojvJ0dhr2nwxY5E/fVLNrS+Uyr/mKH+9FpCs66qgN8WtufObn70O+6DcCxTptfz2
	 MZi0wZT1JxbgNl+taE2vJrUo3vnZ1iDOsBcrSoA2fvgcI8wkeqnsrr321FwMpOZ/VZ
	 PK3opKb8y4c7UhMyelZsEbO1OkdnJk485EJXMXQAoVh4FBC/6fEX3R5Y1jMBjJf7u8
	 4Hvyf7/sCnWRw==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B651f55d80000>; Fri, 06 Oct 2023 13:33:28 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 575D013ECD2;
	Fri,  6 Oct 2023 13:33:28 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 5445C280790; Fri,  6 Oct 2023 13:33:28 +1300 (NZDT)
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
Subject: [PATCH v2 0/3] i2c: mv64xxx: Support for I2C unstuck
Date: Fri,  6 Oct 2023 13:33:18 +1300
Message-ID: <20231006003321.2100016-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.3 cv=Vf2Jw2h9 c=1 sm=1 tr=0 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=bhdUkHdE2iEA:10 a=xb0FzOZsRbz1oUwcWQsA:9
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
 drivers/i2c/busses/i2c-mv64xxx.c              | 68 ++++++++++++++++++-
 3 files changed, 73 insertions(+), 14 deletions(-)

--=20
2.42.0


