Return-Path: <devicetree+bounces-129205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3359EAED4
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 11:58:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA135162157
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 10:58:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABEDA1DC9AE;
	Tue, 10 Dec 2024 10:57:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KR1TZpjQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BEF7E575
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 10:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733828238; cv=none; b=dYGYoeFu+sbRysyuhrU6eDnZb/1pabQwko+hQZD7/M/AeNq0pmW+JKvEb4VCMB/DYT4uX5zGRxW7G2M514pt6KAQT1dhCKsc+egAPFktKav0ErMEiDrCQbz1CiC8c3QPDbIu3Vs3KzG3AV51kLovDb40isMfzEFom/Ol69x31So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733828238; c=relaxed/simple;
	bh=kAMlmXdMZNLuk3Hd0o85Nl1h1rX8fxVktadoMv00Pc4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=g9xUaLXKtqpUSAmcZbDD+939FBoAHEsetrn7uUUC9EpvDed38z8BQv+aRw1q5hpN7hm7Fem4Cbbayy8B8z1yy0sEOhPapqhtIkOgSOCnvy7h8BUcivC2igRWzmdFRLDejtqhpupcNtQskpmQWOYq+St7FA6Xg/CsUGpZrvf1Nwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KR1TZpjQ; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-21680814d42so292265ad.2
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 02:57:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733828236; x=1734433036; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zgUCdWpblI3F1DgOMBM4UZ2prMSNQGxKSsUtwrt9A+E=;
        b=KR1TZpjQCpvVstxcf548uVteaKPU6dYBGm64k+XcGQuUDLjKI9sH1bhAUaioWeB+U8
         8xE0qsEWXfnlswmsB+O7UghV/MthiDlrKRe41GA8wIMmRiWPLCkc+dnEKdezyhwJyzyC
         S9yjFHtn+c9PPhgcJ45Dt80MrJOfO4tJRjGvfsHspyD0LqAKj6uY3jFz9fGuw08pdYpH
         flZVCR9Vj593Wx+cN0HltOmGObkrfPfd2OW4dgsy7GvfJr2hxCK8Bl7+TMWLt6s6uGxw
         2jGSM4AY1zCOiGkaD7g4f7I5InlihcQ2HMC+WYBVsT/EXJRkAaWPdjlUAHR9raMbZ2iL
         sSXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733828236; x=1734433036;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zgUCdWpblI3F1DgOMBM4UZ2prMSNQGxKSsUtwrt9A+E=;
        b=S3tbHVisib0ZgaMwGaHejfaQ/1upBdvDrVslDUti1oOh3rVdw1M6pD/p1fnI4dkA9z
         rcRDPi6Lw1RyYy1tqvk4vLtJAst+O+fYSq2csTC/UE4V4OuKQvQwMjWbHtPQEf8eIJhr
         PigdrF7/laj/BR8j1UQ0HX9f5SBKV7GwIiRXcOZtWiAdEwrKInrIMSc2sE5jj0awOFJq
         iLUi/3yZxrSBE33QjZZ7bT+IM9kc3+CAZaKAByv6XxSDN9P2redyhbOQClZafSaK9DpO
         MAcqo5CGoRsVxSnTnAJrMOCn3JLq7ZEOdi5aE3IG9gy7DThEx/lHc6jMRMhC/54XOD+v
         91PQ==
X-Forwarded-Encrypted: i=1; AJvYcCVfu702VE7cGgdm74ZyNH8L0sl7/5+STtUGTZTjcO9I6lSMTcqvFsL9R0YYqYm33heS8lohUU34aaEr@vger.kernel.org
X-Gm-Message-State: AOJu0YwZ9f0GH7rqfX6wYr63PGI8ldi2bgVH0l7k8PfCvq3mkMgLJOxW
	i1GqELg9SXa5NBxYYtVHx0NfCus62lR9dK3k1FGJTOo6uQ62/6oz
X-Gm-Gg: ASbGncujZWEPfYIWO4mbILaGWyszJf7PswF1raVuvRavr2a2/z+Hg6UajCUTvzp5Pse
	JsxNER3xyXHyT5IEvU2l3PHMokJ8uwCFGFZVGHUL4Hep2MdIlio9vJTTapIraT+j1LPGZDEP0F9
	XirosQ1YD3FIxNQVKeLgQ+NQAAjNu/LVMy0IRnx8+qIoyl89RMmDPHvvdbrweHRhs3LYiAdqBYo
	vWLFO6+3OPE214OeKy5A4cDCqg9HNFZOJQkL7mVL/ij0ckQVth+/jj4xbP/PA7f6J0f
X-Google-Smtp-Source: AGHT+IFZS+CwL6DlemunV0X7hNvE9zPcFuht9fokHFareRkZRku0/80LFiQQ4eLAdXdtO7akoWhD/A==
X-Received: by 2002:a17:902:e809:b0:215:8dd3:536a with SMTP id d9443c01a7336-21669f9985emr60165085ad.4.1733828236463;
        Tue, 10 Dec 2024 02:57:16 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:23ed:f795:ef82:746f])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21615b1e6d6sm71068955ad.104.2024.12.10.02.57.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 02:57:15 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: neil.armstrong@linaro.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 1/2] dt-bindings: display: panel-lvds: Add compatible for AUO G084SN05 V9
Date: Tue, 10 Dec 2024 07:57:04 -0300
Message-Id: <20241210105705.116116-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

The AUO G084SN05 V9 is an 8.4" 800x600 LVDS display.

Add a compatible entry for this LVDS display model.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Added devicetree@vger.kernel.org on Cc.

 Documentation/devicetree/bindings/display/panel/panel-lvds.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
index 5af2d6930075..fcb5834f799a 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
@@ -42,6 +42,8 @@ properties:
           # Admatec 9904379 10.1" 1024x600 LVDS panel
           - admatec,9904379
           - auo,b101ew05
+          # AUO G084SN05 V9 8.4" 800x600 LVDS panel
+          - auo,g084sn05
           # Chunghwa Picture Tubes Ltd. 7" WXGA (800x1280) TFT LCD LVDS panel
           - chunghwa,claa070wp03xg
           # EDT ETML0700Z9NDHA 7.0" WSVGA (1024x600) color TFT LCD LVDS panel
-- 
2.34.1


