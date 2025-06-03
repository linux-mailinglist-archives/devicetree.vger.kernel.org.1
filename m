Return-Path: <devicetree+bounces-182564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4832FACCDB4
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 21:42:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E5711893A9C
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 19:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03F2E219A7E;
	Tue,  3 Jun 2025 19:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dUoYIv1T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D89A19067C
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 19:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748979722; cv=none; b=m0wewM6pPfMCUN1wTcy69Bb8+NG/XwD7UO46uU2OhL3B0eGitLu7wjpKjRl/0e45TNIFASgIGqrsMPWVqLRxFay98GmsETXbB+yYwWgahV62U5Z0gvAaAquGucC6R9UcTnE80sEn7/zwYHbqN8fpdFCHauYkZ2k+EplOF3gCRnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748979722; c=relaxed/simple;
	bh=X9IlcdfK8HlwnAWwAuQZYts8QWWx5Iwy6Qr7ypIRDn8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hBBWC1OeC2+Pa3nOUM5JXP2YUmQid7euaUj7e41dFvYUbMzhwvBJjadoZ29MXnW7M75VEhrbaG32M+LqjBaiaJ1q1yt4vwqviFnQsh1ZQCgYyoD2SRDgIVv1IniT4HvQEytkEEP/zTnO+4yETDCRy6IBlE5FFsZmre4Lmavzz38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dUoYIv1T; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-7306482f958so3917955a34.0
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 12:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748979720; x=1749584520; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XjzLPAsqasz0SsRAqSr7Vzo2ligN562NWSmZO1lw4nU=;
        b=dUoYIv1TViLguaulm3OAz55yrpKKB9xrSnD/OCHUaG/Mo0kGW5WkRn2B3Ft63ZCs1F
         UOEIfCbgS+VnRXQejD8CjceEGnVTawnXf7xlEnwg8EWv8Qy0vKaVZI9Tha9ogCVzOsoF
         eliJm+yse0ibUPQFNtgxqJi5WXrT1AnRVp3Y5Bf6OTFMgAGFZdtCBqpszFPI06OA0yl0
         FhvsB6v8eLVduvP8QYkkVlrMKdY3vy4Y7PSE3zGQDIzEHVfiXvAnaYwFuNwS/xcl6KJc
         VEr3Uizr4tTzAbOfi2ZSiRQVfJaLBrJfY6S4N5QkiKMcw0qsAaf9KS239ldp0TS1xs/r
         gDpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748979720; x=1749584520;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XjzLPAsqasz0SsRAqSr7Vzo2ligN562NWSmZO1lw4nU=;
        b=OCXhBINoOeQ/t6oF/YuCpftF8QzDpB4DI9GdC978e2spA2HqDZpKROu7gbXVq32KHa
         GJl7kFp7A7oqKSXDxcIYkdJM3zlz3wMoEflEZu/nyEGGfnDWQxRT+AFg7wgb4kPywsf5
         cTJVLu9Ny1/50qFdI1wikQeN2WFx4yu4PXyxObwLvl1snZ6t7qRt+NppeLA4qDgfSMDI
         3M6Sc4UV+kIgitRXoj6Fa6Ps4P5QDqaW+0QYyRBmW7HPRuIai0b6fOyX14ojp710G+Jj
         //HBu5uwOhQCdu1dQTOkV+F6ilZmRi9WJ/pS2a9Wn/30dkwPxzBlHN/8mstJxMSGjTVz
         n1rA==
X-Forwarded-Encrypted: i=1; AJvYcCW24kY1K7Q6yARjrLLCNh5J1IyI9doxyGx4s15XWKyB1g0qqQexLvgJ2yDqmKYuk45ClWL+l5ARYWed@vger.kernel.org
X-Gm-Message-State: AOJu0YyTxud39isEgE3meo/7lTmn4oC5yOcjVJGGGLptXtbDpS7pEAmb
	iHLoIXnoMm/TifEdKeHn0et+40DKld4ZCaqjjNYXhrFGRRwSo9SM+46z
X-Gm-Gg: ASbGnct9CF1qTqwQoN/6gNCgQw2pmCTN/sBkIGEGUhvLnnW/XwwcSzibIzAgP4J/VeL
	BToLojIjr1PoByoEpw+AcyAf4zGfbH7/CHmM5/mVhiB92WhhsESIdpRF6C8XevOtUb9gzpb7gOW
	X+5v9RctEte+Qz6SDZy9/czGInEqO1E7urx5Y11KcnODoNh54d6kHGcBxpO4I1M1Y6klHbGUsy4
	rNn46Mzq9A21mD6AMSDVN5Ad0MQG9At8UdFrjrrnhyB4N2srRpVtYLfcsjGZD2snAmpQnoKiK2/
	Yjpd9TN93uVJHIZ5/DW9ZFDBITRwgTvhpqq6TuV6oT2nNgTSf4T5rOz0ZeQWq2pIfWtOEAAhy3L
	PixW9ng==
X-Google-Smtp-Source: AGHT+IGEdqI2TCTVkK8o7agajIP4kfms0UAr6s+D6iGNsRfQhvMcgU7dK7DNcXKDtlDRpdBJDSTayg==
X-Received: by 2002:a05:6830:d13:b0:72b:9f17:1da0 with SMTP id 46e09a7af769-73869c39496mr299430a34.7.1748979720415;
        Tue, 03 Jun 2025 12:42:00 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:d19a:d10c:4358:1346])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-60c14c88f96sm1967615eaf.17.2025.06.03.12.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 12:42:00 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	megi@xff.cz,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/4] dt-bindings: display: himax-hx8394: Add Huiling hl055fhav028c
Date: Tue,  3 Jun 2025 14:39:28 -0500
Message-ID: <20250603193930.323607-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250603193930.323607-1-macroalpha82@gmail.com>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add compatible string for the Huiling hl055fhav028c. This panel is
based on the Himax HX8399C display controller which is extremely
similar to the existing HX8394. Add a new constant for
himax,hx8399c for this new display controller as well.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../bindings/display/panel/himax,hx8394.yaml    | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
index 75ccabff308b..5725a587e35c 100644
--- a/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
@@ -17,12 +17,17 @@ description:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - hannstar,hsd060bhw4
-          - microchip,ac40t08a-mipi-panel
-          - powkiddy,x55-panel
-      - const: himax,hx8394
+    oneOf:
+      - items:
+          - enum:
+              - hannstar,hsd060bhw4
+              - microchip,ac40t08a-mipi-panel
+              - powkiddy,x55-panel
+          - const: himax,hx8394
+      - items:
+          - enum:
+              - huiling,hl055fhav028c
+          - const: himax,hx8399c
 
   reg:
     maxItems: 1
-- 
2.43.0


