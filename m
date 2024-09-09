Return-Path: <devicetree+bounces-101214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 833DB970FD9
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 09:31:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 416722817E6
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 07:31:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 733D71B1509;
	Mon,  9 Sep 2024 07:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="J23pBQoi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09EC1B14EB
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 07:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725866954; cv=none; b=Q8sMKr3b3ty2naWaaU7OJPwKgAJCD3yRh7npMii+Qt8S6DZxbVW12dj3DDlxCdMZ14sc/tFjZZi/ofdceKm/ZRcOT8gt26LVANC7AOaFGt5G2SenOlYf+JRazS7X/U4RPmPN/w0S1t4o+gjAF+ppZYDtOmx56xvlxyW0gWHralk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725866954; c=relaxed/simple;
	bh=HVgtuHr3tLAPyE0GwGhloIq5UzyRMAWdzVvkw4gI5uc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rSlcw2NITrKbNyFO1MMBY8IgQKM311w2+FE3TBrb0NW74Crs9OuR4LalyrvyfZn/B0ZfUdG01RnMwspZrVN2S2FmOhMgWNFhftrDfGxAnOLJzo28BS+SSijtnk0tlEYEHjhGL3KnaZrH+3a188Vl27dZ124+Jy8G33ZmkNblmj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=J23pBQoi; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2d89229ac81so3162304a91.0
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 00:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725866951; x=1726471751; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wfX8T1x5rrOl6RrTYur3Zimg2UEhzKDAK20wqcPgU6Y=;
        b=J23pBQoigKK1XJvn/BKKMwq0VylsnXbgPiFpCAQV5TLNiQouu+CijMGcMhbmimWK3d
         9dFq91l3RthtEteLG/hWDHbZVAEWcI3Y0YCXpjyErxLnxOlW0bAfQ9x8W496lveeo8VM
         q825lF4tFlujkXrqVPmlzHiuyUeD3rBiP8ruE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725866951; x=1726471751;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wfX8T1x5rrOl6RrTYur3Zimg2UEhzKDAK20wqcPgU6Y=;
        b=eQJjLKtxudk5+B846mlv+IGLi/WV4lblIe9dtxi5J5gJnzpix1NC+GocdLWBENAgFo
         wsMHnbPQmKjcyKNp1uHOuAgLFd6Hl0I8p6BQYgovPNoOuhF20bvLjh+os+ZmXuZulbvY
         /RxnoJVLPZj6UL0ShmrMQ03LfCnpCZh+/RczF0dvXt01U3ftkxo8iISAq/wuofE1Zj6A
         etQvWHRuMSV3COOpA8qXehTI29v78VYSQ1GR74NPmnomMBOswPc2JLW/hXzavGuBrWPL
         B6krY6nbOsV+dk8Lfnl7kIW1EGvX2HuGj/n9gYvuWhzmg+GRIMeczAnpjHyXbKOqN61v
         8S0g==
X-Gm-Message-State: AOJu0Yy6ZFpW7wcERLU4UAat9Z+34jkJ8IWCokERR3PuJKgaavcxys5H
	7/qNruiQ0LcFzQ6eo3f3UeT3UZe+NG0D7BgGuMBshZriMt7ARluqlwBxyyUyKmVrdHX15Q4JMVW
	l0w==
X-Google-Smtp-Source: AGHT+IFbPA89AUmZRFyDq4qB/+xkqYmdbiGk8UB4QAOiyyGZy8U5yVeheC0f8PqoWtCwVplO3XGJJg==
X-Received: by 2002:a17:90b:3143:b0:2cf:def1:d1eb with SMTP id 98e67ed59e1d1-2dad4de1086mr11912837a91.8.1725866951350;
        Mon, 09 Sep 2024 00:29:11 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (30.191.80.34.bc.googleusercontent.com. [34.80.191.30])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2db043c3c51sm3841065a91.21.2024.09.09.00.29.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 00:29:10 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Mon, 09 Sep 2024 07:29:03 +0000
Subject: [PATCH 1/4] arm64: dts: mt8183: fennel: add i2c2's
 i2c-scl-internal-delay-ns
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240909-i2c-delay-v1-1-4b406617a5f5@chromium.org>
References: <20240909-i2c-delay-v1-0-4b406617a5f5@chromium.org>
In-Reply-To: <20240909-i2c-delay-v1-0-4b406617a5f5@chromium.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Hsin-Yi Wang <hsinyi@chromium.org>, 
 Enric Balletbo i Serra <eballetbo@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>, 
 Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>
X-Mailer: b4 0.15-dev-7be4f

From: Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>

Add i2c2's i2c-scl-internal-delay-ns.

Fixes: 6cd7fdc8c530 ("arm64: dts: mt8183: Add kukui-jacuzzi-fennel board")
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi
index bbe6c338f465ee7c11bfbfc30767bdb142706480..f9c1ec366b26607581c116b364cc2f80f8621a57 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel.dtsi
@@ -25,3 +25,6 @@ trackpad@2c {
 	};
 };
 
+&i2c2 {
+	i2c-scl-internal-delay-ns = <21500>;
+};

-- 
2.46.0.469.g59c65b2a67-goog


