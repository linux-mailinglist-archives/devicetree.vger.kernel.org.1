Return-Path: <devicetree+bounces-256624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1419ED39CF3
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 04:31:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3FC5A30031A1
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 03:30:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5527E29ACD1;
	Mon, 19 Jan 2026 03:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AfqgrRkL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14999284B25
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 03:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768793451; cv=none; b=e5bfY2pwCYWskTj/nVspYSJnBHzqhm7XVMNXHD5LNSpH+mc/5Vvsmykya0SIBlKA7gGomYwkLHej/yUsDCSoGk5vz6+AbYR11TJ6TgKHfjGYu5TGGsxjS6d6d2/HILRVL86giEZx/yo2n09KDECuHa/x8JKYINBrfpViAlsnjV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768793451; c=relaxed/simple;
	bh=pi1fLBggw2w5nq+ku9XGxrPVz6Xc+gXO0i/5XkcUNq8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Xg/iFvwQXeeo4eGYF4ieRcaY5t0ICCu+qKPrmRuR2NYDBdZiNeCkBg0R30Nn8NRjFBAJrtez5rqDVXGfb5MkMW7YwTcv6v7HtmbeVBegLnLGWR9WeGrpp9GffPcvApyON02T+DtR2XUPKpJ4/TtKmNzSKmstApwuaL6CGwfhOuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AfqgrRkL; arc=none smtp.client-ip=209.85.222.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-8c6a7638f42so449965585a.2
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 19:30:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768793446; x=1769398246; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gnop4z34aVye00gIQguUoewYT5lM9SytbUgSGtePF4w=;
        b=AfqgrRkLGoRNkmwLVnfl8C3uGpQtAF+rPrS+T5DRvSRev6mReTAMc4Ett9jYmZhCpF
         qdVWUEL5wRg+syA+lns13e6Wk/05wGkd7fkkvoDlNojTZ5AMFJ2nqJjV6QSztKv4iLMy
         e1ZbIlqSPutrpePnA3PZQosGNN6dinClsTSv2eKhxxFF28x1ILL6l1Xwd8Lk7aKurEeM
         vsBfP9FtuHmnttaHsvGS+E7xISe1m+tXAb4GuOnwv+xSg/Kr8KtsekanYclZZkX33BEJ
         QBv1K/iMvXBLXXl+KB+Kv+8KPrFasUK6DkA61w/hURKfTBW8NqWTogGuTymOMo/m3ELV
         Lykw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768793446; x=1769398246;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Gnop4z34aVye00gIQguUoewYT5lM9SytbUgSGtePF4w=;
        b=L77oUcYMpPrZNRwPoXTBiOjAG1K2pLW4Q2pg83HxNwlFo72vav9oTQTgy6iFWJnQkp
         PpRD7jr9unxWh0/iDw/53Fvf91ZK+yHDiH6buEeJ3rjnc0pJFOBvruGFmaucpH3VSn8p
         EP8+oQs9DpPwQLPpILGC0fbIInEVnn4f3fTrFG0lc2lMLep5UHetbhKWb5wXy0qKy6Gn
         0xP+dkD+KlnerPycqqSEjUpKeDTdEKbiNj1WcgG94bPq/g5wnfIdzOUyiZ3XphLjWcSJ
         PC7NS2dzw1cBqgAys2Sv4HuTRDY+SWH7d5vc2251Hau/cGuoGHhLaztjgcCcHZcDVt6M
         WFgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWvyUbY8NogfOZWUh+kHv1mYcJr9xgcGEEl80ZiUASJ6fmTAymNe7xqX6YcY75hoq/wpFlEtKCGUVRn@vger.kernel.org
X-Gm-Message-State: AOJu0Yza3wjqXVHkhPhZuahDprVejDA6MyTSjxinMuZovqSwf2rGw7IG
	q2KoOqyvl1u5pHxd7bEJBqO27xFs9iQFew5JdlwbMTkxJJUX4Q+vMU1y
X-Gm-Gg: AY/fxX72rlKvmMN/ci8w02l2Y/JWDgBIhq/BxmZ5emu3Ybk+mKqTiw+E2F3P3HIs8yb
	Tuuh/EMd5cFMmDsHx78HEX6vvr5uWgPYoCCLty0lY5omuESu/5OVKOtEYTcZAnclIDRcUBFfIzo
	9SLakG3yhF1HMY6MZq8wO49TtqfJwYj6OMNrfwsNJd6DGex1YGKPK3AZgcg/nOxaljXKH7SBYJm
	7yqtNAMJEATZOzMKTT5hBdEd2mmZPEMstQqm3KfItXthtLsdj+ceOEpc4+tAeoA5NGAjkBMkXbk
	zrFWi4Bn5rbZkDemCggrrObQ/MFJYSZzzQUQPh8/oS44X8ul/NZ5wcuKkyeNY87lek29oUfuKiC
	vGoVOr/z5ryVwdVftOXfQ+KmXeXLzSVnFySWWjwTlAGd/9o/IIBmr7BVcmcnkk74PWfjjl5evIP
	jpy6vnx07vjQBTzYL81zTjYOGt3juKtIOlIoNy8dhO6NNxBUxXZDi+nqFSgfcFwmhwfCI=
X-Received: by 2002:a05:620a:711a:b0:8c0:ddb4:2141 with SMTP id af79cd13be357-8c6a68ec47amr1370029185a.24.1768793445587;
        Sun, 18 Jan 2026 19:30:45 -0800 (PST)
Received: from mighty.localdomain (nat-130-245-192-1.resnet.stonybrook.edu. [130.245.192.1])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a71ab20dsm724706885a.5.2026.01.18.19.30.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 19:30:45 -0800 (PST)
From: Mithil Bavishi <bavishimithil@gmail.com>
To: aaro.koskinen@iki.fi,
	andreas@kemnade.info,
	khilman@baylibre.com,
	rogerq@kernel.org,
	tony@atomide.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	quic_jesszhan@quicinc.com,
	bavishimithil@gmail.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	thierry.reding@gmail.com
Cc: linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-hardening@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v4 02/10] dt-bindings: vendor-prefixes: Add Doestek
Date: Sun, 18 Jan 2026 22:30:27 -0500
Message-ID: <20260119033035.57538-4-bavishimithil@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260119033035.57538-1-bavishimithil@gmail.com>
References: <20260119033035.57538-1-bavishimithil@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add vendor prefix for Doestek Co., Ltd.
Link: http://www.doestek.co.kr/

Signed-off-by: Mithil Bavishi <bavishimithil@gmail.com>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c7591b2ae..70a195fc6 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -437,6 +437,8 @@ patternProperties:
     description: D-Link Corporation
   "^dmo,.*":
     description: Data Modul AG
+  "^doestek,.*":
+    description: Doestek Co., Ltd.
   "^domintech,.*":
     description: Domintech Co., Ltd.
   "^dongwoon,.*":
-- 
2.43.0


