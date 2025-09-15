Return-Path: <devicetree+bounces-217614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CD303B587C3
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 00:46:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A85F1B25912
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 22:46:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 485B4286D60;
	Mon, 15 Sep 2025 22:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lxy9qqDC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2BF27280E
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 22:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757976388; cv=none; b=BhmamGoqtixEDYTO3OxxvGVQD8WAfEY+bqtLgePR/uppuslnrEj+mRfIlBrpyNGdlZeIsqv2zgKCD6EZgeapJUen+L2mLAl98FxcB6XUml/4lGXwWz6Xnm6NbHyaG8til7gnZrAOZrjBcl6lO/MEAZD2ec4JTEAygFoPhvHqJuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757976388; c=relaxed/simple;
	bh=dB1OztffTtPLQ8svUIE87jrVQ1xV6M40n11vNPdAgNg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=e4MHLYwoO12TNXJho0neNx0hPAswHQgvy+8VI9KvQn6RVaeMCUo/94NEbI4Fpvf8HaLMAqU4MCV5FtQEcn7YuTCD7ntYlCvnhz4XxP/lBXoHI4pe1slPiTkYB74N4W6ExjNpojJPCIRH0T2sapcd8K2NZ0JMFDS/xnuLlcgX57A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lxy9qqDC; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b0418f6fc27so811430966b.3
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 15:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757976385; x=1758581185; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=13DnP3wRqU+zsSJbDDW+krsmHK5NNVJV3DHwW0NPTaE=;
        b=lxy9qqDC3Wn1IY6PQvredi9lqe2f1ycqtbmq7+G8JRpP7X1w4oV74c4iKALqEZubZH
         HvC4LTaSO/zia89FHOCR2XIrYzWqQgWIq67MiFa4LIb8RHK65V54160vxGXRvL1jF37c
         GsgvKjZWxhdUYKzMwG49Thjjysr/IoElTjCiF3zn5KUHbp/zglbmT+PnUuPDyDiAzlWT
         1z8Nm5qyjx8L4/JQv9EmOJaac+RkdzUSRDOS+mCMUtrdYfXE/vH/XfGVS4w6f4nUDq9h
         r20oo9ha+vu26NTI83ZD1VqFgMa9j5xwROHAZi5MTSjOoWvpw+fzNrO2ztjMyus1ZI6f
         dSWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757976385; x=1758581185;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=13DnP3wRqU+zsSJbDDW+krsmHK5NNVJV3DHwW0NPTaE=;
        b=J/vSH8MDGV5dc5bQwLLEcvNyxeIAgcS1ijTfp6HnzVrguGs21JiZRrhkKp+h6qDAzj
         l+zDDb6Oq+94ByuYdkE1Tmfv4fEuGrIwI/hVePTOVlRSPjS2ej30jdalu0zlvFZ+BeHk
         ckSehennjj8uomptwEutQGhOGRF2pHSi7hslDNoex8QrT0Cz4PSttrgaz6Mh/k3KoAwh
         yo9AbrB+a9hiFRMjvGXY4tYLMG/m9nmgMKj8dBlU7yaoQ8bBrgf4ceyKryVhQpoa2bW3
         tQrhDbsrjKFtevTx9eYcx3MfWDaFHvtKLEfXHdW0PCW+ycWb5fuu1PkrQ1VgExzAJd11
         Tghg==
X-Forwarded-Encrypted: i=1; AJvYcCW3M0/jjNfwL/OUGA5qATP2IJt680CDFw6hTTXQhj0+e8v8E+Td/gzYRz0sHeJxbxhSfq7X/XcoNxcP@vger.kernel.org
X-Gm-Message-State: AOJu0YyBULqt3Qc6TAoYAAAOai8RG2XL7PspfEYrrAHN4pREYCwvgLw6
	td0V3aEOfzYh4yA3rN0ds7flWWhn98j3BSVPNHhtcv/96400Rojagwg=
