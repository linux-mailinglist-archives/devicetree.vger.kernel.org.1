Return-Path: <devicetree+bounces-244208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CD50BCA2758
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 07:07:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 493C23011323
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 06:07:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C647430E839;
	Thu,  4 Dec 2025 06:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GRhpq7ZM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF6D2FD1A4
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 06:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764828421; cv=none; b=irsb72hz2d6arNtm7qZcf0HE0oz9E/S7eWsCGNu3pYSCOfJcBD9FX2Tvi/aSy0PYm3kOQV9UbiVPGgHJLoSgi8RaUMaFKPX2UI77TrhTfSwi8pneY4ae2SkW1b8cmDCnlMMkni1qm+LVoNr0JT9ipLMbmPFtIsyFlU9l1H/Tc/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764828421; c=relaxed/simple;
	bh=Ubq1KrUSxqn44bDKjL0Tglob05w52CADvwCDYj5e0/0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=emb/8nb1Kv1mW0prNX02pytC/MP/5AY/EdK8s9b6mGe5/WIIrsNMJqxNRUWvDAoyGpVlPRgkVg70Fy98Rqp+uQqKoVnaIaZePeTzaBAQMJWU17PB3d4ZD6PlU3p9XZacZQ8Qsw6RJCf+tg6kowZw1vue/DGy37WcL1h4zOH52lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GRhpq7ZM; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b7277324204so86389266b.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 22:06:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764828416; x=1765433216; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0NlbLfnaH1AYI1Kzf2XAYKDUFV4VkFnG/ReSb+d8FKY=;
        b=GRhpq7ZMmqoXM65GePDBWAgiwFOSMudV28yvRgRi1ybQbf6iXx4xFjsOrP2EkjN0M4
         PiGeqL9GOlAozuMJ8X3a5TqG9SvdgNUxHC5LR/UUyde1BhbKePJZjy03UhBc8gVA5pg6
         UGHpQCbfsXRYu3VXnbXe8ndVFK7MT0ufmjJGA/tnjdwfDhGJEKopEC/wScwKnuEeuBO0
         JK7tE10eHV2m3mWV+CgHVf09xLCLipDY+3O3Z7Pks3LjvW4brZK3KTAEutrhyj9gZBK+
         LSbYZNNbVohStX5UuWhKvBzJ3fXUtvCRwEZWby9Twh7jmIMJDl5h16JERqj0pwGfoYvD
         FZBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764828416; x=1765433216;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0NlbLfnaH1AYI1Kzf2XAYKDUFV4VkFnG/ReSb+d8FKY=;
        b=ahO61bKprEuqnnWPr348izqkpVYbY+YIvGKUEM/G6S5stctotEtgIWlWo70cfIzxAy
         /ujHO8A64c340xizmSZE6X9cTYZ+B0KWEyh0Q/NI7xQbC5oDOE3pHcI3fAgmviA4zUty
         oG4wB29BgK6/egzqPwlf6SUBigmsZAl8oREuZIbGoJ/hpUauXJcC+uWgUIRcvU2CNQqZ
         HIno+8s5Sj8BbKQ9J4US2PBmtVJhftJa9RaHvFsCWpQsG9ESm6zchRCbtbNaxYqp2HHo
         mgOW2h104YVyvyWngvTpRiVO2cuuOXVo4vI6pQ4nnYgvk3rSZZ3IZLZbg7263RrZSYpi
         lGTg==
X-Forwarded-Encrypted: i=1; AJvYcCUUgIgu9l2KxD11PUHDSiVnaGY+v5Hf8hijsqyzDfyg4lbKrTkWChg+pLEEBCqRZx+hi8xFdIoyRSk8@vger.kernel.org
X-Gm-Message-State: AOJu0YwjpyO+Hl7H3oAuaZSRnKG+5zcwhrfrpkhaAralp3CDVU3Adg5v
	uNTuD22zHT0AW3uNxq9mvDoqvQx7gEJZaOGkbmmq9Mywzwg+y/Yi0upu
X-Gm-Gg: ASbGncvAV4pREEcBPuB2cHO4285AQOQ9of9RQTr7Hr9lLeiz/bMuXHALONxxX2kdpAF
	YMc724IVjx0KNdkcBI1mi8/ZnHnFjIpy6pocXhZ39RnvHfLvv/FgX435L4tVm/PKyOy4QPfJcIW
	5lqmC/RmA+ZcgWu83pnAvXeZYBbrwheNLtpXX9NGPAca3Ok8gK5KqWEHP6srCkpJSSBELp1rFou
	3g6CM0hxMDxUKL03D5HDID5cmTcgWjMpEZRmFjxfuOn4velATwxao3pWP7DkeyRJEwE7UDsKS4l
	iHrC22XzudwBDhnBFrUu3UPXNKBIU8e/ssyOzhvsietQx1K0+xi+fQ6LGAW5It8+NRAgl3g971a
	e7ISBXxAnUZGZ2a4EuKA7+E8hMe2LsIPA92xfWEiIQbkCx8SFIScRJIL6mBfN4/Og9qtTxt5hJB
	QryK8rxXVAaA==
X-Google-Smtp-Source: AGHT+IHyJ5vSGGRsFzAABA0jckI72SrOSeey26WOAYb/OdF0iDanbXw4lY7HsSTswxWolZ3f1U5HAQ==
X-Received: by 2002:a17:907:1c94:b0:b72:134a:48c8 with SMTP id a640c23a62f3a-b79ec470ca9mr186508566b.14.1764828416001;
        Wed, 03 Dec 2025 22:06:56 -0800 (PST)
Received: from xeon ([188.163.112.74])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b2ef7798sm460296a12.15.2025.12.03.22.06.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 22:06:55 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Douglas Anderson <dianders@chromium.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v3 4/7 RESEND] dt-bindings: display: panel: document Samsung LTL106AL01 simple panel
Date: Thu,  4 Dec 2025 08:06:20 +0200
Message-ID: <20251204060627.4727-5-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251204060627.4727-1-clamor95@gmail.com>
References: <20251204060627.4727-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document Samsung LTL106AL01 simple LVDS panel.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 4a5ca013d0db..adb244460a09 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -274,6 +274,8 @@ properties:
       - rocktech,rk043fn48h
         # Samsung Electronics 10.1" WXGA (1280x800) TFT LCD panel
       - samsung,ltl101al01
+        # Samsung Electronics 10.6" FWXGA (1366x768) TFT LCD panel
+      - samsung,ltl106al01
         # Samsung Electronics 10.1" WSVGA TFT LCD panel
       - samsung,ltn101nt05
         # Satoz SAT050AT40H12R2 5.0" WVGA TFT LCD panel
-- 
2.48.1


