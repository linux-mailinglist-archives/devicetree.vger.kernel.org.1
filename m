Return-Path: <devicetree+bounces-102550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 497B897770F
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 04:50:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B4C9282C98
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 02:50:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C0D11D365B;
	Fri, 13 Sep 2024 02:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="y12320wQ"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FC8D1AD261
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 02:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726195804; cv=none; b=Eeg/VegXwkvmSl979bcmq6r4DOp7mEokYhqjJUC6L736QLzF91C79LJCDmZVOn+wOGjPJnZxJ1PsYqVMAY612H/xhBR1StTnBObaJKkcQvNcJCguFhwuuBQ5LWbiNv/omgZKcdRJQPzVItOt8T9iXfivGs4TrKoOP+dRUSnbmxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726195804; c=relaxed/simple;
	bh=85T8glehQSr9kNN62nTHvMVeLgPDiEUD9r6Mf6HV7Hw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TzrEf6qoyWYh1nu3dchAjItu4MiKVtnFHFyt92Vn20SmCNySZl+BJnM3Bpwb9gJPTAN3Q1rkQ+Ur9xNGFgxzQC3fjdnQLHOrDJzrm/vXBMt1HeE7NSTKf1gompade2+bnPP4ve5VQJ3YeKsIaugFxQEkdy8cDR4l17mAZTpOO7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=y12320wQ; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id CA79F2C0576;
	Fri, 13 Sep 2024 14:49:51 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1726195791;
	bh=djn6bQj5m7HLsvl0QqQZJE1stfc6VPB3T5iAfhUMZ0o=;
	h=From:To:Cc:Subject:Date:From;
	b=y12320wQY5uiU8gHEMtpn1rtUP14IMYAix/hXNErgcg8lvUlxosgYoEVyDnQQPXBL
	 0JFXPesnThF/qnG5Tq6zwNezqefWSN1SFwX43u7ph8XElJWjQuD/Dp4s5OemkLxQQ+
	 Hnu/q8JOcq0L+9uc3crwd6hRUQDhl9jAFE6/9mr5wJk1oDN2BddJBQ3IagytaN85Dl
	 SC22ek+79mVbIdJcN8HOaTy1VZrtevQMUW6AZq/bo86hjchPE38MjpIx23HtgirqI+
	 JfpdtRqFjcaka+NQ5o1aY3+E0rnaJKobN1tOI4UWofwu9PNIH0GEXXk5VCc1z/fw+k
	 bIipnGF7e4E3g==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B66e3a84f0000>; Fri, 13 Sep 2024 14:49:51 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 8FFED13ED8D;
	Fri, 13 Sep 2024 14:49:51 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 8D51A2804E9; Fri, 13 Sep 2024 14:49:51 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tsbogend@alpha.franken.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v2 0/2] mips: realtek: Add reboot support
Date: Fri, 13 Sep 2024 14:49:46 +1200
Message-ID: <20240913024948.1317786-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.46.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=Id0kWnqa c=1 sm=1 tr=0 ts=66e3a84f a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=EaEq8P2WXUwA:10 a=Mt1HfaXHmOUzYFHI898A:9 a=3ZKOabzyN94A:10
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
2.46.0


