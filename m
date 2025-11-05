Return-Path: <devicetree+bounces-235308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBE3C36A1A
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 17:18:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A258364168F
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 16:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80732334C3F;
	Wed,  5 Nov 2025 16:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TFAWsg/V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E859333755
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 16:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762358725; cv=none; b=IiBuowch2U2wH1h5vwqxB9jsASdPcna4twty74sRnFkT0gwgXeaHWOy4BvFWULIV21o76TT72wvVJIjMM9UeIINRMF2RbGQDS7P9hrhzakkSM33ZnidcGbrmPPfCCsbHh73YHIDHkd5aBdFY3pO4t4mV3+3B1ATeJvOSfx9fnsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762358725; c=relaxed/simple;
	bh=YtqP+iwcKtMakzXgLk3UQKPhw4kYFhpKvW8eLwW3czU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fhOZ5wlSCbMOY8pczANXSEqWSkXCZVJT0mji/8EvszBIOu0hi15eEeu0REFYZeTfiDAmMgZv8gFhd3t3izuE7P2FfBTk51XCTcQhb+BbcJ45nbOgu+7nfdE8R34MuQxur69OUYScX8EfW3rVPRJNx5Rr6saC4M5sH56yWW++xhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TFAWsg/V; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47756a07b34so10214915e9.2
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 08:05:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762358722; x=1762963522; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gi36H1hNTl6bMN6Cd06JLPD8tUQzuyL6UKpqqUX8AXU=;
        b=TFAWsg/VlGcwdgZk9J3z6itMaDzN7cG4Oq0Yh2d03K85t8XD04mkyaB73VCju148Re
         ZHmSoC2k7AxSaaa2wMoB1LEEdiCRUbKJAVJq2PAXjptso5ixrpInPIEgHzWja3GcjEyc
         lytuCs3A7fDbb2qNGkvESQlFpqwnrFGEwY39Pg4Z2o0KLmSfV+bR4T3mjy1JR40uiJmL
         n+mrCo0yWJf8faK411ZcGuk8ytByaGNAb234bFvaTRIq0MGgR4d7oxC5rEB08St/um/N
         mWZUscj1QpY7nYMJtjT32tvENaUgMP2AWMqz2GO/8daqQHAdhXu+6qwoTGmZ5YCwHKRn
         r6fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762358722; x=1762963522;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gi36H1hNTl6bMN6Cd06JLPD8tUQzuyL6UKpqqUX8AXU=;
        b=C+LzPxIS0LlImhBgBLQF7qAWAuKlQdnLodtep2OwHpt2ZWDa/gczcsjbLToDtNWvTd
         yiG3dSbTCnzXGXDx/oJ2GrBSipTEhfGnR72VLdz3ilSnHAq1PTBfv1ZJJEcZANKFw2Ml
         ndf/nHECc4Kr6feHTFxxkfHjmrFU/Oze81Gr+Fada+H0KOYu58DgZUc60u6l1st8A0x6
         olRWY6FFnagVPGKuYXkkGxpF+hPvdAlTVqFGmSo46HjMxsEhYaCXs856YOp0+2NeMS4c
         QU10uJ0akL1TmIvVIO0eAoB3aN3KWMnF9bA8aIxsIr+B5U+ytbLxJTdbFFIgymhYAEer
         t++A==
X-Forwarded-Encrypted: i=1; AJvYcCUF3gUOVlFSRTNE49Jqm6w6d5ZRWfgjREhmVaQ1bJvs6T4ph6vox5Ouej6IyQ1Z+8Ha/EHQG6Mbhj+M@vger.kernel.org
X-Gm-Message-State: AOJu0YzFhv9VFrk02MhcoU477/0wv5E1uunENrlmtUCFOPNZBSiHvADL
	Pm2/Ee+x6u9Y8ttbwxjl//aU1YWNlQ3NMgQGcyx9Aurk0/1xxsvRWNYU
X-Gm-Gg: ASbGnct/ctjk8ggpRPIt9j68DJmprC4x1tXCZeXUf+YT2cViyguonYjVf/z4CWNlyxi
	0gIRPqI2S35buqVIlPoO3UqxjotMnBZsjDNumN3IbNdcyfPzQ2hk4+PWh04cDBztS0AGBqdht0/
	nyCXI7kNPHdlas94TmZVRIUflq1/tJmSCLKZmj9O5Q93eImn/b6AUhGxZ5Qf5Z7iHahrQaXrAxN
	QU5OegZVUIGR9ZO/aFU2uAAE7xPRE7oFkMNv5tNkou+SUJmDOqHpcEbAUD5tIH6gNCRGWg//CvP
	CCn+tREmtuC+8l29uejzEfDZ/BXYO/uT1oSWet0QELPZrefU0jAQ3Dyr8znoXbcmqoThfqdOAAs
	WvWnhf7cbx1mAKT8o5jpdE5i+s28Aem+zL22KdT9pBsIZ40wbf1p/viMbGuDVtPfTnpa5ojRHr8
	6xy/7j9yVjSoix9/YejRXhOqiSjG2ir6BGkYDlqFSEH6ak6RsSlZJAwmv/8VH14AEqIr3D
X-Google-Smtp-Source: AGHT+IFIw63y8/HMqfwqpMpvegHOj8/fyBrBB9+zxkNIj4mos1HOvCMf9iyNT5somnO7vFbCIP2bew==
X-Received: by 2002:a05:600c:a00c:b0:471:115e:87bd with SMTP id 5b1f17b1804b1-4775ce14b0bmr27807925e9.26.1762358721509;
        Wed, 05 Nov 2025 08:05:21 -0800 (PST)
Received: from localhost (p200300e41f274600f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f27:4600:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4775cdc96edsm55240185e9.6.2025.11.05.08.05.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 08:05:20 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jon Hunter <jonathanh@nvidia.com>,
	linux-tegra@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: memory: tegra: Document DBB clock for Tegra264
Date: Wed,  5 Nov 2025 17:05:11 +0100
Message-ID: <20251105160513.2638408-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251105160513.2638408-1-thierry.reding@gmail.com>
References: <20251105160513.2638408-1-thierry.reding@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>

Accesses to external memory are routed through the data backbone (DBB)
on Tegra264. A separate clock feeds this path and needs to be enabled
whenever an IP block makes an access to external memory. The external
memory controller driver is the best place to control this clock since
it knows how many devices are actively accessing memory.

Document the presence of this clock on Tegra264 only.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 .../memory-controllers/nvidia,tegra186-mc.yaml        | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml
index b901f1b3e0fc..f0448d9ea1ba 100644
--- a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml
@@ -92,10 +92,12 @@ patternProperties:
       clocks:
         items:
           - description: external memory clock
+          - description: data backbone clock
 
       clock-names:
         items:
           - const: emc
+          - const: dbb
 
       "#interconnect-cells":
         const: 0
@@ -115,6 +117,9 @@ patternProperties:
             reg:
               maxItems: 1
 
+            clocks:
+              maxItems: 1
+
       - if:
           properties:
             compatible:
@@ -124,6 +129,9 @@ patternProperties:
             reg:
               minItems: 2
 
+            clocks:
+              maxItems: 1
+
       - if:
           properties:
             compatible:
@@ -133,6 +141,9 @@ patternProperties:
             reg:
               minItems: 2
 
+            clocks:
+              maxItems: 1
+
       - if:
           properties:
             compatible:
-- 
2.51.2


