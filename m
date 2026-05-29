Return-Path: <devicetree+bounces-304126-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFCnAEpTGWqYvAgAu9opvQ
	(envelope-from <devicetree+bounces-304126-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 10:50:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 22EA45FF7CA
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 10:50:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A264F3058DB7
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 08:48:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C7003B6BFD;
	Fri, 29 May 2026 08:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="i6bYvpr/"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09323B8BA5;
	Fri, 29 May 2026 08:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780044459; cv=none; b=VX3CrQJJUHpFQHpRb88LLOLTn9u3Aro/VRb41k5p/B4NgFauj6xbwTVaYmweaC44k0SOuG9tCZfo2T06j7i4a9MbhZ49EDHBSz4df9vr7SWvzEIfzRLJbU5SYgC6irpSG4vZvDS5ky9r0i3RIsBpc+mT+JzTVjipZWOBkaGcE4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780044459; c=relaxed/simple;
	bh=uYpBzCI5/EIYS0A0eORGLebFKyluSlYajSBf8Czw3RM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rhZW3Mjn7V5Sw+UpFD7hlmmeWUcQh2zt9m/5K+I/bouv08u4/LVkt3N4nqlEaM84ymaouVST4YED6o6ftIMfRwfb3VjvGivdv4b5Ut5o3ORclOTpyZy+Y9w6GSWLaBzpfPzQ1QEwpSFYo8Vywdh6PHJahs5fW5y2WovSp9Apwa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=i6bYvpr/; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from [127.0.1.1] (91-158-153-178.elisa-laajakaista.fi [91.158.153.178])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 84D7A20F9;
	Fri, 29 May 2026 10:46:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1780044420;
	bh=uYpBzCI5/EIYS0A0eORGLebFKyluSlYajSBf8Czw3RM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=i6bYvpr/Wh5Ll82dXtpjLWBx8b6W8KAMX/VhGN/qqqix/6bfkDFXqUty5auM0dml6
	 9mWdOCaCiBVtu+2I01wl+1/Ose5sio6fTvlG5hzvYp1e2ZQ5SSL6PyUqeHgPebx7fX
	 1N1ib0JYuQ4JgeJmkYKhfECGYck04E0hSrwhuRSA=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Fri, 29 May 2026 11:45:35 +0300
Subject: [PATCH v3 05/15] dt-bindings: display: ti,am65x-dss: Add AM62P DSS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260529-beagley-ai-display-v3-5-7fefdc5d1adf@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3512;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=uYpBzCI5/EIYS0A0eORGLebFKyluSlYajSBf8Czw3RM=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBqGVKMbB14c2XE4t0f3oamTKKmG1ZiaLbx/63K6
 6XxG0PYyuCJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCahlSjAAKCRD6PaqMvJYe
 9cs2D/9b/3lUX5/1QkZrCDXNlrtP/DySHlPixDNAkXipv7uOfcugtM8KbX5QJFkdTZ1aoJdpSzP
 lcXWyYBuwqK4ju0rflXnOEgqgZUVh6OVbP0qLNZVcJ2Fb1ONCxp0zmPD5d+22hUB80mSdvca3lC
 rcvDUJTGjGE77wCvkJ0vw4Y6rO1C7X9d4C2gEU37E8JlujuDe9YyzkW0vKY5GM4lIgk6+hKuTZy
 h3jXCZ8P2ssggJr0cPeo37W1iqkkuZJFJGdT2RjGWtotHTsXgGTxs/WMMgyc6ukBp2wYRUjK7xR
 P38oLzDOyPreyYKi9PqZhKP+A/UsC2yVeCiAV82ebQJnCI9FAII86PA1BxJmo5fXFq6YeUA3ohL
 5sT5D2AMSgy5JgoDX90dNmINHQphONRqFLx7CoSCIZ4wGiFv/WmY4jb+C2jhJHvCHlwNA3P4ay8
 f4PpUOU6IGMiQRCxxFclFOJLaO0SR5uzEkCJbCMKwYGzF8n+3sr6O3UxsH2QgFxMppK3Jf7Sq/Z
 qAit7SjO+vIez781FSqOSOeH8BDP3Hi/I+TfglX4jfPx2i0gwsWnyOWaqqY8cYYHXgqwGrWGXdl
 vgGO8fVo0URNsylI5qsvzBNA9l735d3T3PycHku7TLyqYlDqY5lgSqIYkK5IRBVKKepQk6E91Iy
 J+deiWB1yjnUVgQ==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ideasonboard.com,none];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-304126-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,ideasonboard.com:email,ideasonboard.com:mid,ideasonboard.com:dkim]
