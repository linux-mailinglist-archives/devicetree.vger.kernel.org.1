Return-Path: <devicetree+bounces-174822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD527AAECF0
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:22:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 414E2507027
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:22:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 779E528ECF1;
	Wed,  7 May 2025 20:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TgOQGCSO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAEF928EA64
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649358; cv=none; b=KNQ8STAl1fcxuZn1JciDGH8i93dzT+gkBF6++e7kgatC99ypcOfSg07LZhQfxIqbk0SjH4givfueLYI3vQCzOlfwqtxRAJYgfWtAFqDjxcVqmxpSWigLZvU2uyxoFRyLWCJJwdY4sAcUfZjEMMnKsJ9Qcxrfm8je4MCz9/3HFtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649358; c=relaxed/simple;
	bh=xZdWHwn2SDZzrrTSxjZSjGuC6r+bWBY2bDoC212fjrI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kyadIWW+uz6uAZzFA/PEHtbNW3Pk/ZUeNy2RB2VzP4vNfjsMqFZfpJgwMDnQsWDBR3EZC5KzC/vAv5r6PRZm2XQY9vmViPbkfVQgFC7DqV6N1OZ++JS/0P8ni1ELmNFaOmZPqUoia+2MWoSrKhcf11NE+ISwRPquqRTomdGIcUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TgOQGCSO; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-72bc3987a05so188846a34.1
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649356; x=1747254156; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DOnjdA/K9t8YFoMyvpC9mBKsBSMkiqJxTGJB4LzuHbI=;
        b=TgOQGCSOcnnuY+qQ5PPist9bYury0/wat2gPAgayuDvQTO7ISxrtvtSXxJjIFFVP7a
         qLqsXfIVA9XWvXMzQkuMUOcaNinCNQSQZjAi+UHJ8kXk24gzTPEqCwk0eVrtUhDiuvEY
         0e1NUUkbyAquBy+szNRoyC6AG14+XEGFblfdsbDE3LPEV/mzmaJLtOqBhq4+4YHHSeq9
         DLYbfVBoKrqgbyk/XbIaiJo+QaTlIGVvNTWntUldoZ3fO9P8KjrBF/s8yxiBrVPomYED
         l+oEWmPKuLzdi7ka+Plgg5LH8qR0ZT3Mn3APPL4Y5ouxgpIRjDh3yje1LTaR36KDihbh
         exBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649356; x=1747254156;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DOnjdA/K9t8YFoMyvpC9mBKsBSMkiqJxTGJB4LzuHbI=;
        b=lEoQuhc+7RCY3zsAE4poouIugIbWSiWMJGe/XEKBMCfUdmAbny70v5dtTgqdGRUyvR
         V6HEKgQ5Q2VpEVAmdtn6QPx3RZd2oPD44MPssJCpor7qlWf4fU6W+MaEqC1fu3XzONaz
         PvLy6Zra8lxltgjjlxg4fhAtZOUAWZ/O4St036xN02In6PFFywy8Ms2mnZ+Y4t9fyx5O
         KKLZMgDFOH4A3+lWGdk/0MwuEV0ogTgSz3aFPnyBr4l+Xb3nsR9VW8fFjzYBqf1G27Wn
         a8e0ApdbOap5SynvfNCJi4sf7y7wGGi7xCJhPv6BcpSrpBbaLpNRQdThIsu60tAopGKf
         hoKw==
X-Gm-Message-State: AOJu0YwcKXQ1p2FTFlB7NEx7BjPzpp9NFABI/GnofbscAnXXYPTOJJEH
	4FssUKVFDMhNYJMcv64UCIl++2pqn4vldmildr2Lf8UZ2yV/d7od
