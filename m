Return-Path: <devicetree+bounces-186901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C9EADE1B7
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 05:38:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 75B30189AD75
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 03:38:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CF451A314E;
	Wed, 18 Jun 2025 03:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ebbT0diy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B158228E7
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 03:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750217916; cv=none; b=RrmEVIN0/tSsTP/Eam2Gqg0LQUM/U2N8FsvnDGyThNuvJQ/jV1v4BexWDQuCWQltDPVL4eRQkieb0Ot1G8GXNA93dYiR3YLV0HSdpV1hf5EwOnpzfdVmhOjSoKJ4MNmgDguHcSLjjtbEkcX/G6SWZGyWNVZNE4yhyjm7CN1Z6GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750217916; c=relaxed/simple;
	bh=XrZyTt1/hJny7riotxAABX6ED/W+aLxJF3OI4jGGo/c=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EdW5HI8puZjek6VeFCwU12DuKsB8oQaoyUpvDYA4rZS41Fs+W00wUT2YVEa1PFchpdVPwrV5HBy/ZExr+iZd15are7fHPLRVQOyuSVQ39sg98KPUZnInpBZJJ/fCqTrdoNThOZAGzFdY0PtpdDmDOv5rnwcsP3PWqgfJ553mSe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ebbT0diy; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-73972a54919so5501331b3a.3
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 20:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750217914; x=1750822714; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EaL0HiH9jBIX2TlypOzxXsG0yj+HeZtCgZDd/6Q8FqQ=;
        b=ebbT0diyQBD2NYcyr0ySBCnXbCOwyid+/mCoXOLaQNdqXicy5N9+e40/gWQ6sX1xWp
         5lnfxtGAgsYxXdEZ1Me1gkJq9SFgSrc617C5pZpbPTcXCDkd+R7cbrWFfYSt84lo1c5Z
         2vF/b/R6aeo/BtS0R/d5V40GKF0QWX3rWDpC93lrT2kL0x1MGU389AYJRSAi3GTPFolG
         Bpr7r5LwY4HG+XJio8s0VcQy2OkPo+dPK3VWIktjlzqyMKNNWoMc0q6CKnWmtXVE5qH2
         SXKu13TimTTCiJUBvePQ6srOhu6Oo3GU9r/r5FXU9x0xggxJ3tWCxwzPd6rE/DxZTfBW
         uChg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750217914; x=1750822714;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EaL0HiH9jBIX2TlypOzxXsG0yj+HeZtCgZDd/6Q8FqQ=;
        b=aHu3z6ydRUOgioVtORxw4ZZk4y1/xaxNrlZktWBuk7Y+j7bnu5/ZXcco4G4zU5glvd
         XtSWghkU6tn3UOKnGElyRNabutJJSndKHo8nME2Z8giR/tU7WJiMPr6FkCuYKgmiYjDz
         lL4ct9N/viiTMx0XR74sTOnESI5aaXLEMCdZ7EjWKtmHHXpRbkLqH8nHJ3g/qNP7hZF1
         fYib7/PWe1Y58lQIPpA5VbB5wy9nV9LMkGsbmFCC/JOr+AQMZUqD9A1ZHtvT7e95B9Tu
         H0t5DT42TmvxJNl58v+w0jCqri0zNAmAxDkVZvR6b0N6R9t3UhmkXe5E64DZXzn62cEx
         Xn8g==
X-Forwarded-Encrypted: i=1; AJvYcCVr6JBnk2wAC0ZR8zVqft8rtctNynMXK12x8gIN+ekDoSlyFLGrM5hsDoix1Ts4pGsNt9HGUEspVL1b@vger.kernel.org
X-Gm-Message-State: AOJu0YxXWO+0rO6rbz7OO+XEWoVyHMgO7D9eASerf8955rsdjHyNqkYU
	uw+wUjPIVBXO0POiUr6g5TUKDw7jasmG136YJd+Gl6LkMFOz62UsTF6d
X-Gm-Gg: ASbGnctI3+uOamLfvdJr4aCPn0vqbfpsjpuAEQSzlKejmxs0LWGIX0A15qoUBDoHcqW
	f+zdAeHdRKSlO8e1YEgjSA8vB4sUw9KtXJme54n0ID/h7SFzROpELtef7RwtrRNY+eJhh2f/Zpv
	8VgAiNb7XLz+YTyNeoCZkpk0EySYiagmgEsszwo/UjZJ8sI/1oV/47BHLJNHtjFhLsPb7yAXVa5
	5ssMek9OPAFKZmUA1hOMYfLEptMZ/9XsDOh+odWUnbIzsSDoP5d8MbqsZ+BfNvikv2259X5zZvt
	r4lJeiSV/ITO2pbnel7aYaEHEIc/DVegl35floMWXs3NDLmo68AR7aCzJFtGw3u6KX2pH/rEi/f
	UYuW3MLOFfl0KJAUvegOcP5P9QY5x4mgzqRMdCYwExuy38Pc+bQ==
X-Google-Smtp-Source: AGHT+IFFsSYdcuxWI3MsrMPZpLA7IiYafN2kXt3kRdGUmtKyDg/KnUQReXn+mRyiXifCZmz+qDAiWg==
X-Received: by 2002:a05:6a00:3cc9:b0:740:596b:4a7f with SMTP id d2e1a72fcca58-7489d038c17mr23312261b3a.16.1750217913948;
        Tue, 17 Jun 2025 20:38:33 -0700 (PDT)
Received: from lcwang-Precision-3630-Tower.. (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-748900822b7sm10147934b3a.101.2025.06.17.20.38.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 20:38:33 -0700 (PDT)
From: LiangCheng Wang <zaq14760@gmail.com>
To: cip-dev@lists.cip-project.org
Cc: drm@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	noralf@tronnes.org,
	robh+dt@kernel.org,
	krzk@kernel.org,
	zaq14760@gmail.com,
	onlywig@gmail.com
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Mayqueen name
Date: Wed, 18 Jun 2025 11:37:29 +0800
Message-Id: <20250618033731.171812-2-zaq14760@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250618033731.171812-1-zaq14760@gmail.com>
References: <20250618033731.171812-1-zaq14760@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wig Cheng <onlywig@gmail.com>

Mayqueen is a Taiwan-based company primarily focused on the development
of arm64 development boards and e-paper displays.

Signed-off-by: Wig Cheng <onlywig@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 2735be1a8..8434ae355 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -631,6 +631,8 @@ patternProperties:
     description: MaxBotix Inc.
   "^maxim,.*":
     description: Maxim Integrated Products
+  "^mayqueen,.*":
+    description: Mayqueen Technologies Ltd.
   "^mbvl,.*":
     description: Mobiveil Inc.
   "^mcube,.*":
-- 
2.34.1


