Return-Path: <devicetree+bounces-109531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B83996B45
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 15:03:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CFB98B2AB5C
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 13:03:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0F6F1DFE2B;
	Wed,  9 Oct 2024 13:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RJCux7dc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 865F31DFE00
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 13:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728478803; cv=none; b=RWFgrUZfc8/B31mletdRXU7nQQNMsFglaiZgQjcnfNauvR60u4ocU7OzhoSwa07jFFCsCQsbLCHnSdjyCr++IgMmedaDBu0fax6BMg5hDBOZ/Unc1lONJuC+Xn5IFGZuuxfZcRgx+Nrer6Rr5Lx/AOD/jIgpPLAVfV8JQpK6SW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728478803; c=relaxed/simple;
	bh=z6CfHXxg6U/imkauGpa2MWCPlK7XMIwlKIjFhOL5b9k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LJ2FWF/PXP2UwqxtpbjHFrvAZdTnp8zAN75fpOBWBQ6PxRiAZD84pE227LHDfBTjkoR4jMvOyagpwUf5FKVMlH4vMHBGDYtjUkpACV/9M6zmTs98MUTg2e57wLTwjMIgGJZl66FFIyqMwQb/M0lDwzK1T2YpZ0RiBB3idNimsSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=RJCux7dc; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-20bb39d97d1so59644055ad.2
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 06:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728478802; x=1729083602; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=js/q0aMZJ/W9aal9lmaG5rYHSuSq8O8kz+/ae21f1/g=;
        b=RJCux7dcX2yR4kEP1ju7ZLPRWQZAw9FyQhh03mLNQLwjn/D1mZDEy522sNby54P3Gm
         tqgfMKpQ4ocjam4nYp7VPGAcKbjYFIisuOLuF5+6dD287gFlE7NwrmN1C6sQyu+B6KCR
         cgyxB0WLAK5v1l2sWlzleXYXS04LxjsYSPKQo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728478802; x=1729083602;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=js/q0aMZJ/W9aal9lmaG5rYHSuSq8O8kz+/ae21f1/g=;
        b=TDGlr+VUYrm+pof12SmVpVQH7ywh2EPjTGVOBQJe46dHDgZZYzE0vLttQ0AIdBZnP+
         Q9SmihCprgRsOH/LLcaryXGVIcFNZXWgG8uV/4srLB2X1Q9xfw2W6rWZDZsvdWdTTKZT
         FSzVr/h+g4kvIjRjItQsRb2P6Jz+PYfRf2R9wbb+jeL159PrMDEjDmgrZrgZHcy82A8f
         wQOiRpqnUfHOo4lWhergINTuR3LdYEKBWkTqJz4voLyJ6r+gDKUX1YY524ldzvnztpfa
         DBapzemmb7d9yY9J95RvrrtHUpjulGyrXQhTK7l0yfS4x+mzlLCp6CWUmVDdVlIpnbVD
         WvLA==
X-Gm-Message-State: AOJu0YzttmVsGxYUhQ3MJ00h8Th5D+Rbz0GoT88aTnczPOW1r8RlGfqb
	SnYMiFJCyVRRKfzHBkBg2fhOpTTAKhqRBCWl6MaypjyM+wowC8YSsScObU/5fg==
X-Google-Smtp-Source: AGHT+IG05w2ruhr4EpNBfNHW27ALASG593EK70I5OBAeuwiAb+tAae1qnUFDYWL9wAM6qMI+9fiI/A==
X-Received: by 2002:a17:902:c952:b0:20b:6e74:b712 with SMTP id d9443c01a7336-20c637d29dfmr28747685ad.45.1728478801792;
        Wed, 09 Oct 2024 06:00:01 -0700 (PDT)
Received: from yuanhsinte-p620-1.tpe.corp.google.com ([2401:fa00:1:10:bfd7:eb4:8571:b3f4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c51c21535sm27434005ad.216.2024.10.09.05.59.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 06:00:01 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Wed, 09 Oct 2024 20:59:47 +0800
Subject: [PATCH 4/4] arm64: dts: mt8183: Damu: add i2c2's
 i2c-scl-internal-delay-ns
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241009-i2c-delay-v1-4-6cf59721c1d1@chromium.org>
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

Fixes: cabc71b08eb5 ("arm64: dts: mt8183: Add kukui-jacuzzi-damu board")
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Daolong Zhu <jg_daolongzhu@mediatek.corp-partner.google.com>
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
index 0b45aee2e29953b6117b462034a00dff2596b9ff..65860b33c01fe832f3a4b2e21d24ea6b4f0cba2b 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
@@ -30,3 +30,6 @@ &qca_wifi {
 	qcom,ath10k-calibration-variant = "GO_DAMU";
 };
 
+&i2c2 {
+	i2c-scl-internal-delay-ns = <20000>;
+};

-- 
2.47.0.rc0.187.ge670bccf7e-goog


