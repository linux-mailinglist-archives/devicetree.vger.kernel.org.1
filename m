Return-Path: <devicetree+bounces-134413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3F79FD636
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:59:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A2A1163AB9
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:59:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56AA11F9A85;
	Fri, 27 Dec 2024 16:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="gtsa9nY4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80B181F940B
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735318664; cv=none; b=rBf030wXogB9HQcP3TSkEOe+tjpGvuaiXBk8NvwsjXXIynQMAcCTSMfHMY4ZMwSV2gS0REw6cv/PhXt9HZRMKIJ4c8Oz+flek4jrWbyse3qG/Eo+EvrE3B1tzkD1ycqVMM/YQ45mUeGvqSn2JJuUgkSf/blFEhxC5X3oO9ymjco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735318664; c=relaxed/simple;
	bh=naoomUt0k88+wEV17B2ZOe7lNdxVn1y0MUvtBQNmPnY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DQ3aNEEeR0dbV8fj5QDqlytQkUcXBxkPRc5OzAvrkhLhTgme8kgvyRNDjSSD3k20L/h9MroP/FbcaLQo6XOmuCERVgogbKmkxjoNv4DCwc5qQidZMfpDDGPnJIGq/vTU05L2BZuok9z5HV1jM+DU36KhdtBlg9I9WJFcL3DWuWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=gtsa9nY4; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-aa696d3901bso598788266b.1
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:57:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1735318660; x=1735923460; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EXkTXrVS+/nRJltLKdRuy9fqF8vJTsINCmAjWzhQ/Xw=;
        b=gtsa9nY4cxAyM7tJKBaT2Ai55BR4MCEDVA1/XAneh4oJInJXYwp6DwO1YTU/puo5Y+
         ySwbBSmrr0CBI4DwGskwK9JUR1zg2bBeFi6NhzYSou0e7DI1tM7Omhp9mO+JqU3kSi0c
         nVEoke9n/lljBckMARBmds5dFNWbND3B9Q0cY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735318660; x=1735923460;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EXkTXrVS+/nRJltLKdRuy9fqF8vJTsINCmAjWzhQ/Xw=;
        b=DX3kQ/VqtKmjfYAj8wiH7L0eJ1ua+NZZeo9Ntb6RAgMinijoqiBwxLeFZ58Hdknf5H
         UJOe2jCbP5QxBRrKMo/ufTVFF9TqxCBWhOpKmkoygGt3wHBPhUJ7IvrTadlVeiCeRRWD
         ehwXaPBAHxudWXAUFSrrhb23DVm4UA+YJPn9b6Fz43EWKO/DdpV2wHueX1LeogTsMF81
         ew24blyMoNUDOSHjh5+4bheiKqxYhxJGa3wksT2WdCa7/CBKfhW+ef+TMbXAI3YrAYkX
         mWwLF1ly9aJ5r1Y3mySgIDJXPxKZFM+qhtkG1j/8WC4sRyc/n0ue11uCgp+2jO5FfR5J
         Xkbg==
X-Forwarded-Encrypted: i=1; AJvYcCVIzILGwS98X72fkXBTSCX/oK9vgviWUfNBh0dF/rQPh8c4BzXGHX9BGpWxjab5bd5wtJS7vcllUVos@vger.kernel.org
X-Gm-Message-State: AOJu0YwHaJeJyMi3jqm4ofVp3xEI7DW2wuLnnLNzrib9kEAE4QJfD/yA
	6EzZpr3FBkphlTKuUMiYlg4a2zo10n+xpPaAkhuI2WMrg/SCBpEDWgRuyAKaizE=
X-Gm-Gg: ASbGncumjIEebNpDxdeGLPQwDGTx+fxWzv0W/+AA+chBLVXAsPWMru8PaOE8A74IuNM
	xLokpNi0Ufy9BmZ6mIE7i2zwP5XaO0EWooxtzMGultmujhvdm0CFEwljsKPjXu8Sqe5oEp2/CIV
	RYJ3Rhz2o5gIRkgOLdGsH6gGc+qnK4At+3brqS1V61fAGxvQ7wmmEB/m2pOroW0EABlQCrfFaGb
	tFnSnC4oYrpPa7hZPwcMiAgZ5WjgKvgH6eTjAS7TaoSFAe2FFkmAP2WobLTVHfdqb4iPYJjk5RB
	QB7bkWVtHyT4RffcdKuXuA==
X-Google-Smtp-Source: AGHT+IGCaJDO5HxA1JrQ3trYq1mZgAVJbVh/QmApzDwyIdyVJeYbHjoW+NICkcizlG/u5obfXBOTOg==
X-Received: by 2002:a17:907:3d86:b0:aa6:9eac:4b7e with SMTP id a640c23a62f3a-aac2d455458mr2795714566b.30.1735318659824;
        Fri, 27 Dec 2024 08:57:39 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.43.175])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f0159f1sm1130097266b.154.2024.12.27.08.57.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 08:57:39 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Abel Vesa <abelvesa@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: [PATCH v7 10/23] dt-bindings: clock: imx8m-clock: add phandle to the anatop
Date: Fri, 27 Dec 2024 17:56:13 +0100
Message-ID: <20241227165719.3902388-11-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
References: <20241227165719.3902388-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adding the phandle to the anatop node will break the ABI but will allow
for a better description of the clock generation hardware, making the
dependency of CCM on anatop explicit. Indeed, the CCM receives the PLLs
generated by anatop as inputs, which, together with the oscillators,
are used to generate the clocks for the on-chip peripherals.

By doing this, it will also be possible to generalize the CCM driver
code, which will no longer require the platform's compatible string to
retrieve the anatop device node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

Changes in v7:
- New

 .../devicetree/bindings/clock/imx8m-clock.yaml         | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
index c643d4a81478..b23e639e6389 100644
--- a/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/imx8m-clock.yaml
@@ -43,12 +43,20 @@ properties:
       ID in its "clocks" phandle cell. See include/dt-bindings/clock/imx8m-clock.h
       for the full list of i.MX8M clock IDs.
 
+  fsl,anatop:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      The phandle to the anatop module that outputs the PLLs, which,
+      along with the oscillators, are used to generate the clocks for
+      the on-chip peripherals.
+
 required:
   - compatible
   - reg
   - clocks
   - clock-names
   - '#clock-cells'
+  - fsl,anatop
 
 allOf:
   - if:
@@ -109,6 +117,7 @@ examples:
                  <&clk_ext3>, <&clk_ext4>;
         clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
                       "clk_ext3", "clk_ext4";
+        fsl,anatop = <&anatop>;
     };
 
   - |
@@ -120,6 +129,7 @@ examples:
                  <&clk_ext2>, <&clk_ext3>, <&clk_ext4>;
         clock-names = "ckil", "osc_25m", "osc_27m", "clk_ext1",
                       "clk_ext2", "clk_ext3", "clk_ext4";
+        fsl,anatop = <&anatop>;
     };
 
 ...
-- 
2.43.0


