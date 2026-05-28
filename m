Return-Path: <devicetree+bounces-303829-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2PO1I0w7GGo1hggAu9opvQ
	(envelope-from <devicetree+bounces-303829-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 14:55:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F1E5F2538
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 14:55:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2237E305AF24
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 12:54:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 963C93F0A95;
	Thu, 28 May 2026 12:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="KBmKtHrP"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334203F1AC5;
	Thu, 28 May 2026 12:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779972861; cv=none; b=D8tRFUIpMdMLuQSECpZl80CZLJRIBVphKmnUs4hGEJWPF4OXnrbJBK/8ELml5wjtt4omcBmHR+SktKQGHKi5TYG93DLh/8IY/tIGS6fSomOrRW4C3LmdU9RiL3M56mZaoBvs3YUKXbR/khOOOtOIXa/dyFqM+86lxp9BujbYOTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779972861; c=relaxed/simple;
	bh=SNa1gcsGI4/garWl0WBM8uVhsAHKPf8Z12h6Qt3Twro=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=b4vTJe2qFDFavuojpvrp5L20Y+Nn/hFbbhUWCjNG5G+Y6Js1mZaFMkZW3e2sLyL+h7hm2cj2rcz0YFfxUzDN4Olb24dyYnd2WrsBGz76MOQ++DZeaBEuD6BGMUC5iwTzELoJqLTa7VfHNbkc/CGVCpAy1/ReBFSUuTXBIZtg0CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=KBmKtHrP; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0324419A2;
	Thu, 28 May 2026 14:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1779972836;
	bh=SNa1gcsGI4/garWl0WBM8uVhsAHKPf8Z12h6Qt3Twro=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=KBmKtHrPk5QelRbTn629gxRE1nuSEAVSCPADzPPvl5IlLI+7arwTzVLwFmrAiRuaW
	 UX1PNUzXkDWbS+OEGTaFV8+/bfOW0NH7zZsyRrep9TMYBbxeVBhk+siPaVSVYM2PZT
	 1bzPOVET57lF+Bg7xvoKzaw5jY/PehU/zjY0tuhc=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Thu, 28 May 2026 15:53:46 +0300
Subject: [PATCH 5/6] dt-bindings: soc: ti: ti,j721e-system-controller: Add
 more compatibles
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260528-ti-main-conf-v1-5-a54ac5c8d081@ideasonboard.com>
References: <20260528-ti-main-conf-v1-0-a54ac5c8d081@ideasonboard.com>
In-Reply-To: <20260528-ti-main-conf-v1-0-a54ac5c8d081@ideasonboard.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abraham I <kishon@kernel.org>, 
 Roger Quadros <rogerq@kernel.org>, Devarsh Thakkar <devarsht@ti.com>, 
 Swamil Jain <s-jain1@ti.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1254;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=SNa1gcsGI4/garWl0WBM8uVhsAHKPf8Z12h6Qt3Twro=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBqGDryJQMr7/6KpHYnLiy2mQMWP1xfHbBG6GICR
 DVFsiCeGj+JAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCahg68gAKCRD6PaqMvJYe
 9ULUD/4uue9IQGqeBFP/t4J/kUs5dCi7fahRaM+njJYOnWPqmAtkvn+XC12a8CBWPAY6dQgu+Hj
 3O5PC9YZ06Fssa95R8NJjRpzp6WAOj1rlC5SXzjviUdGMg+cSBiK3RiMVo9PQAXSyDD5FsU2FY9
 X/wZ8VPn2V6CzoiOEQWz1VLSWp3p4y03R/2W+U/tTlertR9bo3Fv8HZPKQzm+HTnRAW6xaOB2CE
 whG7BHIZ5iaPzEXEt+R9DDgbab2vKf/312pS79IBZ9hp9cWT9lgTTbCoe0mAXrVPVB1OdbDY6o9
 yoqNmmEhJ+D7+/OLgIlKiwORlj0QSBAGbDa2u9laxuPQ30JPdqz/VZ55QPyN/v9VAKz7VQSUV7n
 nQiNl6+OBGVrPXNHUBHOZ+zTRgZoENG0NNlxzjBwbTJWmKZ0HEk6HGZF3byQsfrzq2p0I6kM4XZ
 JHp2cwRZiL+obPONe+0wx2dKUbyz8p8+VLwuG26kmb4Gs5S/ADya7Qfqx6VzlXqovYuXvRDCSS6
 Crp5HIQz5y5uvw1kXFDPR3+dWmsoNaKhHh0IQsC/KbFIlCsqZZcbuhtUYYoWzn+b2FI+PfDl37/
 uTjMSD1pxLIIDHAscn44nQNmS+drlJhXazKR8cm808UnGOkZsD3Kn7uDtUCBnRcmkN7wsOUbR17
 igesmJxen5APNYw==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ideasonboard.com,none];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303829-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tomi.valkeinen@ideasonboard.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideasonboard.com:email,ideasonboard.com:mid,ideasonboard.com:dkim,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 10F1E5F2538
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the following to the list of accepted compatibles so that we can use
the same binding on these SoCs too:

ti,am62-system-controller
ti,am62a-system-controller
ti,am62p-system-controller
ti,j784s4-system-controller

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 .../devicetree/bindings/soc/ti/ti,j721e-system-controller.yaml        | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-controller.yaml b/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-controller.yaml
index 56712ebdd01b..11365cb9fb0a 100644
--- a/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-controller.yaml
+++ b/Documentation/devicetree/bindings/soc/ti/ti,j721e-system-controller.yaml
@@ -26,10 +26,14 @@ properties:
   compatible:
     items:
       - enum:
+          - ti,am62-system-controller
+          - ti,am62a-system-controller
+          - ti,am62p-system-controller
           - ti,am654-system-controller
           - ti,j7200-system-controller
           - ti,j721e-system-controller
           - ti,j721s2-system-controller
+          - ti,j784s4-system-controller
       - const: syscon
       - const: simple-mfd
 

-- 
2.43.0


