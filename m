Return-Path: <devicetree+bounces-30123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B580E82699A
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 09:38:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DCB1D1C21C91
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 08:38:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FA768F66;
	Mon,  8 Jan 2024 08:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rB4y1W2j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85B801170B
	for <devicetree@vger.kernel.org>; Mon,  8 Jan 2024 08:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a2a225e9449so120775666b.0
        for <devicetree@vger.kernel.org>; Mon, 08 Jan 2024 00:38:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704703079; x=1705307879; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h9EjmPEpm+7zFB1A5P7UnIdVAOMDyAK96vwEc7rBv8w=;
        b=rB4y1W2jdiSv1eD16TZIQLf4hXLfK8bfRRRTLSa/VI60RnLg0/De3xXp980lt/bDaf
         Yfw9TVXpTXi5r9tVFYiJT2HE9MMb+Ejc/pvspaYuxrjrdIJakta3SaO1AVIfvB1toGcG
         TCu0/7TvA3Rs/jhbVKhQyH2FCrBFO3+ySPXc+R8eLl+Lc3+8HRk42BBwrQRvOnI57lql
         8hLqfyO8MPgFpZ1ZjQRoqv2CIvE/tCsyPVnVdzv720kT03rTa14fsGlv8YTWxziU82ZB
         QoL5wqmWHo0o2MO6E/bL515hJXzsTsVPp1n4gv3lqZnpadN06/6UlU9gTBfXECmeDoVF
         nF8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704703079; x=1705307879;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h9EjmPEpm+7zFB1A5P7UnIdVAOMDyAK96vwEc7rBv8w=;
        b=mGPdb3EqYV+kXFKoCjULJyC34MtErHA2slUAJxwVCWFvTvTiPse+kRpegDvguLAvX5
         5dvrcMGJReEwWNSJJqy94e/Isby4DPs0ni6KXTE6a6INcDNvilaEAvCE6DUymeKSvROF
         QmjkjzvceQ2K25N/VkyCXbcgpYGymLZVUJQ4PytniOhechZFjdHuZIQ397OOzhWaZrRl
         CE1oRBqibtmXoKHrpZCX+dooqboIWNpxkPCBCyDIuGiW/CxWZN3QPwJx/rBPInGE3mHb
         TAwoOViYF+3RQ7UEwDoWqnRV8jDZtmM/UcSb8JlLH8QwDjFLRVB+BVamIgkQf/uCTczP
         rYcw==
X-Gm-Message-State: AOJu0Yw5hOWiARkue1MhEzFpvGfVV3JHCHutEB2kt+oAi1TgH+IbIzXt
	td0ZcRxbr3Pkz50de5/u4RnS+N1O4SPEdg==
X-Google-Smtp-Source: AGHT+IFdoYt0dHBvsE2LpeeI64ijVPEIz4mG19z+t6zBxFH/JUZ/i+3Oj7nxmNbixo9o07IEoK0new==
X-Received: by 2002:a17:907:268a:b0:a28:abb3:dd74 with SMTP id bn10-20020a170907268a00b00a28abb3dd74mr1615203ejc.81.1704703078532;
        Mon, 08 Jan 2024 00:37:58 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.112])
        by smtp.gmail.com with ESMTPSA id ws6-20020a170907704600b00a2a360d719fsm1683504ejb.221.2024.01.08.00.37.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jan 2024 00:37:58 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 1/2] docs: dt: submitting-patches: drop outdated points to TXT format
Date: Mon,  8 Jan 2024 09:37:49 +0100
Message-Id: <20240108083750.16350-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

New bindings in TXT format are not accepted and DT schema format expects
all compatibles to be explicitly defined, thus guidance about "wildcard
<chip>" is not correct anymore.  Drop that paragraph and update one more
place which still mentions TXT files.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Mark Brown <broonie@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
---
 .../devicetree/bindings/submitting-patches.rst | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/submitting-patches.rst b/Documentation/devicetree/bindings/submitting-patches.rst
index 36a17b250ccc..b460ebffee42 100644
--- a/Documentation/devicetree/bindings/submitting-patches.rst
+++ b/Documentation/devicetree/bindings/submitting-patches.rst
@@ -42,28 +42,18 @@ I. For patch submitters
      the code implementing the binding.
 
   6) Any compatible strings used in a chip or board DTS file must be
-     previously documented in the corresponding DT binding text file
+     previously documented in the corresponding DT binding file
      in Documentation/devicetree/bindings.  This rule applies even if
      the Linux device driver does not yet match on the compatible
      string.  [ checkpatch will emit warnings if this step is not
      followed as of commit bff5da4335256513497cc8c79f9a9d1665e09864
      ("checkpatch: add DT compatible string documentation checks"). ]
 
-  7) The wildcard "<chip>" may be used in compatible strings, as in
-     the following example:
-
-         - compatible: Must contain '"nvidia,<chip>-pcie",
-           "nvidia,tegra20-pcie"' where <chip> is tegra30, tegra132, ...
-
-     As in the above example, the known values of "<chip>" should be
-     documented if it is used.
-
-  8) If a documented compatible string is not yet matched by the
+  7) If a documented compatible string is not yet matched by the
      driver, the documentation should also include a compatible
-     string that is matched by the driver (as in the "nvidia,tegra20-pcie"
-     example above).
+     string that is matched by the driver.
 
-  9) Bindings are actively used by multiple projects other than the Linux
+  8) Bindings are actively used by multiple projects other than the Linux
      Kernel, extra care and consideration may need to be taken when making changes
      to existing bindings.
 
-- 
2.34.1


