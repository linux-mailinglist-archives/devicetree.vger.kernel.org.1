Return-Path: <devicetree+bounces-246200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE30CB9D50
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 21:56:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 97D853079A28
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 20:56:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2A8D31195D;
	Fri, 12 Dec 2025 20:56:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b="IDU/Q0E9"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-226.siemens.flowmailer.net (mta-65-226.siemens.flowmailer.net [185.136.65.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC4B82874FB
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 20:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765572978; cv=none; b=XmG7yKdTzKp9cYg99G/8T/M4F3idD5iS9o1VWXMmUe1L4UrUeQmISUYy9PJjXgB+46s4pojxLLTmiyrkbxvasKggOeQyC/dP5HyKPixoP96ekopD/RADZhCecBHHbNUHmjkwNQOZUDUQdTfuhGlB1O27oevx4NJP7qds+pQKhrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765572978; c=relaxed/simple;
	bh=H8K26/3M9ZOwVkvbX01usgyg8WoOPuofe3ffL6kkLUw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=A9xqgiuW8riQzqU9fj+2eUfWYwOjgksXVmTg9WgyOd+k9EQe3tUOhz1hZ3n5gVMiUG7uA3R30Sd3L9kMqIkgLjPubArM60EdMRBWC72h4vYeM3ObA4GcnofayTgiNPPtvNhMGUvt6TpUswWUbmYkyLBBiKQcUMIcEL6Qt6+N7yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b=IDU/Q0E9; arc=none smtp.client-ip=185.136.65.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-226.siemens.flowmailer.net with ESMTPSA id 2025121220460424ed585e3a000207f0
        for <devicetree@vger.kernel.org>;
        Fri, 12 Dec 2025 21:46:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=alexander.sverdlin@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=V8z4AU6BTthS2cu8yRS3g3bsCaBUt556bM/8/FA+Esc=;
 b=IDU/Q0E9bRSOFsVWbJcjeo5OmFcEklwQTGuuWapCCBJsycjOw+t9R5SVSLPhiS9+xi3h46
 tFqX64bOg+DerKDtzaaznh6Flpi7z8ZRrtLE7cBYGDFXdDXXEiHVu0hIcyXJEfWNdNNLM166
 BPNqZmgjeDlBgUMX62LaD2iPX9sUI/ODxh+yOLcSHZdNWk7QxNunkgNTh+wlc1pxM71R6e/A
 GaWtnVnMfJagh9iEgCtQMCdVWjGJNUGj4Uo4NEsV9cpZdH8MD481tWBa8EIQ6alJtEy4KPtp
 ODZ1Mg1vCZTGawfPfUveuedRGZMWQ+bdkiaH2NN0EOGI6y6imPMtJYKQ==;
From: "A. Sverdlin" <alexander.sverdlin@siemens.com>
To: netdev@vger.kernel.org
Cc: Alexander Sverdlin <alexander.sverdlin@siemens.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Golle <daniel@makrotopia.org>
Subject: [PATCH net-next 1/2] dt-bindings: net: dsa: lantiq,gswip: add MaxLinear R(G)MII slew rate
Date: Fri, 12 Dec 2025 21:45:52 +0100
Message-ID: <20251212204557.2082890-2-alexander.sverdlin@siemens.com>
In-Reply-To: <20251212204557.2082890-1-alexander.sverdlin@siemens.com>
References: <20251212204557.2082890-1-alexander.sverdlin@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-456497:519-21489:flowmailer

From: Alexander Sverdlin <alexander.sverdlin@siemens.com>

Add new maxlinear,mii-slew-rate-slow boolean property. This property is
only applicable for ports in R(G)MII mode and allows for slew rate
reduction in comparison to "normal" default configuration with the purpose
to reduce radiated emissions.

Signed-off-by: Alexander Sverdlin <alexander.sverdlin@siemens.com>
---
 Documentation/devicetree/bindings/net/dsa/lantiq,gswip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/dsa/lantiq,gswip.yaml b/Documentation/devicetree/bindings/net/dsa/lantiq,gswip.yaml
index 205b683849a53..6cd5c6152c9e9 100644
--- a/Documentation/devicetree/bindings/net/dsa/lantiq,gswip.yaml
+++ b/Documentation/devicetree/bindings/net/dsa/lantiq,gswip.yaml
@@ -106,6 +106,11 @@ patternProperties:
         unevaluatedProperties: false
 
         properties:
+          maxlinear,mii-slew-rate-slow:
+            type: boolean
+            description:
+              Configure R(G)MII TXD/TXC pads' slew rate to "slow" instead
+              of "normal" to reduce radiated emissions.
           maxlinear,rmii-refclk-out:
             type: boolean
             description:
-- 
2.52.0