X-Gm-Gg: ASbGncs3lPjTf38okbK12VVb0nh4/FmmwxMQQ7RXC980tgH1DArZb36TYAm0mJ5m9rO
	+itirmgk06qA/zEMZmdcV7KA9wcsoAMd0x99kxSNlDMGdx9mN6Bx1ltNtC7Awc4GzJ7pr4xnT+Y
	+91hlk0EYR/DBtQiXUd3bz5ZGKJI+6U5RN768bgQzP13vB7ccMPTeuHk4Uqv/ZXLhZA/Hur7eBl
	TrWkI9OZk+EhQEgMcvcrMjX10m3n5n8G31XE1vZJ9PN2/Q9OJSN3kMKlk6fKRK+OSPl6xeJDbbl
	5taFSQ5s9tmgPNCOhRzV7Gjj72KnhSNHVLvhms5TLcEMaEZdYefRlxKA8w3kW3MsHrV7LkPR2Up
	VfqMNlqllu9WHPmf1XiN8o3Sf6UMgXbdJ1PeYSVrqKooc9nw=
X-Google-Smtp-Source: AGHT+IFC1RDAQdftftflM3IR9GIxbYxiAqxOMxHqEUoMHehF7YawNWtyqMfqbQIPOxJCVyY9vyzwnw==
X-Received: by 2002:a17:907:1c9e:b0:b04:5385:e26 with SMTP id a640c23a62f3a-b07c37a7fcemr1575363166b.58.1757976384468;
        Mon, 15 Sep 2025 15:46:24 -0700 (PDT)
Received: from localhost.localdomain ([2a0d:e487:214e:a6f2:7d6e:32b1:d615:2ff1])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b32dd5bfsm1011153366b.63.2025.09.15.15.46.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 15:46:22 -0700 (PDT)
From: Jihed Chaibi <jihed.chaibi.dev@gmail.com>
To: mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com
Cc: robh@kernel.org,
	s.trumtrar@pengutronix.de,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	jihed.chaibi.dev@gmail.com
Subject: [PATCH] ARM: dts: stm32: stm32mp157c-phycore: Fix STMPE811 touchscreen node properties
Date: Tue, 16 Sep 2025 00:46:11 +0200
Message-Id: <20250915224611.169980-1-jihed.chaibi.dev@gmail.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Move st,adc-freq, st,mod-12b, st,ref-sel, and st,sample-time properties
from the touchscreen subnode to the parent touch@44 node. These properties
are defined in the st,stmpe.yaml schema for the parent node, not the
touchscreen subnode, resolving the validation error about unevaluated
properties.

Fixes: 27538a18a4fcc ("ARM: dts: stm32: add STM32MP1-based Phytec SoM")
Signed-off-by: Jihed Chaibi <jihed.chaibi.dev@gmail.com>
---
 .../boot/dts/st/stm32mp157c-phycore-stm32mp15-som.dtsi    | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32mp157c-phycore-stm32mp15-som.dtsi b/arch/arm/boot/dts/st/stm32mp157c-phycore-stm32mp15-som.dtsi
index bf0c32027ba..370b2afbf15 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-phycore-stm32mp15-som.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp157c-phycore-stm32mp15-som.dtsi
@@ -185,13 +185,13 @@ touch@44 {
 		interrupt-parent = <&gpioi>;
 		vio-supply = <&v3v3>;
 		vcc-supply = <&v3v3>;
+		st,sample-time = <4>;
+		st,mod-12b = <1>;
+		st,ref-sel = <0>;
+		st,adc-freq = <1>;
 
 		touchscreen {
 			compatible = "st,stmpe-ts";
-			st,sample-time = <4>;
-			st,mod-12b = <1>;
-			st,ref-sel = <0>;
-			st,adc-freq = <1>;
 			st,ave-ctrl = <1>;
 			st,touch-det-delay = <2>;
 			st,settling = <2>;
-- 
2.39.5


