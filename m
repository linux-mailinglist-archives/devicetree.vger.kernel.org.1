Return-Path: <devicetree+bounces-294757-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 7d/dOVF2/mkWrQAAu9opvQ
	(envelope-from <devicetree+bounces-294757-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 01:48:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A4B4FCE31
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 01:48:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C2162301BC06
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 23:37:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E82D364EA4;
	Fri,  8 May 2026 23:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JCtD4YtE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f193.google.com (mail-dy1-f193.google.com [74.125.82.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22970364046
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 23:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778283470; cv=none; b=lhZdEOHGZbpFxB35DURMj3CDTi5G/trmjvvFbLbT+wiZHF29AqbcCscVHgdXF2aLbvb+xMYISVEvQhIaDMfdUOym2qRtvpX9anOvIkc7wTaqH0+GxhnhKW5Io5OI4hSZTKmg+57hkPLrc3nzMQi8RcPFwiRJqVvvlYR+G7A4p18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778283470; c=relaxed/simple;
	bh=AXqNsoW217lGfE77JCCRFiEok9jdH7/UFsUx+z+NPyw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=QVHunLCn+jt92kDT0G7wxLCzuFgjBinR/6FZpWn6SdFdgLmLGFQZykro8Zh0L4bm751mMof/412fxEcOqwxyuWWF0GXI5aakDP1cR7e3L2gobLgb1EGwwIurhl+kQz8/itZYxRVvOgkKW3EXecmmaqfCiO1f5/VBfxiHfHLDw00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JCtD4YtE; arc=none smtp.client-ip=74.125.82.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f193.google.com with SMTP id 5a478bee46e88-2f7020a928eso3543601eec.1
        for <devicetree@vger.kernel.org>; Fri, 08 May 2026 16:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778283468; x=1778888268; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zpKwuDs0j68b87eKPB/Fimbw0GJQpFhTCSxpTkiRu0E=;
        b=JCtD4YtEgS2SVnf6mrzXSPzzvCAOUZDkgzgMfYolYDnWwT1Z8Bttlp6Xl5dP35OTqV
         HAicJGfD8oVBjPcsUiDqsyUaXqsQguhj72W8zjMc1m1a/u/srW59JSwraQdwPwUhj85/
         sVcAyByZyW2MZudPDcWmPytekMmaHM9ZiX4iaQo7u5nopST3IqycBjWkJI+KyZ/rHysr
         G+fTaaNq/E//QzGr7YhrRnUe9hgZiwk/+IkfAPqGlo0YzUrJ5dGE+j0eL9qMbPJAvKuw
         maXlHmpXQPHXq4ndAc7cSDi289w5zLjO4o3IZg9jET1bIr3IoF0cBdRo5S+RTwhcdi5g
         dI7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778283468; x=1778888268;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zpKwuDs0j68b87eKPB/Fimbw0GJQpFhTCSxpTkiRu0E=;
        b=YVoHPv7wG8kUOPDv76aTmHUIcd+tLtDALGcbIqTo0TErrx6a66R64bIEl3HTmz5NMn
         ax1qG1uD3H1TF7QyCEredRMxk90E7y1V/zZS5w0+hAlY01bQUy3e0dEMQ4UkRWxZpIKi
         6oCOehlZgxK+7VUBRcH7CQggO6TF3e07FfLsEUpaOZpzi0xMzZBNnNkQ5kYtPyMwx+bu
         ISc0Nvm8QoMkYZ8QF3jUJ0R1L2E3bYhNO+FUaJy+SovQ49a6+MvpMTU+frX+VicUfchI
         kT86euTNJQ19ZGZ7NH2Mp+TL8A7Bfh3bI4R995cr5Kyt4dK+bTvtwleVtTPIoXyKwP37
         kCWA==
X-Forwarded-Encrypted: i=1; AFNElJ825XyRdyjMhSj+0hyXMVW4OMvzNiDLbi2bN9DuN/Y5wbamlxbdUiFn6i8UeCfC1dVfZNSGQgZzzzGc@vger.kernel.org
X-Gm-Message-State: AOJu0YxM9y4dJDVxpS9fGnQlO8U2i0YodSi22B06ja0tBBfUfCp1QHKi
	WvB8zg3NYQk3+NtdcOLgJsfLtcjRmQelev1li92MxIE6s0tZ1yPpzDmu
X-Gm-Gg: Acq92OFevHd9gYVasFcOZ56S0fmOqSj+xj4Bi0EfyZf957NCASS6n9nn3iO9Xsr2ZUc
	GyFDDeTGwV5QAte6EIln9O/yCdt/q5pA+GU5kKD1d+JtFxLwk5ky8cDKH9cbvaw8tw0WTcp8BTB
	IiOwKZdT2npFNbrSh6PxyGIb1utlnByV3WRpKAUiJ3eguw/KBVGX65CMaNHc6TyVVlyipf978Ic
	JUsMmvmtaBGugakvvJ0LSMVYDTTSnBjKA0ccqtqLjJY+rKv7+BLzIEN/TvQM/18o52FcJ5KUQt8
	zDu5RRdqpssJPJE3DWSG0x4xo3qXTFmxEG9rAvgmPjGwFKLJ0dfuCIno8lZ1kXTBw2vD5oPmV6V
	48yn74iwiQ7rNqNZDQaLW7Kd6Y70qIo6/cboRvFz0f7ytUXzWCR4rG+DphKd+RCeFoxFBjUHAEI
	UidtiDC58xNxekw8E3D93Gs2D+w0DJXdF8L4hbYBt2yKNqtGXUCj5ywxD45OXib3CKxA==
X-Received: by 2002:a05:7300:8623:b0:2e2:d94d:6186 with SMTP id 5a478bee46e88-2f548e95823mr6547009eec.11.1778283468092;
        Fri, 08 May 2026 16:37:48 -0700 (PDT)
Received: from localhost.localdomain ([76.32.119.210])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2f888e4016asm4269036eec.28.2026.05.08.16.37.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 16:37:47 -0700 (PDT)
From: Hungyu Lin <dennylin0707@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: jic23@kernel.org,
	lars@metafoo.de,
	michael.hennerich@analog.com,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Hungyu Lin <dennylin0707@gmail.com>
Subject: [PATCH] dt-bindings: iio: dds: Add AD9832/AD9835 binding
Date: Fri,  8 May 2026 23:37:30 +0000
Message-Id: <20260508233730.77834-1-dennylin0707@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 46A4B4FCE31
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [6.34 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-294757-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,metafoo.de,analog.com,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20251104];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,body];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dennylin0707@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.851];
	R_SPF_ALLOW(0.00)[+ip4:172.234.253.10:c];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: add header
X-Spam: Yes

Add devicetree binding documentation for AD9832 and AD9835 DDS devices.

These devices are SPI-controlled direct digital synthesizers
requiring AVDD, DVDD supplies and an external master clock.

Signed-off-by: Hungyu Lin <dennylin0707@gmail.com>
---
 .../bindings/iio/dds/adi,ad9832.yaml          | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/dds/adi,ad9832.yaml

diff --git a/Documentation/devicetree/bindings/iio/dds/adi,ad9832.yaml b/Documentation/devicetree/bindings/iio/dds/adi,ad9832.yaml
new file mode 100644
index 000000000000..7e2eece086d0
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/dds/adi,ad9832.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/dds/adi,ad9832.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices AD9832 / AD9835 DDS
+
+maintainers:
+  - Hungyu Lin <dennylin0707@gmail.com>
+
+description: |
+  Analog Devices AD9832 and AD9835 are SPI-controlled direct digital
+  synthesizers (DDS) capable of generating programmable frequency and
+  phase output signals using an external master clock.
+
+properties:
+  compatible:
+    enum:
+      - adi,ad9832
+      - adi,ad9835
+
+  reg:
+    maxItems: 1
+
+  spi-max-frequency:
+    maximum: 20000000
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: mclk
+
+  avdd-supply:
+    description: Analog power supply
+
+  dvdd-supply:
+    description: Digital power supply
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - avdd-supply
+  - dvdd-supply
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ad9832@0 {
+            compatible = "adi,ad9832";
+            reg = <0>;
+            spi-max-frequency = <20000000>;
+            clocks = <&mclk>;
+            clock-names = "mclk";
+            avdd-supply = <&vdd_3v3>;
+            dvdd-supply = <&vdd_3v3>;
+        };
+    };
-- 
2.34.1


