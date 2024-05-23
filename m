Return-Path: <devicetree+bounces-68724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 458148CD2AD
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 14:50:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B3B851F2283F
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 12:50:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1A6914B09F;
	Thu, 23 May 2024 12:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3I1+i4ND"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F7914AD30
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 12:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716468572; cv=none; b=mH7uXFkquXL3+BT53aR3B4zdEK57OvWDhS5V8+MFvO5jk/yFLU+hwZ/0qmo6TdyiQASQqSZ0man1MmVBBia18AHHDQoB3FXGTJkxaZr3h+ml9INRkeJU/kDPse3TuX+cV5n26LfuVSd6GsFxej5I1XjNSYRTJG87w5h4n5zkO2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716468572; c=relaxed/simple;
	bh=HN5/a0+R+JO3pVI4xH3O+AT/j542BX4M1WSoIvyPJ9s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nagBRfxdLLTr987G4icY3ZlBcknlMbimxh8mTzWtmX4uI8n8K3rKnyOHmlP21L1r3I6bq7t7ceRO/z4Jqn8bqRg3aM0u21xEHqIxxHAlVTHqbwZXYjGpy/KjtLRxO0VXknFu1SEDNVYqwv2LApnPD823H7/j0KYb+y956cXR6oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=3I1+i4ND; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-354de3c5d00so913101f8f.1
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 05:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716468570; x=1717073370; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZBEEdHfSM5OUHXjJOAmjPz7SL/vpjvoUncaFIjx2+EQ=;
        b=3I1+i4NDMC6YlEWLUa8OW6YLDm2EibjsDiK6PyROVqtsxYvQWxLKM0BmOhhDWU0hu7
         AsOylFDBhodHeP4aswfL6NkBty2IvCB75NobshGGtSZ+jadoYa2UIJjR8SRDHFsbt7lT
         73z5/0SgZQNUmw6X83mk0wLx/7z9/HUoKV1vRHdb0Clm2/le56fPPOl9qy/UBkolhwXe
         r/H6Yy3ypJUufz2lq2YVD4hw5PwgcEPtSJxChJ30oxnf6sfxtPAvJu7XjjyWKhoc0z7O
         ssE7wk1e/8U2+PfThtzYfjIuM7tVLLBvJVtvgraYC5bLSMb4vjNQKuaTmqpAwDeVYikx
         qDsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716468570; x=1717073370;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZBEEdHfSM5OUHXjJOAmjPz7SL/vpjvoUncaFIjx2+EQ=;
        b=LKr6rF+CNKOkxUn1jJvX+cdBAt/1oHURrkiANhz2PNzaaSH8J1Cg5QeLXHq0+Ifmyb
         Que1Z83bVqIa/ITtlml/8CCGRVi5/bJjBng8KwOttlgybsVy07e6tfQm2VyUANMcXjVy
         oUCgXgiudnw+buiQNZ3pdV8heQKvi8P1lSFXhXuNuZ8dfXCX9C/31L/If1SXMHNq2y/V
         NCHgCM/27tO/QeNVNsFSsmespMbuaBGlSqSfSXBdus1Ic5t4Ipgei5rwbFfPR8gcVQtx
         IQCbWztBs4ompgQ2+dLaENPtlK+yugO0DGwP8gxVDqAEmMwmx+pev9o5bXfoEI9NbU3g
         xmVA==
X-Forwarded-Encrypted: i=1; AJvYcCXeTh5vnmuHGql4VjE3T59QMEBypY5+6dV3PAA23vSk+GzqCQjLRz6Jyp0lrM79M99k0e6IPJQVEpihGsHp4pF60BkkAoDmgcTo2w==
X-Gm-Message-State: AOJu0Yy2HEurgq60dROjdSkQ0IVmkU59/Q7w7+EnFqEJRWMVPI1WM22d
	qaqqo03wEoR/sv5etuYw2FvtP3qb2lpJlhbTTtuou0eZba0W40akQ/Wcew+EIRM=
X-Google-Smtp-Source: AGHT+IGU4vZHSbVWgh8XHQMjlPrDicwM7zOwzh1RrdRHAYdu2gyP1avlcsEUbQ9zz2Hk0+AnCcAFcg==
X-Received: by 2002:adf:ee8a:0:b0:354:f622:fc5d with SMTP id ffacd0b85a97d-354f75219a7mr1846012f8f.20.1716468569818;
        Thu, 23 May 2024 05:49:29 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-354faf3fa68sm1259611f8f.116.2024.05.23.05.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 05:49:29 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 23 May 2024 14:49:16 +0200
Subject: [PATCH v4 03/15] dt-bindings: display: mediatek: color: add
 compatible for MT8365 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v4-3-ed82eb168fb1@baylibre.com>
References: <20231023-display-support-v4-0-ed82eb168fb1@baylibre.com>
In-Reply-To: <20231023-display-support-v4-0-ed82eb168fb1@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1050; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=HN5/a0+R+JO3pVI4xH3O+AT/j542BX4M1WSoIvyPJ9s=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmTztTadkyVemMx/MqAPbnK25Y1rtjyATSG8gU2vrq
 Su5Dn+2JAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZk87UwAKCRArRkmdfjHURXw5D/
 4gvgJulo8RCU5wSOn+lQaGtmVqn7FJD6rHiNJckEy4zb3pfcDPgucVGSMrh1KokTOVufWjLN0w/TcF
 bVLttV6skzv/GEPPlqv1jFNjWf9N48i+obz8Z6wRFhDETvf3XvcR7/LXPqPnZWi/Ts3C+7+6SKYZYz
 BhW+CqE/5aOliJONAzhtQ1aOk0y2rfUeVLObj932UomPbBaNl32QaPBtb1pvxvJlx1caKHMOmVW/CZ
 z/D7qOYjRa+lKI9Dh+CSzVfQgZ/8tGclASeij3MPdik/Tbp7tOgB0IZvr/GgpOvVm9rCWBn1dQeP/M
 7y0IqSyG19Z0i70JCOqHkJWAkg/R5a3bvO6v3RlNLwb0wWrdIpL9hHu233BF10UILE5pchZLOhbU5v
 MIJjDX9Pj0bwzex94DcQEQ7lM/6uXDI7wTTg0mcMf57DfEb0SFKm89DWTZK5F7LD6xkY0l7w25tUOj
 CkcZOw+/lpprx4b+CZYGwkkZa3SpStFEuxW2lu29IFnnAN059dRnkmP6PqA+YkOGUgYzA/iTfLz6Fl
 LMf8+IkEAvBwRCAeqOvKiIPSz5IJut+kBJiMzZY5GrSSHoK27X4Y3SAZ/WQCeAa5HwSDQQVfWB3TMY
 QfaM9+N5kN4eN+rpWA0LX5TbhimGy053mjPPhq1WaNvBtAhucq/fksLKTCrw==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Document the display Color on MT8365, which is compatible
with that of the MT8173.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml
index 61d040a10c08..6160439ce4d7 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,color.yaml
@@ -40,6 +40,7 @@ properties:
               - mediatek,mt8188-disp-color
               - mediatek,mt8192-disp-color
               - mediatek,mt8195-disp-color
+              - mediatek,mt8365-disp-color
           - const: mediatek,mt8173-disp-color
   reg:
     maxItems: 1

-- 
2.25.1


