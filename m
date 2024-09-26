Return-Path: <devicetree+bounces-105597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0070F9872DB
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 13:33:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 98FC41F257AB
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 11:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4F2C15B143;
	Thu, 26 Sep 2024 11:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="VFdCfQXG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC73E158DC3
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 11:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727350368; cv=none; b=rOjPx6CjWseLfV5De+jEXqcC6H1oW2FdsYQypWDeIFsL/UVdKzrIccLIRksI+B2meILo4v5i/4r5W6XWbxn9DI9nYXtnpK2nsXGn/D171EBqo2mrJE1F82yMiw1zeG2hFGdVtwGeEv02MunHgzWIbgEkTafnATw3OkuXA3+m55o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727350368; c=relaxed/simple;
	bh=C92cajfc1zWt3AsbM8+xxbkh6KK6i7ng0wWyiZR/2Zs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CA8XM1s5cxhnfSd3im5Nur+uqAGII0qFvDtRDjO28RgOjETGg02SuOSSAVXoMIYfAyu7TtaKgpHKSFClsDj4rjXnave0AWdjnP5vr2SzQOzYzVUEU6UdRNBJixeTw1u2+YmJK9nTgBUeQhWBwH8HoBBwZ8SARPrTQJD5eGNusgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=VFdCfQXG; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=Xk5IwM942c2UCl
	npnRtRUWbQmkY5G+4beG1YYt8qI90=; b=VFdCfQXGC0ckb9N4qUJ1Nv54COz2ei
	OjXOl3hYCjKzOFL4ieHBRNjfloo47MERf29wZHwakOXjswYEk3qKC4tdBL4++4Xg
	hDnsjrJmsmt2hbU+isyKD93xFM4HSwi/YPLwKj7oe0zFx7LkZr74C+Q0oDwrDsBi
	Io78wXD36LO2uxQDIfep1QvztrCiWdEdZ7T1m59zwk3TlmgA5naFS5RK6cHhOT+R
	+UtP56KmjFyhcnRpf9VWg9d8hoxllHQW0Q112lHer2AklMsFqRs6Z/68HeBa+WRh
	w86umLJrNK7NqPAmtMcS3+43F/WKjdLe7JPtSBT+ySPB4Om6ThyRPxlA==
Received: (qmail 967860 invoked from network); 26 Sep 2024 13:32:44 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 26 Sep 2024 13:32:44 +0200
X-UD-Smtp-Session: l3s3148p1@MkvfGAQjHpEgAwDPXzRXADDuo30Z+IZ9
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH] ASoC: dt-bindings: renesas,rsnd: correct reg-names for R-Car Gen1
Date: Thu, 26 Sep 2024 13:32:41 +0200
Message-ID: <20240926113241.24060-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The device at 0xffd90000 is named SRU, both in the datasheet and SoC
DTSI. Fix the typo in the bindings to avoid the false positive report:

  sound@ffd90000: reg-names:0: 'sru' is not one of ['scu', 'ssi', 'adg']

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 Documentation/devicetree/bindings/sound/renesas,rsnd.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
index 3bc93c59535e..6d0d1514cd42 100644
--- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
+++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
@@ -302,7 +302,7 @@ allOf:
         reg-names:
           items:
             enum:
-              - scu
+              - sru
               - ssi
               - adg
   # for Gen2/Gen3
-- 
2.45.2


