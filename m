Return-Path: <devicetree+bounces-54820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F1F892B67
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 14:34:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F3DA71C21019
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 13:34:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCF332555B;
	Sat, 30 Mar 2024 13:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jhugOw8V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC3222F19
	for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 13:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711805665; cv=none; b=f5DR53Tg1RClZnIasliIa1TFnVO5kaluLY0F4AwKjIuy9jg26X5wN20o65DImIImYMpaIp7EY+izLm56C/ebGyGeUyDl9j0lgx2PneIfuvgTQR8arJy0zaH7f8rYYaQ5ehdYbxhjldz3jwZfs+uqTJzTe0CPHQSQjMnHy+bfH+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711805665; c=relaxed/simple;
	bh=LGw6kak4lZFihhndUY61EFLYz8x56qhQ5QE0nUpuhjo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hMaCjNNXH8XMFcf1JvwX560bvGLLuccyjZrYYFKsT6ypTvdP/aPE7tsw7brl9lwwnm3H8MAa48U7X/ygPhgMIruBx+YdT/B53mUNQBH6Bd/hdVhOnlf/gvWiVQpf5I/577vBA7tLrp2HleFuLhwCMjGU0iEV74MLtfC4zPhN+yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jhugOw8V; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-415446af364so13109355e9.0
        for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 06:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711805662; x=1712410462; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hwVvoPowNn0OI3aCiowgffdI708sY5tNSiLWt+MX6xI=;
        b=jhugOw8VXcsSOxIoZmV0I3p5TR2ampI4h2QxHTaYNdNORhZPzkpNtB07gTZ+UdGGKK
         H52j3rHJ/JE0hOl3ZaWuXm0un21afgVOkf1yzUzEJGTAqk6VwB+wzUnocIFkFEvaXlaf
         uJcxmQTmfxJUFFW1svRzED29/iGZEZWWDHVjUyZFL3264GoL1V1FgrsMr1HXpyggRwQY
         UAJ0A6GQjbuyW9NphH8j/HB1V9CWsSqpR70I69ks9cWVam+9b4qRx3qQFnUhF7kK9zNw
         /9v85kk7p7T9KaQgF11QegeNOSp4xsNP4db2lMua0aViFtd709WWQUfBshIhlmTeF+NC
         Bk9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711805662; x=1712410462;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hwVvoPowNn0OI3aCiowgffdI708sY5tNSiLWt+MX6xI=;
        b=S5o77KmcyA6KJko6hZuAn8gGFGHkq6D/H5PDKiUAlUymG7T2HTtowmbjKi+ZE0klOV
         DG2t/4CZWCFlmWAv8DCiAimvTyLAHELtP9T/gTOOoGp9EQUCkzY3tgb4Ca5SmjG/ojhd
         K9PdJYslS0hcowYxsPpQK6iYt8/1udjDi5T5j/tuo/uurkgIs1uSv38YyyuzrGa4CQlK
         96l7iH+6z3UmcXBnEVgbipQgx5bnW6u6rXBNboYQVamUBLxkXRLCrfvYP/NI82YszWcN
         dJHM242DJEkomSyztF+7wDpmx1omRz1vrtwJpfboQV3vz9oJ8RAJmru0TqV2vh1bEChm
         /cng==
X-Gm-Message-State: AOJu0Yya9wffHuCeXfSgZruPicUd5MTG6SdLaLKmEDSppDJ2N2w/cm5i
	d19lJDzS6U82jBVWn1b8B2HnJIv9tXp9DVMPi/TowRHGhZO3RlOei7C2Nv3ZWvzi3A==
X-Google-Smtp-Source: AGHT+IHh9DQvqoy8Dp3di8r3TZhfjeHHkmjziX1hFRPX9T94+4F4w2FRwgmkStv6sOb068nXquIpew==
X-Received: by 2002:adf:cc92:0:b0:341:8a0a:a354 with SMTP id p18-20020adfcc92000000b003418a0aa354mr3626691wrj.5.1711805662301;
        Sat, 30 Mar 2024 06:34:22 -0700 (PDT)
Received: from gilles-Precision-3571.lan ([2605:59c8:6662:b310:962a:f8cf:49d0:f63e])
        by smtp.gmail.com with ESMTPSA id dw11-20020a0560000dcb00b00341c7129e28sm6454869wrb.91.2024.03.30.06.34.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Mar 2024 06:34:22 -0700 (PDT)
From: Gilles Talis <gilles.talis@gmail.com>
To: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	shawnguo@kernel.org,
	festevam@gmail.com,
	alex@voxelbotics.com,
	andrew@lunn.ch,
	Gilles Talis <gilles.talis@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add Emcraft Systems
Date: Sat, 30 Mar 2024 09:34:08 -0400
Message-Id: <20240330133410.41408-2-gilles.talis@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240330133410.41408-1-gilles.talis@gmail.com>
References: <20240330133410.41408-1-gilles.talis@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add an entry for Emcraft Systems (https://www.emcraft.com/)

Signed-off-by: Gilles Talis <gilles.talis@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index b97d298b3eb6..8b978c6f1dfd 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -438,6 +438,8 @@ patternProperties:
     description: Dongguan EmbedFire Electronic Technology Co., Ltd.
   "^embest,.*":
     description: Shenzhen Embest Technology Co., Ltd.
+  "^emcraft,.*":
+    description: Emcraft Systems
   "^emlid,.*":
     description: Emlid, Ltd.
   "^emmicro,.*":
-- 
2.39.2


