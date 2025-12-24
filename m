Return-Path: <devicetree+bounces-249561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C449CDCE2F
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 17:51:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D4951301C94A
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 16:51:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80255330D28;
	Wed, 24 Dec 2025 16:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eGXgyYw/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9998D30CD85
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 16:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766595063; cv=none; b=I17VWsjPQBDzCJiGwirC426aNPgMJJmo2w/q8AydGXqlw97iRmDry1aIHFX66WAzrbzypgRjQy+3nDJteRGhskcbbTkrZ+88X441UMZPYsEpJmb9ZDfV6ucugWS3qJXhvAUP9Oftzvu5ejiDRqyLG8MnJ14I6UBWxgVOrwxtV1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766595063; c=relaxed/simple;
	bh=ZrXxCTjXWGjjOG+8aqV+Y+mwv9ykkEgiYPHQ1T3uTpE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=s+ENBVlDhlZsBYFEnetoSK7dD12mW4gMYIbXwx+LX87ezVjiT7ruGRut2Bvp/qn+hZPx7kzywP/vS81oQJl/nQK6WssDsQGlXrZx6JDIAqP9trhmfBAaJI7rcrCEZT5DRlkJ9wcfIGgw3z9bedhoGxab2oI+nXClASQNtEelXCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eGXgyYw/; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-47774d3536dso47737005e9.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 08:51:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766595060; x=1767199860; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KTmPuQNTTXZsqXP+8u86ygN51TXOteMoSzOM42GP7ag=;
        b=eGXgyYw/QssfvvTYTyeEw8SSzsiv4VbWJGZxfvAxGhXIsnB67zAuGKX6KbR8sOP3KV
         5pZxP5BDlDAeaEZ/8n2ECM0p3lUxUy7PpirB+ZEy+CfKOLLojyD/2Efcn7TFOpaUOIKb
         lCacb7WrPdut2si9tICrmooV8V+l06DKFQPOyPIlwlFaeEDgGZ4FpyzF4nPx6pL9qwyN
         cuX9tlUeCWEqow+jfNywrBTCvWwr1HiDUStLrR0jMgQ/lyNbggA9RDMHIVur3NpsEKq8
         EdDP9QqRRV+5xHx7Gj8Bt3YevpdmJxgyz/IwiWWYDTvF5EX45oUqaidJ0p9FWiGJZT2D
         pq1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766595060; x=1767199860;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KTmPuQNTTXZsqXP+8u86ygN51TXOteMoSzOM42GP7ag=;
        b=tvoubleCHTq8LiX+QXFWsRKy5GyR16nrKVLE/Xb3dUjaleo//o8xgEi9+dOWye/DOu
         xbU57O7POWNtSTPZBlrT3koR/ukobxPGWygjhyQMLN/GTSt8n8CN5TQC+filooEvUh05
         NlRXCoc505Lib8mNcnj+ItvDeFBp3FqaoTTMfNWuloKbS7kB15TWnMOVMfLDt29OilZE
         MQty5Nd77hIyki6nfopeqOYDlF/KgS+ovB9gKrbONa7qUXkXYbEkUDxJF1/3w/wklzse
         wbf2ionGbMmDlmqlCZryOGM3iYBH3CQsIeJHjfd0VatdvKKxKmH/mV3ESX22WOlyMtv5
         mgcA==
X-Forwarded-Encrypted: i=1; AJvYcCUPaxhKIjA/+R8Ua/KJ22pw2KCvHgKBlXfPrlR+i2N6aOxgdk3lR1votPYW8d70ISPDOEUVwmrVrYSx@vger.kernel.org
X-Gm-Message-State: AOJu0YxL6kzRsph79mlOOY7p1FNn54Hzpb3WSzoIJFcFV/up5kM5FrS9
	P/tfMklhlTM5QUho4BbONWOR48uESEO9lO/o3PQNPnP6+k6vGSLLUI7c
