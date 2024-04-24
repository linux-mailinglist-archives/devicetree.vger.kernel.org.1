Return-Path: <devicetree+bounces-62094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 007458AFE74
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 04:31:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A616D1F24251
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 02:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA96F83CD8;
	Wed, 24 Apr 2024 02:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="iPpR3Oig"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB9007F7E4
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 02:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713925843; cv=none; b=u56rfOTh/LKlyeGzFE0X1FauthnEb7aVodC6ycIXOYgxaot3wANtKy7Z1jzBeUKW+P5Oqm8FRyrVm8i5hZhAP+5Vsc6KRWcl0R2FNqdR03V1nM7EQs2Vqtm1qJjLZmGELQZLcpznDq4nKJ1y3qhJGRggqcyTmN65IPlywEJ2VyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713925843; c=relaxed/simple;
	bh=4fLHwQPGk0QeNw9l9ZAq3BhROY3TA9pGgOZXf/44uJk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IyT450j1NpZk6ruFFcSeAIi21oYUNWECx/WBAxrU43/QnuR0Ibz6VGKp5wo4W3G1hmgHuWZ/NB9BQ/s+g8BtdJQZEW26Msh7S4uFugb4VUr6lLrV79vpZGkyDci8ZTM7f3k64wC2vfYV7hHvRQJrXNQYvI5BAU6wM3M2tRU7R9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=iPpR3Oig; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-6eb7d1a5d39so3614538a34.2
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 19:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1713925839; x=1714530639; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kdgMcjk2SUhSnewSfUlS0/MTnaKK3tPj0hOvx8EtZQk=;
        b=iPpR3Oig3SF200Mp9fNpOQaa7Zmb7IKtPMk3nRr1LSDh0lsh+wie5HNUHPWu5DachL
         NWntQqo71MrUVAvu80EnapXQ7NWBXZj0LOAiu3ztqP33OpMIPqj3rch4/kLIk6r+6geb
         Ldq5Xc3j9BGqvw//hglHY4eDiKnGLTN6FrPsWRGPDYKy6E4h0lpFVPuewBxde06booGt
         8wu2i8jltTu2QbIzxal+jpUvHdQ9lcetYnLqoHEvkxju7hQWh5I71t0ijhhBCj4w6i37
         0MGlnd+Vv5hrYDNNg0qTDUKGOWG0wGgfHoim9x62104fNLWjGxi6OqWbfMVZLx5pqXlJ
         xrKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713925839; x=1714530639;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kdgMcjk2SUhSnewSfUlS0/MTnaKK3tPj0hOvx8EtZQk=;
        b=ZmooqkAtCFGYvrzKfrwFxfqZa+KF5W5QcWMUR/TQjX872yy/NvtNEx2za0R7TTa4Yq
         19C318CTgaM6hB5TgU9WMxxHs4GBmCbacaIomDgqebRe6qFgomGuZ7mydIDOtYkhkkFU
         c+OT33mIbKX5GQOw5wBQpI8eXBQwGc0EA/x9uDUUovThuqd7n9RzOfiMLkMve7scjgm3
         b3MPXFCdWMRrMLmyCmiT+1JIBxSDi3L1qEqFFlWFMszUCLfiwW6FLfFdhTAzVJ0mO+IC
         h0kNcwiQy+GsZT2ZRUqF2yL1x19nK9NskGjA+a3zoXUEhsb9+Ff3HIJEloCu8NUuJYXc
         ppqA==
X-Forwarded-Encrypted: i=1; AJvYcCWWU1jck1BVv2y/AyNwOAA5pRAmliu4d+z91vIiY1U3dQf2W4zvJPOhrk1KmqR672DuC5tBNKY3CeWM0b8DFjZyrTpIDyK1tQgDtw==
X-Gm-Message-State: AOJu0Yzmj7Mw/Ues3zmOMhbv04iPtAy3BsxUDkhtK/sBe1tqHXjFPexW
	zSSxPsMRjEns89Bka77A7yfLYHDa5kBQ8cREUzhVpPtvlPDlqdBSLabl0AxpZVU=
X-Google-Smtp-Source: AGHT+IF+H/psnQOqgjI5FBt3w3oeQ9GZc171xd/LPRweALS55ze4i2g8pxZNH9RrfxIpXP9njz3+nQ==
X-Received: by 2002:a9d:6d0e:0:b0:6ea:126a:bbd0 with SMTP id o14-20020a9d6d0e000000b006ea126abbd0mr1542792otp.14.1713925838979;
        Tue, 23 Apr 2024 19:30:38 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id m2-20020a638c02000000b005e857e39b10sm10179385pgd.56.2024.04.23.19.30.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 19:30:38 -0700 (PDT)
From: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@chromium.org,
	linus.walleij@linaro.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	airlied@gmail.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	xuxinxiong@huaqin.corp-partner.google.com,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH v3 3/7] arm64: defconfig: Enable HIMAX_HX83102 panel
Date: Wed, 24 Apr 2024 10:30:06 +0800
Message-Id: <20240424023010.2099949-4-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240424023010.2099949-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240424023010.2099949-1-yangcong5@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DRM_PANEL_HIMAX_HX83102 is being split out from DRM_PANEL_BOE_TV101WUM_NL6.
Since the arm64 defconfig had the BOE panel driver enabled, let's also
enable the himax driver.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 2c30d617e180..687c86ddaece 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -864,6 +864,7 @@ CONFIG_DRM_PANEL_BOE_TV101WUM_NL6=m
 CONFIG_DRM_PANEL_LVDS=m
 CONFIG_DRM_PANEL_SIMPLE=m
 CONFIG_DRM_PANEL_EDP=m
+CONFIG_DRM_PANEL_HIMAX_HX83102=m
 CONFIG_DRM_PANEL_ILITEK_ILI9882T=m
 CONFIG_DRM_PANEL_MANTIX_MLAF057WE51=m
 CONFIG_DRM_PANEL_RAYDIUM_RM67191=m
-- 
2.25.1


