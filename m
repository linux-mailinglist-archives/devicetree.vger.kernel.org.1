Return-Path: <devicetree+bounces-40983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6066D851D49
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 19:50:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1DC35282F84
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 18:50:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35B3F41C87;
	Mon, 12 Feb 2024 18:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hVroUhqA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B89D46436
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 18:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707763801; cv=none; b=OFp2CWPeVRnbgfjSyhqKzOocwmcV/k4yMperznx3Fmvgv9AAop7+Gh46lEh5wEQ8h/EvAa+9OINMIgr7NZaXu4NPUofpL2TE8DT1T8vxtDP+QMoMpVh9E0Mv0eDRhxMpmEcxP2cMoAT7ObErhHZ+HRmAuUZCiRoNlos/Zvz+4Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707763801; c=relaxed/simple;
	bh=a2MQubJvsMtnP4ThRvwEHP5j6sANpVguFUoJsqzT9wo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CTSwN/mVTJ1dbHKPgprbGAHo7xBMwl96ClZjIQp9GLs/TNFctFrLDXMqEJUo+DieC/rid0gpmgbkxi9q+6Yshycg5DHrqIQ8CKHczUitHqOmV2BeP5axCj2Bc+cYvqRoq2JwVeDwZAX5NGmZfbvFcj9vUQ+q/We3CQsKAPQgviI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hVroUhqA; arc=none smtp.client-ip=209.85.161.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-59927972125so88003eaf.3
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 10:49:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707763798; x=1708368598; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZiRsZjgJE08mlqExCXE02bhHnOiYxOBr2Vmf+IkslQ0=;
        b=hVroUhqAL0MBYhpruxMrQm25GZljoN+sMPnHb1RVd5R442JC/1hi7NduQxl4hKje94
         teOqHbXJeG+FiUbrCP/aWEvMDuL3dW1Tp1wkXThD4qWp+f6o3WBJpfxVX7DKRz5UlErE
         jAr5D9k/vyuf1jt9NRKPg9VjhUGr5Dq5PYXJsUsFjuUkZywrQRtB1E4Of5hDDHljgtIy
         0SRojT8Z+3kULhUukyrD5iSp05xagogbR0Nfmh5r9wCYVCeD5Qtq5SjxgtiRC3sYP/So
         BIAzowsiHyZB3rv3sunK9AMNwrHYcm4/tq1/YvRdpJV9qOmyhthTQZvAnzszCHOq4hCA
         Z3Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707763798; x=1708368598;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZiRsZjgJE08mlqExCXE02bhHnOiYxOBr2Vmf+IkslQ0=;
        b=pReMYbBR3p0TpgHIOYsnUURSMoYiGKA2cV1IzBQP8P1XTqUpYsvZKtS+SNje52oqkM
         upGe2scHroPm6fVZjUzLhC9l8Py8AgZYheQfoKeAh8tAXQEUZUEy/iFPplQ9AbP7jnMw
         cL+xhmdOcWrsdyVBmgpboEUqVVeXuCXOYLXfOi5xGuFTNUGyPIwuWF34mwoD9Pv3OzOp
         p8ClXsSE7aJKO3G0j+delqcZgXztXCBvaHoNrrNr7XJouuYO/OH9PbCGJKhh39UhY4+d
         9RzhJyWS01pE1a5XzV9jfuCF9Df+YcedOHK72dl7vbunaOXjCzOi4VElAVINnS+OuLiQ
         tN/A==
X-Gm-Message-State: AOJu0YxavTv/ZUqHkRsoeJ/y9AdljKsJejCjaOWVjMYK/e87KrZLZm+N
	vW1mSznKIq1jn/VYDYqg5js5Ij2ABrU7A9THK3HHSs6/cg0i52Lq
X-Google-Smtp-Source: AGHT+IGSw06NfJXdmlcQHzjnL3FF9bOgGHPCk5XmRWBD6/JKfOeCWsmU3Ve0BIUPqa8izDBTGRQqZw==
X-Received: by 2002:a4a:354a:0:b0:59d:2163:2d6c with SMTP id w10-20020a4a354a000000b0059d21632d6cmr5944522oog.0.1707763798563;
        Mon, 12 Feb 2024 10:49:58 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWoo6AEFNlrC3bnOrjvKOb31aIvRIF0598Zzcq9BsCtpGsYrA4fxl/iW5UZpsNBm53a9TCD1Jnuu//P/4KrigxQpIA9bkXdgxmTZvvZA8g+ovwOz0PeWkeK+ZM4Vp8RyiFtHgSGSzeu8Q91kOPDWAgyBsbLr9CIGEJ0z6q3Ek5ISWrXJrXSZ8vf2U81WoR56oZoNQYkP6EHI6TIA7hC7KJtmN0LwxtlUvyJd8YBQrswea3FlmdawIEqJOL7/iGxZQ6Q6n6LmgjnTJ44nZ+PIoUjylOYgq2CveyDVbRStx2ZvNW1rKsEqNQ6llOQ+pI5ki687bsZOP0Q31WDgbstnP3+Pq7bC+FzwoiqanoZhICF2/mNPxCSqLp8C+Sy9oprwPynv3ocB7zKO6r0P0TEqvA/2Yjy9gPMzI6+fg15PZto26pEWOwQd6CJbvDmmxU0q5PnU50mKw/dgSikuhu3WRQXwr1pAWI3E8UAzHGKsQPii9+BF3x+thkL804XYXwYn3VNFyxy3w0SYBhDN/BcnsCVhSuO/CYFSRWCEQbLyKudfjpg0xTrWmZf86WT
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id b7-20020a4a3407000000b0059d5360c62esm171939ooa.11.2024.02.12.10.49.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 10:49:58 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/7] dt-bindings: display: st7703: Add Powkiddy RGB10MAX3 panel
Date: Mon, 12 Feb 2024 12:49:44 -0600
Message-Id: <20240212184950.52210-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240212184950.52210-1-macroalpha82@gmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The RGB10MAX3 panel is a panel specific to the Powkiddy RGB10MAX3
handheld device that measures 5 inches diagonally with a resolution
of 720x1280.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/display/panel/rocktech,jh057n00900.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
index 97cccd8a8479..8dfe8951bf5b 100644
--- a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
+++ b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
@@ -22,6 +22,8 @@ properties:
     enum:
       # Anberic RG353V-V2 5.0" 640x480 TFT LCD panel
       - anbernic,rg353v-panel-v2
+      # Powkiddy RGB10MAX3 5.0" 720x1280 TFT LCD panel
+      - powkiddy,rgb10max3-panel
       # Powkiddy RGB30 3.0" 720x720 TFT LCD panel
       - powkiddy,rgb30-panel
       # Rocktech JH057N00900 5.5" 720x1440 TFT LCD panel
-- 
2.34.1


