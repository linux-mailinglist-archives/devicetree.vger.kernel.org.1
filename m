Return-Path: <devicetree+bounces-106882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E289D98C1E2
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 17:42:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9CF15285815
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 15:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C490E1CB32A;
	Tue,  1 Oct 2024 15:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YnIm/Wc/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5998E1CB314
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 15:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727797364; cv=none; b=WXMpUxXA7JTeb3D7ZnG6IgFTA88Yd8y+ceuyIoDWVdK+TR6APfvGH4IRYz9TyaH8lGhxJ8Rt4TtzjuBLoi+X+Vfl4dykNCSvghJqR+zDkPPiYcUTKacvrwC05T5Cgcmf2E2PkOCMa+pfRbHtTb51+YHiUlFb4RV9Q4PzOOj75ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727797364; c=relaxed/simple;
	bh=OJHpV43/T948TsSMH6u46TNQpfD1diROH1JYTNN4Nbg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PtwUiZnez/ksqi9xFb+9OJBRnTy7yLjci6GxNXsyU3N0cm3nRu0Huaitm9aRi7YqVhHB/sFLBrVsjgf09D8XDPTYXfuZ4FtyrpQ7VoMesvlymM9fT5R97rjHBwma1xtyQuZ1jBym1tp4si3Jc5BibMGpkL89pFO+ExplhUd9+84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YnIm/Wc/; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3e3937ef498so2529712b6e.0
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 08:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727797362; x=1728402162; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AFNXxxBByyYyLOy5n02vtJL5IO4kBfmmtRzF6xHDllw=;
        b=YnIm/Wc/LCJJ45VB0TrDHe2xyM/WuD4kJakog47Sh+nS/9QGx/66ca49y/Gpz2unnm
         7xlWAY1COSZW2HC4D+5CKF3EpA5H+bjuYLDTdDE4DlE8y0lRx7DgxQKQAahM+NlqlpYG
         3vHtE3SEp1UtT+pVZvvkq9LaiqEWeNTzyg5oGmII9T8Wy/+2p6LbcCQ1yLJmMjCsW+87
         JGmzehN/9Egf/QJ6lmCBzUW85LLpECF8cFgXalUInnJiG0skAtBqYvQj1QvNwM7ao4It
         7yBDcLi7wSXyxh4ob2mXWfhC2PQiwKRARbLOG/cOQcRgScgFZR9itmKh5IY+DYqW4Ieb
         1J5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727797362; x=1728402162;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AFNXxxBByyYyLOy5n02vtJL5IO4kBfmmtRzF6xHDllw=;
        b=EOSI9A4HvYSEHxtxCWbStSo6VA4bLmgm+Idag6v8tI3Cj/q/6uv6TlhD+hii+FPG4c
         AJYtDQJtVgvM+MVtVTS/qB3fGmZ0B8PT4/HnmGyXavbSU2qDXlDj2+e7KlII4XZE6qKh
         Z9Qip3Q7jWKQ4Zhw0yo2UNLQIsqRNljIoZeJttNaVRTxzM7H4yovgTk0a8iLNVw7oI3k
         ecyjGLahvSQZgolrPgsOJMYEQdhucscueNyLlvOB+gGzYFZlTDmo+LivEy6BZ9CE/92K
         oEJqU09YrJE5ZywMqV+pdsgmqMiJ1j3nXwxw/yRyZL8IP+Rnv5twt845odnYxFRD1slG
         kwJg==
X-Gm-Message-State: AOJu0Yyi0edCp8qk8b7Lg5Krxa2fucQN/NVMbxKqhzoPboZs4w1tWd+N
	wE6h7bl1DGUJnTAhTF7e+X9WNzFmdZvJ6A7Zx7ksJO4BoInIie4FZUzCKZS2
X-Google-Smtp-Source: AGHT+IFRwImRvjtP0DACdCJLSKEbYDj6m65og/w9J5YPZNSwK4fuHsw49tMih+pI9Xl5WUPbTkBvEw==
X-Received: by 2002:a05:6808:179e:b0:3e2:9906:6198 with SMTP id 5614622812f47-3e3b4165cafmr131970b6e.38.1727797362405;
        Tue, 01 Oct 2024 08:42:42 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e3935c6293sm3120485b6e.53.2024.10.01.08.42.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 08:42:41 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Powkiddy RGB20SX
Date: Tue,  1 Oct 2024 10:40:15 -0500
Message-ID: <20241001154016.87386-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241001154016.87386-1-macroalpha82@gmail.com>
References: <20241001154016.87386-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add devicetree binding for Powkiddy RGB20SX.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 687823e58c22..4fd6ce5697d0 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -760,6 +760,7 @@ properties:
         items:
           - enum:
               - powkiddy,rgb10max3
+              - powkiddy,rgb20sx
               - powkiddy,rgb30
               - powkiddy,rk2023
               - powkiddy,x55
-- 
2.43.0


