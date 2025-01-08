Return-Path: <devicetree+bounces-136759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A39E2A06191
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 17:19:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B46907A0F51
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 16:18:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BE2B201011;
	Wed,  8 Jan 2025 16:15:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="kumqiIYo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 820C51FFC7F
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 16:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736352956; cv=none; b=Fs6cgNgczbaYixmMb9kB4rV1JfJNxCYLPkVawSlNO1dJW7SWX7va+/IG+rCq1NeTEpxkmzsgTrVPBCbqmntTt9MMbACPTQa+iB6rruiuQE3NnWE2zVhc7u2jOokcY7RUE8JPqnU6qXLVBQLrONzlQJs5ROnHMnoCPtH2PRh7X/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736352956; c=relaxed/simple;
	bh=z5v/37P5GAIdDLJPdviMCJVcm6R2ZLfW0o63bhtsj3k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ezbxv3aTtpYpugpRfvu4ra6odRvLvMQ1o6wPlNXrUCcCzjwC9RN8vQZ98NoJ7jZ1IGD3oyTYfEdYt0yzAxkUb/xM/z5AnsRORcf4wLiZqhjpjWuALefHrUxgGhu22L6GhoGgd4JftscRCIzlhuTlgVSTNx01JWt+QygIHecv9mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=kumqiIYo; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43634b570c1so84585e9.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 08:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736352953; x=1736957753; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EIN3+R/E8p4a1D64k2o8LyTex7GHx1foOgh0nVt0L10=;
        b=kumqiIYoO0SbrOpvSsigDqBWLBpK9ApB7K9IBs2rbgwwfGSg9uZD7DOb9KgFe8w3FX
         FdUbS8LimZGoWk0kq73ks5b8eZ/mMCPX3OfuEgXzXIxJ19oQDCjJvWGt4LtfiNGnN9Zw
         2OG5Ue43vc5IclPkcZ8OmcEMOzLdhQJPwc0rWn2k+NoNT8J8BYzZofvGxlbXsxdUBaIm
         5I32WtikzwoI5i7TB5TOCSF4mjFeJhIPiRIRsNXQuwZOBQQ5GiaMA5UAymid9uPma+9X
         UYd0xQlt/y6blLtEDQGiSsvb+8n1atd1umVHODZFqexUDgRgAPhnmPGfqfdI6h3LOMvS
         RsYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736352953; x=1736957753;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EIN3+R/E8p4a1D64k2o8LyTex7GHx1foOgh0nVt0L10=;
        b=FCHHNoOU02zDYofH6fhn/BOt1CKVj4/knebafzySKfeNn0GXu+/IFqBmft99Dqw4o+
         IQsh8ciLlK69VrVWOaGupTCiaGVRL1PUpUlRSy1Ro0O8h0rtXXTmWaBWquIEr+I87lLJ
         4VVK668PROE5egQT065b6ahwZO0h0EsHTqDi2oPwQlKd0v95WP10/qxK+F1W+uAEymjf
         LbdbnI4/QixjgBxCeOb4bGDRiEVAICUmZqiF5d74h99Ua1j9T0VXhlOQLgs6r0XWR3tX
         bfF7WbfrbiLa+jfq0e9BsgHEfqJS59DG+/ZaAZgvdrl1KpIrb+VSle2F3EhhBOahE7LJ
         ffmg==
X-Forwarded-Encrypted: i=1; AJvYcCUUIEOx425z7RgnVtxasRE2BWp462UnOCHSmYvfvgqjKbaZiBrUzLO41WKILDuvgcGS/BwwXAy1zGBy@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2DtF21R3Y38pVlw5x7AarxNHV89AdjfiT3Q/eYK4UHvsNpoAo
	hHWtd4+7KtBKbnUpV65NGu3KFY2bKZVnWTiBhBBeEjt6W4svCdPJ2zA+qMBRTEQ=
