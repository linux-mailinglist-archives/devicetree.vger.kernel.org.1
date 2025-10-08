Return-Path: <devicetree+bounces-224443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D2886BC3D76
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 10:29:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A1AD84F9729
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 08:29:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2E492F60C1;
	Wed,  8 Oct 2025 08:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CNamjMSs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91CF62F5498
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 08:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759912128; cv=none; b=TUH1jHut9oIHU0OwsAkS8Lxkykd2kupKpXgsBZgbvnu7NW6icZ89djhpOPnkbmBvwgYf7tOYWEazSx1dY+AMAf5BHkqaqqxaMIaKdNRoI406OPVoVGKfR+iqg+TWeNV6KF7w2BPyIHEOh7uahPRiHRYz4W+XDzzDvl1tA5Uv5QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759912128; c=relaxed/simple;
	bh=459dlBPh3LInR8NOH/R4UDIusnkt1kveYPqleYn7ivo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=l4hlZCCLXlBizOrFqIA11X8XWMbCWrk27RncEF+NEp0f43zgsjS30LIsZFxUF9QfmUrXrBUEHZJtbWS4PsmObDyAY2fji/pmDTCiLEdu/xwAzLmvyy7XnbexQxoOwvCA+5rCrGHMy0Ll8xCdHl1QtFepvmUjhw+re8rP1RC9y64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CNamjMSs; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-57bf912cbf6so7637321e87.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 01:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759912125; x=1760516925; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0+a5/f/Fx6IMBMc0auLZUB4h0ES81R10KOuZfrxfUU8=;
        b=CNamjMSskz2tjeJ/vmcamCS9JyZhTI1/90TkBgpTF/FbLDfWxGGjhRkePIcR9ZLEFm
         a9S4HjyPq8WREyz9qzGT5yvAUKzAklgkLjrkY/l7lDhYyKTtRcuVTMwznHZ/w2dWdppy
         huk1eJ1QutP7ObBlIW/chf32lp17Z77Evl3R50BxAk9IPjckiBsHFl16EYjHULzX7BLP
         HFG2SsTEb63r4q0Ot+RRZNWYP9ftXwkn3TU4S8UL8ruMO9aIEuz+uVaM8OqeEP/S9hjV
         LenphnZ7n2a/LZ19cnBDNvgiiI4bDNUBC4nPGN8jqLQ8savB8isqBSAthJ5tEN9+Xtkj
         asbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759912125; x=1760516925;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0+a5/f/Fx6IMBMc0auLZUB4h0ES81R10KOuZfrxfUU8=;
        b=PvG5JIfa4rRAa+nFp93ASahtiQNGsQBTvLj8jzm2dqX3HUe8ah0/vZVZ6NKTciIHI9
         F5VbENiJJV1h3AfslqE12U9snqSZhxm+ClFIgLuW1dOu2VP3VojFPB287oE4NV4QXooH
         B/Ka2xYakzBXk0O8RRQLuXp6I3FIY2pnUXE8B/5JWNQUV239aR8cOqJVHKnUoca3+nup
         uL5Ch7ottHbEHdmmumN2OfMBbeVKRmxGtIOjHpwSV4qxylss7iHT98f4mVVLij/deLMg
         bztLptPrR8/2br0sGRgKbMqgPs9SiE9J+grJlSERKFDmt+tdWjXhXoJj2dAo8ftzTXxz
         +JBg==
X-Forwarded-Encrypted: i=1; AJvYcCVYsdAMdtQf+Nml25S0tMKefvb7jxAWd9I4fRuoW0ZNmkFYVm4eDBZLpidmAmZUQhVpNhFCqA53kj5q@vger.kernel.org
X-Gm-Message-State: AOJu0YzMfqWPUhZcgS5M7ve3OJlof5diNPofszaYfiohs1nMuPYCfmDg
	vfr9ZABghyTCFb9f0FQYQosmOYJWpcJL/zxuxCHouBn/QtjpegaOIPFS
X-Gm-Gg: ASbGncvNPq2y3qauPJ82JSmRtA5hs5e8cSeYfAqxJ9Cvs9j0QSGmGElSPmm0ehOdP36
	ffzLTz46jbOcw1UZ+9wseKF4rqDslyop/K8Q/RwWUqnixYqonhofiphZx0pEfi//x//QOAgY20E
	x+N/o3huGclw0sGxnBvlha5/K6IL4jaC+T9RRHRgJZP2tkfqJnYXzquzPwXsL4EuawLhGl0N5lE
	xtdO0UjU9mjfr7wLiF0+AQMicknAkYT/SXcZwenn7P9826zA3cwvsNb8A0nUetSDbHL4DWX8Ejn
	N6qorGW4ugsyP2JqwMxgUSWo+pVKoiohRLUC50oUxoIqM/NsTULu9XYL4btHg+Qf4DR3aNtrbaI
	l6SpL5m9r1wGYkQ2Rbm8SYDUtITJf/UNwBsm/RP/nJNJBdMsk
X-Google-Smtp-Source: AGHT+IFa+YtfJMOLVgx9lbRcqni2sMY7RFAYwacszca3hFSUXsWvoDDOW8OhRY3egEaihLqXRjLDDg==
X-Received: by 2002:a05:6512:12d1:b0:58b:2b8:f8d0 with SMTP id 2adb3069b0e04-5906de90442mr620072e87.55.1759912124568;
        Wed, 08 Oct 2025 01:28:44 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b01124649sm6968733e87.15.2025.10.08.01.28.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 01:28:44 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Douglas Anderson <dianders@chromium.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v2 6/7] dt-bindings: display: panel: document Samsung LTL106HL02 MIPI DSI panel
Date: Wed,  8 Oct 2025 11:27:58 +0300
Message-ID: <20251008082800.67718-7-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251008082800.67718-1-clamor95@gmail.com>
References: <20251008082800.67718-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Samsung LTL106HL02 is a simple DSI which requires only a power supply and
an optional reset gpio.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/display/panel/panel-simple-dsi.yaml     | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
index f9f1e76a810c..01ac0af0e299 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
@@ -52,6 +52,8 @@ properties:
       - panasonic,vvx10f004b00
         # Panasonic 10" WUXGA TFT LCD panel
       - panasonic,vvx10f034n00
+        # Samsung ltl106hl02 10.6" Full HD TFT LCD panel
+      - samsung,ltl106hl02-001
         # Samsung s6e3fa7 1080x2220 based AMS559NK06 AMOLED panel
       - samsung,s6e3fa7-ams559nk06
         # Samsung s6e3fc2x01 1080x2340 AMOLED panel
-- 
2.48.1


