Return-Path: <devicetree+bounces-65907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 96ADD8C095D
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 03:53:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 421E92828A8
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 01:53:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 885BE13C9B0;
	Thu,  9 May 2024 01:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="FmmQjiMD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5202813CA80
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 01:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715219591; cv=none; b=Ho+eaXOFTq2cuDgOoAKTec0Q0UXQPHYVIPik+aiieF551abbfcdJIde3bvHCtaSjuo8HzSQIA+t638LbQ0nix7LWWIOlVe+Dd9o9uRo6lj8sZUhivWLnu3wzD4etJvh7XLSIC2zuzF5YQKWSWRMLk1u5FxW6vJw7vLESek2t6NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715219591; c=relaxed/simple;
	bh=4fLHwQPGk0QeNw9l9ZAq3BhROY3TA9pGgOZXf/44uJk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=t/bZ+UGTLrsXwZJ6cmn3gxP8N8L/tyIUbBSeHfYaeCD2lO6mJJh+U+OV2aEpfSLw1NxrXlBzHzbD3G7abkGNam3Wo55KOJitV4FujVBQnlpoZh0Shq2yW/3Ung9rhVj8gn9rfuUwt8wgslT32gmPMGTdHU6L4z6eOs6nqu4NA48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=FmmQjiMD; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1eeabda8590so2467065ad.0
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 18:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715219588; x=1715824388; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kdgMcjk2SUhSnewSfUlS0/MTnaKK3tPj0hOvx8EtZQk=;
        b=FmmQjiMDUGgXDBUai4MVzxqDfAKNcT4zER6EIuXhSVbEortFsI1UJiJ/7RLJtyIREO
         jV9eaVjSnrtiCDUMNxj770CpsuGtROhbNuD/vEMJicui/JF8//QOjJDTeZUa3TaYqY1C
         AiJqIv3mTEN5YOFcYB/APJTnwgIRfSJdpG8IbcMNr4Ql9H0UqojqsUkAGox2tpsrpCMk
         H7GZBB0MPaTojlLdwehmPOxLcDyKb+kMZFaT4308RdMn8HzvdW7VS0/cD7eCoaEu+KbX
         gAXqLobgX4bBY9S+McuVWFtyOxKB2WaPXIYBLC20ubXD8oFtxOjtncYo/d6v1XZAqCn8
         ebEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715219588; x=1715824388;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kdgMcjk2SUhSnewSfUlS0/MTnaKK3tPj0hOvx8EtZQk=;
        b=qGS5AY7bkQOy0b0/R5TAxeqzJ7Ql1vI6qakD2NJ54/oKeczkNWIoq+Q3REm382OytA
         sn1fJ0BZFr4uD7nEFXKastgAopxmtbZP8p1ultnkWQNxYIEx8vgY1GJYEg0RhZc8x+T6
         lfHBiaUKBEF39HhKJZQA/+XgXIOr6lsC8NxYi/I45kor7wvMh9ppm+Zu9+3uN5EWIYnN
         FOkYizLyaA1rVqQkvHhF7OMIAam0SXPD8sDSOID1zCagES5j+CrmMZJpj1QHG6VA9rcX
         2l8eOBR45C3uP8RTFuLXYhleX+Cue3eZxizSv3fRy09f2oQvJayx/06XySJePVeAiLvx
         moyA==
X-Forwarded-Encrypted: i=1; AJvYcCUQj4TmqUO4+pDth2oIdUgwpDvBQR4HMplRkZAl5V69ZW6kxR6c1o1khIDX/rC7ANDWBtvAfu+arzmRz/dn25SMciLc0wXxUWlUkw==
X-Gm-Message-State: AOJu0YyEaPSKM5liIzkUaBn0bXwrAraoJ3ENVgh5yCNkrGhlD3bPVP0h
	S7+6QSeWgGxsCYdGwmzmkiKJDe2TiNabdo/2OTvlHi0nwmWzapZI5Muzv7Gexi5HGmsKf+xjDoY
	h
X-Google-Smtp-Source: AGHT+IFuZ1ciQmQfC4rMtuiuLyVXsr/sSBUXfOirzhQb9N/x2TesGhuSmdYudAFRFjbHiyWukwABIg==
X-Received: by 2002:a17:903:11d1:b0:1e2:9aa7:fd21 with SMTP id d9443c01a7336-1eeb0998c52mr48491225ad.54.1715219588654;
        Wed, 08 May 2024 18:53:08 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ef0b9d15dfsm2117465ad.62.2024.05.08.18.53.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 May 2024 18:53:08 -0700 (PDT)
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
Subject: [PATCH v5 3/7] arm64: defconfig: Enable HIMAX_HX83102 panel
Date: Thu,  9 May 2024 09:52:03 +0800
Message-Id: <20240509015207.3271370-4-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240509015207.3271370-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240509015207.3271370-1-yangcong5@huaqin.corp-partner.google.com>
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


