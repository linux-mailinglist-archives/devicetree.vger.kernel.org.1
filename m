Return-Path: <devicetree+bounces-247001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DC81ACC316A
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 14:11:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C046D315FEAC
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:00:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29AB736BCD8;
	Tue, 16 Dec 2025 12:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b="fkuSg7Ou"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-227.siemens.flowmailer.net (mta-65-227.siemens.flowmailer.net [185.136.65.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C123334D3B6
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:17:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765887438; cv=none; b=XX09C56FWRKDaUd/l+lP4eBpnhF0ci08LefAugxawBpW9tQjE/CQ5W0VYqKtGcRsLEZ/ReaA2KYObS+Hb/KuAEKABaVDsXZ5ylyka1K1LVuhqXki9x/g4fZQc0RXMn1uEM2ZxG6IA7T76vRytNQx9BuCzLk7F/8tZTjdFM77uOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765887438; c=relaxed/simple;
	bh=kclCNooV2IeTtW1J601jrIu2Ap7xvTdl1NfcpY678jw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=THzGFj2NLSpnWR+x0IOldzxAIqXsUbx2dEn2WXMiOYZL8zsZcBldpuQ516td94SGXVEglk45HZAm31sCCV0mSGM87DcJaCkwffyKxwhcyAUaNt+go4DlgrrbtGLm3wlgazHVrrLqk8durIa/x4z9rKygSKuCDgFkYn97ACX0QK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=fail (0-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b=fkuSg7Ou reason="key not found in DNS"; arc=none smtp.client-ip=185.136.65.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-227.siemens.flowmailer.net with ESMTPSA id 20251216121708c960c475c9000207fd
        for <devicetree@vger.kernel.org>;
        Tue, 16 Dec 2025 13:17:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=alexander.sverdlin@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=YawCl9Wk1TLgtNf/koT/2Vf52sv24n9OKnGfZ29QnOQ=;
 b=fkuSg7OusEFr788aBbXDkpN900oAljvj5B67L2iub/MFPMe509Jsi5vsjtA1kzlrXA2D4K
 FLcIfnZHuhr+9iq3DVd87ZfLVAEy679J/65XqIuDdt0niXXN6DRPZ6GcHN49At8ocoXLv+iX
 RGMuWlPvZBLVto0vhwwUKQ3gYR8q35pR0FV6Tm/mp7kr1/iWtjKkdBMpvDjEZVtr3kw5MkYh
 uJz8FQ8eMhUBpmUiHOJNVjAZPy+lg/+fMoaDiuOWp+/b5MVtKw+s0KU1l9I/lboQ6P2RNHcg
 dHhPw7ih2AOhSTCWgeaMFAo02tlUP3sxAiOoh4kmO2b5LqpuEjSnNMsA==;
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
Subject: [PATCH net-next v2 1/2] dt-bindings: net: dsa: lantiq,gswip: add MaxLinear R(G)MII slew rate
Date: Tue, 16 Dec 2025 13:17:00 +0100
Message-ID: <20251216121705.65156-2-alexander.sverdlin@siemens.com>
In-Reply-To: <20251216121705.65156-1-alexander.sverdlin@siemens.com>
References: <20251216121705.65156-1-alexander.sverdlin@siemens.com>
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
Changelog:
v2:
- unchanged

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


