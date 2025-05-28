Return-Path: <devicetree+bounces-181192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A9CAC68EA
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 14:13:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5901E4A7FC6
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 12:13:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F1F42853FA;
	Wed, 28 May 2025 12:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="YBC9dg2b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85EBF284B3E
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 12:13:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748434400; cv=none; b=QkiakODNaL74PKgbqSnTWPr9liM/z+7IOJ6V8ZRcdNpkcwNfyTLcIF6YDCPNrkdBzIGShfakASWt4EuojovNfmMTu8RgrpWTKqhlYRnDJDrA6K1O3WqiX5xoVaqGfLy9QA04jUj6GgxaYEL23kifq03sa75qaHi5zkIUf/8qZTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748434400; c=relaxed/simple;
	bh=tFUwK8osdkR3kQ55LeHDS1pqM9vMk8mtJ3mieIzJofQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=k5UO9yM0hNWA0oIk8JVdqVAAooUcToQLmpkWeb1lgJX8gRr7UnKFmJSOZCzYeqaaHpST8yZxd2tA9kcTXCKXwvIcF10fkJeBOwMtgFcidFvFyyZsFUopfdLXD3+XstqJ8GUg4mf5PjIiF8xxuyrmTZ8xSRgZcbQIkxF96p9dSyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=YBC9dg2b; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ad51ef2424bso921394466b.0
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 05:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1748434396; x=1749039196; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fw04JnK5IoPkplJtwQfPjdHnamcMU8mHDxupSjYcvsA=;
        b=YBC9dg2bcCszhzdtTvqQ/drltrxRefW2gHFvM0UTTA0U6GqsBvWfb0JhDKu8mYcPDD
         ogkQS23hhXcgjtYvOfh/g7hepxYdsU8kHlJktSeL1Cs69b4iaIBF1o13UjX48Yqts072
         24QO4xpQF6saX9SX0ApzurGz1rFnRi86xO9PA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748434396; x=1749039196;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fw04JnK5IoPkplJtwQfPjdHnamcMU8mHDxupSjYcvsA=;
        b=lyVxKkZ15NrHFbmIoaxMpZEYAYDFsE4uNMIkO/a7EFlAa5gILKe+Ci3wTnvoWBMnm8
         He/dSqqnIbTzEfFL0n+qlM6EwR4kEvbGaQuShzUf7et7cPXaj+qDigzvP4oLrH/Ox0Km
         N6bLc9ocqOXpO79ViVYvRYoBokXXaxk/leyKQmgFBu4ETDEK8Yr/RupdLu3CKImqF4Hh
         2ZbpGvumFkDy4b4/GnEa7hlztKZql9sCfktHBj595GSXiS2j+CW65Z2AeZaZhAGsJ0MA
         vR2Uq/S4/MpeJuIQ550yzMF2TzARNCdzbkX9ayuoeSWzDTEoJucNRweIr8q3OdfwztMw
         qZRA==
X-Forwarded-Encrypted: i=1; AJvYcCVorQCWlpbkgpk2XZiAKCQvANczGu4parO02O9SvSYU0aXC0Ldi/nsoiiZ7zFS4+wjwzGnCZZwzCXtq@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7GPSJCSCPIzuNU3Kbzhf7mISdCCNSL3M8klZbFfcNH4wJW3dA
	mQc4WMJFzFzlr5rGAA0tHmWsSEoPCe9YFlXhwSc7Lob9Vm8A7eNN9XH2YlrolgJRl8Q=
X-Gm-Gg: ASbGncuf7Hz+ty4A9tOsdDWKWbc4E1/tU6Z7S8qJHEgpDIS/v3B8SmtyLoevreLe3VA
	hYduNjWp4KVaf+Jn1bCpOOpbRqm3IA42UcEH4p+b9JnMIkJ4m8/j1pQKZ1NPPzXh97fqAHNUcka
	vHiOxRd02FHkvSGrr7yQaHwZgFqipnlmKhOd9HD8uW+5VXOLWRm5I/RRNFoDnh4E3cw1y23b/KR
	wHvRBi7+7Nm9ZadtXlNd3JJdz99skDPe6SbKwhWksQ2QGmJVw6Bc/DCs2CtDTtMjLbY5o1eL2fl
	noYDzlu3EfTmWy5aCzvcg+dJxI5FP3X6SaKkQPsetn1xr54YRAfT4EGlmwhxN8f5YCItUlhXm8d
	Yz4RqCsGWTWEj
X-Google-Smtp-Source: AGHT+IHjHVf7EnkMIgSIuPbunpDiuFLD53MNNfAy8UL/f57+DzwfftpdTMBZSEsbPUhVtUknM6NWKw==
X-Received: by 2002:a17:907:d716:b0:ad5:6b8a:a0a6 with SMTP id a640c23a62f3a-ad85b319ab8mr1649803866b.58.1748434395702;
        Wed, 28 May 2025 05:13:15 -0700 (PDT)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:5631:61bf:398a:c492])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad8a1b5b8afsm98523266b.170.2025.05.28.05.13.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 05:13:15 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: michael@amarulasolutions.com,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@denx.de>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Frank Li <Frank.Li@nxp.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Heiko Schocher <hs@denx.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 3/4] dt-bindings: arm: fsl: add i.MX28 Amarula rmm board
Date: Wed, 28 May 2025 14:11:40 +0200
Message-ID: <20250528121306.1464830-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250528121306.1464830-1-dario.binacchi@amarulasolutions.com>
References: <20250528121306.1464830-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The board includes the following resources:
 - 256 Mbytes NAND Flash
 - 128 Mbytes DRAM DDR2
 - CAN
 - USB 2.0 high-speed/full-speed
 - Ethernet MAC

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 1b90870958a2..b67f0e71e4c8 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -89,6 +89,7 @@ properties:
       - description: i.MX28 based Boards
         items:
           - enum:
+              - amarula,imx28-rmm
               - armadeus,imx28-apf28      # APF28 SoM
               - bluegiga,apx4devkit       # Bluegiga APx4 SoM on dev board
               - crystalfontz,cfa10036     # Crystalfontz CFA-10036 SoM
-- 
2.43.0


