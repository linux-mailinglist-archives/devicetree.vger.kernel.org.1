Return-Path: <devicetree+bounces-125333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BAF9DB9F4
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 15:53:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 95460B2182B
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 14:52:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C5371BC09F;
	Thu, 28 Nov 2024 14:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aH1k8Vg3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8051BFE00
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 14:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732805518; cv=none; b=oEfX2N97lqvXBuWIt64K1GuUjK7ZVma/QVPyESWagdB98o/9aIqn14lVHthPCkxDvT9z/IeViaCsTR6TQJ8N0fTLnGUXHjOlYR5MfYTHQXtp3/n4/ZFPTDOj0K23x/j/x2ByR7oTyEDR2P65zrWC3oS1cyt+iSMq5dBh4N6ZzKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732805518; c=relaxed/simple;
	bh=iONE0HKU0IqL9O9ShumEXpebGnA8RIwvd+IgFAfUlXs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=kaf5bttR1sXeIq0S3BRmvGM6kyY7qssDV8pNL9YJ36BjRIhvbnP+Oyy0Cs8kgbiBBOE7M6AqZO89JB3afAXgB/t06s2MOt1hsqtxvwkPN3Pw4JJH881W9gk2plDwBkmRIsq46T12UC8VLncInGlNERvDrBC5zb6+KYXmk6tI8oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aH1k8Vg3; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-724e6c53fe2so719441b3a.3
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 06:51:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732805516; x=1733410316; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=d/MXPQzhJ+NbcczEaxmCbcj8MjpwS3qOOhKqFULBuO8=;
        b=aH1k8Vg3LzRPvjv+t4OKpUkxmLT3zHCy3vtqri31hXcXWxvwuJf/n5tFhXkpO1YIJI
         dt0JtRorKg3ESrqVKNtm9RqY6zMG2ng/dcQoBP0Wr2YR4tydOdW5uPusd1O5Q8TZIAKB
         8TwY2a+nVzR3Oovo1ugFcEL6cYcnKqLUC7BwAZwgdpLPmtC+fv8AyxeuiuzaUXj1Ots/
         rNl1XMTyUL6H105H3hWu4NuKf6TK10wwhlAfz4kLLoKGJM5+UyLqHlRgfFp5OKrzjfoa
         Y33lfUMpYsSElcJskMaejwReI+tMSAm7kFARrZK/HjiQhPoJ+r6QXzo3OlvZpFXX5mvh
         gVYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732805516; x=1733410316;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d/MXPQzhJ+NbcczEaxmCbcj8MjpwS3qOOhKqFULBuO8=;
        b=sEhLhYPVTal8m8Q/EloDLob8z0x1SyFpslqs+GYACtrQLJM1rBMkO3IS9X1LRWXzfg
         msVU0SXgE4OMIxmG2+1zHTHfJ/kHSfOmuSbSY5S/EvgWxssltn+RTwt6QnW5hIPz5Svj
         v/TGr0lJm65hq5U+NDUGyvFkra5sbqrUakgVi/EIQ7syCyZW+5uT8SSfJQpoNnjCpn7E
         jtAlR0+D/TqiOFzgA7ECff/3mVD9cewi7lzPuwg/J7N/wU12W1BOJKr4Wgl+2oLdM3Sp
         FGaqhdABHXJwN1vAYmZdwSSsiCacEe7yqMTjMc5PPPXgvcOp2MLBkeKm2+n3OAyeJvbt
         1djQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8kpf+NLkpzEBYKdv4grCLrxiGlNMwuMVy4PIAdRmzmjL0l2vRKkI6w2v2umT9s/K4+0icUN8S78FZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzYan/9MdEo9NidLhDEUodZBtnpR8gYImxrYxeXoQgo58ex81jW
	cjk8aQjcYmYZMZd1Hb/4XQ0AnIR7kGZIh8caFJwvuym/+17/pA2LdLU5EkQc2w==
X-Gm-Gg: ASbGncv0KlTOg3qvA1TGUjOWXy70tH/z9F3h/OpBfSiGXSW+8WSgn8jACqfY8psp5vF
	7KI5mcpJBGAyRbYU4ijByzTO9WfgNgyrW7BpRMoZ2ilay06rjcUr5eaGgpji8P3h73i/E8ySrZ4
	ujcRXsrmh0wrOBj0B9cVu1QUPjyWsSY5G718HdbsWrRzOHJA0pkjc6uWU0N+cB5ckscPXGxAU0S
	W9DA+EKDuZG+xwuCNH+89I4q/WK0fJ/oYZFr6p1geecv1sQmmbLTt4TfqZ6H79sdH67zIZjTfDv
	Kw==
X-Google-Smtp-Source: AGHT+IE94xRezL0R5MUb1CgWVQ85Hdjg7x8RVESl+SHCpYNTjmiYjyLuD+1yP71Qqn42MFKmXZk5NQ==
X-Received: by 2002:a05:6a00:1c8d:b0:725:3bd4:9b54 with SMTP id d2e1a72fcca58-7253bd49c20mr7408782b3a.2.1732805515839;
        Thu, 28 Nov 2024 06:51:55 -0800 (PST)
Received: from localhost.localdomain ([117.213.97.61])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7254176f76dsm1660418b3a.68.2024.11.28.06.51.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 06:51:55 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	stable@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sa8775p: Fix the size of 'addr_space' regions
Date: Thu, 28 Nov 2024 20:21:47 +0530
Message-Id: <20241128145147.145618-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

For both the controller instances, size of the 'addr_space' region should
be 0x1fe00000 as per the hardware memory layout.

Otherwise, endpoint drivers cannot request even reasonable BAR size of 1MB.

Cc: stable@vger.kernel.org # 6.11
Fixes: c5f5de8434ec ("arm64: dts: qcom: sa8775p: Add ep pcie1 controller node")
Fixes: 1924f5518224 ("arm64: dts: qcom: sa8775p: Add ep pcie0 controller node")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index e8dbc8d820a6..320a94dcac5c 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -5587,7 +5587,7 @@ pcie0_ep: pcie-ep@1c00000 {
 		      <0x0 0x40000000 0x0 0xf20>,
 		      <0x0 0x40000f20 0x0 0xa8>,
 		      <0x0 0x40001000 0x0 0x4000>,
-		      <0x0 0x40200000 0x0 0x100000>,
+		      <0x0 0x40200000 0x0 0x1fe00000>,
 		      <0x0 0x01c03000 0x0 0x1000>,
 		      <0x0 0x40005000 0x0 0x2000>;
 		reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
@@ -5744,7 +5744,7 @@ pcie1_ep: pcie-ep@1c10000 {
 		      <0x0 0x60000000 0x0 0xf20>,
 		      <0x0 0x60000f20 0x0 0xa8>,
 		      <0x0 0x60001000 0x0 0x4000>,
-		      <0x0 0x60200000 0x0 0x100000>,
+		      <0x0 0x60200000 0x0 0x1fe00000>,
 		      <0x0 0x01c13000 0x0 0x1000>,
 		      <0x0 0x60005000 0x0 0x2000>;
 		reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
-- 
2.25.1


