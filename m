Return-Path: <devicetree+bounces-236160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A6AC40BD6
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 17:03:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47484422416
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 16:03:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0B8B2BFC9B;
	Fri,  7 Nov 2025 16:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Mn5mQn7I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F16B239E81
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 16:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762531400; cv=none; b=jUL+qJiQQ0RC/RSYz5zP212EG7Ii+rsXoCKab0jXkg5p7VHoVqWpgzhJExIbQ1V6p5OYrzmJS6/uP/OaEL8uhmlwm3G5XNSvUPjb5sJM1LW9r66LtVbLCSlU/LshCzFh9e1RJOVYDBxNoN2OY/C5yS7QVgGvUJSTGT6M3lPDT1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762531400; c=relaxed/simple;
	bh=YfWQ/2PKyvWRIK3kXIkrEAQ1yaWJEPP99cI4Ld1q7CM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DDkTquCFAlVcv5fYmRm9IQLt6ttC9Ux85m9333JJDAB8Wy/hIL4d7DwJ4A9dc1QjsH5rbJ+9titLZw8u0rU2LHJ8cgL5FuP29MXc7mep5mAwHLv0PXiNVlNJTn41jrKm+dx257ga/cBvtkxxjvsjXYcUiuSU8i4LtX+vYUcWzmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Mn5mQn7I; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3ee64bc6b90so649906f8f.0
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 08:03:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762531397; x=1763136197; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jn/Od/4YICRZnXAyEJg+dgWKk8kIueyrVLZ2I+p4YAM=;
        b=Mn5mQn7IGf1zK8vcSXyU1KRoj2g/xnnjKJKc3bsYcPPY4kQbdIygGUH6JMFpmMxQG/
         9BDN6pKcJb0c3CAJTSQtZNGQ8VKNdv6FNOCxCs7wF8d8EjLeR1MCSfEAUDhZ12V3Cpow
         x5dyZYpOFdBP/ZfD3aWqJBRqjNpS6CDQpdzd4wfb17nMoJo6CipIfof0XWrhlZ2OeXz/
         CWxSPB/SOErYfxlMqLOUAb3t/SD/K7QsEbMGthrH7JKyGe/DARkS8/xg5rqsjNbdVBPf
         P2z96dZjOhT0Sb42jRw6DigpudZVawmGxLbvkm6iAT/FJeahm+KQISkizi8HBNESax8f
         QeAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762531397; x=1763136197;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Jn/Od/4YICRZnXAyEJg+dgWKk8kIueyrVLZ2I+p4YAM=;
        b=AQZwvAla9Emj8MAkFDUT4qElgf/eSB8XO3beEbCfA+tJZy80Kgggqd0e6pQ9A1HyqI
         OqNw4bdvQBCnjVrzwCGBw7OvHUWKBSNzh1HFhBz0nfBJa6pGN20R04KSB6fySRB5VhZk
         t9tu049U1BmFMWTP/lWHYpDmxRqLDpC4SUZ45HZzv9m251zvesQec6RT2W/Fp/p1b33y
         RIxkKuGv4iGuboEaE24pHQZGl81Rdpx79EX/qYWzxNQsls7e0Gd66IzRUsDqvskUFvPI
         hgxYn+Hi5U04StqNu9psMrTPeHUinR9ZmJWXgtSTjrDGsnO83BlffJ890zwH43tYKzRx
         zvQw==
X-Forwarded-Encrypted: i=1; AJvYcCUEhWLqfsMMj+Iu6xH0qw3Gqc3MdGlmavrbFK0/+6h1oZkwwJTdJp3VSaOQDZPsUmKZWP4wYTq7cFfg@vger.kernel.org
X-Gm-Message-State: AOJu0YzLAFbVkBF5YYtvZCIuScK2PFNQD4wtghJJKnOm4VhnXyqfX0kf
	h7+zk6iAzyiDko87jEYw9QnVv43PP7QNOQCeid3ivX7zJ2NZ1au4U6/d
X-Gm-Gg: ASbGncu7QpVm5Q1SNcaJRsNQnMLI+Ndt7R+NDsh5rSrFobzptAcNoGNJvsoVBbqsnsE
	GeRWaJ02MHSfzqZfovxFd6oEd1BByTrvj7FrDztNgIFhxI/chefyrWcuOAj0koAVe3FGbQ3ywJX
	zm95sVmMQjrJYi2aqhdtzfVNljfSzX/RVUgH5yikQOfZ8qgrmQy0kxnrEP+9qd0s2uoRGNw5ks0
	8MtE39xmgl5ZPsravSqc++vF6R0S/NtbaAjtu6N+JHCVv5Y7AImvUViNiHL41ST1/Lie/aW9yei
	CB5YzPXxhQy6Zy1JHeFqbkw48WwSeMwoXB1Mha28CDyzTd8Fsz2IW6Pj0Q3drtgWucwxTJYa1p4
	49IsNDZTPy//CQk+eVQ02HV43g38gRaz7EN1OM7+sr6yoYxNaDpgAbLMxkE3DOL3Vl0qW/uNfXD
	v1yHxWY4+ve2D308ewip5MYJ6uAHbORQ==
X-Google-Smtp-Source: AGHT+IFlyBZfNRMNXVV5qUwRTFWSjWoXooTbJycgw3IhWharvD9aJ29E4znbDQrJZiQenU37vZU4XQ==
X-Received: by 2002:a5d:5f94:0:b0:428:1475:6a26 with SMTP id ffacd0b85a97d-42ae5af41cemr3864192f8f.56.1762531396986;
        Fri, 07 Nov 2025 08:03:16 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42abe63e13csm6058016f8f.19.2025.11.07.08.03.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 08:03:16 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/4] dt-bindings: soc: Add bindings for Airoha SCU Serdes lines
Date: Fri,  7 Nov 2025 17:02:43 +0100
Message-ID: <20251107160251.2307088-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251107160251.2307088-1-ansuelsmth@gmail.com>
References: <20251107160251.2307088-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Airoha AN7581 SoC can configure the SCU serdes lines for multiple
purpose. For example the Serdes for the USB1 port can be both
used for USB 3.0 operation or for Ethernet. Or the USB2 serdes can both
used for USB 3.0 operation or for PCIe.

The PCIe Serdes can be both used for PCIe operation or for Ethernet.

Add bindings to permit correct reference of the different ports in DT,
mostly to differentiate the different supported modes internally to the
drivers.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 include/dt-bindings/soc/airoha,scu-ssr.h | 11 +++++++++++
 1 file changed, 11 insertions(+)
 create mode 100644 include/dt-bindings/soc/airoha,scu-ssr.h

diff --git a/include/dt-bindings/soc/airoha,scu-ssr.h b/include/dt-bindings/soc/airoha,scu-ssr.h
new file mode 100644
index 000000000000..a14cef465dad
--- /dev/null
+++ b/include/dt-bindings/soc/airoha,scu-ssr.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+
+#ifndef __DT_BINDINGS_AIROHA_SCU_SSR_H
+#define __DT_BINDINGS_AIROHA_SCU_SSR_H
+
+#define AIROHA_SCU_SERDES_PCIE1		0
+#define AIROHA_SCU_SERDES_PCIE2		1
+#define AIROHA_SCU_SERDES_USB1		0
+#define AIROHA_SCU_SERDES_USB2		1
+
+#endif /* __DT_BINDINGS_AIROHA_SCU_SSR_H */
-- 
2.51.0


