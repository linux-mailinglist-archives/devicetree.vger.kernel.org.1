Return-Path: <devicetree+bounces-229582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 60436BF9FB8
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 06:47:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1464A3AFB9E
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 04:47:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D60C72D9481;
	Wed, 22 Oct 2025 04:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b="rF7nshgX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9F52D7818
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 04:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761108435; cv=none; b=PlfCOvlZO//vM0AI8d5Y+uprWMyAU2HOD++hXZMzZjv88FHQyds4jkA76T6PHGaurEDB501yCsmRDkepkOK2Jxs9xt12AeM8TxcLF12ySZPu7nGGE23K1ropuIHG8mL1s29Ry4usP8txDqurzV+qQaz0nh2agZvM2DSOF4xdjuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761108435; c=relaxed/simple;
	bh=CHAFGElaJJM6vqsKWvce129HGl6ku8z5jgSnDpe1PuU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PYM6usrnuDWDo48O7nFx54h5w2M7o3TMP82xUzoFGghj3dz9zJdmf3JWBydcqDy2fpXRqraP+FUpNqgejBjLnOVdlpoQT04Be81rY1dptxwFrjbQMRSldKgPhHVEsrjV0ywU2dVYYwsUifOB+b/oyGR/ZXtSmvbjhm4L3X3LoPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=rF7nshgX; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=dpplabs.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-782e93932ffso5565400b3a.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 21:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1761108433; x=1761713233; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ARDIlFsexdBsHJ/mYs4iJ+oZYHRCoUuyGXAqhk97moc=;
        b=rF7nshgXo7uLWccNn8t3L3wsY52chgNtUSL9hqUWGGTd6XqbOaUCAewttCL4ri3VwA
         UGaATqZsZ9wBBpWsmMWU1vuFkndFhXHucZk43f2GrDRRnwhG1uCuE3FA4Qp+DXPx3LgR
         vjyyP79ojAdFZnC7nCNZuu2y69ee9g/uu2sn5lLZvVaEB77Ljs/4drlkfE/xQJf/pQC5
         BrOJsKUykA2ZWgigl3C6zfYfqX0eCS/X8UoBahklqNQryMA7OvOlJguwieo6vdQTByHm
         mXsqd90SKiS2xGb1ihNWdOm8MphCX8DbYNFVzib6Ftl04OZKs74YCdvSZnZ2nwq9VNgD
         PnMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761108433; x=1761713233;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ARDIlFsexdBsHJ/mYs4iJ+oZYHRCoUuyGXAqhk97moc=;
        b=DVosZErBKCvm5EueGkFH1EK064oj5/oDhTmIXhqjYKSO27yPHBEEAECHVJjMzkQRt6
         yNPS9h6+ygud2BrgCKt9hkujcU04XxULOAvuXH5/1FAnrmRovvwqyKd/ftstU+ddJDco
         ylo0yRragsGSms3hLgWhjl+6EudyvNc/fY9Rltb12ZxpHvIm5w51pflUkFd/5uXat2b0
         dTKM429vgFd7sUXJTKfeRigJHQ5UH2xyuefdFWmCAfnFWSOhhLtyCgFgL8X7ZvfebgMv
         jt4cymBSmqw0cy+o4W2WxKSKMUDpzR4oIa1hBb+a7pxgKAtveNcpCF9rn9UcPv6NwtWY
         RfMg==
X-Forwarded-Encrypted: i=1; AJvYcCVT2j/FpWGNMZDzHD8tYX/zdlAVjFOydikNRQ5zHo9G/6Lzo/BkTZtLnO4+J7XuwkmjtCL1EuDHl27N@vger.kernel.org
X-Gm-Message-State: AOJu0Yxlbi1gkP7rALqXTAlDswViGQO5aIbP0bvirFHTANPjqyhcK2zt
	QqzTlEiupVv4OYqvY/WSjMyXsi1Ks3aTJnXlTbiEN/med5eBN3x5PUNETWKQJaoN5dk=
X-Gm-Gg: ASbGncvqFdthkptVD4Ta6WK4wLFJvsJ2ltaURgyc+Uxcf6ipNTWF+IsKG15ZgSjLrta
	9m+XAtsolYrIo2KQOmW4A1vLHSa+a6wqOB4IzHWgw5VfJqkFmuXW6jCsTdyuaVquHuX/fJ31gJ3
	CqUZSJb2IjIuSPCb6vOmWZypImImkcn55yxZ4kJPBwWat+7dqEQSwoPF7x2H4QOWBjPw/d0PqYV
	V+cPL2C7VUxEeEL6KqH5mm8cEznn+0nMBqGd2/FTukYleRATRh8kdUtMVe+wrVInjFpUzxE9zTP
	cwh46b7xKSl96sCx2wEzGedBxHcGSUkUbJE7G0vvzd2c9xpxFuqJrN+BOKLRgL4yB6KbvVz44jM
	jCsNGeAXtdZ6M2CBXCgYuDgMEnQy1OXpsRA11R+EnSG3qpfd9I3Vr0Ugx8G+kVIyqWX8Srcf7uD
	0EVUdJjP6/VaA1Q/2hOicvcQZLgQ==
X-Google-Smtp-Source: AGHT+IG7v2tgI6or6tIkrpsvq7pRrpwD1oTrsV+QwYIgQi2vxNVriCFRUTuiKuUNQqyqsYpRcg54FA==
X-Received: by 2002:a05:6a21:998f:b0:2c1:17d4:4139 with SMTP id adf61e73a8af0-334a86108e5mr23495747637.29.1761108432842;
        Tue, 21 Oct 2025 21:47:12 -0700 (PDT)
Received: from z440.. ([2601:1c0:4502:2d00:8004:e310:f3d:dd0])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e223dd9d6sm1257413a91.7.2025.10.21.21.47.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 21:47:12 -0700 (PDT)
From: Igor Reznichenko <igor@reznichenko.net>
To: linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	skhan@linuxfoundation.org,
	david.hunter.linux@gmail.com
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: [PATCH 3/5] drivers/hwmon: Add TSC1641 module to Makefile
Date: Tue, 21 Oct 2025 21:47:06 -0700
Message-ID: <20251022044708.314287-4-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251022044708.314287-1-igor@reznichenko.net>
References: <20251022044708.314287-1-igor@reznichenko.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the TSC1641 driver to drivers/hwmon/Makefile so it can be
built as a module.

Signed-off-by: Igor Reznichenko <igor@reznichenko.net>
---
 drivers/hwmon/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
index 73b2abdcc6dd..a8de5bc69f2a 100644
--- a/drivers/hwmon/Makefile
+++ b/drivers/hwmon/Makefile
@@ -233,6 +233,7 @@ obj-$(CONFIG_SENSORS_TMP401)	+= tmp401.o
 obj-$(CONFIG_SENSORS_TMP421)	+= tmp421.o
 obj-$(CONFIG_SENSORS_TMP464)	+= tmp464.o
 obj-$(CONFIG_SENSORS_TMP513)	+= tmp513.o
+obj-$(CONFIG_SENSORS_TSC1641)	+= tsc1641.o
 obj-$(CONFIG_SENSORS_VEXPRESS)	+= vexpress-hwmon.o
 obj-$(CONFIG_SENSORS_VIA_CPUTEMP)+= via-cputemp.o
 obj-$(CONFIG_SENSORS_VIA686A)	+= via686a.o
-- 
2.43.0


