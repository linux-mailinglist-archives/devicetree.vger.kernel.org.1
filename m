Return-Path: <devicetree+bounces-11344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF427D54EB
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 17:12:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5EE0E1C20B95
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:12:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D057B2E64A;
	Tue, 24 Oct 2023 15:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=flawful.org header.i=@flawful.org header.b="aNxrrkeM";
	dkim=pass (1024-bit key) header.d=flawful.org header.i=@flawful.org header.b="uPFkoJhQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6AA1170F
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 15:12:02 +0000 (UTC)
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF604199F;
	Tue, 24 Oct 2023 08:11:33 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-507a55302e0so6201134e87.0;
        Tue, 24 Oct 2023 08:11:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698160291; x=1698765091;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tjok56bysgEIfmMlNTMUS4bt0vrF/tKjOL5ojA3lAj4=;
        b=vtrcnYAs5lAhDxJUcqWT2az0hdG2fSTLO6ycAjLKKPN5T3AiybddCoBZz5EzhrE3H+
         SLBtuV1XhGT7+xWUHyC9MuII26UqTl0GEgDPCe3pYTrXyVBX+2iv4EILZeUquYijDdto
         UCwA0lTZyqZfd9tF2Dg9J7G+5L/txd9tjau8vyg35Tu5q1RWBOYYbSEe6EJrE8hyMF7b
         qZl6HbJt0TSsdwrYdRDVjpz+3o/7I34vm+6hamYaEFfqK2oaGT/ytBwp/dggfOZWdpVj
         HmQxrTLNZx4CWLHotijbnAhvkjpwr8hv1WHeBMo0dyRGFqbIqWlL9mva+3iweaxy/iGf
         0v5w==
X-Gm-Message-State: AOJu0YwybJaAhcj4nzmEnq8/IHMaTM09cKH7mjPyuwlwR+rSArnjhjnP
	HY3J6yyhCI7s/67jYB1BIEEFTbeg3/Cj7g==
X-Google-Smtp-Source: AGHT+IGH4OrN/pxWKEzK8+IE5LGaIxuVMltEi6xtNNlA70RYAX6CaeiKmMwyv7Kd7Zpygm1NKDc3Yg==
X-Received: by 2002:a19:9114:0:b0:500:a378:db71 with SMTP id t20-20020a199114000000b00500a378db71mr8388792lfd.57.1698160291070;
        Tue, 24 Oct 2023 08:11:31 -0700 (PDT)
Received: from flawful.org (c-f5f0e255.011-101-6d6c6d3.bbcust.telenor.se. [85.226.240.245])
        by smtp.gmail.com with ESMTPSA id c20-20020a056512325400b00507a387c4c4sm2180875lfr.229.2023.10.24.08.11.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 08:11:30 -0700 (PDT)
Received: by flawful.org (Postfix, from userid 112)
	id AFE691662; Tue, 24 Oct 2023 17:11:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698160289; bh=L8JeOW9o9OlpyYp8SHB1xCbEeYmEJRvMKzVVwI04Dng=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aNxrrkeMHEtEgkynoWTaqcE2AIWGnjuVlH6IbE589WRsZwdnrVf2oAE02HcA1RDvw
	 jCfmtmT4/PMATU0zGar97eNFv4JIDcNvBlZ90261mvazUnBOnp6yS8mf1kDsYGQFAY
	 GUKu195nvUKbRD0V+r8kbSos59X0H+wh+4JIFY48=
X-Spam-Level: 
Received: from x1-carbon.lan (OpenWrt.lan [192.168.1.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by flawful.org (Postfix) with ESMTPSA id 6DD0214DB;
	Tue, 24 Oct 2023 17:10:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=flawful.org; s=mail;
	t=1698160244; bh=L8JeOW9o9OlpyYp8SHB1xCbEeYmEJRvMKzVVwI04Dng=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=uPFkoJhQzCTotouNSHQ5d5yXqQtgVNvrxssQNIiRGjZljqNeSck3cOMf+Lqe98O4F
	 DFpvOEt+sQYUASd80WbXc+0bVXhId8ouznlvWlOUafB+CNUKeXDSWddDj12DKJyNXn
	 4jYl42Aiwaf8K2+7KgAeZClh7mrFfXknuXjdwWro=
From: Niklas Cassel <nks@flawful.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Niklas Cassel <niklas.cassel@wdc.com>,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 1/4] dt-bindings: PCI: dwc: rockchip: Add atu property
Date: Tue, 24 Oct 2023 17:10:08 +0200
Message-ID: <20231024151014.240695-2-nks@flawful.org>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024151014.240695-1-nks@flawful.org>
References: <20231024151014.240695-1-nks@flawful.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Niklas Cassel <niklas.cassel@wdc.com>

Even though rockchip-dw-pcie.yaml inherits snps,dw-pcie.yaml
using:

allOf:
  - $ref: /schemas/pci/snps,dw-pcie.yaml#

and snps,dw-pcie.yaml does have the atu property defined, in order to be
able to use this property, while still making sure 'make CHECK_DTBS=y'
pass, we need to add this property to rockchip-dw-pcie.yaml.

Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
---
 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index 1ae8dcfa072c..229f8608c535 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -29,16 +29,20 @@ properties:
           - const: rockchip,rk3568-pcie
 
   reg:
+    minItems: 3
     items:
       - description: Data Bus Interface (DBI) registers
       - description: Rockchip designed configuration registers
       - description: Config registers
+      - description: iATU registers
 
   reg-names:
+    minItems: 3
     items:
       - const: dbi
       - const: apb
       - const: config
+      - const: atu
 
   clocks:
     minItems: 5
-- 
2.41.0


