Return-Path: <devicetree+bounces-314935-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ed/YEqrGOmp3GggAu9opvQ
	(envelope-from <devicetree+bounces-314935-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 19:47:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AACAF6B936E
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 19:47:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=rszAvOdl;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314935-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-314935-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 42977306BED1
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 17:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5164839021F;
	Tue, 23 Jun 2026 17:46:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA75838E10F
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 17:46:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782236770; cv=none; b=Cau7qYcni0RQsVCF0TVJUfp3SQf9hlw1E4qO8fR5C8VRNPyMlxRUSaWNX+ZN/wdfWwXqCRCkXDkvwL9Dnc+gBJMK9QJRQ3qpbdobh55oHn2F3Ea+Gq0ti7cdZngArp65s4IRa3/iyff3aMoZEiI5lVjocINzORNV/4XfZPLUnFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782236770; c=relaxed/simple;
	bh=bDrgqU2B+UkBBmPBzeWE0+W7wImAlYaHQusokmx8XJ8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rUvqjWKCX8bDfc66W71Gd+twbyuHgxrtw41QwSqkQkiz3IMl4FaY+5FGx3wWvLh2xMKl94HOuPvUrop5qmeT3Woq6D/tNXHQASwcXjLIx/EhRUR8epLw7rNuZ4A0WakT5zbnLlsRdd5pLw6xorMUcCEUcrTdFqm9JIbgpAanAmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=rszAvOdl; arc=none smtp.client-ip=209.85.167.46
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5ad53c8d4dfso136122e87.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 10:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782236767; x=1782841567; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pD39JBAAp2uVwZ98fWzVa8hs4x0Q++h2beL6bLFgwHE=;
        b=rszAvOdl0gTA286+WIjRKfAS/m0LBNpE0IMWOMqF9qEPKR9/OY7wl9w5G7zFDdprYt
         7KC3Cu6zP0d2Ei1jK3QWlkuygD0BHT8kuXa1UH5awB5V3hFkPhmOtyc4d6RZqEQC9YDG
         GPuYmV+tI+5nlZlm8/GXGmeqJ2eS0/GZHk95HFurQTkZTd9/m46XYF0nq96AEhq0wxcK
         bCyHLLAxn28pOXhMXoKvBqlzQKRAXqvNRbAmGUfxKMdO1f1wEdurLyVG9yWAx6sLCiPh
         f2BNCHPA9i8q1lyOWSXg4Ra3nteo+ag1AoKQyVr+8GioMrWOb9pLUAYgFjOHjhLBQ8f9
         9Vsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782236767; x=1782841567;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pD39JBAAp2uVwZ98fWzVa8hs4x0Q++h2beL6bLFgwHE=;
        b=rxTwYEUb7zPmnc51qbUk5EDDjbUn/7L/spbOaKC7xjpzc6cfijkTdoX/v4fgNtoudn
         zSMhe8eSwaC9IJWc23suQ+biFpGhf0Uskw0sCc+r7DxBO5wiSqhW2/EoiVqJmfhawtaa
         60UoAkQzhkbV9IQQC1XbzW5O37VN2tikvR2XB8Iuqq7lUBGvxDop7k1sGtUHBsGBuKLB
         8IVej4YgXALJsDPDVd63UGo4o8UzbhRT9tJMwt76MkUwIFo5v0vLlDjdZ3jA8TEP5NKD
         SXVjzDs1ef1CgxlUHf4Y1AbTNHI71Zi8ItqGdipqqmd1ehHrkaE7GZiI4TELo3+2ppEb
         ubSg==
X-Forwarded-Encrypted: i=1; AFNElJ+2VCexjZyYqSk+lWuwxX6V6JjoRVTo90AY2OOlKHpF/UJDCOmPmzpYpgUo52u5Gh7w0v2JNWs/6IWQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwjzxLsCeC/0tuxfrul7FE6jqag1E2aBd2xy8xO8P6OAzhL01GN
	AcNqWG2QZxGbudzOr+OdKGEOE6BDPzIisr30oVgCB6A0DRoU/OwAmTp9
X-Gm-Gg: AfdE7clxS863BrorptX2fWw8y4FL2uUUv3vY9F8Ys1OO4u+shbcz1C3PCytXoL/gHru
	goma4ZH82MnOB7S1ohmEfCp2xWuSVzIF4Hg5OVWruj3sC65GR7z5PfajB8o63bBIigWaNodrczj
	RNJoX+6d0kf1NTi8UpkuCyn0w736P9zcl4e3xibonZ3PHxi4nfQloE3vsFgI76+Ia2FT5ifEd4U
	5XbK3ZBBK+2uvj8x2Q+x5waicfo3uJ+KoRsTKxlufwn8dYBFSZLxW7jOSa8o+xIY0lEKxBgdNrn
	NWHD9TzaascK5QfmCJbYF6eFltjmf+5lJsaiyfXpvksL08f7X7XC5zylQkTuvCl1d4Z9RVZBIv0
	S3CMl9TGOxBybjePry2aoewvhvWAv/7k3Xdt8SLgFpuBpuqcTnw4gKOIwazy0npERLSweoqCR+N
	REJ+Fw/9A3Psf6kIzDoRRIi8myGbhgJovCJ/WtQAPP3i4dmw==
X-Received: by 2002:a05:6512:1156:b0:5aa:71e1:edab with SMTP id 2adb3069b0e04-5ad696c015amr1362920e87.23.1782236766715;
        Tue, 23 Jun 2026 10:46:06 -0700 (PDT)
Received: from Shofiq.home (87-92-251-137.rev.dnainternet.fi. [87.92.251.137])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3999afc7005sm27198651fa.13.2026.06.23.10.46.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 10:46:05 -0700 (PDT)
From: Md Shofiqul Islam <shofiqtest@gmail.com>
To: linux-iio@vger.kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	lars@metafoo.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Md Shofiqul Islam <shofiqtest@gmail.com>
Subject: [PATCH v4 1/3] dt-bindings: iio: health: add maxim,max86150
Date: Tue, 23 Jun 2026 20:45:58 +0300
Message-ID: <20260623174600.17100-2-shofiqtest@gmail.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20260623174600.17100-1-shofiqtest@gmail.com>
References: <20260623155556.13701-1-shofiqtest@gmail.com>
 <20260623174600.17100-1-shofiqtest@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314935-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[shofiqtest@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,metafoo.de,vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:lars@metafoo.de,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:shofiqtest@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shofiqtest@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,analog.com:url,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AACAF6B936E

Add YAML binding schema for the Maxim MAX86150 combined ECG and PPG
biosensor.  The device exposes two PPG optical channels (Red and IR LED)
for heart rate and SpO2 measurement, and one ECG biopotential channel, all
accessible over I2C at up to 400 kHz.

An optional active-low interrupt line connects to the 32-entry hardware
FIFO almost-full output.  Two optional regulator supplies (vdd for the
digital core and leds for the LED anodes) cover boards that require
explicit power sequencing.

Signed-off-by: Md Shofiqul Islam <shofiqtest@gmail.com>
---
 .../bindings/iio/health/maxim,max86150.yaml   | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/health/maxim,max86150.yaml

diff --git a/Documentation/devicetree/bindings/iio/health/maxim,max86150.yaml b/Documentation/devicetree/bindings/iio/health/maxim,max86150.yaml
new file mode 100644
index 000000000000..1bf10fd1a3d2
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/health/maxim,max86150.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/health/maxim,max86150.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim MAX86150 ECG and PPG Biosensor
+
+maintainers:
+  - Md Shofiqul Islam <shofiqtest@gmail.com>
+
+description: |
+  The MAX86150 is an integrated biosensor SoC that combines:
+    - Two PPG (photoplethysmography) channels: Red LED and IR LED,
+      for heart rate and blood-oxygen saturation (SpO2) measurement.
+    - One ECG (electrocardiogram) channel for biopotential recording.
+
+  The device communicates over I2C at up to 400 kHz and raises an
+  active-low interrupt when the 32-entry hardware FIFO reaches its
+  configurable almost-full threshold.
+
+  Datasheet:
+    https://www.analog.com/media/en/technical-documentation/data-sheets/MAX86150.pdf
+
+properties:
+  compatible:
+    const: maxim,max86150
+
+  reg:
+    maxItems: 1
+    description: I2C device address, always 0x5E.
+
+  interrupts:
+    maxItems: 1
+    description: |
+      Active-low interrupt line.  Asserted when the FIFO almost-full
+      threshold is reached or when a new PPG sample is ready.
+
+  vdd-supply:
+    description: Digital core supply, 1.71 V to 1.89 V.
+
+  leds-supply:
+    description: LED anode supply, 3.0 V to 5.5 V.
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        biosensor@5e {
+            compatible = "maxim,max86150";
+            reg = <0x5e>;
+            interrupt-parent = <&gpio1>;
+            interrupts = <5 IRQ_TYPE_EDGE_FALLING>;
+            vdd-supply = <&vdd_1v8>;
+            leds-supply = <&vdd_3v3>;
+        };
+    };
-- 
2.51.1


