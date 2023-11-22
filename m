Return-Path: <devicetree+bounces-18124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 904207F5398
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 23:44:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F0A85B20E77
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 22:44:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51EA51CFA9;
	Wed, 22 Nov 2023 22:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A6F110C3;
	Wed, 22 Nov 2023 14:44:23 -0800 (PST)
Received: by mail-il1-f181.google.com with SMTP id e9e14a558f8ab-35b048479b2so948095ab.1;
        Wed, 22 Nov 2023 14:44:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700693062; x=1701297862;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O2Wb9fqX5wGIqyOWlMFehAorYquofRBtljUq7UG2Sxs=;
        b=wBiw8X25DUWnj6XN6JjrOqvHW1jW2Vt3l49GLn4RYWx/v1HNY/d96Q3uYf6dGzNOSo
         QaJYYt7wJgVMqLIjVvUdULgCPY3rInhvRGBnBWPP8v7T2zNtqKudIvaWOnkQ9cCPDcn+
         j3C0/PeHCi0dK8kiuzTiN3270mV/vpYY/eFFuVz4MkBnDFg/s6XPYTGUYLa/Wn0X0kw4
         lY9aVbQspc+AlT/WQRF1AMnQY4Aey+B5DSg+U2KQujApwKREZJkm4pjtPhQE2AnlLvRS
         9qpc9DLyqUfpmOo57DlJGwDSxxSjtM/xFoIyydJ8bYRoTS2Pd48x+vw6FnB1nqXEWJ27
         +f4w==
X-Gm-Message-State: AOJu0YwV6bdg+NvzbXRJAkZpo7NVI1DTgrhyWXyiHrkZ4+Sc5H+6s+Zp
	o97PTNwJwY7oaDEBpGJt4A==
X-Google-Smtp-Source: AGHT+IGFm0+j6e3UUQrpEurWryCYqQBPZdAFwcs+dwxaPeUhVSu7HXz3MZ7wxMS2VPJ2uEwMCVqw5g==
X-Received: by 2002:a92:c26c:0:b0:35b:2216:5c80 with SMTP id h12-20020a92c26c000000b0035b22165c80mr5377162ild.23.1700693062511;
        Wed, 22 Nov 2023 14:44:22 -0800 (PST)
Received: from herring.priv ([64.188.179.252])
        by smtp.gmail.com with ESMTPSA id bl9-20020a056e0232c900b0035aa4b0d786sm179029ilb.25.2023.11.22.14.44.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 14:44:21 -0800 (PST)
Received: (nullmailer pid 2809435 invoked by uid 1000);
	Wed, 22 Nov 2023 22:44:20 -0000
From: Rob Herring <robh@kernel.org>
To: Li Yang <leoyang.li@nxp.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: fsl,dpaa2-console: drop unneeded quotes
Date: Wed, 22 Nov 2023 15:44:19 -0700
Message-ID: <20231122224419.2809361-1-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Drop unneeded quotes over simple string values to fix a soon to be
enabled yamllint warning:

  [error] string value is redundantly quoted with any quotes (quoted-strings)

Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/misc/fsl,dpaa2-console.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/misc/fsl,dpaa2-console.yaml b/Documentation/devicetree/bindings/misc/fsl,dpaa2-console.yaml
index 8cc951feb7df..59b83ea5e05e 100644
--- a/Documentation/devicetree/bindings/misc/fsl,dpaa2-console.yaml
+++ b/Documentation/devicetree/bindings/misc/fsl,dpaa2-console.yaml
@@ -12,7 +12,7 @@ maintainers:
 
 properties:
   compatible:
-    const: "fsl,dpaa2-console"
+    const: fsl,dpaa2-console
 
   reg:
     maxItems: 1
-- 
2.42.0


