Return-Path: <devicetree+bounces-175241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C02AB035B
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 21:05:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 58B931C262A2
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 19:06:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DA4A288C96;
	Thu,  8 May 2025 19:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HkGuapmR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82592284B25
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 19:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746731149; cv=none; b=B8vYSt2SujUGdTmIcOCEH59hEF6mhpUjqhjWIYoZVqVYsMJMJokNwgJoiEqaCDoBuRyLjhH/tHSaWbsSprYsdKXxf/fYlOqkm5M8qGAVGwRneNt4duSl5VUzxBRwVO/AbFSzapAFUhlOyMZTx+OgDk4kIYX7Uh2CGJ2ONei2ink=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746731149; c=relaxed/simple;
	bh=sn8V8z0Gjhw1CZXRd4I2Qhlri39dZfzZ2vvnaba0aZw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Y+ImRBmazrsPSDH3B3SlezMbD0QgNk8jjFovilmMu27IpZzZLJ68VfDcOPaN+6Cr3wMLfMgi5WN87GckS0OlTFmOnTSVbY1BeElPlm95gbVlAlh0Jmlw+y/Lp5ZjLhxBTsoLaK1bxAwvoH3aRhsWgnVpx25V4gMHX97ULXQynPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HkGuapmR; arc=none smtp.client-ip=209.85.219.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6f545ae3c59so14263486d6.1
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 12:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746731145; x=1747335945; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LX2AgnXjLZsaf/23m6DzBSsHeoFXJnMo+ci0aY0CQT8=;
        b=HkGuapmRG5Z17tpnxgCB3m6p1sSQo/nglWc2dr9QCiBX5xb9tODerVG3TaQnbBbYMS
         MrLgQLCgwJFiuSU/j3KZulPVAZuaRv07umroF+Xc4FqBrPm/lqYin7nE2FAbB1ltDnoo
         dRttpEPbV2S6h7JLvXrnNDiKa/KckMdhYpaZ9SZCcWA5sY7QSG/lZpf+R7U1ZSgzDxTz
         wEy18hN0qCxrXHlCXQ27gyvjB2T6spYNlMsVcfXOTWACKF45KPMrI1ZAjANLKprNNweH
         yYqLxCGUX0vOTIc4+EllJ7bvad0YiEZv3maxJD0EMU+DzM7cjs39qxuiaDHWvebn7pbk
         Ef4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746731145; x=1747335945;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LX2AgnXjLZsaf/23m6DzBSsHeoFXJnMo+ci0aY0CQT8=;
        b=Hr0zftJsTXPQAp6GXp6rLcH5q8gyBqzMPrsmlPOWL1oaG7cTHMTaIHeOEV6vf97DO0
         l2wVkt6UOI1KF1DNNX0B+x2zTO4wAIi8kMopY4t4rD9pzUDtF/SMbf3Flk5GbZ7Fvkpg
         kKR5mCMJLcVvq+6+q8TlnEzHyZ/YKII2Rz1K4VuMoEbGPMoGyg/JgcNxf2ChbgHLiwUr
         ltRdkY8EWOGeE6TWCmVohxuHdsc/GxgUWJ0sswrp3mgLXSYXP8AsbDaaf6/bxuiwl7IE
         pdZFmJGXQFMbo0HK7LnajpyM2QlW4Hb4m0jqc4QHWwI2+HRMPM0K2D6leALYt8xEjiY6
         osbA==
X-Gm-Message-State: AOJu0Yx79/omvVvHxyBefPgEtyG8RRQkomaPsNDusEl5zRek854nOyzI
	gG+I1grbX/oienjmCC1bZfEh2LrgPfnyasvkfoHlkf+UCx2q5DYi
X-Gm-Gg: ASbGncuH+rGffuSJIxrpDyO3OvLHLwgELkU7ybgrcY0/EnE0vZH2pQAy1MJ5YKmdEEG
	h5rYO5HzhC5pZUb0ov1Af4V2g2rTgiFnPYaB4rAVKXoSSYrNmCMK/dAbjlFrjVUh0A/h6ISAMYF
	B/ZmGtgfsZ0zoU8nMEgo8xFYXJOeJBsECNPMajhide0Zd4Z5ZYegG9t1GPRmKCyUWfHWDxGg8Yw
	xY3cc3AZYmI+I0cpOyLNf3OEE1GEPL3dGVa3Cy4BIfiFxAeYiOoTk9p3QvcvLIzhhFhpyCTamVt
	TvwBX/ApE1ucz/RQxBeCjHl1guOXgzM4ntEM7ZaacDX8cHt+pmvS
X-Google-Smtp-Source: AGHT+IGQJAy79kpZKW+oDhN27XY9umGN2UC95aQk3iRXkusoy3k3nhQQ47YqegggCVq7A5ReOBYavw==
X-Received: by 2002:a05:6214:ace:b0:6f5:3811:cc67 with SMTP id 6a1803df08f44-6f6e47e748bmr5964526d6.12.1746731145202;
        Thu, 08 May 2025 12:05:45 -0700 (PDT)
Received: from localhost.localdomain ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f6e3a0bee8sm3148216d6.54.2025.05.08.12.05.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 12:05:44 -0700 (PDT)
From: John Clark <inindev@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	John Clark <inindev@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Andrew Lunn <andrew@lunn.ch>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 1/3] dt-bindings: vendor-prefixes: Add luckfox prefix
Date: Thu,  8 May 2025 15:05:36 -0400
Message-Id: <20250508190538.22295-2-inindev@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250508190538.22295-1-inindev@gmail.com>
References: <20250508190538.22295-1-inindev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add vendor prefix for Shenzhen Luckfox Technology Co., Ltd., which
produces development boards like the Luckfox Omni3576.

Signed-off-by: John Clark <inindev@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 86f6a19b28ae..9391e0c31bb8 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -892,6 +892,8 @@ patternProperties:
     description: Liebherr-Werk Nenzing GmbH
   "^lxa,.*":
     description: Linux Automation GmbH
+  "^luckfox,.*":
+    description: Shenzhen Luckfox Technology Co., Ltd.
   "^m5stack,.*":
     description: M5Stack
   "^macnica,.*":
-- 
2.39.5


