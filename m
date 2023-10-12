Return-Path: <devicetree+bounces-7944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C707C6395
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 05:58:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86105282158
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 03:58:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81EDD53A6;
	Thu, 12 Oct 2023 03:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="nebdjy1j"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E6C5251
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 03:58:44 +0000 (UTC)
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F51E2132
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 20:58:42 -0700 (PDT)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 91E552C0733;
	Thu, 12 Oct 2023 16:58:39 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1697083119;
	bh=QTisau/dBXmjc0VL/EBndGcTKvPJxnrSBT9R6bF6Gb0=;
	h=From:To:Cc:Subject:Date:From;
	b=nebdjy1jtxDJndkrDm1I7kJc/HkdAwM41bUvAYklAOo+HOgb+raSOaoQu/Cgw1kzh
	 Do5ulE6ne5SaqxfUIB0zfoPkcsSCwcA6zY0LBvbEgNxmkXu4z04xodbM7X7+Y+SDQQ
	 yunx4BpsPiE6lwYyDWwxGzGjnZia6pH/W5HFiNlwdSgs2L03dPYzBglrBreGosiPtL
	 Nc/7gy3Vwln5FpZhysymKvQQsMhhiimzKGr9f2tIsi7iczjkH8miVwLRQapu6b0/e0
	 ZbvtpTvOVcwVvVqkEDgmKNDOGy4e+gzfcdTPI486FMdvwXTWyva5uTCj8hFPyz0pEl
	 LoVvZv9LBHQqg==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B65276eef0000>; Thu, 12 Oct 2023 16:58:39 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 519D813ED0C;
	Thu, 12 Oct 2023 16:58:39 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 4D32D280E87; Thu, 12 Oct 2023 16:58:39 +1300 (NZDT)
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
Subject: [PATCH 0/2] i2c: mv64xxx: reset-gpios
Date: Thu, 12 Oct 2023 16:58:36 +1300
Message-ID: <20231012035838.2804064-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.3 cv=L6ZjvNb8 c=1 sm=1 tr=0 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=bhdUkHdE2iEA:10 a=X8ZXEbYnt8eKSyduVAIA:9
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This series adds the ability to associate a gpio with an I2C bus so that
downstream devices can be brought out of reset when the host controller i=
s
probed.

Chris Packham (2):
  dt-bindings: i2c: mv64xxx: add reset-gpios property
  i2c: mv64xxx: add an optional reset-gpios property

 .../devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml  |  3 +++
 drivers/i2c/busses/i2c-mv64xxx.c                      | 11 +++++++++++
 2 files changed, 14 insertions(+)

--=20
2.42.0