X-Gm-Gg: AY/fxX4zNzwrzDulHrJwZ04piLfqxzrTQmJM2qc1VxVOQRX+iXHBg84wCIwYkpfbKDi
	rr4ebE56ois2B8Nv7A9j9AJ0CPLtzFGcQi5g+iLvXblCn+weLZyFe4shRDLhxDkP/dL1gkBzaVL
	FTfFgXWX1oXhv57D1lfYooPIVLA4ZhISvKLpSpGIu17XNVe332K5wz0XuWTPE/zWF5mw4MfuBxz
	CAMcGWpVMJVu9PRJmDANqIluajiVTbYV/2eBWchCLXsJqIWSM3sUkSLuSrafXdYzFlH1Ci3mi9+
	JbozZnlBuZhOuzUJlW5e8dlw94RQmcgv5LFefprYcauDiQLcyCQ3Wc+rRmFOaFpX+4AheJSvLzV
	7aEvc6o3OOoW4zOPxgfqtUF4RPLw2zshHrwNKJC+U/k2GAP7p2qdcgs/2Yf498WGuXfdK2z3iTM
	mH2MnJvVHmuV99F0GTCpI1CIrIpMpdeJkKoxfBXCi+7QCqmlWtCXlpbvNutJ5KMgA6U0NQaSiHK
	MGi5Va5UlTtLRJSS54PVS9M
X-Google-Smtp-Source: AGHT+IEHoaqx50xdluKo6iOyYLijbIpNgJk6AMJ4ejz02SDIzXXq58fP4NiJQLWVqEs20tcyZW/NVw==
X-Received: by 2002:a05:600c:c093:b0:471:5c0:94fc with SMTP id 5b1f17b1804b1-47d1cecac53mr149793425e9.6.1766595059883;
        Wed, 24 Dec 2025 08:50:59 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:3371:7b65:aaf4:d2e4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be3ac5409sm136482305e9.15.2025.12.24.08.50.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 08:50:59 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 1/4] dt-bindings: clock: renesas,r9a09g077/87: Add PCLKCAN ID
Date: Wed, 24 Dec 2025 16:50:46 +0000
Message-ID: <20251224165049.3384870-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251224165049.3384870-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251224165049.3384870-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add PCLKCAN ID for CANFD to both R9A09G077 and R9A09G087 SoCs. This
definition is required for describing CANFD device in DT.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 include/dt-bindings/clock/renesas,r9a09g077-cpg-mssr.h | 1 +
 include/dt-bindings/clock/renesas,r9a09g087-cpg-mssr.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/renesas,r9a09g077-cpg-mssr.h b/include/dt-bindings/clock/renesas,r9a09g077-cpg-mssr.h
index 9eaedca6a616..c4863e444458 100644
--- a/include/dt-bindings/clock/renesas,r9a09g077-cpg-mssr.h
+++ b/include/dt-bindings/clock/renesas,r9a09g077-cpg-mssr.h
@@ -33,5 +33,6 @@
 #define R9A09G077_ETCLKE		21
 #define R9A09G077_XSPI_CLK0		22
 #define R9A09G077_XSPI_CLK1		23
+#define R9A09G077_PCLKCAN		24
 
 #endif /* __DT_BINDINGS_CLOCK_RENESAS_R9A09G077_CPG_H__ */
diff --git a/include/dt-bindings/clock/renesas,r9a09g087-cpg-mssr.h b/include/dt-bindings/clock/renesas,r9a09g087-cpg-mssr.h
index 606468ac49a4..0d53f1e65077 100644
--- a/include/dt-bindings/clock/renesas,r9a09g087-cpg-mssr.h
+++ b/include/dt-bindings/clock/renesas,r9a09g087-cpg-mssr.h
@@ -33,5 +33,6 @@
 #define R9A09G087_ETCLKE		21
 #define R9A09G087_XSPI_CLK0		22
 #define R9A09G087_XSPI_CLK1		23
+#define R9A09G087_PCLKCAN		24
 
 #endif /* __DT_BINDINGS_CLOCK_RENESAS_R9A09G087_CPG_H__ */
-- 
2.52.0


