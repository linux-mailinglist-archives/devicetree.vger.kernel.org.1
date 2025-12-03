Return-Path: <devicetree+bounces-244008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE28BC9EF95
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 13:24:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 120E83A254D
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 12:23:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 889AD2F3605;
	Wed,  3 Dec 2025 12:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="M/ty+Bga"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3EBF2F3C1D
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 12:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764764613; cv=none; b=pbbmdUfeQIIEP+yfGN+Djk/armF+Ewq864k29lYOa3Kq5jUnoJ9c7O813Yk2TNjfRjC37FYgz4cGpfDIyHc38smKkGTDUZDg30yc1jx/SYqUw/VvvyXZpKo09ijXGRqS0rYmZvQ7hjrBX+H3QjOQinnNHN3zm/MAF49uZf+UtWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764764613; c=relaxed/simple;
	bh=NxtJzgFmiV1E4Vkc5ZsSa30BPNQ2UxpzQEAUPNYwUwA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SxWCPn6M7NYwfrMN4fbMg5Fq+YcZewZkZ26bbnnakXo4mMrDOqz/jIwCyI+Mt2S6+Qftf2Y+8XrNiGdq0TdFmDFjGHue2RHu9Gnl6F+QUnYQjIFNklNm149XIPTqFopqPsdPYRJ2EK51D4lSd4yJPiaggsFPz1sPf7669AJIu64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=M/ty+Bga; arc=none smtp.client-ip=209.85.219.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-882390f7952so72313686d6.3
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 04:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1764764610; x=1765369410; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2UFfRQ/mCyul9iPxIkRd9hdWn0tYgTUuUvSNMVexe3M=;
        b=M/ty+Bgaxdkal1GaEoT82ZPaoC4BadaQyRTHmrMGmAxXyQqDi5uSZoYKXQwXea+oee
         NvSMKLBHybz4n++aWptzBgagbRbz7hnZ1LJa1V7QAN/hfrqzG7azzZbAe3SmVuVdYyAV
         rGJ3lM+z1DrK9y529LT+xkSAyLDNBkN4JZix1HncZxgvaOZgyYBwwkQoGcSu07YvvXCu
         KACe0JF6m3V2ZTH26IqQVyVhq6C2/WIII8fwJyG5P0Z7wEjs6etQO+08hzMirGuJinf+
         6k4Eia7Bvfj6wQuF7obGWxA9PTMPuRfrMiGzsvzmr+0wBvTKBrWyTAnWgYEycCGk1PHR
         jeCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764764610; x=1765369410;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2UFfRQ/mCyul9iPxIkRd9hdWn0tYgTUuUvSNMVexe3M=;
        b=MFG4KhWcIFewnxctfv6dYp/NS+NSBTbYFZKAR3tuBAt/gAwSKq9nUzJHgUbydH+/zh
         AKS+zycuI3NXVrXRU7e4Gu2hwce/+Cl3JxzmID2123UWTVpKvuVjDcOR5vqRrN/q7El3
         vm+Y/L4utKg9PyuWwJ3KJcxyoGJ9+Ykni8r3176Izf5HYtQHI2Wet064Qc8n/Qfl3eH4
         yD4OLFW/0FLF5ClxojhEhhAAjlY46zZ3pKZ82155vgqf7Oclx+Dd0dJGHoiJ0XUGZepk
         k5sJ6Q9S1p9PCszy347wIlD6e1Y5UGMlsmyUErlNDdgcM0KR0/pCm17KyDbEXz+x1miF
         KrmA==
X-Forwarded-Encrypted: i=1; AJvYcCW+oqARf3gKpCW2xzQi10kRSqGxf3hszd7m4q/fGLzte2IgLVRRQPjNDmV28rLqKbnn4dxmY4Rqq8vx@vger.kernel.org
X-Gm-Message-State: AOJu0Yyw4HMAjr3Ujo6/Ya1hdYiWwojxjrsI5wTb77S9qDAmPL27v6WT
	MTt3DOFgj0h3D6yjUJao1olLTw3ylZBiymBwy9H6zIJsZ/mtLgrfh973PtKATmvgUMk=
