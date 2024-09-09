Return-Path: <devicetree+bounces-101374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1C497167C
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 13:20:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 258DA1C22E30
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 11:20:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 509F41BA26A;
	Mon,  9 Sep 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="IOJ6hUJ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA231B5ED1
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 11:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725880696; cv=none; b=MN4q1CU4iI1mgXR05WACGZv2tw/1v4Xiw76erjFDCRyONJspPGuBAAhT0v+PBRqNgDPnnkYEZKPW++DNFRiH3jPN+S4VeEGNCuCZHga1JDmCCAmoKu5J5zn+uhzHr2DNaheeZiqYxrWSrkGcTDcthEosjl1GDfsVai/LrZi6Txo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725880696; c=relaxed/simple;
	bh=zjiWM2ERe7M2bNIqLaWm0t3u3BI03HU5Cqz9o2J4dU4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fxTl3KeiAXGiFaF2tBSK0CABCIqO0ZQKne61EePnO2SDy8vnIsfCkFi0j5sW7msiHR2xxg23pPRvPx2P+ViBhUnD95Pe3g6CWXbE58LVB/h0JeisaS5k3z5eUOd39mJOwChFQ4LIYHs2uN1lAFli0IgSo1DhYea9x4PicNiCG2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=IOJ6hUJ3; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2055a3f80a4so30318805ad.2
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 04:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725880694; x=1726485494; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oNqbufpN5FCsVdK8ndQFqiXUCnbD9u84sO+9Of5lLKM=;
        b=IOJ6hUJ3yTWT9RIEk+IaAmRe28stOHdfnyBw5OP6GGDKkQ6dYRt5H0aruzzWqz8oU7
         BwqFWoz2JlpkszXkfeZcFzG1sQpZWc3KaDSZMqxkB+g8vT/Zhse/TSbUIE9zRFCyhOH6
         k+I5whN1ptH3vzv0jQYaroYW7XS47be1WQbMo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725880694; x=1726485494;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oNqbufpN5FCsVdK8ndQFqiXUCnbD9u84sO+9Of5lLKM=;
        b=g5dW/1Q7019qU+lJcM3p6rhtcP+sSUWwF1JnGfPzoLJ5M25o14aYyx8V6S8b6A3LWY
         efdN5MZubaBue4czhlEDpo0Wya/xItS9uQpKT0eLbOjEsRQ1OMFa4zyg1RVCmE7KUNoO
         LhpQVo4v/JJZe8gpKRQyqxbN+huzcwxhFzqlJG22wYCnkPYDaxveEm8GivN2AFuDHVlX
         tEChMV4YereJUXLLanG6rT51PvB27hvXzlqn3tYk1zZp+H/IKpsgG13KYSk3q0/HEVZb
         FqRfXp/jPggyAys9/SktuZw8eMpnCa6p+56/EaHjfJFvf+6A8LtGQOzai0eqBHQBDaH3
         durQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxqssDMuI8AT5hcyftlaxmU/ZJZ9r79AMDqz3ECihxVaO0rZKk8vdTWK0zJpCQK1XvEjjQg3n8Z0yP@vger.kernel.org
X-Gm-Message-State: AOJu0YwQrRhHKuI1vnFfge6WoQk4QlfJmC6nQPKg1l0EPlxXfDQr+/6G
	9ODeaZfH+sRvp75vq3Dj8XRfEGXzmChv4ftdloie7BAhHrMuNA5rXB2gf7CBrQ==
X-Google-Smtp-Source: AGHT+IGiL0uiJ3/UtmaNB/VuKJWcQ4ITc3x9BGi+tHsy7sGnjDVOgP5vjRA7jI/WSNOATWmtN91Reg==
X-Received: by 2002:a17:902:f606:b0:205:76f3:fc2c with SMTP id d9443c01a7336-206f05157bamr190100235ad.16.1725880694082;
        Mon, 09 Sep 2024 04:18:14 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:6647:6d5f:dd48:8f5c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20710f1dc55sm32039745ad.186.2024.09.09.04.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 04:18:13 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 10/13] dt-bindings: spmi: spmi-mtk-pmif: Add compatible for MT8188
Date: Mon,  9 Sep 2024 19:14:23 +0800
Message-ID: <20240909111535.528624-11-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.469.g59c65b2a67-goog
In-Reply-To: <20240909111535.528624-1-fshao@chromium.org>
References: <20240909111535.528624-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatible string for the SPMI block on MT8188 SoC, which is
compatible with the one used on MT8195.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

 Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml b/Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml
index ac99883a3f29..7f0be0ac644a 100644
--- a/Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml
+++ b/Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml
@@ -25,6 +25,7 @@ properties:
       - items:
           - enum:
               - mediatek,mt8186-spmi
+              - mediatek,mt8188-spmi
           - const: mediatek,mt8195-spmi
 
   reg:
-- 
2.46.0.469.g59c65b2a67-goog


