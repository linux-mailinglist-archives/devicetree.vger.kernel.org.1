Return-Path: <devicetree+bounces-160145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC2CA6DA48
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:51:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AD6137A3507
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 12:50:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B64A625E46C;
	Mon, 24 Mar 2025 12:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hNM/vz+m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE8F25DD04
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 12:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742820673; cv=none; b=QWwaW4bCYMV2revON09juIbAdQcZbHESsLIw+zHk78H3Kgx+iqGSAKGdtk0suAaP3EGLOXcz8xPQjpOolLY1FlBaqK6dGOVEtROz9n4hpWk/AIVe6p3O4wbOz85YkuBhlzlBu8jNDgcc861v/4O3LM8edgRTnlV220eMqElxBog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742820673; c=relaxed/simple;
	bh=lLfOSLdPa8J+gvx3KKdoc/YPg+4C/zjDSCX0M4dlUMY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VbaGUPzgsDV5No3ngqCsX6fJi7msU74/0akVGqUl+pvuTwteVmZ+bS0/RJCVFZkQjyuErCk2UZ1+srYozv/5JhJ4U32grv1p/fZGk2BC+ptPMNvyz81CbiNcw/KxBZTxmxtZqCK28B+UI9TMKpNm7MbUUYUTvsaEjgJxi142S6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hNM/vz+m; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-38da6a1a20bso270476f8f.1
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 05:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742820670; x=1743425470; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZNkO323fCDGziIQ+TCe0Bh3YOcfzf6+FAg8ZnvrxNgo=;
        b=hNM/vz+msgezokXpBQ1kH+3Ah+TuC4TN6SZHIftY+NXZ8EXuTyNJvK9k50XfQnYVm4
         qipw3v2YxEnNXJP4hJXqvUyq/Rua3QeyTijVgcJAOwJijFvSHlyvRmXKnSTdWRK0ezze
         jaPasXgPCGRaZmyWJLGnwVZ1PsubCkZLfrXV/+h5/8aR3hHtQ3MevswxgV6DN3E9eBXW
         cGk+gsBMxPYP3PF2/LqvHoYEW39E+LKcpHVEu0yqC69ek9PQ2ZbC6GMM6a61Lx+OTvOE
         TopHcdwJhhTTkhNSPBD2nwNVCbP4ZbQxJ8qI+dZk5sRdgBK6oD2ajpMrBQiBLCFBCG64
         SOwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742820670; x=1743425470;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZNkO323fCDGziIQ+TCe0Bh3YOcfzf6+FAg8ZnvrxNgo=;
        b=N2QH1o0RB6CclHQcXB4QcAKb4nSWKb7BREFDlDd4++3Q0XOcKcPFqBNHJYCU2j3ap0
         NwNsdMtQrq6dZ2UmNKMOqhMrHbP23Ihf3Ff5S4mRwhEuCyjLQC8LjjNBvT7sSzXc3yuo
         OGRNGAHKnKxQZr5Oe05ZSN5/AhYzK5wU/krDllYFgZ0rTkI4A/+wLorlyXaBY23uFU8v
         JfqibP+lPlGPgsnrlYu3IeDz/uk+mWC8RjRWo9VOzo0VUoqKnTEwW5a8VT1LzzeJPtJk
         mTHPv8U3Ib2p5EjNVTgziIETZqOLq+IchKyDS8rgNX8TJYe05OhIRSWe3hnKcyJM2zqS
         rdSA==
X-Forwarded-Encrypted: i=1; AJvYcCXzcLVSMoBSPE4e7uW6Z7tp9JlQNTJFfLd1hiIV4nnnpCLLtke7xOgGJe8C3brDRlJQ3PRvO746gi7O@vger.kernel.org
X-Gm-Message-State: AOJu0YwZTwZUy5F0on7gjwqcRjOO8ZsHZP/kKo8STHStDctH7ZIHyhS7
	QsoLQVnGudhf61N3KaesaphogiIxJhpLlagZCpv9qGSheVRzDVlDccRpAJ2ZBbQ=
X-Gm-Gg: ASbGnctjWZAdm6HrdHbUBPDiGMvXCHAPh0tBjNTBSX80VTAKqEYSj+CxJ3E81MjbkO9
	OFZELd8PD0uTTEa9mqSwI1GH6foH3XL6cs8CoWkRtFY8AiZtPEz30xtIpuMO61shjPXLLcs3LVF
	7r8S0G5ge7RuUP/4KmGt3uwtRHzFq2+OFtTJSlvApnEbuBjMoLWCVCIeMICb+UBrldMRgWul+Hd
	znIMfbLJ2E954Z7VZ2bz++pNwWglmnAro7yw1oNABb03eo3ptnUxCjLmyGzB9myPLBwA8p7JUg3
	M3pdGI1soWQkCKCwO1QqJF5HewgB8L8oNDHYGRrMVmw/912fUBEk4+dvrg==
X-Google-Smtp-Source: AGHT+IEQndIp5eFpgd1dTDP4lH7gXczSBzoAyRnBiPmFPk1TMdz1z67MW7mzStpV92IOyZshhOAyYg==
X-Received: by 2002:a05:6000:1a87:b0:38e:48a6:280f with SMTP id ffacd0b85a97d-3997f9406bamr4947758f8f.9.1742820669984;
        Mon, 24 Mar 2025 05:51:09 -0700 (PDT)
Received: from krzk-bin.. ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9b517csm11117180f8f.51.2025.03.24.05.51.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 05:51:09 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Sean Wang <sean.wang@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Andy Teng <andy.teng@mediatek.com>,
	linux-mediatek@lists.infradead.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] dt-bindings: pinctrl: mediatek: Drop unrelated nodes from DTS example
Date: Mon, 24 Mar 2025 13:51:04 +0100
Message-ID: <20250324125105.81774-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Binding example should not contain other nodes, e.g. consumers of
pinctrl of, because this is completely redundant and adds unnecessary
bloat.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml      | 10 ----------
 .../bindings/pinctrl/mediatek,mt6779-pinctrl.yaml      |  5 -----
 2 files changed, 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
index bccff08a5ba3..5f2808212f39 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
@@ -136,16 +136,6 @@ examples:
         #address-cells = <2>;
         #size-cells = <2>;
 
-        syscfg_pctl_a: syscfg-pctl-a@10005000 {
-          compatible = "mediatek,mt8135-pctl-a-syscfg", "syscon";
-          reg = <0 0x10005000 0 0x1000>;
-        };
-
-        syscfg_pctl_b: syscfg-pctl-b@1020c020 {
-          compatible = "mediatek,mt8135-pctl-b-syscfg", "syscon";
-          reg = <0 0x1020C020 0 0x1000>;
-        };
-
         pinctrl@1c20800 {
           compatible = "mediatek,mt8135-pinctrl";
           reg = <0 0x1000B000 0 0x1000>;
diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml
index 3bbc00df5548..f4bab7a132d3 100644
--- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml
@@ -245,9 +245,4 @@ examples:
                 };
             };
         };
-
-        mmc0 {
-           pinctrl-0 = <&mmc0_pins_default>;
-           pinctrl-names = "default";
-        };
     };
-- 
2.43.0


