Return-Path: <devicetree+bounces-225310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A124BCC5FB
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 11:38:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0796B4EB920
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 09:38:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76675263F2D;
	Fri, 10 Oct 2025 09:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="NJkbJarl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com [209.85.216.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD73D23BD1D
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 09:38:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760089086; cv=none; b=XCiP0BkLd+lyZr/HKMRdR6S10J+1xl9/oWmlzoBYLjxoUemsylpaHIKYzO/jMr1EWJSRJ0Y0Gyxy+swuLSP5//kvukSz6hQT2bqSkQ69MiSm7hB3ofzP2S1IEt0MOVcVR2gBL2HqhseWnmG6pBFMnZ+iHJlGEIAW5IDbzWcSv6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760089086; c=relaxed/simple;
	bh=BQ1oHHYvuMaZbPRajQUMjDgfN19wIVCgnf/g9F2n4Oo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=D+6404gfQOw8qwp0CszEcAhhUfRbIlCnTyfwvn7OAzy4B6agJVLoACkFJ61Cn1mZLo30EY7uY6EuJxw8to5e5k3YoXmbCk8vmqmdVJx/CGbby7i5NCKr83GhzAUJE2Tz/izgbPQBWqBscQO9W5766FOi5vl7p+5YJIf4B/iDo0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=NJkbJarl; arc=none smtp.client-ip=209.85.216.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f66.google.com with SMTP id 98e67ed59e1d1-330a4d4359bso1613676a91.2
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 02:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1760089084; x=1760693884; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DIh2qwkMoeCHH2ZTOMpMki7Y9wRE+NbEr8T8mhJQZZg=;
        b=NJkbJarlKX49KQx1Jq0TTBCVkvJnpQVCEhNzzz6/CiKnXQO4M9vYbXqgg/6vKp0ywq
         AH/4AyQr3Sa0Yh40LA+foseShKZoVk8O4GcjCX9g6yAgckGLDnxVWmKJgdZiXj0SbHfy
         uroKuSnDHneT0zVfwHNCPP6NL02PcHrkUC5vn56wulZLwFpTJTggqDmfBe4LI7YQEthe
         raWZbgEGXIgWPrR6YXmpUNDq8INGmRaLR+X1UDUu9w+ngZX+D7JFrI0Ocd5F9teOBn5t
         oXVuiiWAF49MfbPU5plvc0Nr2KbwAe8Lu2v28dfKFd2qE/XPbhY+FGa8pPiCz0XlA3dS
         DStg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760089084; x=1760693884;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DIh2qwkMoeCHH2ZTOMpMki7Y9wRE+NbEr8T8mhJQZZg=;
        b=eP2/HHx/l3XjLnUE04Z9qEAzjGgReZai93GQJxTkjdHy3FjmrYcyfEtGOmaQqaa2hZ
         DvXHnknw0onD08j7EGna9ISppe4+thNIHpksvffn4TPBiq2cbjwc/w53iCIxd/j3ibFU
         weZXa2doKOMKVfyYgfQ4LNGrWABtkj4p0xAia41YMoyORV3bUpRBEuewnVCEviX8CTF3
         wcfyASORA2b03RG2uk/HdbMVxYYV4ENs3m4szOexLhzUu4A6PA1hZVrvkFMGAVSsy+P6
         NcH7K8rX97S2IoVUWztUCPpT5I6MTU1pkrzF6W3AmOWOvP7S6DQHQJKHYelZkzPZGb9L
         72Uw==
X-Forwarded-Encrypted: i=1; AJvYcCV2FMryliMXghWSlwasG0jWYtrgCBwcjUV1OAki7sKA2Cp+kG1lSn/xRTYkTlw5Bu4fhdXqHzOr6NbS@vger.kernel.org
X-Gm-Message-State: AOJu0YwemcadLR8dQhK4Uk+QKbCT0WJ28AJHdJx31StomIBdGpcgHonF
	9Sm98YTSh7lrSWTnKd/s/UOj08UA3u0O0jlluXzCyOGfGhNYUIRo0y4TnKN5GBgYpvs=
X-Gm-Gg: ASbGncvzX57qEcvLh5YvqzbJowfuhe4Z0JIY25X+L2G8CFbkSuWK5je4KRvSqucRg2f
	keM87454+u24lakC4cORVk/qTXpNtQ3x5VCEt5h/fg4/xYciau7bt8SzhznZdyjlbVahI6/4wfG
	uT+WKI2/IlmIVk69FHmOxTAoK2+NIDobcwJRsmtnzcMWp24TqfyZpNK0JEvOG5z8n+s7UlU9zWe
	Bp0J00Gs7nCDC/jBdRkm+qoUIgRQevriAJl2YlbFes8qVGErUzIDAcpKnaj/Yu9QnTevZk43bZ0
	PMq/67Y/OvORGK+2sVPTHPcqF+4qaXbEWCPBmZhckIoGpvOS5D3SQhvwrhmjrHTd8HsiwPQeoO3
	BmgqE8chR3ogP7bVOmXtWwceDGmShg822OiVwVobOswkIoxYmK9pPctkUOumamI9X288gCtp/hn
	h4v5njYH0OvPFTErueWUmygrc=
X-Google-Smtp-Source: AGHT+IE2wj+eZssA6TSzpJaJjIg40oge1dIPe73EIfDWpkmFrmkYu8Y+3/4LATAVo6bm8P7VtzzjWw==
X-Received: by 2002:a17:90b:3ec4:b0:32e:51dd:46dd with SMTP id 98e67ed59e1d1-33b5116b782mr15637151a91.16.1760089083929;
        Fri, 10 Oct 2025 02:38:03 -0700 (PDT)
Received: from dgp100339560-01.huaqin.com ([103.117.77.121])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b61a392cdsm2668196a91.7.2025.10.10.02.38.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 02:38:03 -0700 (PDT)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	jessica.zhang@oss.qualcomm.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dianders@chromium.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v2 0/2] drm/panel: Add Ilitek IL79900A controller and bindings
Date: Fri, 10 Oct 2025 17:37:49 +0800
Message-Id: <20251010093751.2793492-1-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This series adds device tree bindings and a DRM panel driver for
the Ilitek IL79900A MIPI-DSI LCD controller, which is used in the
Tianma TL121BVMS07-00 12.1-inch panel.

Changes in v2:
- PATCH 1/2: Address Rob Herring’s review comments and align with panel-common.yaml conventions.
- PATCH 2/2: Rename driver to panel-ilitek-il79900a and align naming and structure with existing Ilitek panel drivers.
- Link to v1: https://lore.kernel.org/all/20250930075044.1368134-1-yelangyan@huaqin.corp-partner.google.com/

Langyan Ye (2):
  dt-bindings: display: panel: Add Tianma TL121BVMS07-00 panel
  drm/panel: Add driver for Ilitek IL79900A-based panels

 .../display/panel/ilitek,il79900a.yaml        |  64 +++
 drivers/gpu/drm/panel/panel-ilitek-il79900a.c | 394 ++++++++++++++++++
 2 files changed, 458 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,il79900a.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-il79900a.c

-- 
2.34.1


