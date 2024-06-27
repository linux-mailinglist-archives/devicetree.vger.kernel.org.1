Return-Path: <devicetree+bounces-80525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C06D2919E33
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 06:33:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B90B28636C
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 04:33:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 848A51C69C;
	Thu, 27 Jun 2024 04:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="hxSQVSE4"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEFE01BC58
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 04:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719462807; cv=none; b=ZO9B+KXuSAS9U47YkBCfkgyAOE4OIWeYb0+y1GWdjPmzbOdB8O5ezDk1CPD4/rEu92cNEJ0SdRX0D5r1EEs9LaxIVpYC40xoOkPoV5pkvc0fUBz3T0W76+uzzY9qdIs//q9GZgskAKamkFFWSNeOEUQfurvOVRKge1sF2PhP8WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719462807; c=relaxed/simple;
	bh=Y3libUm+j5psOOxlpsMlLt0oDjgknlcmIRd8zChI610=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=f2+PKlJAkUkR71bDgVJmZ5/V+Kmusdl+VKPhjP/W6n8vcFvtz2UzLCYd/n2fDIuf4F9c2Es8qvoNahC5RarqfxbUHOXCuE1rCjFCmkltPsaDZoGWNFlv8oR2i+HxHr/ctqhwZZXsLpg9KMW/S/2L0Xzi6AYFacQkbA28HAiSdG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=hxSQVSE4; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 722C32C04A9;
	Thu, 27 Jun 2024 16:33:22 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1719462802;
	bh=MxFICam9h/pm5tSiPkeoyztfvHM9KRsaNx4A9czN95o=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hxSQVSE4pciS/T30Usc0DOvNumJMtHRS+2Z/R1BBl1l5ghxgmHN4FFQNZU8s9tQVG
	 TW6f56MCNTHD0c8d2Ac0V0dnJTy0sqOZ1VDF0ypqYF0nTkP3UygM8D2h9cw9PVXmyP
	 AtKhRmitRzcsf6xaklDPjWtR4qx7WKdrtwoImF4vOtAYPdrNRs96nLsYTC5raBQs/t
	 GHYGOqmT/TwOiCBG9DtzgHTEhci/ttJwn9EI/+GMYNIRhSJg/nCH2zSJGDBeCJwUAv
	 ZA3gvwwhbNV0h9c3FLMETMDdli/sHFYd6B2s5BY5weBGtwX81OjzdwywWcnbv1E36I
	 kuyxy6fwZEL2A==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B667ceb910004>; Thu, 27 Jun 2024 16:33:22 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id EC3DF13ED5B;
	Thu, 27 Jun 2024 16:33:21 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id E954F28078C; Thu, 27 Jun 2024 16:33:21 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: tglx@linutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tsbogend@alpha.franken.de,
	daniel.lezcano@linaro.org,
	paulburton@kernel.org,
	peterz@infradead.org,
	mail@birger-koblitz.de,
	bert@biot.com,
	john@phrozen.org,
	sander@svanheule.net
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-mips@vger.kernel.org,
	kabel@kernel.org,
	ericwouds@gmail.com,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH v3 4/9] dt-bindings: mips: realtek: Add rtl930x-soc compatible
Date: Thu, 27 Jun 2024 16:33:12 +1200
Message-ID: <20240627043317.3751996-5-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240627043317.3751996-1-chris.packham@alliedtelesis.co.nz>
References: <20240627043317.3751996-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=CvQccW4D c=1 sm=1 tr=0 ts=667ceb92 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=T1WGqf2p2xoA:10 a=NHmAL4TRMSeL2PaLwp8A:9 a=3ZKOabzyN94A:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

Add the rtl9302 SoC and the Cameo RTL9302C_2xRTL8224_2XGE reference
board to the list of Realtek compatible strings.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---

Notes:
    Changes in v3:
    - Use full board name
    - I've decided to stick with rtl9302-soc to disambiguate it from what=
 I
      eventually plan to add as rtl9302-switch which is in the same packa=
ge
      but are separate dies.
    Changes in v2:
    - Use specific compatible for rtl9302-soc
    - Fix to allow correct board, soc compatible

 Documentation/devicetree/bindings/mips/realtek-rtl.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mips/realtek-rtl.yaml b/Do=
cumentation/devicetree/bindings/mips/realtek-rtl.yaml
index f8ac309d2994..d337655bfbf8 100644
--- a/Documentation/devicetree/bindings/mips/realtek-rtl.yaml
+++ b/Documentation/devicetree/bindings/mips/realtek-rtl.yaml
@@ -20,5 +20,9 @@ properties:
           - enum:
               - cisco,sg220-26
           - const: realtek,rtl8382-soc
+      - items:
+          - enum:
+              - cameo,rtl9302c-2x-rtl8224-2xge
+          - const: realtek,rtl9302-soc
=20
 additionalProperties: true
--=20
2.45.2


