Return-Path: <devicetree+bounces-109529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 336E3996B3D
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 15:03:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D46551F218E1
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 13:03:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2C2819925B;
	Wed,  9 Oct 2024 12:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="eCyq9Ti2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73DB4198E96
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 12:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728478798; cv=none; b=OhVPevgBix3g/LN4JEBNYYRce7ynes7okWyyFdIxgWgZiu1bQkjpVJsckqkih6OLKVzxK0c+Oa7U/u9IDvzG6PwaX+ZJTXJIFneqoQvsGsA4Mu/ww5fA2iO8GhYY44P670ZUMMQVbX0TrhrNKvlduCWsmIBGfh/3z4IE+nCD7zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728478798; c=relaxed/simple;
	bh=pe+VpQKGMR8aKhUrM7Rl9h9Q4U2dC04E46OyljUkTvY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MLvQGcD7avdvtctRaCl2XEn49gON2n8SWdKi8fHE3M68mQJY3Y7E+R5FUajIC3umj2mtVHwRwNNTT/Yx86CYare2V3KA7wD3tHAEb8+kvc/Lj6gDCroDdL5LqmsZmJVtJPfmfuVu0KaVis/tQp/ifODE38JRP4fYRv1AHvbhnqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=eCyq9Ti2; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-20bb92346caso5979905ad.0
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 05:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728478796; x=1729083596; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GW125rK1qMhe8tTkPohTVuXewXBf8N5Xg+9sFg27JeQ=;
        b=eCyq9Ti2TBrS40ZZgBs9daiE99FO6KPiXtL6yGlNIuA9O+MSWaNKM6heV0SeMCrnRZ
         bkZ72NTH/Eqhtbt1mJS1sNw5FExdfQNxguzH0iQfubC72xdbse+elRFVgVs5pu/E9+D1
         2P/YyczYCYJ2soY9fBCH3yaCt6bh8p6GetnPE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728478796; x=1729083596;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GW125rK1qMhe8tTkPohTVuXewXBf8N5Xg+9sFg27JeQ=;
        b=rn0vRytywrZHJ3Y+fFlfE5CELF9He0TU0QSUnEt8SXzjSKDnYZA0qHR90jvELh85AP
         +JPq75P2jwtPwVq6k/+OOFkEwpaSofFTCYPNJe84oEYJyrknJsOkRMFA+pskZNGYZwXZ
         e2nEaCrq5cwAhYaayiuQPa/+UV/nqwuZUi7kIxh1VKtE5WZCZYzdqp3adTwXx3ixPghn
         aM9/Y6zyJFAfkQp4uRWnJ9ulRdHmR0kkajQ2NVZwvjnxXlZmsPuK0PH50BgE4K3MsOtU
         PImPYJDsw1S2b2SRO8DJL4qmQPjgjQtJO0ue1ZxRAHYGC82E8/F8/EY0zCSnQcAaV4/O
         vSDA==
X-Gm-Message-State: AOJu0YzWRwcctgEfEGb/axfkhl8LxCRnMii7DEGkYWFrNK+GhsLL/r7L
	C2UJvJY2bM3wI5NoXk79cPjAh5ntrPZtDzj9UO93Mb/VG8FNvvjx10ktjni8pg==
X-Google-Smtp-Source: AGHT+IEeIV9JUMTLHFFYpP+b9sau6k/8F8xIc6y7xI2G5swJoYDmvi+4gA/+2cH27Bpzc7lxTAoyQQ==
X-Received: by 2002:a17:902:cf41:b0:20b:9831:9edf with SMTP id d9443c01a7336-20c631651abmr46041525ad.6.1728478795844;
        Wed, 09 Oct 2024 05:59:55 -0700 (PDT)
Received: from yuanhsinte-p620-1.tpe.corp.google.com ([2401:fa00:1:10:bfd7:eb4:8571:b3f4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c51c21535sm27434005ad.216.2024.10.09.05.59.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 05:59:54 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Wed, 09 Oct 2024 20:59:45 +0800
Subject: [PATCH 2/4] arm64: dts: mt8183: burnet: add i2c2's
 i2c-scl-internal-delay-ns
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241009-i2c-delay-v1-2-6cf59721c1d1@chromium.org>
References: <20241009-i2c-delay-v1-0-6cf59721c1d1@chromium.org>
In-Reply-To: <20241009-i2c-delay-v1-0-6cf59721c1d1@chromium.org>
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
X-Mailer: b4 0.15-dev-2a633

From: Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>

Add i2c2's i2c-scl-internal-delay-ns.

Fixes: dd6e3b06214f ("arm64: dts: mt8183: Add kukui-jacuzzi-burnet board")
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts
index 19c1e2bee494c98c0db87308494713a26e304cd2..20b71f2e7159ade7e7d2135aabe6587c8f8d64de 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dts
@@ -30,3 +30,6 @@ touchscreen@2c {
 	};
 };
 
+&i2c2 {
+	i2c-scl-internal-delay-ns = <4100>;
+};

-- 
2.47.0.rc0.187.ge670bccf7e-goog


