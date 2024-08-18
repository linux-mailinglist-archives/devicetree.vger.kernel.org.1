Return-Path: <devicetree+bounces-94546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5A0955DEE
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 19:29:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4D8571C20AE3
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 17:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D76415359A;
	Sun, 18 Aug 2024 17:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pKk1X/sw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554B1149E13
	for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 17:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724002132; cv=none; b=jbrN2tpmrU/gRqeGPgWEONHwi0Fq+KXPDpWDGv9DKVihslHCSh0Bq/+eDwj7y977tusMuupVts/Un2JLD33wLg1pezo0z+0lNvOPd8XXrk1XHP5fnB0UX8ishNe3yzrovAR0eWRSn96zPiHj/hwEMBdOhXbCygAToieAAXiawiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724002132; c=relaxed/simple;
	bh=EcLybmfw+0g9pG7qN2rZISIWYbjARPz79yYF0pURgRg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KGzYGnCvSsrDE93GMcoYk1HU0DWAMLXwbITfIfAT7p6RjEQZoXoz/xRyiUr+ZYJ5q93Re8o2enYG7WWvGCeGAPbOEo7lJaGIJcSuo0YtBagfKfWHAJZMUS1yczBgOr0zJ9bq4CR4Rw6ATnx2jtt+vbvZ8xPRbs+D7b6cUO893nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pKk1X/sw; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-371afae614aso834754f8f.0
        for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 10:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724002129; x=1724606929; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GNx0581gmw5KmVnKNMArHkHEaJIxEm4/jRsnasy6Iao=;
        b=pKk1X/swdl2oN+2bNpUL5GH7qs4Ir4Cgl7LUFUkNE/562P1P/ui1Jib+Q88VxAIgb9
         /jSdiQSVxOeddjSASj4ktt1tDxLEzXdVzHhCGLdLO5I6vCXF+HtYyuzBJFabrWfpHaaK
         6P+eSRT5tdh3Ly4sBzReo0jdKyhaEGmkZ4jekegK0KF+5UT6fWW2yQeVaITVAuww6pl3
         Z65Ywt3UbN98sQ9CFk6tXyg01er/bw5utj0jY0/7GiMTo+tKbN5XCMLxfkHhFrdl6xni
         tl99lm2DNlB3uzROAwPOZJMyFDLrhbL0xX11zd2ASHCsCqVLUFPXRBOaSdCqVvhd/OJx
         1ZWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724002129; x=1724606929;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GNx0581gmw5KmVnKNMArHkHEaJIxEm4/jRsnasy6Iao=;
        b=XXNPbVNyXMvyxdWSUZTotYznvLMWjrvBAxY61MjVkjr1TlMDHprHtqiak9i4LNy2/e
         tFmEQHGnImE9H/wKs4HN40k8/tJx4xB5++sRxYxtO4OBkT+pLfpgUD12pycav5/5vPGI
         h9rVErNRdgNCgU/WQlLSgrDGGXCR6RCtOoVeegA8LO1YY9ld46npF8rLbaV4M35AhFWv
         /gTQO0DldP6Ema0PraN/HUVJT0b2djuIz5l57AKs/+9C9zdSCUEpWu4mG2TvQyfi8nW+
         k+OOq4HHiZcH3ejyYSuqkasW+c92uITq3//ISgIfdWOmEmx94YSgawIAbmUMzui39GZF
         oz+g==
X-Forwarded-Encrypted: i=1; AJvYcCWVImbdcBOlpEsry38upGCnYx47TuOsbCHJ6TeL8fWMALGC3vU5mbOaEvhVyBkKkiwJPBmIX8mU2vgMIngjBCnFijH6m0vGUMy+fw==
X-Gm-Message-State: AOJu0Yzq8V0SZFnTL7nKEuXp6y6tBKtuO7z1vpxCxm9IXz3k+EXn/rcs
	sEgrKReZF9Wyr78fQzJ4St9+3e5PZAtvP5TmxiP+8dTvt7AMgraocekqjVLz0N8=
X-Google-Smtp-Source: AGHT+IHhIVY0bWR2O7mz+r0RXXbWCwIx/u27MbcgBTwXx1CRg5LFhEFV+GL/Fw9bSLQnd+XYkgRWkw==
X-Received: by 2002:adf:f285:0:b0:371:888d:7aaa with SMTP id ffacd0b85a97d-371946b1ae9mr5217302f8f.49.1724002128655;
        Sun, 18 Aug 2024 10:28:48 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3718983a31csm8518541f8f.17.2024.08.18.10.28.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 10:28:48 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Xiaowei Song <songxiaowei@hisilicon.com>,
	Binghui Wang <wangbinghui@hisilicon.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/3] dt-bindings: PCI: hisilicon,kirin-pcie: add top-level constraints
Date: Sun, 18 Aug 2024 19:28:41 +0200
Message-ID: <20240818172843.121787-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Properties with variable number of items per each device are expected to
have widest constraints in top-level "properties:" block and further
customized (narrowed) in "if:then:".  Add missing top-level constraints
for clock-names and reset-names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pci/hisilicon,kirin-pcie.yaml          | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/hisilicon,kirin-pcie.yaml b/Documentation/devicetree/bindings/pci/hisilicon,kirin-pcie.yaml
index c9f04999c9cf..e863519f3161 100644
--- a/Documentation/devicetree/bindings/pci/hisilicon,kirin-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/hisilicon,kirin-pcie.yaml
@@ -37,7 +37,8 @@ properties:
     minItems: 3
     maxItems: 4
 
-  clocks: true
+  clocks:
+    maxItems: 5
 
   clock-names:
     items:
-- 
2.43.0


