Return-Path: <devicetree+bounces-326558-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id N3SYMlm3VmoDAgEAu9opvQ
	(envelope-from <devicetree+bounces-326558-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 00:25:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A67C759356
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 00:25:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chromium.org header.s=google header.b=L8L5wLDe;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326558-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-326558-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=chromium.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1CDF0302A21C
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:25:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F754433054;
	Tue, 14 Jul 2026 22:24:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61348432E83
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 22:24:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784067891; cv=none; b=jhPgI7P+lOvC1AVtvWT0FaBG/I2We+y+30plDzeMwDr4YzMGyaIS421qZZ9ReGIQtlvFHK0ch9+2iItM9CBYNgLN8DhPrHFlGhTvTIUIyZyeaSSGVSYRv5O/mybgi7R8RhslzpBepOFtaB1KiwsDA2xePWF9iQL3gjXA9hYTIcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784067891; c=relaxed/simple;
	bh=yfVlUKAddl4kTtUsempt+7UPHqLSqNbbJXlNW55TxBI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aUfCSSMaIBPxioqagW1iG3cmJqJw+Kz3+kdUTFHTNs+7LebiZYOj0GGvM62RBASRLyIfdRR4y7cd61ghui3iehCmsJBtzOFVTeqT8+Dc/IPJTrY/cXs3oRxb6bmEREaThmbkus/M+F+lDjPAhcsWpX71aVdoHHlHgDeRKXZwld8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=L8L5wLDe; arc=none smtp.client-ip=209.85.216.46
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-38101f85591so39737a91.1
        for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 15:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1784067888; x=1784672688; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iLHxmEFEAAhUWHFz+6vyD9YF+Shz/3zBH9jPJj0HIOA=;
        b=L8L5wLDeLUYvsVUmRDerH0FJrE1XxxrPe53QjPmhYEvjkDSH0lTYwGmR0Rf2/R/J3t
         G73E5dM6YWKF1JtB05QgvraMvv0fOH+jmjvE83qSfZROpl0DCsBi/4vFLK9+74sPc9FN
         +R4GmTRiy7sfxPQo9cwTEOl0qWlmlEpNVLVYY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784067888; x=1784672688;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=iLHxmEFEAAhUWHFz+6vyD9YF+Shz/3zBH9jPJj0HIOA=;
        b=cVybScFhLnaGIkXH6ix6pQm1Isxlm0OwAtArN6eNZbqPrF5l0YQ1o1Lj74F6/+3odO
         IS/ejdmkPKV2kDC6OhZyd9x29Vn+RmqlP6M9WHyjQ+Fo2zVylZOTSWy1X9iA62NoeIzw
         QCWwOA0d8FBgAc20D7+iJ0G5RYfUKtY7sDKFG1GifVMoxkEWlQLqnQ6ii92RLI7h8yPU
         fT2lP1B9serglFMW7OFNZlIyH6h8QnE/nhhf/+oC2kkAhpsFsy4FTjgzBvWXk7J21wyp
         rOSd93W1wSc66sQxJsYLYdObEOPCT8dBaT87IiXmMR9HbvmHQbO+zBjsh516h67r/Sk2
         zw6Q==
X-Forwarded-Encrypted: i=1; AHgh+RojPtbu2+4pof6PgI9qw/cYcUr8x/fXS1MyjcWbz2+wsZo7K4SuQz+W6mSUv73G1NBZ0U0Hr7a8Fn8f@vger.kernel.org
X-Gm-Message-State: AOJu0YwOS9+OiowpXth5WNc3R4R2ljeg53AdENWTiIuL4I1VZje7ymzO
	YBE67IJHYDLPdFocADfPL7xNYSYj768cWvUpN0JRMEF+8ql29XmcsCk4px3HHGDvQQ==
X-Gm-Gg: AfdE7cmknvA6X1fkWDbi/khSPdho7lnI4jMlCQXwYVVzy1tUVyvoLi321BOC3y8u5tQ
	28WJqbs/Q6VguPqA4lQXryNUBOMIJEM28XtPW+uSPMTe0OcGShk6L1PWhcvN679DABrMCeoIHBj
	84u7iZascOAAPn5L+xqlsvZLYhqex4pkMVbxfcDMovFZcBJ7sAUz/T8qEUL/8GTsFw1Dx1GpnjT
	fjeHtglmOxfuWFUGxov81SnTXY429W5MKpKE1He8Y7SyAttDpUvDtV8HAkvXImuHoqnWcwlb5uO
	cZE0FhXUCcQvrCb3v8Q+zk1dJeYz3fahvW6w6ZL9u4vJTF1Ga51QYql07g+cmRyG+2AACSYqo2k
	OWp5NK5to0ydWrTmB+eYDRA1JZR3sxT29Tdzuz/vUwxJ1KzfUk4bjf7BnFAA6wYC8T/rI5aNBiD
	xmxknjK2X+zPOCuS/x3vWFyM6ZYnmQvDk7Co3pjmiFxMbub6T2bSsUGD6DYE91r9lRB/Vt9Q==
X-Received: by 2002:a17:90b:2401:b0:38d:9eda:fa04 with SMTP id 98e67ed59e1d1-38d9edafc8emr12968752a91.2.1784067888503;
        Tue, 14 Jul 2026 15:24:48 -0700 (PDT)
Received: from dianders.sjc.corp.google.com ([2a00:79e0:2e7c:8:32cb:eed4:7c:dc87])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31189cd8234sm76540741eec.9.2026.07.14.15.24.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 15:24:47 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Jassi Brar <jassisinghbrar@gmail.com>
Cc: Joonwon Kang <joonwonkang@google.com>,
	Subhash Jadavani <sjadavani@google.com>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Lucas Wei <lucaswei@google.com>,
	Brian Norris <briannorris@chromium.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Douglas Anderson <dianders@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org
Subject: [PATCH 6/7] dt-bindings: mailbox: goog-mba: Add goog-mba mailbox bindings
Date: Tue, 14 Jul 2026 15:21:45 -0700
Message-ID: <20260714152138.6.Ia186a29119b4b5c409815b755e0c2c3965b0495f@changeid>
X-Mailer: git-send-email 2.55.0.141.g00534a21ce-goog
In-Reply-To: <20260714222338.2965707-1-dianders@chromium.org>
References: <20260714222338.2965707-1-dianders@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326558-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:jassisinghbrar@gmail.com,m:joonwonkang@google.com,m:sjadavani@google.com,m:tudor.ambarus@linaro.org,m:lucaswei@google.com,m:briannorris@chromium.org,m:peter.griffin@linaro.org,m:andre.draszik@linaro.org,m:dianders@chromium.org,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-samsung-soc@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[dianders@chromium.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dianders@chromium.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,devicetree.org:url,vger.kernel.org:from_smtp,chromium.org:from_mime,chromium.org:email,chromium.org:dkim,changeid:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6A67C759356

Introduce bindings for the MailBox Array IP block present in Laguna
SoCs (AKA "lga", AKA "Google Tensor G5").

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 .../bindings/mailbox/google,mba.yaml          | 216 ++++++++++++++++++
 1 file changed, 216 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/google,mba.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/google,mba.yaml b/Documentation/devicetree/bindings/mailbox/google,mba.yaml
new file mode 100644
index 000000000000..6c4505a369e2
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/google,mba.yaml
@@ -0,0 +1,216 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright 2025 Google LLC
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mailbox/google,mba.yaml#
+$schema: http://devicetree.org/meta-schemas/base.yaml#
+
+title: Google MailBox Array
+
+maintainers:
+  - Douglas Anderson <dianders@chromium.org>
+
+description: |
+  The Google MailBox Array (MBA) is an IP block in Google-designed SoCs
+  starting in Laguna (AKA "lga", AKA Google Tensor G5). In a typical SoC
+  that includes this IP block, there are a number of instances of the MBA
+  controller with each instance having slightly different hardware
+  parameters and intended for communication with a different remote
+  processor.
+
+  An MBA instance has a "host" that is defined as the processor "providing"
+  a "service". This is typically not the main Application Processor (AP) but
+  is instead some specialized co-processor in the SoC like the Central Power
+  Manager (CPM). A processor (like the AP) talking to the "host" of the MBA
+  is a "client" of the MBA. A given MBA instance only ever has one host, but
+  it may have several clients. For instance, the CPM (an MBA "host") may need
+  to send/receive mailbox messages not just from the AP but from other
+  processors in the SoC and each of these other processors can be "clients"
+  of the same MBA.
+
+  The "host" of an MBA instance has full access to everything in the MBA
+  instance. It can access its own private set of "host" MBA registers, the
+  "global" MBA registers (if they exist), and all of the "client" MBA
+  registers.
+
+  A "client" of an MBA instance has access to the "global" MBA registers (if
+  they exist) and one or more sets of "client" MBA registers.
+
+  These bindings are focused on describing the MBA from the point of view of
+  a single client.
+
+  As per above, a client may have access to several sets of MBA "client"
+  registers. Each set of "client" registers represents a logical mailbox
+  "channel". However, because each channel may have different configuration
+  parameters and a mailbox "channel" in typical usage means one of a number
+  of identical channels, each channel in a Google MailBox Array is typically
+  referred to as a full "mailbox" and the whole collection of mailboxes as
+  the "mailbox array".
+
+  Mailboxes in an MBA instance have these features:
+  * 1 to 256 32-bit words of shared memory.
+  * The ability for the client to ring the main doorbell of the host and be
+    notified when the host Acks the doorbell.
+  * The ability for the host to ring the main doorbell of the client and be
+    notified when the client Acks the doorbell.
+
+  Some mailboxes may also have the ability to have counted doorbells. This
+  means that the receiver of the doorbell can tell how many times it rung.
+  This is intended for implementing "queued" mailboxes. See below.
+
+  The MBA hardware doesn't have any specific directionality. That is to
+  say, both the host and the client have full read and write access to
+  their shared memory. All mailbox instances have doorbells going both from
+  the client to the host as well as the host to the client.
+
+  The mailboxes can only be used for communication if the host and client
+  both agree on conventions. These conventions are described in the
+  device tree as they describe how the remote firmware is expecting to
+  communicate.
+
+  Current known in-use conventions:
+  1. An RX mailbox with payloads that are of a well-defined size.
+     On mailboxes of this type, the host is the only one to write shared
+     memory. After placing a fixed-size message in shared memory, it rings
+     the main doorbell of the client. The client reads the message and Acks
+     the doorbell.
+  2. A TX mailbox with payloads that could vary in size.
+     On mailboxes of this type, the mailbox client is the only one to write
+     shared memory. The client always writes a payload to the start of shared
+     memory and rings the main host doorbell. The client then looks for the
+     host to Ack the doorbell. The clients of the mailbox have ways to know
+     the size of any given message.
+  3. A half-duplex TX/RX mailbox. This is a mailbox that can switch between
+     convention #1 and #2 above. Since both sides write data to the start of
+     shared memory, the two sides must have some convention to know whose
+     turn it is to send a message.
+  4. A "queued" RX mailbox with a payload of a well-defined size.
+     This type of mailbox is only possible if the MBA instance can count
+     doorbells. On mailboxes of this type, the host is the only one to write
+     shared memory. When the client doorbell rings, the client reads a
+     fixed-size from the next "slot" in shared memory and then updates its
+     internal state. The shared memory is treated as a circular queue.
+  5. A "queued" TX mailbox with a payload of a well-defined size.
+     This type of mailbox is only possible if the MBA instance can count
+     doorbells. On mailboxes of this type, the mailbox client is the only one
+     to write shared memory. The shared memory is treated as a circular queue.
+     The client writes a fixed-sized payload to the next "slot" in the shared
+     memory (where the slot size is determined by the client's first transfer),
+     updates its internal state, and rings the host doorbell. The client can
+     keep writing more messages as long as the circular queue isn't full. The
+     client gets an interrupt when the host Acks a doorbell and can tell how
+     many doorbells still haven't been Acked.
+
+  Conventions will be supported with a small number of properties specified
+  for each mailbox.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - google,lga-mailbox-array
+      - const: google,mailbox-array
+
+  reg:
+    minItems: 1
+    items:
+      - description: Host registers (not accessible to client)
+      - description: Global registers (not present on newer IP blocks)
+
+  ranges: true
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+patternProperties:
+  "^mailbox@[0-9a-f]+$":
+    type: object
+    description:
+      Each sub-node is a single-channel mailbox.
+
+    properties:
+      reg:
+        maxItems: 1
+
+      interrupts:
+        maxItems: 1
+
+      "#mbox-cells":
+        const: 0
+
+      google,rx-payload-words:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        maximum: 256
+        default: 0
+        description:
+          The number of 32-bit words in each mailbox message from the remote
+          processor. May be 0 for doorbell-only. If not specified this is
+          assumed to be 0.
+
+      google,mba-queue-mode:
+        type: boolean
+        description:
+          The remote processor is expecting the shared memory to be treated
+          as a circular queue and that there may be several outstanding
+          messages at once. Only usable on instances with counted doorbell
+          interrupts.
+
+    required:
+      - reg
+      - interrupts
+      - "#mbox-cells"
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - ranges
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      cpm_ap_ns_mba: mailbox-array@5240000 {
+        compatible = "google,lga-mailbox-array", "google,mailbox-array";
+        reg = <0x0 0x05240000 0x0 0x00010000>,
+              <0x0 0x05250000 0x0 0x00010000>;
+        ranges = <0x0 0x0 0x05260000 0x00020000>;
+
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        cpm_ap_ns_req_mba_client_0: mailbox@0 {
+          reg = <0x0000 0x1000>;
+          interrupts = <GIC_SPI 250 IRQ_TYPE_LEVEL_HIGH 0>;
+
+          #mbox-cells = <0>;
+
+          google,mba-queue-mode;
+        };
+
+        cpm_ap_ns_resp_mba_client_1: mailbox@1000 {
+          reg = <0x1000 0x1000>;
+          interrupts = <GIC_SPI 251 IRQ_TYPE_LEVEL_HIGH 0>;
+
+          #mbox-cells = <0>;
+
+          google,rx-payload-words = <4>;
+          google,mba-queue-mode;
+        };
+      };
+    };
+
+...
-- 
2.55.0.141.g00534a21ce-goog


