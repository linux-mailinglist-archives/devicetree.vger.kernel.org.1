Return-Path: <devicetree+bounces-304245-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCNlKQhzGWoQwwgAu9opvQ
	(envelope-from <devicetree+bounces-304245-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 13:05:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A551A6014E3
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 13:05:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 28115300EC58
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 11:05:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66D653CF02C;
	Fri, 29 May 2026 11:05:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZjL5dm9C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC2E33C8184
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 11:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780052735; cv=none; b=iDLQ2dbyLQvcmJzPuVCz5XZR+H3CNdkWOg4O0O4+yWhwjSDIoNsGe1DOUjXQrP4QfV/SRLPTZJEFRawdbtk5fXxqkhVMVu00QfrMGovOeRj0EQZaB/CMKAluqZNwGy/hp1P57CmFJ737ftbW3Mkljl84l/ui3LkaTH8o/MsGnCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780052735; c=relaxed/simple;
	bh=vcyi5hnRuJ28WD6funZf5n/7z2tJgN2WoB93U8zcUBY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KPizwVpiEGoOM+nh4yoxcMf/phvBQpofhwX4xGXgkDEvigvGu/KvWLkjKofRD2kVr38WxY4qmCSMa70opIrsOBOrVXnJ3kX587YtMDm9jlBBrHscBNVmtLl/cXlOdgaBZRo7o81CbfL9XgmEb3pkX0n49t7Cx/zqaCi7NJQKzBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZjL5dm9C; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-44e1ebb3122so8346744f8f.2
        for <devicetree@vger.kernel.org>; Fri, 29 May 2026 04:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780052732; x=1780657532; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/ufMv3n9NJ42P8gEnrfOAT7W901Jg3eKnLZ21BwY03A=;
        b=ZjL5dm9C7uF2QCEVAgGfGPoH7lnZXd+K3ND5MP0BBEs0Md8qAMCNpq8wjx4agGBaKd
         h0/Gd/NRvBD1yrsxm823Eyl+v62JgGpO/QENH/n4dLcJu8+AW1ikrTuM5Gx2ZeX59v82
         AQuN5OEziHAlt3DB2CD4epyZO78Dq1K0JzU97b6rXhwW9bMKk4AerzL0C1iNDpLm21z1
         ydbXkELX7wzQ73oewVaPcWcFHDTyCt+rFte1LI+fG5oMLNXEpo3WMI4ftsPkd4cg3HNk
         GI2aJWuQXOLNqbflCJ9jIdT9Kv08GUiMiXZxqZnBqzkCZNDGQdwbl0CBM/qrRDE5Sr4J
         9AHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780052732; x=1780657532;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/ufMv3n9NJ42P8gEnrfOAT7W901Jg3eKnLZ21BwY03A=;
        b=qDmm7aSCQsrVf2UOhwoLr40wM5dACf/QjNc7dfQA3HOGsWqhzLNE5DDoi4Od+jA92n
         V7hagpftHAt1Ce+DA0/lpnKVUvR1oZt37i4sE9LR7dF9ukUHhU0Paw19Hs2rshmfSQr0
         OWJyioNGJgXLDOBXMM5eBh39d74wyaJVAVEaeK1nY2VflUZ7Y8UmcmOFAWtdXjgbh0Tj
         q0kWeO54gmork5RQ5KGjeo45IpV2Z7zHbrCRatkGMalTBdVyC+3PMpMcuI4sPuoYTGYf
         vl9T3oIJroUz8IPwXZn54SZhbG2oNjSSarp3mJpkgqsGdEKuNppHt0UdjO+PPdSiqDB6
         FMuQ==
X-Forwarded-Encrypted: i=1; AFNElJ//FpiaR6hR9RaFpbMArHwcwhz5KSkuAOk6t/gOm3DK7h04QVCdNf/TWqIWFxCpfRYzSOYeXzjrrMa9@vger.kernel.org
X-Gm-Message-State: AOJu0YxuUOPmFSGrilHZkNts/yQ9Hkj3qYRCxqv3EnJ8TPc2qPkPoWbZ
	tR17O53WMzwXKvpuUaTnJrWPWS3IXJDsTeMRTC/+Bd/H/41OocNO5VMB
X-Gm-Gg: Acq92OFH7BeCydBWQu7sNc+aYnzvuwTqw+5kk/JZm5uQrecAEgLwxNRdbbKoH5dXRCe
	KeJzQCbL6KWnsQSpJYVZZMk69YAmChkk6jNkPp8pVL16z0T2r3KKqClOOcv2dCEWTO9Djau9ZEs
	8Zmb0kkpCqUnj2vm6/FBljGp/9aL1Y5baLVn2HqXk8cVAg7i5DnDIRAxuM5eNaOgnqJ/Jq45Ivb
	xiqUObQxxEI2Z0TsNF0KpUa7UcfL5ASicWAapUQ0b2+azdeJiIGO+5E83Jl3Ntj+94So2Z4VfUf
	zYZKLnXqny6T3yEBjWONE6M6UOLIIXe2f5MALdf0J8hAjO2JGjMlJ04CvsPa7mAA8WSoiw47IUL
	HC4VoTKVnrc1BCuF1f1it77PoCp1JdiBNpDGcNiC+TpvQncEckaffJiwLh3jgs2VvcOrM5p8s8v
	qGeaWKpevx/G4Te3jVTKjv+2fZjLIRHhtwhw8J
X-Received: by 2002:adf:e00f:0:10b0:449:c1e8:7655 with SMTP id ffacd0b85a97d-45ef14478c4mr3252609f8f.27.1780052732278;
        Fri, 29 May 2026 04:05:32 -0700 (PDT)
Received: from vitor-nb ([2001:8a0:c4c6:f00:7677:753b:2cb5:7f25])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45ef34c3081sm3033663f8f.15.2026.05.29.04.05.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2026 04:05:31 -0700 (PDT)
From: Vitor Soares <ivitro@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Francesco Dolcini <francesco@dolcini.it>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Thierry Reding <thierry.reding@gmail.com>
Cc: Vitor Soares <vitor.soares@toradex.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>
Subject: [PATCH v1 1/2] dt-bindings: display: panel: Add LG LP156WF1
Date: Fri, 29 May 2026 12:05:19 +0100
Message-ID: <20260529110518.624454-5-ivitro@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260529110518.624454-4-ivitro@gmail.com>
References: <20260529110518.624454-4-ivitro@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-304245-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,ideasonboard.com,dolcini.it,bp.renesas.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ivitro@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,toradex.com:email,0.0.0.0:email,devicetree.org:url]
X-Rspamd-Queue-Id: A551A6014E3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Vitor Soares <vitor.soares@toradex.com>

