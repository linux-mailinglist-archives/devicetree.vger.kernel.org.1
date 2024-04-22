Return-Path: <devicetree+bounces-61393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4458AC84F
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 11:04:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 487A8B20CEB
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 09:03:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 267B413D880;
	Mon, 22 Apr 2024 09:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="v5CoYQcb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F81513118F
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 09:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713776620; cv=none; b=sm6iqDkcHm4Npegl31zqjKwLv7qqXuXddqva/Qjf6NMdHgtnwNuzBVmhZhqtT06YV4cnfw8pes74EDHQRoJN8IgKEuhzoda1ohCDGvcALqzq4PmFw2/8j/8XOIy6VaDl2FMYun4ELoGqTr8/XTdWW5rQjXKbn/RHIrsaD0Pj+w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713776620; c=relaxed/simple;
	bh=1PsJkl9gqbxqs5Js84qkSKFGlvFiLs0dc8CyNn3QLpk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=umQ5miOrOAxebmpbmrPTv0Vd+AZplYNKbn6lWx4jPgDopwo9yb8JH1C1mbIBn3hZVa+BXwWme5FxUvfZW4BK/vLzINRA5IZY649CF4voB5OYrYMAeDdTHaCjlCNtBvcdsYWJzeSIUwkCE7pkApGtr8to5kBbeAMp9gbW3X4nm44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=v5CoYQcb; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-6ed2dc03df6so3617456b3a.1
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 02:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1713776615; x=1714381415; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jnqPgkVLzV+3jDYl1oUryZqqEdno7AXyD0XeGcrBAnA=;
        b=v5CoYQcb5vEobIjWy9RAikfhv9yEUvPKi3jHTwTQH7QhqtxowMpXsD4Cy5kWxBJn9j
         hOd7ahnNqb3B/rg6LPu1qLp0gnljK7TfsPTWvK2pE1IiZg4+URU3J71AME3b6bTlbSYV
         6JSB5eZWCdDBWXsW0n2kfgd81G6d38rAVaIT5dix9gB2Dvk8odIYDTOjk/cImMS9XhfX
         OnbXC1S7d/qjHjEcqPDlsXdOqKq/3d+FWzrrUon/qDydJV+spay016xKRl0vMBMCuniZ
         xxd324xmZQ8SCD9bwhCatFGramouVPCknux8Q/hmEZRsDsj9r0DWnm91UkiRuGlSIoyA
         nMuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713776615; x=1714381415;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jnqPgkVLzV+3jDYl1oUryZqqEdno7AXyD0XeGcrBAnA=;
        b=t94dYTijlaUVErc40AmN1yGfxuxxmo+W5bMvuVMsRQ+ORNPS9LVucr0JHdf9tMSya7
         vD9W2jbYPryz2WLCb07Cb5ICqYCanBQf2EeTPqKn2oC7UnKhMFkSMmww0GBix+XzLwFv
         0WMhR/kYl9F26NmubvNMCO0IkPJPh+xB8sbZU/sVfQZNJCfJjuwIXtoud5LMrW36woJw
         36TnTXK1bRExJ1vYu7l8Pn5FcQAz4RplGzh6gVwuN7C8rci6lwXy7p2ElA3TMh7LIr6H
         gRNOL2qUrvpoHvjgSgIFLpF0yRgAQ5oUmRYqFQDtZPK1K/qu4Wqfc2k6D68gEciv61jk
         tcDg==
X-Forwarded-Encrypted: i=1; AJvYcCUbXyMZjkygVKU2qe1j9zq8aUUPcZ24XWz4t2h1+F3EL6BEnw94oaQ3wveQIinJbBJVIeFPbaGzqgOFgo35S9raWE7wsTd+SrXOQA==
X-Gm-Message-State: AOJu0YzN2aqct4N1oVCgNkWVSiYx5+g560prKHpUEJ5C1wx9oOWmea8U
	e3SFdiqjFUdROGncjguQCda4fA/GzSdi9cOuYo9cu6tHcoqbl4q3XBiMBJTfrHk=
X-Google-Smtp-Source: AGHT+IGOWzu8Sm8Boy+KiVHgZhpsdqCs/U5Pw74Tds0iYevluy6MAqtOWmu41LUeQ1x3ipKWvjB/ew==
X-Received: by 2002:a05:6a00:4f8e:b0:6f0:b81f:af61 with SMTP id ld14-20020a056a004f8e00b006f0b81faf61mr16298827pfb.5.1713776615456;
        Mon, 22 Apr 2024 02:03:35 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id by42-20020a056a0205aa00b005fdd11c0874sm1919137pgb.64.2024.04.22.02.03.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 02:03:35 -0700 (PDT)
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
Subject: [PATCH v2 3/7] arm64: defconfig: Enable HIMAX_HX83102 panel
Date: Mon, 22 Apr 2024 17:03:06 +0800
Message-Id: <20240422090310.3311429-4-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240422090310.3311429-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240422090310.3311429-1-yangcong5@huaqin.corp-partner.google.com>
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


