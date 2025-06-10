Return-Path: <devicetree+bounces-184181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA445AD3301
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 12:02:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B1BCE172D42
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 10:02:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6BDB28C2C6;
	Tue, 10 Jun 2025 10:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="AMVrAUru"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A371E833F
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 10:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749549709; cv=none; b=QZWP3A6VKHu4hzWld6jUBbkH5W6EhQ3wPLzRTQtjCgnANAEiaDK/qzf06W87dYWxy/sBMF9YbKYNSHk8JeNpsAXx+c+5GXok7L516NcRG2vgL0bfjYb5IV6T/x/aD5UzFUSjGqCAdvYTd4eX/r8Q5OfDKpSaaueBfz3+QLo+UpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749549709; c=relaxed/simple;
	bh=tjGpjjFiBa97auucGJvEEoBEE+LIjJlCsY/Rn88+T7w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=P+HlF9MSdF8jPpM5f06ITEQbpjqKRNmkRGstjcX3sbe15oUZgRHwhQCIJaHH9QsMKvHeFOw93xeBcoiT7llei3/nOvhykRsCRt+872oxEut3LfoRWmtXpvLHgQakxe00sfUAiEfo8YSuJsD2OXDOr0sWAGImv0mOQ8pxPNoBrHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=AMVrAUru; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-60768f080d8so7737855a12.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 03:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1749549706; x=1750154506; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qzJn+q/i2HrP+0aEyadDV1AxemkoGFjRANAjmpR3dAw=;
        b=AMVrAUruiXDD2dyG4Y0le5MaTSlszo9A2oQDLR+T9F5ovjjdiavzUCOPcdDmZL5B63
         G25e2p8E+jLvnIc167e81+1IO2oDU6uBKtmHSV0AFnsyTk3wIzBgrFVdgmpQXq//iykL
         EPkSrkXh+KWEkBHQbqBcvN6ZNB2Zd0Eq7pF2o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749549706; x=1750154506;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qzJn+q/i2HrP+0aEyadDV1AxemkoGFjRANAjmpR3dAw=;
        b=wBr0TVtQG2Q9EGXLDwaXEv2o3sM797W/ojN8LpkYSlA5uvV/E9Xf7ZHZALMCDTTHCU
         0S5zJLDSNchvf0rJ2A/GT6kul0sJ6x/T2w0Cytg+RmXey4VKGchqU3TZZ6iBqI70PZaJ
         8G74w6+XbakP/s5JXoC40yylaGvYJCTS9isR5PICMXs5NxVWP33gYu5bhNPUlAOcyhcP
         BZH0ZG8LR41zQQEXAzim9ltmTHzjHcvjJjd/5cv/9C+bzagzPJbCQyqZNvnryP6Sn9g6
         TXSFSkDlwj07w8yikJLeUAVf2Gv6lAsSjWQO+u6G8FzPbsfDdENUiM7U4Q+w/bvxGWOU
         O1EQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfP2yC74wfKnfLUR9LdrT1S6RcoHbCjxVu9k6UVV8WHfBchYGijTrWw2Ejych15O7QbtHP4Ip/aQ/e@vger.kernel.org
X-Gm-Message-State: AOJu0YzI03KLEDwIR5riARhzI+FqM8YI8AUgctpu3w0jb0lzQAeorqRu
	RpiX/WfJFP9R2YUxRFDU8JdOQOJqTtEqGa1kF44MfBoMnitkyP+NAqmS87NTPHc3BNs=
X-Gm-Gg: ASbGncv7RlV/wplNonB0Xxv6LZ9od6B5++sDjLBeAXgElZS08DRS/3Cycor2Nm9oeuT
	J7U3TEhIaDnzLMV5kGbFMjkYoJ26C91GT4LHmRsNtahqD5I3sB+Z5Z0w82AMYwwEI9+BaAR7Pj7
	I+d3kFkkXvBab453qkwk/O9917SstH4oUkf84Q6JQDd6CjLTAJi2z286CjJs8ISbQObxprRf/bZ
	UQumqR3G0wodKobPVTNGryuLFG4z6jKvtABrRZEYhWHd5bTXqDkCG1PezY6o4bRT1VuuswToyd6
	h0In/657CLyOVCEKwXY/n7cmoPXF01PRKkYIiuASsqJvV/WgaCmz4v3t57+4gUCM2VysNN2nyya
	dlAq0+icAQR5jTQ4fAKnbXmcSLzTLAqQGzmbmWw==
X-Google-Smtp-Source: AGHT+IFPQROOZiQ40HC/SHgHfRvdrs+evZuDMQZ7q11CzJM14kk+3LSIFz4V0o1jqTkKhETcRogRsw==
X-Received: by 2002:a05:6402:22c7:b0:608:f7:e450 with SMTP id 4fb4d7f45d1cf-60800f7e653mr4073397a12.20.1749549706134;
        Tue, 10 Jun 2025 03:01:46 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.179])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6077837ed0bsm5953438a12.36.2025.06.10.03.01.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 03:01:45 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Matteo Lisi <matteo.lisi@engicam.com>,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@denx.de>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Marek Vasut <marex@denx.de>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Max Merchel <Max.Merchel@ew.tq-group.com>,
	Michael Walle <mwalle@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Rob Herring <robh@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	devicetree@vger.kernel.org
Subject: [PATCH v3 01/10] dt-bindings: arm: fsl: support Engicam MicroGEA BMM board
Date: Tue, 10 Jun 2025 12:00:14 +0200
Message-ID: <20250610100139.2476555-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250610100139.2476555-1-dario.binacchi@amarulasolutions.com>
References: <20250610100139.2476555-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree bindings for Engicam MicroGEA BMM board based on the
Engicam MicroGEA SoM (System-on-Module).

The use of an enum for a single element is justified by the future
addition of other boards based on the same SoM.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>

---

Changes in v3:
- Add Acked-by tag of Conor Dooley.

 Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index d3b5e6923e41..5feb62611e53 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -769,6 +769,13 @@ properties:
           - const: dh,imx6ull-dhcor-som
           - const: fsl,imx6ull
 
+      - description: i.MX6ULL Engicam MicroGEA SoM based boards
+        items:
+          - enum:
+              - engicam,microgea-imx6ull-bmm       # i.MX6ULL Engicam MicroGEA BMM Board
+          - const: engicam,microgea-imx6ull        # i.MX6ULL Engicam MicroGEA SoM
+          - const: fsl,imx6ull
+
       - description: i.MX6ULL PHYTEC phyBOARD-Segin
         items:
           - enum:
-- 
2.43.0


