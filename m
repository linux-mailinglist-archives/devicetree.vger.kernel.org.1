Return-Path: <devicetree+bounces-304125-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMS9AkNTGWqYvAgAu9opvQ
	(envelope-from <devicetree+bounces-304125-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 10:50:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F225E5FF7BC
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 10:50:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0C39B305646E
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 08:48:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2D133BBA05;
	Fri, 29 May 2026 08:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="DXxjY7ku"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557B43BB11F;
	Fri, 29 May 2026 08:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780044459; cv=none; b=G8w1HJRRIQp/wNWCKR/bup2dXr9KoAgQpT++NJ1VbCQUCwdLVkfPN5wK1ZZeCaRHKVGDJm9n6uJAe55Vd4+YAgCAEowxNTMGUGYCzkR2RqZTo87qe2zmvnLrpmZAu4SkwDycDHSORMm+zoc8pHN+aU9xYcsWzWgUDJEAkCHHvDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780044459; c=relaxed/simple;
	bh=nPJzcPekfWg8VQk7v3Ppx+7G3lp2WtkHYg/I3DyeH3I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FzuU4CQM/8d4qR+1ky3aQDvWnHMOAeGATKCh9TQim/RHW+rb0E6ehWcVc9+Scclzs76D7jdzd4cZVKnH5Py6F0uKrhVQmrDMHnEEQyjEvGVUiRfR3j1PIDOQGcpNrcAICZmRKHNOn/j0J8jNcSm7SDxp0EaT9S+AFzWAgTs+BKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=DXxjY7ku; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4D1A91ADF;
	Fri, 29 May 2026 10:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1780044419;
	bh=nPJzcPekfWg8VQk7v3Ppx+7G3lp2WtkHYg/I3DyeH3I=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=DXxjY7kuuDatg2Xpfl1DoA3MGxufMYT6DpTT83IuSJDPTriU6T28M22X3ptfGRbZL
	 7Zbd2dYriZSRtmT4BC/K5PMrtL7xELwrae1pQN035au5JTNm/gPfPHkI53V1hi0EYb
	 ez3wrLRpz4B7zDUuWiEs+1/b1er5u522Q+gXwSII=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Fri, 29 May 2026 11:45:34 +0300
Subject: [PATCH v3 04/15] dt-bindings: display: ti,am65x-dss: Add
 ti,dpi-io-ctrl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260529-beagley-ai-display-v3-4-7fefdc5d1adf@ideasonboard.com>
References: <20260529-beagley-ai-display-v3-0-7fefdc5d1adf@ideasonboard.com>
In-Reply-To: <20260529-beagley-ai-display-v3-0-7fefdc5d1adf@ideasonboard.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Aradhya Bhatia <aradhya.bhatia@linux.dev>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Swamil Jain <s-jain1@ti.com>, 
 Devarsh Thakkar <devarsht@ti.com>, 
 Louis Chauvet <louis.chauvet@bootlin.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2200;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=nPJzcPekfWg8VQk7v3Ppx+7G3lp2WtkHYg/I3DyeH3I=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBqGVKMQPas9xGtGiiETzNoyjXweNr7JCVYiumLz
 UaeVh/oYiGJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCahlSjAAKCRD6PaqMvJYe
 9WbJD/9TE7KWjYwzkrGQujHhJmY6a5owc4EOfE7HdTMjU91bRRejmD8SKywvjPbfErxv4PjI9gr
 M3jCp1bG9yH8OpB9y5nkL4gW5sT8gHt5/hnQUHmOe9ZXiN4GTDkZ1eljJBh4+Ti4nklbau4cw6N
 dcxbLTGe0yLIeEDIoM8rJBN3kL2O6o5Y0iS6EP4sP50Q91bKeUH/uMZZhgJqb4QuZC4vhkgJkwR
 Suia93ezp3iyaMtNWUVtaMlaZOJ3F1vMEuW1ZXQLG2ywf2xB89R75uqTe1cEBqqbclUU96BtYSi
 NVMAB84tnyApOw0KXwNPxHnop7ZF1pkC+Tp8eV5mi4cHv+vQsM4TWm+JgCqS0vlFBz0evwZTgF3
 b6eowUTnFE7JYNw6+AQsDjuhyYq4I4XRh0CwQeV8RJwdRCX2bRb0uCATcxEqRp8e+7eSYpZoz4i
 hxT84RNgi6p92qUrKNR5/g44vEZ0u7r0Rg/HMDFC12V2rnRophzTdah7uxadH/Ddhl/CtjWVXVH
 JgJm8c24ra9fO//SKhMNYrZ94I6LQqe9pFAA1QVEJ1+b4kr7PIQ41Nzs5tLDVGV/Y94L0Kwfyte
 pZnJr424NAGThoC9Ud0Qb9M1dZcLSGXYXVOIYZddqm++7C0SKPpkwKaNdvuYexixM7UxgejJm8A
 SDMXDv0dc5YCqOw==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ideasonboard.com,none];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-304125-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linux.dev,ti.com,bootlin.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tomi.valkeinen@ideasonboard.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,ideasonboard.com:email,ideasonboard.com:mid,ideasonboard.com:dkim]
X-Rspamd-Queue-Id: F225E5FF7BC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The DPI output pipeline in K3 SoCs contains the display subsystem (DSS)
which produces the in-SoC parallel video signal, and a DPI block which
adjusts the signal to the external MIPI DPI output.

The DSS IP has registers to configure whether the data and sync signals
are driven on rising or falling clock edge, and on some SoCs these are
automatically conveyed to the DPI block which needs that configuration
to properly output the MIPI DPI signal.

However, on some SoCs the DPI block configuration has to be done
manually, using an extra register outside the DSS, DPI0_CLK_CTRL in
MAIN_CTRL_MMR_CFG0 block, which controls the DPI block's behavior.

Currently the DPI0_CLK_CTRL is never written, so it's always 0, meaning
the data and sync are always driven on a rising clock edge regardless of
the DSS configuration.

Add 'ti,dpi-io-ctrl' property, which contains phandle to the
MAIN_CTRL_MMR_CFG0 block and the offset to the DPI0_CLK_CTRL register,
so that the DSS driver can configure the data and sync signals
correctly.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 .../devicetree/bindings/display/ti/ti,am65x-dss.yaml          | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
index 588d72d4ec0d..902ae2122d86 100644
--- a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
+++ b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
@@ -113,6 +113,17 @@ properties:
       and OLDI_CLK_IO_CTRL registers. This property is needed for OLDI
       interface to work.
 
+  ti,dpi-io-ctrl:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      phandle to a syscon device node containing the DPI0_CLK_CTRL register,
+      with the offset to DPI0_CLK_CTRL as an argument.
+    maxItems: 1
+    items:
+      items:
+        - description: phandle to the syscon node
+        - description: DPI0_CLK_CTRL register offset
+
   max-memory-bandwidth:
     $ref: /schemas/types.yaml#/definitions/uint32
     description:

-- 
2.43.0


