Return-Path: <devicetree+bounces-204061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E91B23ED9
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 05:13:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1E2EA1AA1146
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 03:14:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B61E29DB68;
	Wed, 13 Aug 2025 03:13:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="x12OFLBF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CDCB270555
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 03:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755054825; cv=none; b=i+q/aBQw7l6METFogaik8WY/w3+GWqeod4xft9HXvJqfPevi08t67TvPI10oLU+dZWoqLVfTB+N9ovcwyX9oWDfXXnFsfaOMk0JD/pdS66sIm3/l1jdYhWuVX/WUOE3FtRXiu8sZzcTZPMyJNUo9FVK/JdcjB3JqkpCd/EPW88M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755054825; c=relaxed/simple;
	bh=4e3XC4i6uPEnWMRcXdvMk1P32JDvw0n2PeDK+VlwzBU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=R/eWz2VGPX2fc0JWZyBfTAJx4QdwU3gPyHllReuQp7hQv9OcnCbj0ZRwXHsFQMFQMnw8xE1h2DfboAtcauiXmBBYoKUvj373ETsC1kRrJ+OPh2BQr5g+TfuaWXUCMLQfJ8Z3/XAbYIFK68h8V1CY66I3xo65Mg1UOSQOewBFzpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=x12OFLBF; arc=none smtp.client-ip=209.85.166.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-3e55b170787so2614735ab.1
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 20:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755054821; x=1755659621; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8PhVQGmNNzCiMu9pw3hx+9YH1Eu7sHoNmFIOK1HnGfI=;
        b=x12OFLBFtGzsaCf0B2ke4y0asbbcQ9v81MB4w076TddKKCfZYgUJSA3F0AGZkn8voq
         uqCRgG8OD4vv3bPNJ+buSfUVVtbgRkU5OaIquRuZjcAQI35CAAq0qGUgliQbE5JyeWCb
         XeGCd4wGmoLJnpUXT1ax+tMV8RsqTTTf0NofzkA7h4MBsjrWFn0fmmVmiZorKeqYQRoR
         wQZHcs9Fbm2Bk39+nE+zaMudt9JJ7FBEzFJ5WhSlbgxBbqj0ghhRID6+ocTbcrDkIXVm
         p+y0paVLZImToJT+gFroiR0s2Hyn/rxoJZYecPcJwDnAHoXQGSg6XdxOUyxCs6Yorkl1
         WXwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755054821; x=1755659621;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8PhVQGmNNzCiMu9pw3hx+9YH1Eu7sHoNmFIOK1HnGfI=;
        b=CildgJyszn2Kuy1iy0Oigj3TqA39rJz+reC+gjt7tcdGCizaa+21dz2gErK6KW5NgH
         1ZaVBCKR8avI6hox+7Qn2UyQbUr/oVumUjHQ9oZSTOpcpBDnSlPxr0MYbB0eaU4v+Wzy
         SaI6WMJ84RM2esUgU7r1EkC+d2f3bSFC2oflq7IH4k6Qmfw4XgAXtbHC/ZZHxb3MmYt5
         U6dyIR+G1w8Q6S4YbobLGM/QRGmiW5wxlsps49ItgFtoLYseHDmOb3a8gXVOsltIkDre
         VyWCRnewCXkWkv0AQ0mglirsUiQWLfaXZrhsBruC6hy3CSbaiLBcD1jy5kL7Tea96VgI
         2a1w==
X-Forwarded-Encrypted: i=1; AJvYcCXZEDVQJ4MmVznF8xHM2w0eFjehNCnctcADfPaXeAt0CrXBhNm2+mHiLvPMmPtfEexoLKLig+CnG19v@vger.kernel.org
X-Gm-Message-State: AOJu0YxcIhYF9jhkPXUTYa0CThIAEvRBvS5OjwFwaUN+Ste+V8ww/pjd
	+i4S19UKFYOL4BwxOjYy8EqHA9mtFB77JyaWX+uvwM+D48mfYeGJrFjxH/VHHCWmbf0=
