Return-Path: <devicetree+bounces-174816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6CAAAECD4
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:22:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D2DDB9E236E
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:22:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B13428EA7C;
	Wed,  7 May 2025 20:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hssL6dWm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6782328EA52
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649353; cv=none; b=eTeEQ4Omy+XIfFUgeW3wRWApoyhIUVXbspcKABDyFGYhgehcrtP0Gg6fsTj8h1fFxn+oa7+ib7XS5/SE/SZR7BQso680mqEEeQMdzxd9rXmWQA0aPrr4hjUIj27U0cCiusM11UZAk/uHKY3tkUQCQHJxIkJ6Iqkc2WQ+rKeSmRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649353; c=relaxed/simple;
	bh=y44t91H76ffOAexooq+mJGs7u/Q9UpjMnTFzLrl8Be4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JpBWuA8xKAROVDQVY3zeuZI5UTRlmdPgVhRFowgeRH56jCfR/R0nkL+3MaWVWfhCoc3GPSgJ7saaTvV7l8V94XKQo8paxC6HraPMVXRVv7hsW/KBqBNk+UAMMPi7dTDrhaAvUC5NM5mxsFqTsRgKJo5s7SKRXSrbi3I0e4vSOKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hssL6dWm; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-72c09f8369cso98916a34.3
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649351; x=1747254151; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d6UX68KruPGnR61q1oninfcr4e5yK5hNeU8tagVAmo0=;
        b=hssL6dWm14j7zB+h/rEW8ZImzQoWo3g/7tkhZaiYluCJxIkGKkQmPC0RTi89b+TXS4
         jbaww05m95IHgtAZx7CFjCqPFxxAsOi9WemKimHG8ZK1F8JCRXkETZ/ACSiSQwPpaqVs
         /e4/J+eYCLoZexoxXRW2ULFsEshbSJxHxTLmQQXXBsYSAZP71Pc+VH3YJUDUh9WOxbXb
         IHulFsbd/vkKCEJjKwXaXKq7XgqIS0jEDKaIunwyCMm55XCjYKVur4ADtV5Ur6hxNwoY
         JfrNlOL0nNMswYJf9qucOTQK/zkxToe/cZB/HJsd7FIfgs4VzMGNGfE4PUSsjHGaOg2s
         VaGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649351; x=1747254151;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d6UX68KruPGnR61q1oninfcr4e5yK5hNeU8tagVAmo0=;
        b=T+vn/v7Y/xRcvO73lWlGVH0miLmVxsc5mlsFOPu8qRMiXtRnygX8YkuRYW6kdp5eSO
         8ZgkSCjZDrzSSTb/cX9Zo9+Jex+TKsb0cBgLq/bE8imAzVllhTB1JV59bFWTeIeIlEEM
         gfcVU1MY+4gHbxWj7z/ONtq2Wy4o9KYnsOwUkIrfGLm4vPkPfrjscYv4VNdW2nnox+Ka
         C5O12XARo9dPggfQc5jAkSwTaJrxn192p9pZWiqlw20Nh6U/gqoKcAlkfc69swjgATXQ
         nuG4A0ykgamb5kyfxFMcKRvO9qmbTAJdAJDkcydKCId5oVAFKRwAPoWuAZU6mqDHJPkK
         88KQ==
X-Gm-Message-State: AOJu0Yz+NLfIqrsC39cu6cHfLlPi+O/CjKIheI2P6ebOb6LxoQc5CQ5q
	809yuUmSIBV/SxXwW0WJGmmA0UyJ53jny8jA09W0TBWtCIqeFi+t
X-Gm-Gg: ASbGncu5A9QLLU8Eo9Wl4IrESmT1KzeEbFNKZovLPMRawc4/qRBd3j8VzOXP5ucPq6X
	oQApKPmKFhNjU3mwZxT7BVEvkoK//yrQ3m82BspZ5H9IevjtXqVIk77rKyKl7zhW9yMnitqcH7Z
	IbujQl6WNTq2+MNzEcdBFO2OGeoSuuNvi7OUqmCeO5j1s1Z3WhCAGFcG8IvyvXSjP3oF1roGIWE
	FqAPAxa5S355iH1YNqCp09wZF+JAG/5XTE5hrmnTUGcTMSZvIgxFFLfMo9ADiseO+DdPMA6DkHL
	vKpY2JoHDJkK9amwV6pKrz8lWQGOWCcWNquePH2NqjvGbxEWctlgx078LPwzSTHpno1UgHk=
X-Google-Smtp-Source: AGHT+IGPGpn615U0r/Oli0xmd+gPDn6qmrBYBvqajhJLToKFTwGprcGZAZPK+hG5gePgwhRtCLZmSw==
X-Received: by 2002:a05:6830:6216:b0:72c:3235:3b99 with SMTP id 46e09a7af769-73210b11cb2mr3068146a34.19.1746649351312;
        Wed, 07 May 2025 13:22:31 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:30 -0700 (PDT)
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
Subject: [PATCH V9 05/24] drm: sun4i: de2/de3: add generic blender register reference function
Date: Wed,  7 May 2025 15:19:24 -0500
Message-ID: <20250507201943.330111-6-macroalpha82@gmail.com>
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

The DE2 and DE3 engines have a blender register range within the
mixer engine register map, whereas the DE33 separates this out into
a separate display group.

Prepare for this by adding a function to look the blender reference up,
with a subsequent patch to add a conditional based on the DE type.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/sun4i/sun8i_mixer.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.h b/drivers/gpu/drm/sun4i/sun8i_mixer.h
index 7fe5ce20082a..43c413052a22 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.h
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.h
@@ -217,6 +217,12 @@ sun8i_blender_base(struct sun8i_mixer *mixer)
 	return mixer->cfg->de_type == sun8i_mixer_de3 ? DE3_BLD_BASE : DE2_BLD_BASE;
 }
 
+static inline struct regmap *
+sun8i_blender_regmap(struct sun8i_mixer *mixer)
+{
+	return mixer->engine.regs;
+}
+
 static inline u32
 sun8i_channel_base(struct sun8i_mixer *mixer, int channel)
 {
-- 
2.43.0