X-Gm-Gg: ASbGncu55SuVEqEQ0zPKHVNbPoR58N5/+EpzLGImwDHVWMSAp+M2BDdHFfwYz2IGdht
	hKRbpY8ujtUJGXGW1w8zu22CJD5qGwuqFWntR9057HqPOpTWscATcRlEjZux72nzl4KXytFzULU
	cK+bXFCUy6qvvdoAhdO+KNmlCl2KGHlIs/Rj8bop3+y/XZBqzcDuZ90ApL5Gp8vmnf2aco5AEDU
	RPt6IoWU0Fti0X7oJjX8gh6AoiVNcIOPlfE+L9K0PkhehPDNmTHS9P95yIn
X-Google-Smtp-Source: AGHT+IEosujTc3WZYpXQT40YfA80yrGf731lKmLgaCb0a9KQqnzVjj8O3xm82vCLoJawvZiZZYjb4w==
X-Received: by 2002:a05:600c:35c1:b0:42f:7e87:3438 with SMTP id 5b1f17b1804b1-436e255ebb9mr33197665e9.0.1736352952087;
        Wed, 08 Jan 2025 08:15:52 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:a6ac:e6d2:88e3:8ea1])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-436dd14dfcasm44378105e9.1.2025.01.08.08.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 08:15:51 -0800 (PST)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Wed, 08 Jan 2025 17:15:46 +0100
Subject: [PATCH v5 4/7] arm64: defconfig: enable display connector support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v5-4-3905f1e4b835@baylibre.com>
References: <20231023-display-support-v5-0-3905f1e4b835@baylibre.com>
In-Reply-To: <20231023-display-support-v5-0-3905f1e4b835@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Simona Vetter <simona@ffwll.ch>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=687; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=z5v/37P5GAIdDLJPdviMCJVcm6R2ZLfW0o63bhtsj3k=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBnfqSyJp38Z4BVjerOBBWOKbJ1Lv9thI8YXcWeAwmO
 81RFWKWJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ36ksgAKCRArRkmdfjHURdS1EA
 CCAaOP4XUm/YJjD/FhPHZoz0GAp6Do0Jzcpqb39fjQf06aIytMLTKp7uIzjiLlvQrlpzW08KdneV3C
 Xge4Aw71aWaUII3nxuZC1I1ea/Ic3onBXuk2/vowGapquz6prNOTeqSv3dwJGtZRPT9RJlxPJjMWaR
 GUuFRfNEFtC9VU3wu695kAbau/zXGpWdQD3iKVxO6rQCVqOpShFNxSgc6yzkZd31K/gOWcS4aC/jeJ
 EyG5CDTrw75sHwlCLr1fwGiMqeTvqZP0OJF6pcg3vH6hoezfjKD40rSOHFq0N76BuFG/FVGTnNrYmM
 nvP4B04usjbOVqH7ObzhOTGthKNf9X44fgWBk6xJhtgPyAftkCbyWEXpJUtqGpXlIquxVJeNeplRJ7
 RQqcWC+RJFjLMNqeyqBuBaDd4MFftMEa3TnfetzylAG+RxJ8rVarswdVmWBzl3c7kCmaQO2VY9KhnE
 z83X7zmZDv0fZ8ZEKHbqvWbMLW4rOq14YJuu/MuUuCMd/op68zsHD/o2MFWXjGzqpc4EUb6ULU1roa
 3KBIvljq9+WIQ14j8pSzbZfcpBwTlxXuAqJLAn9E0lxYkE2fDo0dkt1Lu7uv+j5V8QMev18XJPk90C
 lbNvmR+AJE2HPeQJ5UnDntTJ5fkXjqedj7dc+LZ4Ti4kNTFXMAIapcsA/k4Q==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Enable this feature for the i350-evk HDMI connector support.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c62831e61586..b2db31e010ff 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -900,6 +900,7 @@ CONFIG_DRM_PANEL_SITRONIX_ST7703=m
 CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA=m
 CONFIG_DRM_PANEL_VISIONOX_VTDR6130=m
 CONFIG_DRM_FSL_LDB=m
+CONFIG_DRM_DISPLAY_CONNECTOR=m
 CONFIG_DRM_LONTIUM_LT8912B=m
 CONFIG_DRM_LONTIUM_LT9611=m
 CONFIG_DRM_LONTIUM_LT9611UXC=m

-- 
2.25.1


