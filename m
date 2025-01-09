Return-Path: <devicetree+bounces-136918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 133CFA06D6D
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 06:16:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BD16518899F3
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 05:16:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F0A4197558;
	Thu,  9 Jan 2025 05:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dUf1r8D2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F78317C21E
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 05:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736399814; cv=none; b=SsTb3OgqR+uxe7t7ipIZ2xdhax6yLmq/WIdn8E1H9z8i9++y60FZPTMEEo/3WfEc4SyKY+zdhqBOaxsmiMn/SxupcF4CJBc8gjmHWfQ42AHRmnCraZPjCwyib0gzU6q2mwcTC7Q2RiyS6n3KSE7rBgdrEiXZXeFADBnJU/aB2Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736399814; c=relaxed/simple;
	bh=YrcKxw9UkflUXHkaqP9kJq6ub/zolSrVP2lwHnMg7gs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Z1HBSaORuhzAvvWnpgH9S2ImDpUfqnkU2VcyuKFiuuLdpxBf8/fM7PRetHV1U/M+pY9UFIc06HohZSF0QjoAV6poNYZHuTOpL8UVCFbdLIm6B+CdgUNB13A3N5F2C4u3DFjeqH5foequCz4LCfqqMvj7sIB/nT6urJ4cKfGIoDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dUf1r8D2; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-71e17ab806bso293347a34.2
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 21:16:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736399812; x=1737004612; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vsCXG5QdFyWi3c7ypelGdFzk7m3PRCB2mXJBAKsSM/I=;
        b=dUf1r8D21KJ+WVBEa/e+E0L7FerCP1c9Bkf3qOQEzgt1jKEfRI86Df6YB8RF+Oa3Lp
         nd6IMj1LCgSDEhahq7pRhJ029tHkgHHyTP+/XGPIoh1MRMgnPZ/VYffvkBYu1+wg03Ky
         x4y2SRLDfXwvL3+6OM9koH7FsdBjl+PhtSwINjMiarHCt4A+wkl9QaYj5CpfvF1Np1TL
         5sfwt0nKMmewTHl5wDAOwOSYBCJF93d2GSlFM86Kim5YEKNwUxo4U9IMYN5/d0UIdJrG
         eoZm6RrKcRVK13SCuz25wKarj9cIQSPK3BonGjwRD4gD/YvrtKu3xD/50DkwNdaRdrTL
         2XWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736399812; x=1737004612;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vsCXG5QdFyWi3c7ypelGdFzk7m3PRCB2mXJBAKsSM/I=;
        b=Etz2iPoWVQ/phIxBVE/c2P5kb4CN55xWcaQvHXWGA6eyxr0ZRyI4vO6EB7guEHr9eq
         g9U46+D5lMr7vuE9PG2T3Sf25l1NrYIkMlKk0lcPUhMs+87rMHMMZjZSl8g33aCUcD4z
         JM3LDyJvrjXlonOJR2K5eJuqR8jvo3OTsQrQLzPX7z++x6Sc1Ugfms8HZWjYdM57Zj0r
         ecNKkeIPthNyWzQldqzUppcEvEu7iGaIVvMy4KVhtq52otGcd0YD/mqw+AIguU8s+KvL
         CTDbGQ8GsIJ6EmYE+f2PYTV/kkwZM/wH0Z8m32pPzXKCG49jyFsfYFOYCPR2aTAD+SlV
         8PNg==
X-Forwarded-Encrypted: i=1; AJvYcCUKHkB8wfIYuDb2y/WNq6DiVq+EzZISktpAHALA/hROJXLu3Okks92C6AvIyJ334W0zbWwFqI5HUR9x@vger.kernel.org
X-Gm-Message-State: AOJu0YwUVwQMNh7eqrxMELjsHGizzhmOYbwYzsaXb7aB+arufTpthHsD
	eKCrB0iewnMyRqKf5gw7Nm1Ylj1+6o5e5s9wRxyEDnRyq4Qq9GWQ
X-Gm-Gg: ASbGncvWjk7aDOEC0VtbxKmov922q4njHvi8KZCcKSXlllvnoJZvk4U1w5KnF87aQC3
	dslVVJuHP9r3pgn+TQixYxSEj8scJgM/sDrT1elO+5FYDUC/QDs1M6fExY9Hc8tv/f1aqs8J6r5
	KVX7L+p8Med/hje/2aWxwOgdGP/YZ3sHwVcPDqaNvz/UddSz6T+ykQHbv66bgMiw63kRMPb5KZY
	lBbReKGT/SmrZKdHJqLQtP46OdjAY7423dhZ1eh1/mj0iPJwV2eIaAnm3sENFbn+g==
X-Google-Smtp-Source: AGHT+IEvkWZ+ZX+FOPV/0Qubwqauw/EkQx4MTIkxgiRMmwM9R74P57M+oEIGRDk8mG4FhH1vkM11kA==
X-Received: by 2002:a05:6830:6107:b0:718:4267:d3c2 with SMTP id 46e09a7af769-721e2e5b58dmr3345389a34.12.1736399812195;
        Wed, 08 Jan 2025 21:16:52 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:f022:ffa3:5bc0:c1c3])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-723185481bcsm187612a34.21.2025.01.08.21.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 21:16:51 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 2/4] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Max
Date: Wed,  8 Jan 2025 23:16:16 -0600
Message-ID: <20250109051619.1825-3-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250109051619.1825-1-honyuenkwun@gmail.com>
References: <20250109051619.1825-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree binding for the Xunlong Orange Pi 5 Max board.

The Orange Pi 5 Max is a single board computer powered by the Rockchip
RK3588 similar to the Orange Pi 5 Plus.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index a09faf07ca51..f62e9a0d71e0 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1129,9 +1129,11 @@ properties:
           - const: xunlong,orangepi-3b
           - const: rockchip,rk3566
 
-      - description: Xunlong Orange Pi 5 Plus
+      - description: Xunlong Orange Pi 5 Max/Plus
         items:
-          - const: xunlong,orangepi-5-plus
+          - enum:
+              - xunlong,orangepi-5-max
+              - xunlong,orangepi-5-plus
           - const: rockchip,rk3588
 
       - description: Xunlong Orange Pi R1 Plus / LTS
-- 
2.47.1


