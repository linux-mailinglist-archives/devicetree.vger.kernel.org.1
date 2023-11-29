Return-Path: <devicetree+bounces-20120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0857F7FDD7D
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 17:44:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A2F71C20966
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 16:44:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91A8A1BDD7;
	Wed, 29 Nov 2023 16:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D2EAB0;
	Wed, 29 Nov 2023 08:43:55 -0800 (PST)
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-58d9dcdf201so1621562eaf.2;
        Wed, 29 Nov 2023 08:43:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701276234; x=1701881034;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WbKmjK5aYlNvI/2G0s2AcBaMpjvp1DkcAwiIdV5vRGY=;
        b=aDHt3M/4JyN6qBsJFjkZX5UxNSSeYML3gxCzqx6TLHmkzNS+4ZRsX5Cjetp+dHXL2W
         qYh+wnSHpWlcbifSI/t9pTOXEsNhePA7v5mOzlv2kAYcvqJtHCsWxSkq038NdvulCAt9
         dN9cceERh3T/8Ggu24EivLLczIdZhOeSWygFoJYNn8I7ujT1TE8JurhN17/KEmBM50S/
         PTlsw2Wbx6VPIxxyWkbBW9GyKHIjKGoFVlqTnJ/OCfWDUUQLQVUpBjbqVr3UQcSTkQgQ
         YB9Ix3TLEJMRPrGJa8gKw2EFEJfeazZfMM5xnLTHDD96oi5rO3aNaMrdWjH0Gip6qjRv
         MUaA==
X-Gm-Message-State: AOJu0YxcMAMJTkPIwixxc1rq6epWWWJolqrjlg2v2sIop0xuVnVIRoRs
	DL9JdHgH9s5eqH30czMleg==
X-Google-Smtp-Source: AGHT+IGDuhcW/C5uUvHy5z8/jHFZ6ZXPTUVzm1aN0tHX0RbQUR91g7dUq4iuDM++fYQzrsVvP/hwyw==
X-Received: by 2002:a05:6820:294:b0:58d:c250:cb1d with SMTP id q20-20020a056820029400b0058dc250cb1dmr3473695ood.2.1701276231495;
        Wed, 29 Nov 2023 08:43:51 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id cz9-20020a056820268900b00584078d1e17sm2309837oob.45.2023.11.29.08.43.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 08:43:50 -0800 (PST)
Received: (nullmailer pid 2664302 invoked by uid 1000);
	Wed, 29 Nov 2023 16:43:48 -0000
From: Rob Herring <robh@kernel.org>
To: Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>, Miguel Ojeda <ojeda@kernel.org>, Wolfgang Grandegger <wg@grandegger.com>, Marc Kleine-Budde <mkl@pengutronix.de>, "Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, Frank Rowand <frowand.list@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] of: Stop circularly including of_device.h and of_platform.h
Date: Wed, 29 Nov 2023 10:43:16 -0600
Message-ID: <20231129164316.2663565-1-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The DT of_device.h and of_platform.h headers date back to the separate
of_platform_bus_type before it was merged into the regular platform bus.
As part of that merge prepping Arm DT support 13 years ago, they
"temporarily" include each other. The headers also include
platform_device.h and of.h. The result was lots of drivers relied on
these implicit includes.

Now the entire tree has been fixed over the last couple of cycles to
explicitly include the necessary headers instead of relying on
of_device.h and/or of_platform.h implicit includes, so the implicit and
circular includes can finally be removed.

Signed-off-by: Rob Herring <robh@kernel.org>
---
There are still a few dependencies which have not been applied. If you
are on the To list, one of them applies to you:

https://lore.kernel.org/all/20231122180140.1432025-1-robh@kernel.org/
https://lore.kernel.org/all/20231115210245.3744589-1-robh@kernel.org/
https://lore.kernel.org/all/20231115205828.3732207-1-robh@kernel.org/
https://lore.kernel.org/all/20231115210319.3747145-1-robh@kernel.org/
https://lore.kernel.org/all/20231115210258.3744896-1-robh@kernel.org/
---
 include/linux/of_device.h   | 5 +----
 include/linux/of_platform.h | 4 ++--
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/include/linux/of_device.h b/include/linux/of_device.h
index 2c7a3d4bc775..b59165b28fd7 100644
--- a/include/linux/of_device.h
+++ b/include/linux/of_device.h
@@ -2,10 +2,7 @@
 #ifndef _LINUX_OF_DEVICE_H
 #define _LINUX_OF_DEVICE_H
 
-#include <linux/platform_device.h>
-#include <linux/of_platform.h> /* temporary until merge */
-
-#include <linux/of.h>
+#include <linux/device/driver.h>
 
 struct device;
 struct of_device_id;
diff --git a/include/linux/of_platform.h b/include/linux/of_platform.h
index fadfea575485..a2ff1ad48f7f 100644
--- a/include/linux/of_platform.h
+++ b/include/linux/of_platform.h
@@ -7,11 +7,11 @@
  */
 
 #include <linux/mod_devicetable.h>
-#include <linux/of_device.h>
-#include <linux/platform_device.h>
 
 struct device;
+struct device_node;
 struct of_device_id;
+struct platform_device;
 
 /**
  * struct of_dev_auxdata - lookup table entry for device names & platform_data
-- 
2.42.0