X-Gm-Gg: ASbGncvFifxG2OBirIlsGZU5Ei+XsItViXNNbnhFpvDpYtkCvmCg6RqYYtMa2+vLSql
	8O30Ax0XxrXkvzFIrAzh91YqP4eguYqwKlEtY8k32qINRMm35kfRlWtD5774NqHNwc6g2aVkKJ4
	jSV+8MAfq0bO5Rf2xDpYxjiOmm94iUPtMNCLKYNYnaTABhwp/KlixjwHaBjmt3kyLF4SDT0hhiR
	TgcCJgots2lMX4MPoGl9cNkG94bI1HbV6kn821wKXodoGAfa0xMItWWvMMWJY6A1aglCCKh4JUZ
	hReCoyLAqvs9t/JiGyQU0rfvFE4VXJo4wdb0VWTvplkE0ncL65cT+7Y6r6sChYgi3bKIiITyKGp
	KRlIAuz3jUkicWRyRmBK2iQQ212DknRf2PbE7rvI6IX4Kfyo6PD542M1MhLJ0mQfr1g==
X-Google-Smtp-Source: AGHT+IHJ3cV6K51nVGXbggkk4n0mggTrNvjqK58YjsUKI/uGamOMw1V+7ccv0fj3Is/jMTtEld3VjA==
X-Received: by 2002:a92:ca07:0:b0:3e5:55b7:1eb5 with SMTP id e9e14a558f8ab-3e5685ab4f6mr13673995ab.11.1755054821496;
        Tue, 12 Aug 2025 20:13:41 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50ae9bcfecbsm3616330173.62.2025.08.12.20.13.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 20:13:41 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org
Cc: dlan@gentoo.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	lkundrak@v3.sk,
	devicetree@vger.kernel.org,
	linux-serial@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-mediatek@lists.infradead.org,
	linux-riscv@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel test robot <lkp@intel.com>
Subject: [PATCH v2] dt-bindings: serial: 8250: allow "main" and "uart" as clock names
Date: Tue, 12 Aug 2025 22:13:35 -0500
Message-ID: <20250813031338.2328392-1-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are two compatible strings defined in "8250.yaml" that require
two clocks to be specified, along with their names:
  - "spacemit,k1-uart", used in "spacemit/k1.dtsi"
  - "nxp,lpc1850-uart", used in "lpc/lpc18xx.dtsi"

When only one clock is used, the name is not required.  However there
are two places that do specify a name:
  - In "mediatek/mt7623.dtsi", the clock for the "mediatek,mtk-btif"
    compatible serial device is named "main"
  - In "qca/ar9132.dtsi", the clock for the "ns8250" compatible
    serial device is named "uart"

In commit d2db0d7815444 ("dt-bindings: serial: 8250: allow clock
'uartclk' and 'reg' for nxp,lpc1850-uart"), Frank Li added the
restriction that two named clocks be used for the NXP platform
mentioned above.

Change that logic, so that an additional condition for (only) the
SpacemiT platform similarly restricts the two clocks to have the
names "core" and "bus".

Finally, add "main" and "uart" as allowed names when a single clock is
specified.

Fixes: 2c0594f9f0629 ("dt-bindings: serial: 8250: support an optional second clock")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202507160314.wrC51lXX-lkp@intel.com/
Signed-off-by: Alex Elder <elder@riscstar.com>
---
 Documentation/devicetree/bindings/serial/8250.yaml | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/serial/8250.yaml b/Documentation/devicetree/bindings/serial/8250.yaml
index e46bee8d25bf0..0a05a1647b5cc 100644
--- a/Documentation/devicetree/bindings/serial/8250.yaml
+++ b/Documentation/devicetree/bindings/serial/8250.yaml
@@ -60,7 +60,12 @@ allOf:
           items:
             - const: uartclk
             - const: reg
-    else:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: spacemit,k1-uart
+    then:
       properties:
         clock-names:
           items:
@@ -162,6 +167,9 @@ properties:
     minItems: 1
     maxItems: 2
     oneOf:
+      - enum:
+          - main
+          - uart
       - items:
           - const: core
           - const: bus

base-commit: 8f5ae30d69d7543eee0d70083daf4de8fe15d585
-- 
2.48.1