Add device tree binding for the LG LP156WF1 15.6" Full-HD (1920x1080)
dual-channel LVDS panel.

Also add lg,lp156wf1 to the panel-lvds.yaml exclusion list to prevent
false schema matches.

Signed-off-by: Vitor Soares <vitor.soares@toradex.com>
---
 .../bindings/display/panel/lg,lp156wf1.yaml   | 105 ++++++++++++++++++
 .../bindings/display/panel/panel-lvds.yaml    |   1 +
 2 files changed, 106 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/lg,lp156wf1.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/lg,lp156wf1.yaml b/Documentation/devicetree/bindings/display/panel/lg,lp156wf1.yaml
new file mode 100644
index 000000000000..6b91c2ea4827
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/lg,lp156wf1.yaml
@@ -0,0 +1,105 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/lg,lp156wf1.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: LG LP156WF1 15.6" Full-HD dual-LVDS panel
+
+maintainers:
+  - Francesco Dolcini <francesco@dolcini.it>
+
+description: |
+  The LP156WF1 from LG is a 15.6" Full-HD dual-LVDS panel.
+  A dual-LVDS interface is a dual-link connection with even pixels traveling
+  on one link, and with odd pixels traveling on the other link.
+
+allOf:
+  - $ref: /schemas/display/lvds-dual-ports.yaml#
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: lg,lp156wf1
+      - {} # panel-lvds, but not listed here to avoid false select
+
+  width-mm:
+    const: 345
+
+  height-mm:
+    const: 194
+
+  data-mapping:
+    const: jeida-24
+
+  panel-timing: true
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        required:
+          - dual-lvds-odd-pixels
+
+      port@1:
+        required:
+          - dual-lvds-even-pixels
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - width-mm
+  - height-mm
+  - data-mapping
+  - panel-timing
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    panel-lvds {
+      compatible = "lg,lp156wf1", "panel-lvds";
+      width-mm = <345>;
+      height-mm = <194>;
+      data-mapping = "jeida-24";
+
+      panel-timing {
+        clock-frequency = <138500000>;
+        hactive = <1920>;
+        hback-porch = <40>;
+        hfront-porch = <24>;
+        hsync-len = <16>;
+        vactive = <1080>;
+        vback-porch = <23>;
+        vfront-porch = <3>;
+        vsync-len = <5>;
+      };
+
+      ports {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        port@0 {
+          reg = <0>;
+          dual-lvds-odd-pixels;
+          panel_in0: endpoint {
+            remote-endpoint = <&lvds0_out>;
+          };
+        };
+
+        port@1 {
+          reg = <1>;
+          dual-lvds-even-pixels;
+          panel_in1: endpoint {
+            remote-endpoint = <&lvds1_out>;
+          };
+        };
+      };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
index b89f86bc0683..fbe8c162ca59 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
@@ -28,6 +28,7 @@ select:
             - advantech,idk-1110wr
             - advantech,idk-2121wr
             - innolux,ee101ia-01d
+            - lg,lp156wf1
             - mitsubishi,aa104xd12
             - mitsubishi,aa121td01
             - sgd,gktw70sdae4se
-- 
2.54.0


