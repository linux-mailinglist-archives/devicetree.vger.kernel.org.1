Return-Path: <devicetree+bounces-127969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 345A99E6D9A
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 12:51:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0AF7283A9D
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 11:51:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AA021FF7CD;
	Fri,  6 Dec 2024 11:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cornersoftsolutions.com header.i=@cornersoftsolutions.com header.b="Rzt8tD1P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 807FF1F9A81
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 11:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733485885; cv=none; b=ZcW1wd7wnU7DiGoFzcwpZe0zsBYhGHEQL4pTTlMr0/3NMaaqmYdHs1TmRtXZdrklx3DaR34+2kIGmziLDUVW3CSBzR0adr97Spkkj3KU9jZHw/W4XomIYiPsZgx4FC48sxeENQoDdv68UMk75ASK4SJOtjKxmbXIBnGQwOtULZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733485885; c=relaxed/simple;
	bh=jcKtMmgxbU/AntUCd/uszdkY27gKuPkRyQVGCHTm1Vk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=GoOFjp5y7IzuHugRVEb+0iMaEI7jufQ7xamSnY6wb5xvc/RgAKm8rwtHjC7Q2KOMlJoXi0m+dcg/UNbzlcNfmLkkFJOSF9MLoYiuFQYqoaiNFbtEpCASUxzjNcKhp1TCwKsxtIzKzA+fiviUKl0W4K9XtQtH4xsy2rGKhmzfTjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cornersoftsolutions.com; spf=pass smtp.mailfrom=cornersoftsolutions.com; dkim=pass (2048-bit key) header.d=cornersoftsolutions.com header.i=@cornersoftsolutions.com header.b=Rzt8tD1P; arc=none smtp.client-ip=209.85.219.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cornersoftsolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cornersoftsolutions.com
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-e3824e1adcdso1714034276.3
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 03:51:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cornersoftsolutions.com; s=google; t=1733485881; x=1734090681; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=q62PPXsE+VSeYwcr9qAvv8yZnUeLKqIqrisYrdVxhtU=;
        b=Rzt8tD1P2KbhSHWSTGtCfA1sPzh0m/puG08v3FGZe5sx5m+sC58HNYOFSC/L44Uefg
         W/Sbt/NiOZzRx1kKAIJYItaCt0A/ms28XSr6b1vVSnGWpItcw/h+sxIQQ7TbXYKyxWCD
         MwP8W6EN9Sm+ZE56v0tKLRfwNBuBaUdHZGsVnarA1wdkfFxYl8Ih63xZXi8K/9BiXAxc
         4gDXLFOWgvXEq3E2JKKy2a1cYBniVxYe0Rhlxjpje2k++ZmIFH9TE0TY68aXLvWFPRyV
         /R+jjt6N7DSwl3h+TBdfNtF1OFdGwUaGtY+kGUPdCK7NNqzT8085YcYzK07HNLqZwugO
         FhoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733485881; x=1734090681;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q62PPXsE+VSeYwcr9qAvv8yZnUeLKqIqrisYrdVxhtU=;
        b=ojjApA2bwBdQcHwDiKUzAoWqf1940RMkocS+/Ui979zhKnl4hE6r5MOxcI2zgUQd7d
         prgpeXLm9zPQ9JzvL0Bctu3W5T1/AguUmVTlGvi7ryBTJtztxBNyZxSl2BHc81wnDHY4
         j5OVfT5XTxWpuiHXHNYa9tM1uBSInmHejWL2IYNA5ko/hoJuJrWf82LSlOnNUcXfPZoQ
         NXtzXgO+j5qj03/sc47Q71+bx5PG62S+nj/GXBI8sChXds3BQkVo7tczSk51HHXOz7WB
         RouODL+1rXralVC7DF1Mze7LjpIWnugLvKg9UE7RZKOCejYRvdMiy0FROyX+8SiZRFOm
         hcWg==