X-Gm-Gg: ASbGncuQeHTKT48P/a/n7Qy+kt+dHBgS1LvJhx0vkY2cQNj1AtNBjhRwaDWqD8ESsSM
	3+RPb3okhkECELQ0H/yqVt5HJKcZ02ZIgUttNFAJIZ+tl3HDLaLWmc+4Vv6OEp0R8BfF7SZzX6M
	Y/w2JQg6Dp7idsrj/jsZRDidi4OenX4QdlFW5cZooa+cZKNz7kICxZ7vuNkiE/o6LomYt8EeGv9
	5StusmKLw2XEMjMsPy/qY/pkS9hh7sdaKc/lO9vqk5WLEc+g5MPC4pStGEcW/5cROhUGNDIT1dJ
	vieEPfV4tkUEXlCzgw0JwvK6ntTBK+V7WFI8ekEvdDWJUqN8TshhCURy/fCD
X-Google-Smtp-Source: AGHT+IGhdN7iQduVHwjpHb/fdju1Q9acMOat+8tQez4g/T+ucKmAnspCZWL5Wcod8/fm0yG7hchEvA==
X-Received: by 2002:a05:6830:33f8:b0:72a:b2a:476 with SMTP id 46e09a7af769-7321b364c5dmr525805a34.3.1746649355944;
        Wed, 07 May 2025 13:22:35 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:35 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ryan@testtoast.com,
	macromorgan@hotmail.com,
	p.zabel@pengutronix.de,
	tzimmermann@suse.de,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	mripard@kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org
Subject: [PATCH V9 11/24] drm: sun4i: de33: vi_scaler: add Display Engine 3.3 (DE33) support
Date: Wed,  7 May 2025 15:19:30 -0500
Message-ID: <20250507201943.330111-12-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250507201943.330111-1-macroalpha82@gmail.com>
References: <20250507201943.330111-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The vi_scaler appears to be used in preference to the ui_scaler module
for hardware video scaling in the DE33.

Enable support for this scaler.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c  | 20 ++++++++++++++++----
 drivers/gpu/drm/sun4i/sun8i_vi_scaler.c |  4 +++-
 2 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
index 7a21d32ff1e4..3eefdb710dee 100644
--- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
@@ -94,12 +94,24 @@ static int sun8i_ui_layer_update_coord(struct sun8i_mixer *mixer, int channel,
 		hscale = state->src_w / state->crtc_w;
 		vscale = state->src_h / state->crtc_h;
 
-		sun8i_ui_scaler_setup(mixer, channel, src_w, src_h, dst_w,
-				      dst_h, hscale, vscale, hphase, vphase);
-		sun8i_ui_scaler_enable(mixer, channel, true);
+		if (mixer->cfg->de_type == sun8i_mixer_de33) {
+			sun8i_vi_scaler_setup(mixer, channel, src_w, src_h,
+					      dst_w, dst_h, hscale, vscale,
+					      hphase, vphase,
+					      state->fb->format);
+			sun8i_vi_scaler_enable(mixer, channel, true);
+		} else {
+			sun8i_ui_scaler_setup(mixer, channel, src_w, src_h,
+					      dst_w, dst_h, hscale, vscale,
+					      hphase, vphase);
+			sun8i_ui_scaler_enable(mixer, channel, true);
+		}
 	} else {
 		DRM_DEBUG_DRIVER("HW scaling is not needed\n");
-		sun8i_ui_scaler_enable(mixer, channel, false);
+		if (mixer->cfg->de_type == sun8i_mixer_de33)
+			sun8i_vi_scaler_enable(mixer, channel, false);
+		else
+			sun8i_ui_scaler_enable(mixer, channel, false);
 	}
 
 	/* Set base coordinates */
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_scaler.c b/drivers/gpu/drm/sun4i/sun8i_vi_scaler.c
index ad87ab395803..6839fd5ab602 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_scaler.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_scaler.c
@@ -835,7 +835,9 @@ static const u32 bicubic4coefftab32[480] = {
 
 static u32 sun8i_vi_scaler_base(struct sun8i_mixer *mixer, int channel)
 {
-	if (mixer->cfg->de_type == sun8i_mixer_de3)
+	if (mixer->cfg->de_type == sun8i_mixer_de33)
+		return sun8i_channel_base(mixer, channel) + 0x3000;
+	else if (mixer->cfg->de_type == sun8i_mixer_de3)
 		return DE3_VI_SCALER_UNIT_BASE +
 		       DE3_VI_SCALER_UNIT_SIZE * channel;
 	else
-- 
2.43.0


