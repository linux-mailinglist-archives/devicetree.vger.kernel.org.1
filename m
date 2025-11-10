Return-Path: <devicetree+bounces-236585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D07C45933
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 10:16:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA8383B5ECA
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 09:16:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAD7F301005;
	Mon, 10 Nov 2025 09:15:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="do95ZCBU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5336C2FF670
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 09:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762766132; cv=none; b=jAHgaSpNTYFSGJdDN0eBSHhJ+28sAeyVICsotPVKNE3ZOsHwWPrRxmH3SrrEP+3awk1AIM9epZStfQtVBzAMI9TkivtEHNsnh0ONbKQHpJEPHHA+A4G/e7OOXtoADDbZOvg0CAojZHrriG5UbNmh6Ogj9CsYkTDWFBblbzYu0cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762766132; c=relaxed/simple;
	bh=Ubq1KrUSxqn44bDKjL0Tglob05w52CADvwCDYj5e0/0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JUi/nlrWs9TQI60LYWF9lKpVFJiFUGROtHCQg3Db0MObLGewoXhXj3BaxT5pF6HzHzBEdQp0NJN33EDM6nMpf8MH0fVCpCDCVYw25WiNb1I3ZvTrVS9Cz413CZcw4bECLx+18QBlXEC+lQQky9MTtjKyB4x2dYgNwAMHIyJgalU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=do95ZCBU; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5942ee7bc9dso2595892e87.2
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 01:15:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762766128; x=1763370928; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0NlbLfnaH1AYI1Kzf2XAYKDUFV4VkFnG/ReSb+d8FKY=;
        b=do95ZCBUgKdfnRF1yICsFR1eSv0ifgcM+yyf47RAnIecEPAB+Xdhvhx5OYpRUTdt3F
         GH7jD03BE6wdIuCrkJFg7SnlVxE2wwiR1KPF5E+lzOLfsgOIuPBNeRPPb0Tiz2EFTEcb
         UYa2vs1Yo11C7gg0/ZWYi+2bj7C1+aQXVHSbdWNra6TjdXh8yazJuwacXqHBtNK77PKF
         GmY54aHLz0Sk23Da4sxF2IEWMmxcWQWfjrbZxEE9giZY0J84TZ6MiuiNO++LlymKS9YH
         zIlzADt1WDZlbDHEu8GbwhkmVmAX9NNFvLbNLjlM4qhkzTCtOly7Yc2JYYMZCenAbG3F
         RmmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762766128; x=1763370928;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0NlbLfnaH1AYI1Kzf2XAYKDUFV4VkFnG/ReSb+d8FKY=;
        b=GozNpHcXiysqOEi4HokOK/6f8FuZqXs4cDz49pRjSNjYOk+v7l5eUdHHBlwubNXn2U
         /9iiYaZB08wnZzj/gf6IFr0iruIpeb9KlcYqZcnpIwK5bvLwG215tz6WVkitVcmLgN0S
         ojvUFNAa8kotCbfIHZIROIZZJ4gPgYouRA1k5YCk7yED6XEtGNxfElr3uTcBzPrS3oj2
         etl6hsZpHd2IAvLMhGh8kqoeTawqaWfOUGpJaS/vTAkZXzNxK+0TGUNSwqSkkvBUzLUq
         n8EY3hxWhgGL2GDSCDpJCaTFfzWpR7USf4xpxXWZSnNqJGCRcCJODmnTzk829tD8pkkt
         Adsg==
X-Forwarded-Encrypted: i=1; AJvYcCUCLTIkLPecGNBXbJinZV+v3dzuSPHMZoNqK+H9vRqpSCgsBPtLu9b1XWMwrgP22jz0+8V1QuOe9633@vger.kernel.org
X-Gm-Message-State: AOJu0YzBw17SDsb0CiM6+r3KVbtGQThTWOevB2mSJiXIcjTQYPaRuvEc
	lzLxia2AsmNK3+pqhRDb6pIqOQYgw9uWnScLKGT9YnD+8qLb1Yd8DUB2
X-Gm-Gg: ASbGncsNn78clIYNIrpsOHzckiKQzuY9fpvDdtKayAUklG0GCQmYuRY8ooGLCbDEZ4P
	oQkhX01Zszczoc3Q0H/pXADr/8PftZUi8dnSF0NJKdfwpJ5rHAEPHPYORJT27cRpV+6wCTecQyg
	gFhSaqcdd4KQ5cnuENGh3DyNA0geJ3itNMVOIe67tcFpSyFKT4RA02UlG1vb61EI4z7Q1VE1xX2
	wUxJ7r3sbl2uoD3dGozzZy7603gvGibOPnB6HsHG86G/daASPisOWuv4vuidPsxKzulPwDhMksY
	E+GLqrgBTb2lcRbXQikGGNG3fjasyI/Tsf3FZbCEV3qmyRsTb9WXN29P4zIiGm2nBHK4BYY+rH3
	zx9/L2+bDT/fBPQmatbEkwK1FpLsQszJhvZiljoeKEQ32fSu+ntbhG91MfQnMja+iEkDwTjVu8y
	4=
X-Google-Smtp-Source: AGHT+IHDS3A8pXlI+xOx72GoRTOq1E/nxmRQrFx2InRcqIyyMLoPJFpVA039XzbqYUYjEi5dGijE8Q==
X-Received: by 2002:a05:6512:3a8f:b0:594:2f1a:6ff0 with SMTP id 2adb3069b0e04-5945f1653c4mr2154809e87.9.1762766128299;
        Mon, 10 Nov 2025 01:15:28 -0800 (PST)
Received: from xeon ([188.163.112.74])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5944a0b76f4sm3852006e87.73.2025.11.10.01.15.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 01:15:27 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
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
Subject: [PATCH v3 4/7 RESEND] dt-bindings: display: panel: document Samsung LTL106AL01 simple panel
Date: Mon, 10 Nov 2025 11:14:34 +0200
Message-ID: <20251110091440.5251-5-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251110091440.5251-1-clamor95@gmail.com>
References: <20251110091440.5251-1-clamor95@gmail.com>
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


