Return-Path: <devicetree+bounces-148105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED13CA3A811
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 20:53:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 70B063A37AB
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 19:52:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACCFE1EB5E1;
	Tue, 18 Feb 2025 19:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="eAWNQ4I3"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092941EB5D6
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 19:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739908348; cv=none; b=B7QVqRoUXRWRM6pr9hiXWmTIUJeVT71GCQXB5q1w+/MoksqNdQm7P9lIB6tV5OOmjaICtD63hngSij+dmYyy6Im53tFeT8IUrKC5kuz/fndVO3O1W/M55DvdH0qxBeUSZ+7zYDhzmitvFZyxQZ4kqKUVW3jvGq79gYeVI40Q+oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739908348; c=relaxed/simple;
	bh=9ovPTmcz3r5Z+SxqJ+uSZAzBU52u2lOiu6lP7nJBR68=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=huJ5tyRLDm8GtL3xeZo07ESZLfOqEeDdnnQTUfSBi6NR3dSbJ02YgmlA/lb5+7RnllcX6Ozml9BYE0SNLKt7SHK/KKuoBDamG1AunIzDLKzpni8bITfh0/rhQK3YeQgWy/EzvbtNV3exOfKzZJHZvXUlbzqD15q5un8fJzZELTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=eAWNQ4I3; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 0FE192C03C6;
	Wed, 19 Feb 2025 08:52:24 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1739908344;
	bh=qtQSybJN4jzTBTh2b1fTYdZXFDPv02QDw6AL0pSDuEU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eAWNQ4I35gSXIFq6Dhb9MMBu+xvL+okS9Pu5SjVRcO/toegkkzJeFo2Sj0YFJCqvN
	 b0Q1/lVjuBI62PMsKLmI3oLkwwBrkArhvjSJ6/XZMV5gf7N/JqcAkN9W3eZq1FiHa4
	 45CIlmwNKQbtAkuvm9bwuo1FdEu6/q5kahQLG/Qy2pHnNqGS8OhnikHW5pRyuYe8EA
	 Vp7g1V+65oVjb8Nby5CTQbLPXnwFdTL4Uy9HY7HIqwVUn+2OhKk8ljvh5Vm/2n8dru
	 zu2usgy0uF4UJF91R3tloteTh6rpCOePF6Xbt52nyUCTvQm71PgOSmuC207Ic1fd/M
	 itnz+fIr5+E5A==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B67b4e4f70000>; Wed, 19 Feb 2025 08:52:23 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id AD51E13EE36;
	Wed, 19 Feb 2025 08:52:23 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id AAB6E2804FB; Wed, 19 Feb 2025 08:52:23 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	tsbogend@alpha.franken.de
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-mips@vger.kernel.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [RESEND PATCH net-next 1/5] dt-bindings: net: Move realtek,rtl9301-switch to net
Date: Wed, 19 Feb 2025 08:52:12 +1300
Message-ID: <20250218195216.1034220-2-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250218195216.1034220-1-chris.packham@alliedtelesis.co.nz>
References: <20250218195216.1034220-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=ccpxrWDM c=1 sm=1 tr=0 ts=67b4e4f7 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=T2h4t0Lz3GQA:10 a=gEfo2CItAAAA:8 a=58PV4f5cLMXd0nVRbvoA:9 a=3ZKOabzyN94A:10 a=sptkURWiP4Gy88Gu7hUp:22
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

Initially realtek,rtl9301-switch was placed under mfd/ because it had
some non-switch related blocks (specifically i2c and reset) but with a
bit more review it has become apparent that this was wrong and the
binding should live under net/.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---

Notes:
    It would probably be simplest for this to come in via net-next with a=
n
    ack from Lee.

 .../bindings/{mfd =3D> net}/realtek,rtl9301-switch.yaml           | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename Documentation/devicetree/bindings/{mfd =3D> net}/realtek,rtl9301-=
switch.yaml (97%)

diff --git a/Documentation/devicetree/bindings/mfd/realtek,rtl9301-switch=
.yaml b/Documentation/devicetree/bindings/net/realtek,rtl9301-switch.yaml
similarity index 97%
rename from Documentation/devicetree/bindings/mfd/realtek,rtl9301-switch.=
yaml
rename to Documentation/devicetree/bindings/net/realtek,rtl9301-switch.ya=
ml
index f053303ab1e6..d0a93d5f03aa 100644
--- a/Documentation/devicetree/bindings/mfd/realtek,rtl9301-switch.yaml
+++ b/Documentation/devicetree/bindings/net/realtek,rtl9301-switch.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/mfd/realtek,rtl9301-switch.yaml#
+$id: http://devicetree.org/schemas/net/realtek,rtl9301-switch.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
=20
 title: Realtek Switch with Internal CPU
--=20
2.48.1


