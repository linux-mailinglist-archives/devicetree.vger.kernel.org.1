Return-Path: <devicetree+bounces-34419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7CD839AF7
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 22:21:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC16E28B763
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 21:21:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74259381A5;
	Tue, 23 Jan 2024 21:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A4v/zdNM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1F602C1BF
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 21:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706044881; cv=none; b=O5AvCKpy4TdeRvyEl8rBvpDBaPvGFAqtsIvxHi9Vd5RuKHiJ60GhY0l1CpDLb6fbzPDsK55DhMSd6u/FVlwZ5eQ6g4uUkg6POTlJXrVqo8qleJYmSCFXhZsQbvuPy+QWmSBMzu1fj3j+lXY1ZZRBvqEpwkrfCCK+txSRXXnpzJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706044881; c=relaxed/simple;
	bh=1ZHP3yIW4cG47qhxCPSwerTEAfqsHzWhDkhXzRPrXPY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eoQuXyGYLvfFVSNPAKwbVdqwc9rzrO56aLWgBqzWCC8LXMkY67NRVNdOF09y52xlxqu8CQj67hsKILQNI4tfY7K8mFHyO7tDEvNH3q2oPaqNfq9G5ioKA4LSLyvF+bo18g4jU1PyvbRn8M3bB4Ql0t0sGRz4aMFienXkW+qqOrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A4v/zdNM; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-2148b28ccafso469946fac.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 13:21:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706044879; x=1706649679; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sWxTTmvypeY8hSwgGVw3+bFVkwR+7Vq8EoTW4jvNu7c=;
        b=A4v/zdNMPIe+rGAZvYPl+kkyA2ppufM8tQhjXVNkazA6gj1926wDIk3bmbbLNedJmC
         emLdJ1LfnzNfvBxSz+zfTNEdDGUlwYdCvoiLZnEfy49BVhPioHPhIqRf7NfX1+O3IHS2
         S8zycTYaPbPwqTECvQu1gP0HjTeUmXQ06Iooif5LjDSDOSByxQn/GVLgbaaEs26Zgiuy
         hyoKwYXJo/IBSRTcgJ07DeMfCJ90tnpLNpVm7OAx9mPcDV2yj+2Zr6ay97i1gzoxht0h
         /ZO5PpyVoXi7UeIRljqDfokzdS69CYDdn0mw0vHkBIazJywKqVyxO5JrILrvKdh7Cp55
         7gRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706044879; x=1706649679;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sWxTTmvypeY8hSwgGVw3+bFVkwR+7Vq8EoTW4jvNu7c=;
        b=NPMOoA63DCUKzNd5mXvR7AJFF1PfYzSt42xkP9kS3JYagxcQ45onHcsLwggABhznqx
         sYriefp0goYjDQJQcFRUeCRldRWeEyEQ0kq32+ueZZECiSHIE9OfgKBzRx9bacA+fxgO
         xJI7IukkRginO+6oyuXfYkO/rHjYOBnvnLC4KvpCzcj3QwApATsWqhfzREgzoReYclD+
         U6D3IyxVk7rMKlCGvkiURa/ZZrAWlaf6ocRYL6nmaTLTfn3Dq3nUE6U7NzqwGQNhMhO1
         3OZWfd24+hlsOgdhW0rp9hA+FFd5DdrWTv45aQHKilUZk3qzF8uj8XgWQqIruwWYRzwy
         uB5g==
X-Gm-Message-State: AOJu0Yy9Mo4RpTfv73t128ReEFrM8OpIKR2Gyto8ERzawSH+1s6va0LC
	l4uVJQLxr+rjT9rBah5wMFJRM0LKGhDTcrg7kkxg54+7vcHlo1TX
X-Google-Smtp-Source: AGHT+IGK/VUGFNkHOBl97RvjCZ8ZfMUgIf4+aEkpbywEmMngm6YKO5SFrej9dQQ0OsyV/C7fuiv0gw==
X-Received: by 2002:a05:6870:ac25:b0:214:7225:a0af with SMTP id kw37-20020a056870ac2500b002147225a0afmr1938740oab.84.1706044878940;
        Tue, 23 Jan 2024 13:21:18 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id w2-20020a9d4502000000b006dc6e40ba97sm2265770ote.72.2024.01.23.13.21.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 13:21:18 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/4] dt-bindings: arm: rockchip: Add Anbernic RG-Arc
Date: Tue, 23 Jan 2024 15:21:09 -0600
Message-Id: <20240123212111.202146-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240123212111.202146-1-macroalpha82@gmail.com>
References: <20240123212111.202146-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add the Anbernic RG-Arc S and RG-Arc D devices, and consolidate
all Anbernic RK3566 based devices under a single description.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/arm/rockchip.yaml     | 31 ++++++-------------
 1 file changed, 9 insertions(+), 22 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5cf5cbef2cf5..5592fdc85b9e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -37,29 +37,16 @@ properties:
               - anbernic,rg351v
           - const: rockchip,rk3326
 
-      - description: Anbernic RG353P
+      - description: Anbernic RK3566 Handheld Gaming Console
         items:
-          - const: anbernic,rg353p
-          - const: rockchip,rk3566
-
-      - description: Anbernic RG353PS
-        items:
-          - const: anbernic,rg353ps
-          - const: rockchip,rk3566
-
-      - description: Anbernic RG353V
-        items:
-          - const: anbernic,rg353v
-          - const: rockchip,rk3566
-
-      - description: Anbernic RG353VS
-        items:
-          - const: anbernic,rg353vs
-          - const: rockchip,rk3566
-
-      - description: Anbernic RG503
-        items:
-          - const: anbernic,rg503
+          - enum:
+              - anbernic,rg353p
+              - anbernic,rg353ps
+              - anbernic,rg353v
+              - anbernic,rg353vs
+              - anbernic,rg503
+              - anbernic,rg-arc-d
+              - anbernic,rg-arc-s
           - const: rockchip,rk3566
 
       - description: Asus Tinker board
-- 
2.34.1


