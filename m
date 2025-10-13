Return-Path: <devicetree+bounces-225854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D88BD18DF
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 07:57:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3C2B53BFA76
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 05:56:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 668612E5415;
	Mon, 13 Oct 2025 05:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nFuqtsX2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8712A2E2DCD
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760334983; cv=none; b=qWYojz3kxU46aZp/OCnVRyJTPeCZC80g8b51yfzIOV721wN+/sXsh39KRhc7CS6Mi4lGh59/Y+aH+g2q9EM4dXJjUgmHFwoiP2DkjDNrTaFaq8BmJfXyLy46QZ0sh+R3Mv1BYZDmSPH0vujS7swQfgHHd44kbDfBYqWzTrry0bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760334983; c=relaxed/simple;
	bh=459dlBPh3LInR8NOH/R4UDIusnkt1kveYPqleYn7ivo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DKWI3nJJOAma530g7NIg6BQcbw8iAd8xYDIiKpURFLLg2D7uT8EOARr6BjmlmWfBTlxEDWj6JPlesQoPdFx+AXaDncryvFmBFmhwsNff2viAP9ma7JUZzxz+wMO4Ggth3OV5EmNP8Hvbh1tsCuNnqMQf34WU+Vo++seB2S7V36A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nFuqtsX2; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-639fe77bb29so5832719a12.1
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 22:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760334980; x=1760939780; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0+a5/f/Fx6IMBMc0auLZUB4h0ES81R10KOuZfrxfUU8=;
        b=nFuqtsX2FK9RdhfHxvZeJckTFGPMhY0C8dOTFEeb4dGktj1/qP8LFTX/C7+Piv2g8s
         3NF3intM7xplnOrLrEOpvlcg/5H7CzYymMgpoDIT9JPp94DkFL9gTCR2PTmYqTrocZGZ
         Mj/X8lxmmwNGZtbd2199qEtdGvqvjYPQYfr628f/UIwuZW29WqA7qAu6JTMlyegQMBX0
         WGMbtjUnSYw0d/ivKb8UXhmHmwtDEA42bTGzAxxnaTWPBML5mqnY7TX6H2eNb9HpTrsH
         4tbN/F0n46JrYTAddICVoM0VrflI9uAl+aqh5yBRyM1jYJuYLGrbBSxbIOWNPTdpDsAE
         B2tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760334980; x=1760939780;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0+a5/f/Fx6IMBMc0auLZUB4h0ES81R10KOuZfrxfUU8=;
        b=gfLlbuw4DoqkAxNv5u0TjKxaF4ymCYODOg9suJ/anDOi/nre43G4CU46E2Cw9Jz0yw
         4RSfs2O0xB9+tGMhNo/IJmuADbdpA+R8vg+WAcU5NaCyA/VEK8Zd57nO/+1jzU7FYNBv
         tHn6Y5fCB0EjokoYNQrzYtgUWRLqpmM1zw1Bsc0kb0CjISqQdnMEDM48oVcQ1AfQGuej
         ZzOYdkP/58d8vXdyXdnkxSOJgHoIWdzZj74UsatZ8vG3HfMmXERJ/+YQ8fuWFktq6m0+
         Kny4L66/YsfACqWPdtOxLWJFKfYZxtsTLmPBUEC5Uc40na5Z0iD1wxLJPtrZrTeZ1xYh
         TTUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMDHlFRcNBeg+RN0krLKpkY8FV7NmL+IabKzGyNvs9cTMPEOxVZEH0pqU1He679fWtac6eys7adCww@vger.kernel.org
X-Gm-Message-State: AOJu0YxGaY9yI2OfR/tQFc78WqEuXVn2rceLcnLmHH4Aot+/na3J6Mya
	Oow8kNxYxhCBHiRf7Xr3mwWsVBWMM4wCc0tkGyUk7mDUVQbi+MV70BYq
X-Gm-Gg: ASbGncvvMBOmlC01mqMNm6BCogUCHNx5Mnd1AwBPqpsP6FH5R4lbeSb47/dhML22SgP
	ExmbkZhNbJhMqHxE4NBt49jffVd3uL69qvWIJoeKJBCerjH4+3uF3Bycnz6REQ/OgjIWaJcEbwd
	hajUulfs3uDfNINzBN6w9Abbt0w0q2MSMbwRkf/TCRwLnooHV+cJ0TG9UJusMgQ4ZZ2dLRrmDVB
	F5y47Afg044X+dZxVjdbrSqwUHSdL00ThLZPj2nV+XEEkjdraNKjwxnuZePA79eIuumvCyNu0tv
	ugL+TTUWeEZvvi0KInbLAg5MZIVxMn/sq9FsFBHbipVwqufPm3z0kht20NIrmaBKj3+DQWIASwh
	sswdbwj32fuvZIbKjEF7lyYjxUAhnIJHu2TOVYd3//1o=
X-Google-Smtp-Source: AGHT+IHn6OVFq3+AsRTRv8Xh/omMJt1RsmRRGjDow+0vFNYsqUIkRvU051xfXIY6tzcAIT30syi1jA==
X-Received: by 2002:a17:906:c113:b0:b29:e717:f0b0 with SMTP id a640c23a62f3a-b50ac4d3497mr2144906166b.59.1760334979537;
        Sun, 12 Oct 2025 22:56:19 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d63c9a3csm860912566b.23.2025.10.12.22.56.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 22:56:19 -0700 (PDT)
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
Subject: [PATCH v3 6/7] dt-bindings: display: panel: document Samsung LTL106HL02 MIPI DSI panel
Date: Mon, 13 Oct 2025 08:55:41 +0300
Message-ID: <20251013055543.43185-7-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251013055543.43185-1-clamor95@gmail.com>
References: <20251013055543.43185-1-clamor95@gmail.com>
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


