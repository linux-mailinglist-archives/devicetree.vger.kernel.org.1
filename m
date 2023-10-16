Return-Path: <devicetree+bounces-8981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 846ED7CAE54
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 17:56:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B69F81C2048A
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 15:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B84722E64B;
	Mon, 16 Oct 2023 15:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1322E28E3B
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 15:56:08 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0A39AB;
	Mon, 16 Oct 2023 08:56:02 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-6c67060fdfbso3366761a34.2;
        Mon, 16 Oct 2023 08:56:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697471762; x=1698076562;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MK37q1XJzWSoKvjEt9e5ahg/V9ZLCNMRU55JDeXGR3I=;
        b=qvG/pr5FWjLuwpqTd2pwkVoJOMuAoBtK9trGHayaLILnmR8Vwen8g/1faYcXaBPXIm
         TSUgIlkNkloTUsRo0Zt5GsOk6trBR7EtPZN7emV95I/U8N4XeN6ZaWosjhUtbLcIXpo1
         tYPAc30t7U/9hmo8Ug1kYrJhp7/QDDgueaLNBJefzF8j0TsdiHVXzQqAtJRIcWQnWgRq
         m+7R/lkhGXDCCLpqs6todiTEBdGlYjndn0aguKifsNgQS1IAySPZ0ZeZR6n+FdcNLTsr
         wl3CULG36KUnlVQv2z0Q6v7gI08gLQLrGwgRC3vTIej+VjA/aFTOHZySCt4H6QAHWVk/
         +uKQ==
X-Gm-Message-State: AOJu0YwMNdF8OBDMB8/5lhFxUtFP4km/Eets1xziXfcXRozsuOKaVzG2
	OIkCXw14joOe8qbQLLT1W9ObT0R6wA==
X-Google-Smtp-Source: AGHT+IFq89bwTY6QgYTGDazR8YRF0lHfhQCysfNHhc6pISdMHgdvtPJ2K4X5/IPm/p+CbDmwMU+quA==
X-Received: by 2002:a9d:6849:0:b0:6c4:c026:a658 with SMTP id c9-20020a9d6849000000b006c4c026a658mr39826634oto.26.1697471762060;
        Mon, 16 Oct 2023 08:56:02 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id a24-20020a056830009800b006b4281cf424sm1731229oto.4.2023.10.16.08.56.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 08:56:01 -0700 (PDT)
Received: (nullmailer pid 2974154 invoked by uid 1000);
	Mon, 16 Oct 2023 15:55:58 -0000
From: Rob Herring <robh@kernel.org>
To: Damien Le Moal <dlemoal@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>
Cc: linux-ide@vger.kernel.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: ata: tegra: Disallow undefined properties
Date: Mon, 16 Oct 2023 10:55:54 -0500
Message-ID: <20231016155555.2974051-1-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
	FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Device specific bindings should not allow undefined properties. This is
accomplished in json-schema with 'additionalProperties: false'.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/ata/nvidia,tegra-ahci.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/ata/nvidia,tegra-ahci.yaml b/Documentation/devicetree/bindings/ata/nvidia,tegra-ahci.yaml
index 3c7a2425f3e6..a17297cbefcb 100644
--- a/Documentation/devicetree/bindings/ata/nvidia,tegra-ahci.yaml
+++ b/Documentation/devicetree/bindings/ata/nvidia,tegra-ahci.yaml
@@ -151,7 +151,7 @@ allOf:
         - interconnects
         - power-domains
 
-additionalProperties: true
+additionalProperties: false
 
 examples:
   - |
-- 
2.42.0


