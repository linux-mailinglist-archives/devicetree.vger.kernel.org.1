Return-Path: <devicetree+bounces-224441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DB87FBC3D67
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 10:29:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 957B43AD2F0
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 08:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51EBE2F5478;
	Wed,  8 Oct 2025 08:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LLtp0xc1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5112F3C39
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 08:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759912126; cv=none; b=RNm26vFV2EnBBm3/QpZn9m7LavizHeYuaemKLQEsDiOykwrkCsT+ZCNeQDQE/1KQSO82OyrpFFBu2lA9UMzRv5/mBN2zAN1UIh+U7bvVFki/0AQ/JamPTC+RQvCZXIGKeaU3kbBkn9xv9r183D4pQhLITcksCZ6dEUkW9V24ZfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759912126; c=relaxed/simple;
	bh=Ng+kKkFaTeAHeDn37WPq+qcIK6a1rAYErWCGcqI4JGU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cH16qdXTUSLuS9Jkc04rsngBcPBBq2jQkJ2zmxaxLvLSaVGTtzrlErrxjGssFpnKb4ycGmfWWxPP6i1BeMRxZGtomQfHE0WXitUDu4+iPIGRGySLzy6VRUsbGl8Rl0F0xbErEMah9gmPDq1rOh6/UZximLA4wrSZFe60RutBGlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LLtp0xc1; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-363f137bbf8so68026001fa.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 01:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759912122; x=1760516922; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gXVMCYVqhYxHmVEcLB21GvSyFEdTGyVsbdPWOR94MMw=;
        b=LLtp0xc1tbn7Y/tGCIqtARDK8xcb5IMwh7tAvN1HsctIoRJzb9GBJ3gZFErff930VP
         c3nabZaY8u3des34DkQqNoomEMk7870rbyWY2fdW2MTppvJd4KZy2dZfCG0m5ZTSsHGM
         Bd3rubG/liZXOrSRMONjckmvfJ83TOj5cRxUePDhBeJTZEHhvFwwhwrBhBKLX/k5jhr5
         2dm1teikua5X0eq3jv/RAQEkg6onlHAKbnWKBlpJqFqCAzw66rrV5gE/mj/CdzB9sZL3
         bURuMWNaN/20sKyXjmk0w3PeYC+CWO2NgtCdDRCC6ivDdQagxs4NCABPybtXROIlf8+x
         LQ3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759912122; x=1760516922;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gXVMCYVqhYxHmVEcLB21GvSyFEdTGyVsbdPWOR94MMw=;
        b=CyEgA7o1zubS5qlZ80ijNxcT+vOh+PDO8JlYXE8dv4zHYTi8G4t1eSQWF6239QUYXA
         uti9MY5RPlWeAnwOMC8JmhKu1PCLKPQd/0o1myGlQNLafiX7au0dvEOo1/8MpZTggyd+
         kdQjcBPowUvZiJ9nIPg3ipv2iSMNbX7NUsxm52tU88vP1RuoksLf34qboD8fvrcauYW6
         KV8J0zUQ8jmt2g6T8TDO5UaRg62Oi2ZCEgJUP/8w/kNK12K1jU7LZMYgBxEB5FhcPSPQ
         6kxvOYHZmEXh+rnRH/BV1CYb49GWbHWwiEmErWZ8tRfVwqYvpXdMYKOlUlV03uSXPOxj
         4phA==
X-Forwarded-Encrypted: i=1; AJvYcCU/I3buEsRH2AbMhZt3fxouU9ZS7Tcj/uF0kmHewN+vbEbfKqQJuatZLSI4NxinE2ZZ6++q1zwQvs10@vger.kernel.org
X-Gm-Message-State: AOJu0YzHbFR8vO7qY5iaeRNb0DYlTFYXJAeLcwuUeX9LjwcC3UuQSUT3
	xJ0clYt1DW/o6HJhNNnBBnVPYLb2WkTnnUGLjSip3H6C+sm45Kscu6sB
X-Gm-Gg: ASbGnctmh05zkBFWCwr9I7pLo2r38sAZBHk3q78GahGWiONRPH7iHhq3bOxov69wwI8
	6n04laW/JTD8hlR7y2uAHx7IcDIRzCF1012ZFgVBzq2Ec8BnJmVAB2Nhha9+aXBr3sepYUPug+o
	UzeFxjkCVXuneElc02TdARa46sNiPf0yiPdgkG42DAVJga6y9JEHsv0VfOZyHbLesUIVmuWkIwq
	bTUty8t/vgNir7NByl14XnuO+YbbXFZMvkWoKQatXQb4CK2HOXFMyvCVG2QJrKmvvZfXin+wF7a
	uTuAufLkFWN13vLrS9jcWrWv6QkFfxDlFvE6u0AnG7Ly8ndsg/qiCBDsLx5qoEzY5wZ516GBBM7
	gRc3+pmos5rD4Jum/925T2AnaVYyDMdeKsgB5PA==
X-Google-Smtp-Source: AGHT+IF+1vf4Blkz3Lq4Rw8Uqfb7Lg9ffe/Kp4eC+9aI5yktFAQzgyPPiVzBw3ZloFpXuWtIim4mOw==
X-Received: by 2002:a2e:a9ac:0:b0:372:80ac:a33a with SMTP id 38308e7fff4ca-37609e604b8mr6494121fa.28.1759912122024;
        Wed, 08 Oct 2025 01:28:42 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b01124649sm6968733e87.15.2025.10.08.01.28.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 01:28:41 -0700 (PDT)
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
Subject: [PATCH v2 4/7] dt-bindings: display: panel: document Samsung LTL106AL01 simple panel
Date: Wed,  8 Oct 2025 11:27:56 +0300
Message-ID: <20251008082800.67718-5-clamor95@gmail.com>
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

Document Samsung LTL106AL01 simple LVDS panel.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 5e8dc9afa1fd..c2963434c895 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -272,6 +272,8 @@ properties:
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