X-Forwarded-Encrypted: i=1; AJvYcCX+qE+Q3YG6am2WjPyAAxty1vxaimSQVu72QieszjBm8XCFZyKvW6UCx2W9uExiOGA9cHdEp6kfb6dw@vger.kernel.org
X-Gm-Message-State: AOJu0YyIycx27+g7aDWy92QjUODlGze7/71mnzv3hZTFgqSI1xkY2KCw
	CwyztaQ2DYLrFLMOfk80c7woyn7FkV2LlwzvYxORk3CO9olFCs5Yn8lztYBpenY=
X-Gm-Gg: ASbGnctUKB2+V+tP46Qu06HMPucC/119tjmj8FeM5lgcOUIN9D5HFq7ag6aPnHWqRIv
	8uxzHj74v5ZI6v+dLe6nxPIEHPZzHrOIrGcH7LvxuZ3uiEGKXKohQRVa5FpT+e7gSFczn4EYa0M
	LSPjPtbPwR6UCD/vBm57uzz8lEhkgeR0j8O0TiXG0MDBS4hlKSCeatj1RlNFYPReUTpPxjkx/q5
	pvcR1ttkIMWloY3hnRMIsbW5o+ZC8MU7VQbvqTV/9E+/t7wYVAdP5SsCVW4+XzH3DGbHy6+fD33
	5TIDROxdoXImGNQAcPlLP9XIgTI=
X-Google-Smtp-Source: AGHT+IG4eyt1sQPkyNP04ZtSf+u7M13/3ucraXNd9uqXuxzTv7vxnzMKhLqN6poDe47NCkgRh5GBaA==
X-Received: by 2002:a05:6902:2388:b0:e39:787e:d9a with SMTP id 3f1490d57ef6-e3a0b786147mr1906937276.53.1733485881356;
        Fri, 06 Dec 2024 03:51:21 -0800 (PST)
Received: from ken-engineering-laptop.tail1e0d8d.ts.net ([47.196.152.243])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6efee2fc130sm802467b3.4.2024.12.06.03.51.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 03:51:21 -0800 (PST)
From: Ken Sloat <ksloat@cornersoftsolutions.com>
To: 
Cc: Ken Sloat <ksloat@cornersoftsolutions.com>,
	=?UTF-8?q?Am=C3=A9lie=20Delaunay?= <amelie.delaunay@foss.st.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	dmaengine@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: dma: st-stm32-dmamux: Add description for dma-cell values
Date: Fri,  6 Dec 2024 06:50:18 -0500
Message-Id: <20241206115018.1155149-1-ksloat@cornersoftsolutions.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The dma-cell values for the stm32-dmamux are used to craft the DMA spec
for the actual controller. These values are currently undocumented
leaving the user to reverse engineer the driver in order to determine
their meaning. Add a basic description, while avoiding duplicating
information by pointing the user to the associated DMA docs that
describe the fields in depth.

Signed-off-by: Ken Sloat <ksloat@cornersoftsolutions.com>
---

Changes in v2:
    - Remove redundant comment regarding dma-cells val
    - Reference bindings doc for DMA controller

 .../devicetree/bindings/dma/stm32/st,stm32-dmamux.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/dma/stm32/st,stm32-dmamux.yaml b/Documentation/devicetree/bindings/dma/stm32/st,stm32-dmamux.yaml
index f26c914a3a9a..b7bca1a83769 100644
--- a/Documentation/devicetree/bindings/dma/stm32/st,stm32-dmamux.yaml
+++ b/Documentation/devicetree/bindings/dma/stm32/st,stm32-dmamux.yaml
@@ -15,6 +15,16 @@ allOf:
 properties:
   "#dma-cells":
     const: 3
+    description: |
+      Each cell represents the following:
+      1. The mux input number/line for the request
+      2. Bitfield representing DMA channel configuration that is passed
+         to the real DMA controller
+      3. Bitfield representing device dependent DMA features passed to
+         the real DMA controller
+
+      For bitfield definitions of cells 2 and 3, see the associated
+      bindings doc for the actual DMA controller in st,stm32-dma.yaml.
 
   compatible:
     const: st,stm32h7-dmamux
-- 
2.34.1


