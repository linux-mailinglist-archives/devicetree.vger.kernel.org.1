Return-Path: <devicetree+bounces-285435-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBZgBNBC1WmE3wcAu9opvQ
	(envelope-from <devicetree+bounces-285435-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 19:45:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF32D3B2863
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 19:45:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A074630086AC
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 17:45:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5261E3CFF69;
	Tue,  7 Apr 2026 17:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=philpem.me.uk header.i=@philpem.me.uk header.b="JSI9nJSR"
X-Original-To: devicetree@vger.kernel.org
Received: from nick.sneptech.io (nick.sneptech.io [178.62.38.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E90543A63E6;
	Tue,  7 Apr 2026 17:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.62.38.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775583938; cv=none; b=WB2igInq3zquR1ZuvF8Zow7i9Yny/Pzqk8bpTcEgcVCgi8QFGnBiszEOuz0b6l0dSZKo3XQ9w70O2Q5BpvHqviIlU5rIdNIywvt0i1eJHOUtWFAV28MOoyQbbsAM/on+9TAUQNGK6CqHaLqmNVxX+x/b5q9r4UkKNwjdfV1Yq6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775583938; c=relaxed/simple;
	bh=XhZvRrC0vJpqu9nhOSrkodnI3hPgC4qNzHtbVe7WvQE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Zv6lAVdsVGw39tFll4Bcaq7/lDdQ+G+eyiHW3tIeu6hPf2Rt9LioTDJNb0cIuR0p2VDuaDY+zQ9W/xLGw0FjqnZAtGQ6FuujP7hkGv6qJMh8Yia1MUfEZYev9HJNEFYZZqaFnpYP/EcP7JfcdCYdZTphnC7z5XgIwSSZ2Ncno7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=philpem.me.uk; spf=pass smtp.mailfrom=philpem.me.uk; dkim=pass (1024-bit key) header.d=philpem.me.uk header.i=@philpem.me.uk header.b=JSI9nJSR; arc=none smtp.client-ip=178.62.38.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=philpem.me.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=philpem.me.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=philpem.me.uk;
	s=mail; t=1775582853;
	bh=XhZvRrC0vJpqu9nhOSrkodnI3hPgC4qNzHtbVe7WvQE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JSI9nJSRpnqk7/Od3VKoWFAyQkYZbaxGEULFfg61hlBA0qYBO6UxHWddd4BmU1l3k
	 PjPd0cPRpBZpyBgpeZUZeIO0e1/RlhJPpjuTeo2+L6iZixZhs+5hgvAHci0SJP/b2v
	 6y+kAkS8cemg56Hn5cJvNanbEUK7ktO95ZzOzeT4=
Received: from wolf.philpem.me.uk (81-187-163-148.ip4.reverse-dns.uk [81.187.163.148])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: mailrelay_wolf@philpem.me.uk)
	by nick.sneptech.io (Postfix) with ESMTPSA id A071BBD6ED;
	Tue,  7 Apr 2026 17:27:33 +0000 (UTC)
Received: from cheetah.homenet.philpem.me.uk (cheetah.homenet.philpem.me.uk [10.0.0.32])
	by wolf.philpem.me.uk (Postfix) with ESMTPSA id 4AB2C5FC3E;
	Tue,  7 Apr 2026 18:27:33 +0100 (BST)
From: Phil Pemberton <philpem@philpem.me.uk>
To: Moritz Fischer <mdf@kernel.org>,
	Xu Yilun <yilun.xu@intel.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Tom Rix <trix@redhat.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	linux-fpga@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Phil Pemberton <philpem@philpem.me.uk>
Subject: [PATCH 1/2] dt-bindings: fpga: add binding for Technologic Systems TS-73xx FPGA
Date: Tue,  7 Apr 2026 18:27:29 +0100
Message-ID: <20260407172730.1779804-2-philpem@philpem.me.uk>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260407172730.1779804-1-philpem@philpem.me.uk>
References: <20260407172730.1779804-1-philpem@philpem.me.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[philpem.me.uk,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[philpem.me.uk:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,gmail.com,vger.kernel.org,philpem.me.uk];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285435-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[philpem@philpem.me.uk,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[philpem.me.uk:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,philpem.me.uk:dkim,philpem.me.uk:email,philpem.me.uk:mid,13c00000:email]
X-Rspamd-Queue-Id: EF32D3B2863
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add device tree binding documentation for the Altera Cyclone II FPGA
found on Technologic Systems TS-7300 series boards, programmed via a
CPLD memory-mapped interface.

Signed-off-by: Phil Pemberton <philpem@philpem.me.uk>
---
 .../fpga/technologic,ts73xx-fpga.yaml         | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/fpga/technologic,ts73xx-fpga.yaml

diff --git a/Documentation/devicetree/bindings/fpga/technologic,ts73xx-fpga.yaml b/Documentation/devicetree/bindings/fpga/technologic,ts73xx-fpga.yaml
new file mode 100644
index 000000000000..1f7a651e8f10
--- /dev/null
+++ b/Documentation/devicetree/bindings/fpga/technologic,ts73xx-fpga.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/fpga/technologic,ts73xx-fpga.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Technologic Systems TS-73xx FPGA Manager
+
+maintainers:
+  - Florian Fainelli <f.fainelli@gmail.com>
+
+description:
+  FPGA manager for the Altera Cyclone II FPGA on Technologic Systems
+  TS-7300 series boards. The FPGA is programmed via a CPLD interface
+  at a memory-mapped register pair.
+
+properties:
+  compatible:
+    const: technologic,ts73xx-fpga
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    bus {
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges;
+
+        fpga-mgr@13c00000 {
+            compatible = "technologic,ts73xx-fpga";
+            reg = <0x13c00000 0x2>;
+        };
+    };
+...
-- 
2.43.0


