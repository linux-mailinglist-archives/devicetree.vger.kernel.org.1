Return-Path: <devicetree+bounces-270298-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yObILeZ8pmnDQQAAu9opvQ
	(envelope-from <devicetree+bounces-270298-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 07:17:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D23E1E9849
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 07:17:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A870C30F9B4C
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 06:14:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FE903845AD;
	Tue,  3 Mar 2026 06:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="YnaJKba/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1D7382398
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 06:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772518439; cv=none; b=tpCe312Y0NFHM8Osj2PvZNCMZpf7hZZtESAq6LrHxf+PfQIPaPQAJA17e7+Fkh0Ln2hCrQ+oFqf8IIvPsX8lv6al6mKWW+CBCsqLU5h5U3nGrmMLRNxlPoTczSz4uDcTc4dPuYyoNokGk9PXwJY42zDJNQVuTha0upEl1wgOh08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772518439; c=relaxed/simple;
	bh=HKsF8s2CN39ptYXnUpAjllMxDvOrGH7BmQr/pDNdroM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T7vEmIycHz65brKNB1Gru73tLOOA5Vpf+R1YG3oXgkKsc7QAAT+Qp4nwPdRVJ3MN/uqtJxc9gjoeMZnB3D+Vmtd7Qme79y0Pa0JKmXJnkE/1mD//sPboXOgWC37MNm+p46zLZj0W3ssHT7EOE6iHkOwNGfM4S0Hj0s7Fb/3x0VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=YnaJKba/; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2addb31945aso39081135ad.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 22:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1772518434; x=1773123234; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1zbYunSd9SIDIr6FUrKkB2zIIm+2n+JbdlctTH55ffY=;
        b=YnaJKba/CUPhw6WwK6kd5nrN5VX9i36RPXyzclk5PLwufyN7lcKbfUO4l8c/CSHPcT
         nMY06euorAc+J+0Jv6l2JaF3u+TrHniCG11W5hN3kKgRQ6iSsSyz1v/zUy3VH2mu4toi
         pKNA9nsVj+zL8Nw3CEqskl0bMs8cC8mQGB1Tc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772518434; x=1773123234;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1zbYunSd9SIDIr6FUrKkB2zIIm+2n+JbdlctTH55ffY=;
        b=QU39JHXY0yp4A9h18c3mDe+8jfU8b4Rpw7JgqLboHa53Sbt4R0J7iFQtc4qW8Ow5BZ
         NFQpAJlWFmpkJMAspvz2GRrA5y4ORDkiaJ8nP712TSdtJG1fZVXld8IoyOiV258ykxA3
         FXuX1CouSX8FGKXeGMdDMiG15aUGcJnPwmUUCc+dYnzy/uWnRd34Qg5HDF0RBtpnqaIY
         Sr+CDXdvDmjQnt61l0P4b0C6YqU/nLV/uwvKrKCAkvy9cD1DN1i1aoNWkBMe2ueh057t
         XmP2YUlBZ8fS/EmAmNcegSh1sqYG/PV5AHjzhUkUHW0+F0o2sB/qOXOIXuLoCy0r1kTe
         puIw==
X-Forwarded-Encrypted: i=1; AJvYcCX4VCkxkhL3lBJgwKZUUhwJirnBGCJjs1IQD6H8RPORMeorMH7VifU50kGUvAweIelBbWWmBbYl/HRn@vger.kernel.org
X-Gm-Message-State: AOJu0YwuX+yb7e3v13m6z1n/rAg7tnOVbE6s6Jmv5w+c8p5sBX9JxU37
	Sd8UNZc8zQNmFaJXIJq6S6C2vM2pAMcf81WNJNqdGIBep2OinDPH0KJlD2md0SVnERxWu1gQNFH
	3mBY=
X-Gm-Gg: ATEYQzwCVqWc9gUB/sk0S45wL6J5GMOLSaS1Zf78DC/7Y6cpK5fALlwO76O1zv2q/oi
	6kObWziW1jKQ0r6AnSNemZ7bh4URP6NYDaQec66+FQRpcxr/J5VhmptAB+yy6v2WyTaho4/GvKg
	+AVfE16WX4gfMRvttpRmk+oLF8e4miCJg/L3gBKUCq44yeWYk6YyaeMop/dj7CKck7mQ+FTKDmO
	793R8P+f/EkMLxJTIJCdItMF1QAT+05elR1YQUsmXd0STjDcXl4VodC6NbWXF4Tk1QH2fZc6mbx
	BICx9JHNnLwKJD4tslSOirfrLKSt6wQG/P+Ogz/dWK4amY7xH7Eq3ejnwiuJHuflBUN1Np0a26M
	3Hemc3tNImYn5RhewNOL7iaerujkr19dxVtXgU2QL7S1oYG0Ugi+4uRqg8XFlS+wD+hqX762kdr
	KIzX3jCkpeMtnVaHQPeoAN7AkP3zsAXA8VAu9E87HsFzlz5Qrj4ZwyqtZJYP4GG4hScpTRxVHlG
	dPUhOZA/f8GPUJFPEVdbsLXMnHWHYQysg==
X-Received: by 2002:a17:903:1786:b0:2aa:e817:1bcf with SMTP id d9443c01a7336-2ae2e4d7a3bmr137864645ad.51.1772518433772;
        Mon, 02 Mar 2026 22:13:53 -0800 (PST)
Received: from jingyliang-input-linux.c.googlers.com (111.169.168.34.bc.googleusercontent.com. [34.168.169.111])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb6fe4f3sm152639735ad.91.2026.03.02.22.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 22:13:53 -0800 (PST)
From: Jingyuan Liang <jingyliang@chromium.org>
Date: Tue, 03 Mar 2026 06:13:01 +0000
Subject: [PATCH 09/12] dt-bindings: input: Document hid-over-spi DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-send-upstream-v1-9-1515ba218f3d@chromium.org>
References: <20260303-send-upstream-v1-0-1515ba218f3d@chromium.org>
In-Reply-To: <20260303-send-upstream-v1-0-1515ba218f3d@chromium.org>
To: Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires <bentiss@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Mark Brown <broonie@kernel.org>, 
 Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-input@vger.kernel.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, 
 linux-trace-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 hbarnor@chromium.org, Jingyuan Liang <jingyliang@chromium.org>, 
 Dmitry Antipov <dmanti@microsoft.com>, 
 Jarrett Schultz <jaschultz@microsoft.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772518424; l=5693;
 i=jingyliang@chromium.org; s=20260213; h=from:subject:message-id;
 bh=HKsF8s2CN39ptYXnUpAjllMxDvOrGH7BmQr/pDNdroM=;
 b=3yauzbUstrOGl5qDbA/zaXfBs8F8XvC7hZJ8BVjAu9S340VlZ8h1r6uNBWzD+nBmeke1laoEl
 KMLb+MDQtJyB1u7HQFp7CyBh7fKvz7M3Cislqv92CB/53/zJ5KRua02
X-Developer-Key: i=jingyliang@chromium.org; a=ed25519;
 pk=VTYSdqslTtYOjWWoIGgYoWupGWqNSidrggReKMgfPo4=
X-Rspamd-Queue-Id: 2D23E1E9849
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270298-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,lwn.net,goodmis.org,efficios.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[chromium.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyliang@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,chromium.org:dkim,chromium.org:email,chromium.org:mid,suse.cz:email,devicetree.org:url]
X-Rspamd-Action: no action

Documentation describes the required and optional properties for
implementing Device Tree for a Microsoft G6 Touch Digitizer that
supports HID over SPI Protocol 1.0 specification.

The properties are common to HID over SPI.

Signed-off-by: Dmitry Antipov <dmanti@microsoft.com>
Signed-off-by: Jarrett Schultz <jaschultz@microsoft.com>
Signed-off-by: Jingyuan Liang <jingyliang@chromium.org>
---
 .../devicetree/bindings/input/hid-over-spi.yaml    | 153 +++++++++++++++++++++
 1 file changed, 153 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/hid-over-spi.yaml b/Documentation/devicetree/bindings/input/hid-over-spi.yaml
new file mode 100644
index 000000000000..b623629ed9d3
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/hid-over-spi.yaml
@@ -0,0 +1,153 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/hid-over-spi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: HID over SPI Devices
+
+maintainers:
+  - Benjamin Tissoires <benjamin.tissoires@redhat.com>
+  - Jiri Kosina <jkosina@suse.cz>
+
+description: |+
+  HID over SPI provides support for various Human Interface Devices over the
+  SPI bus. These devices can be for example touchpads, keyboards, touch screens
+  or sensors.
+
+  The specification has been written by Microsoft and is currently available here:
+  https://www.microsoft.com/en-us/download/details.aspx?id=103325
+
+  If this binding is used, the kernel module spi-hid will handle the communication
+  with the device and the generic hid core layer will handle the protocol.
+
+allOf:
+  - $ref: /schemas/input/touchscreen/touchscreen.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - microsoft,g6-touch-digitizer
+          - const: hid-over-spi
+      - description: Just "hid-over-spi" alone is allowed, but not recommended.
+        const: hid-over-spi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+    description:
+      GPIO specifier for the digitizer's reset pin (active low). The line must
+      be flagged with GPIO_ACTIVE_LOW.
+
+  vdd-supply:
+    description:
+      Regulator for the VDD supply voltage.
+
+  input-report-header-address:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 0xffffff
+    description:
+      A value to be included in the Read Approval packet, listing an address of
+      the input report header to be put on the SPI bus. This address has 24
+      bits.
+
+  input-report-body-address:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 0xffffff
+    description:
+     A value to be included in the Read Approval packet, listing an address of
+      the input report body to be put on the SPI bus. This address has 24 bits.
+
+  output-report-address:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 0xffffff
+    description:
+      A value to be included in the Output Report sent by the host, listing an
+      address where the output report on the SPI bus is to be written to. This
+      address has 24 bits.
+
+  post-power-on-delay-ms:
+    description:
+      Optional time in ms required by the device after enabling its regulators
+      or powering it on, before it is ready for communication.
+
+  minimal-reset-delay-ms:
+    description:
+      Optional minimum amount of time in ms that device needs to be in reset
+      state for the reset to take effect.
+
+  read-opcode:
+  $ref: /schemas/types.yaml#/definitions/uint8
+    description:
+      Value to be used in Read Approval packets. 1 byte.
+
+  write-opcode:
+  $ref: /schemas/types.yaml#/definitions/uint8
+    description:
+      Value to be used in Write Approval packets. 1 byte.
+
+  hid-over-spi-flags:
+  $ref: /schemas/types.yaml#/definitions/uint16
+    description:
+      16 bits.
+      Bits 0-12 - Reserved (must be 0)
+      Bit 13 - SPI Write Mode. Possible values -
+        * 0b0- Writes are carried out in Single-SPI mode
+        * 0b1- Writes are carried out in the Multi-SPI mode specified by bits
+               14-15
+      Bits 14-15 - Multi-SPI Mode. Possible values -
+        * 0b00- Single SPI
+        * 0b01- Dual SPI
+        * 0b10- Quad SPI
+
+required:
+  - compatible
+  - interrupts
+  - reset-gpios
+  - vdd-supply
+  - input-report-header-address
+  - input-report-body-address
+  - output-report-address
+  - read-opcode
+  - write-opcode
+  - hid-over-spi-flags
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+
+    spi {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      hid@0 {
+        compatible = "hid-over-spi";
+        reg = <0x0>;
+        interrupts-extended = <&gpio 42 IRQ_TYPE_EDGE_FALLING>;
+        reset-gpios = <&gpio 27 GPIO_ACTIVE_LOW>;
+        vdd-supply = <&pm8350c_l3>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&ts_d6_reset_assert &ts_d6_int_bias>;
+        input-report-header-address = <0x1000>;
+        input-report-body-address = <0x1004>;
+        output-report-address = <0x2000>;
+        read-opcode = <0x0b>;
+        write-opcode = <0x02>;
+        hid-over-spi-flags = <0x0000>;
+        post-power-on-delay-ms = <5>;
+        minimal-reset-delay-ms = <5>;
+      };
+    };
\ No newline at end of file

-- 
2.53.0.473.g4a7958ca14-goog