X-Gm-Gg: ASbGncuW9N2+lT7h845n5Kfs2PVHr1wH5d/VosZlQHDJlV/ytHbY8/0obxDtRVDk5lQ
	omB1kVhZyH1zpKCmurd6qnv7OuT8UjqRsoEmzdYmVrx3m7QpYBaz7deWAX86JENwnHWIgSl8zZE
	/6HgFguNNY3LbjMXdmapYUpTSxrypEq8HgOsV+7GfciOWxaQfrDyHM5YpXNVXdJdjexz1Yo2ne6
	pTWUxPrxyGNrgePdcqnpm2eSzypWc16VfyuwWfdYaEIElLh1XkJ8P7xBg0dgJsAcVdIdNOGcibq
	fiTG56Cf06W6C5jBO4EjjTKJG6a/BiYPVowl/HuvBLcwMIvTSVpzHrNJN85JKIlRFJAY74ZIbUo
	9hUyzNt1dVSBPKmaWEMbfwK27s/I539JizFTISKq4r/actgEemqOwgCsJ7LSYwCnszFmppgOKAI
	jFDpQZiZdwRaqTiY8u21cb2L+9TMtVIn1BuUPzuY1SXQMN
X-Google-Smtp-Source: AGHT+IGsaXlqNMoWBqDJybU7SgFep9PuPbieD5S4OluHzHLsLb5SxcZWmzH1944iGtWvvNXqPDBk/A==
X-Received: by 2002:a05:6214:33c9:b0:886:3fd2:ea78 with SMTP id 6a1803df08f44-888194c597amr27028086d6.24.1764764610234;
        Wed, 03 Dec 2025 04:23:30 -0800 (PST)
Received: from fedora (cpezg-94-253-146-247-cbl.xnet.hr. [94.253.146.247])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-4efd2f9a755sm115214351cf.3.2025.12.03.04.23.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 04:23:29 -0800 (PST)
From: Robert Marko <robert.marko@sartura.hr>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	gregkh@linuxfoundation.org,
	nicolas.ferre@microchip.com,
	claudiu.beznea@tuxon.dev,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	richardcochran@gmail.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	daniel.machon@microchip.com,
	UNGLinuxDriver@microchip.com
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 2/4] dt-bindings: arm: Document Microchip LAN969x
Date: Wed,  3 Dec 2025 13:21:30 +0100
Message-ID: <20251203122313.1287950-2-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251203122313.1287950-1-robert.marko@sartura.hr>
References: <20251203122313.1287950-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Microchip LAN969x is a series of multi-port, multi-gigabit switches based
on ARMv8 Cortex-A53 CPU.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 .../bindings/arm/microchip,lan969x.yaml       | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/microchip,lan969x.yaml

diff --git a/Documentation/devicetree/bindings/arm/microchip,lan969x.yaml b/Documentation/devicetree/bindings/arm/microchip,lan969x.yaml
new file mode 100644
index 000000000000..3fa1d4ed40d1
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/microchip,lan969x.yaml
@@ -0,0 +1,32 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/microchip,lan969x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip LAN969x Boards
+
+maintainers:
+  - Robert Marko <robert.marko@sartura.hr>
+
+description: |+
+   The Microchip LAN969x SoC is a ARMv8-based used in a family of
+   multi-port, multi-gigabit switches.
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: The LAN969x EVB (EV23X71A) is a 24x 1G + 4x 10G
+          Ethernet development system board.
+        items:
+          - const: microchip,ev23x71a
+          - const: microchip,lan969x
+
+required:
+  - compatible
+
+additionalProperties: true
+
+...
-- 
2.52.0


