Return-Path: <devicetree+bounces-104000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A5597CF6F
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 02:01:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E44481F2306D
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 00:01:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C39D34C69;
	Fri, 20 Sep 2024 00:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="0d5MGcAp"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B865184D
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 00:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726790506; cv=none; b=dRWw8gS9NrU7EbLToMJNJJ+V0CPIpjRbVeXugR7gsFGaX+5HzNUvl/D7iW/FDpD6EBTwINGBcJjhUyaJ47vmKdGEEBezB8g6ibrbI5WF9qk82coLL5nHoLm96IP1iykA1XYtO6bRkk9ldIgB1u+KlYeKA9kvJwPjmjxE82a4e4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726790506; c=relaxed/simple;
	bh=jRGfcMadem6YFBIc2ryyar5GoJU0DaxD5gqKwa8r+Vg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gbzw43C2+WJclwgzimoEI0DvJLOhyOdJxaBW0tfmF9l/sRSjyyx6sEcbZzcpQUNwlQ/uydz1oy4eYBd/KVZQBcWaLXE0bf/Rg+6i01j39MvsKBMBtPO0VexdMFXm8XHrD3xZAy04PSuZK3FXk6506EBZ0WeyPCKAKQ4csDdbwjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=0d5MGcAp; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 05ACA2C0540;
	Fri, 20 Sep 2024 12:01:41 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1726790501;
	bh=HoeGF8c6SQ6UyxgXlw0qHN0vvtbnmuGA0YWqmRmyACQ=;
	h=From:To:Cc:Subject:Date:From;
	b=0d5MGcAp4WqTVI5YJ1kuny8tX5oNP+NF3RDIniozzlJmmku6I1hm6CTf2np7OXWSi
	 p3LmpgHc6tC4WqyFwgeejSr0kmEbaN2ShV1ggfrOge18pPPExDv6v/yzNxEd/xVPZX
	 biPDJ1sZ4lezkrTydGyjk6fBUygMYXfk00IRbRPlx408RStqGJTeJxO5Bl1U+Xd5eG
	 1++LbLtNeRxztv3k+GHg8fU/drACdQqdz2nYNqpLCHhFs3piaxy9IY4B5D0VWZboqP
	 qAXcbkzEkN2fDSUnKPXfABcO0pGk0od9scI1PdGxrdHQFv1QOf7+iNL2iHXjx9FXme
	 A2dBJtSfUdWMQ==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B66ecbb640000>; Fri, 20 Sep 2024 12:01:40 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id BB49413ED56;
	Fri, 20 Sep 2024 12:01:40 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id B414E280793; Fri, 20 Sep 2024 12:01:40 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tsbogend@alpha.franken.de
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH 0/2] mips: realtek: Add reboot support
Date: Fri, 20 Sep 2024 12:01:36 +1200
Message-ID: <20240920000138.1826123-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.46.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=Id0kWnqa c=1 sm=1 tr=0 ts=66ecbb64 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=EaEq8P2WXUwA:10 a=Mt1HfaXHmOUzYFHI898A:9 a=3ZKOabzyN94A:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

The system reboot on the cameo-rtl9302c (and presumably many other boards=
 based
on the realtek reference design) is connected via the switch reset regist=
er
(RST_GLB_CTRL_0).

Because the switch register block encompasses a number of functions that =
would
normally be separate perhipherals I've represented it as a syscon node. R=
ight
now the only peripheral I've added is the reset (using syscon-reboot). Th=
e
binding and syscon node will be expanded in the future to add some additi=
onal
functions (e.g. I2C, GPIO, MDIO).

Chris Packham (2):
  dt-bindings: mfd: Add Realtek switch
  mips: dts: realtek: Add syscon-reboot node

 .../bindings/mfd/realtek,rtl9302c-switch.yaml | 50 +++++++++++++++++++
 arch/mips/boot/dts/realtek/rtl930x.dtsi       | 11 ++++
 2 files changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/realtek,rtl9302=
c-switch.yaml

--=20
2.46.1