X-Rspamd-Queue-Id: 22EA45FF7CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

TI's AM62P, J722S and AM67A SoCs contain same implementation of the
display subsystem (DSS). There are two instances of the DSS (DSS0 and
DSS1), each with two video ports (VP) and two video planes.
Additionally the SoCs contain two OLDI TXes (OLDI0 and OLDI1), a MIPI
DSI TX and a MIPI DPI output path.

DSS0 supports:
- VP0: OLDI0 in single-link mode, or OLDI0 and OLDI1 in dual-link or
  clone mode.
- VP1: DPI

DSS1 supports:
- VP0: OLDI1 in single-link mode, or DPI
- VP1: DPI or DSI

The DSI is only connected to VP1 of DSS1, but OLDI and DPI are shared
between the DSS instances. Thus only a single VP can output to DPI, and
a single VP can use an OLDI block. Note that in single-link
configuration OLDI0 can be used by DSS0, and at the same time OLDI1 can
be used by DSS1.

The DSS IP itself is compatible with older SoCs. While we could use
"ti,am625-dss" compatible string, we add a new one "ti,am62p-dss" to be
on the safe side in case the driver needs to do something special for
the dual-DSS case in the future.

Original patch by Swamil Jain <s-jain1@ti.com>

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 .../bindings/display/ti/ti,am65x-dss.yaml          | 27 ++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
index 902ae2122d86..acb7ac635097 100644
--- a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
+++ b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
@@ -28,11 +28,38 @@ description: |
   On AM62A7, the first VP is tied off in the SoC, and the second VP is routed to
   external MIPI DPI pins.
 
+  AM62P SoC contains two instances of the DSS:
+  On AM62P DSS0, the first VP is connected to two OLDI TX instances (the second
+  TX shared with DSS1), the second VP to external MIPI DPI pins (shared with
+  DSS1).
+  On AM62P DSS1, the first VP is connected either to the second OLDI TX, or
+  external MIPI DPI pins. The second VP is connected to either the external MIPI
+  DPI pins or a Cadence DSI TX.
+
+  An important note about OLDIs on AM62P:
+
+  There are two OLDI hardware blocks. Each OLDI has certain configuration that
+  has to be done before it can be used. The OLDI blocks get this configuration
+  directly from the DSS block, via DSS registers. However, as a single OLDI
+  block can be used either with DSS0 or DSS1, the source for the configuration
+  changes according to a mux. This mux is set according to the OLDI
+  configuration registers in DSS0. Thus the OLDI control paths change at
+  runtime, and it is not obvious how to structure this in the DT bindings.
+
+  The solution used here is that each DSS node contains the OLDI nodes that can
+  be used with that DSS. Thus the DSS0 node has two OLDI child nodes, OLDI0 and
+  OLDI1, and the DSS1 node has one OLDI child node, OLDI1, so three OLDI DT
+  nodes in total. The two OLDI1 nodes thus refer to the same piece of hardware,
+  and they cannot be used at the same time. The selection which OLDI nodes to
+  use are chosen in the board dts files, so assuming the dts files are correct,
+  no resource conflict can happen.
+
 properties:
   compatible:
     enum:
       - ti,am625-dss
       - ti,am62a7-dss
+      - ti,am62p-dss
       - ti,am65x-dss
 
   reg:

-- 
2.43.0


