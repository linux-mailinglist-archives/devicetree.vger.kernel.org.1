Return-Path: <devicetree+bounces-223051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D46FCBB0988
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 16:01:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 74BCB16F636
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 14:01:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC0DA3019BD;
	Wed,  1 Oct 2025 14:00:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ibx8owUy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF3C33019B3
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 14:00:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759327259; cv=none; b=CA1FfwygJ2efvlzsg9O3SI41NVPC7/pKYncl5qzupQ/7NaXqqynMWQvoS/s0kUIB/gQHvLUGEK+7X1e1B42jkORoHzJxvWuCLkpWkrM/VMH41lx9x+M0l8mBFbZpLY/KxfUsIpyUv13+xTM143fPeyG5zdqRQLFPaXA4iKxz+VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759327259; c=relaxed/simple;
	bh=NC3eeAM5DOVTDlmWZ97SXYb7EY5dN3ENSk5pS7FalZE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TxF5UA7HlISN/wG4UPZtoaNT/Yo8bVAc624RwuXtb4bwp7riFGEKzZV/D5jpup3jEVgilVqZyeSsg+haUBq+M5icskrSwXFzYqpdGIIa57XUq9vAHyJS9vnoq6vEAG2BWo0cNZviOFe34aKTdD4REzcgDiEzbN6nhJQzKg/i7WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ibx8owUy; arc=none smtp.client-ip=209.85.221.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f67.google.com with SMTP id ffacd0b85a97d-3fc36b99e92so827853f8f.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 07:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759327256; x=1759932056; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EYsni1VBvs5YqLN8WcctEz3qmuBiq5eihYcUC9RPHrc=;
        b=Ibx8owUyE3GWKSXaPZAX96wpg92fXZ8L8lT2fO94m+zHspJ/cMirVhyk2uKv8OhzXZ
         0uPh0tuGWVn2siDo9kCH+2z64ow2+c9IHQpj19aHqogUZTNUT2ZNcZyiYcG6sVT/z0AI
         2dR80t+PY5l75CZxo0zSsuek1k5GP2L/TThuS+tAASBO9Pfwl9J/brOsd4gnoXVg+aBh
         oGq6doVPAIxZnQ52s4LzbiBsirzzMJHxSZWao9mPC3082y/cOmDQJw1mL7EmNwh9oS9a
         GDafW503Ph+xLI0pmSVc0G5Jj6J0AqM8V6BLknrbqDqbo6eurpLCbhteTSbggPNR+rZI
         JVow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759327256; x=1759932056;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EYsni1VBvs5YqLN8WcctEz3qmuBiq5eihYcUC9RPHrc=;
        b=WAf53CH+Z44TXuG3R/MZ4jPjufFJlM34PzIBUSRVWlZ/81qvHdtg9Kl9Ago9A9u+CV
         VJpOJg09wDl+0CJfei5Mhp5dc/BCl4K5QkdpJ7Kz80IIfkjacU3v6IDlBgA81KQdBt1q
         vO4GgLB7eyoRgTWuyHSpqK1QKhOfHFs6yR6T7YFVraSGAUotAiZt8jmnSYPl/SwU1+C2
         YlLDfZ7JDi5u3DrhmNTgnSnBSmvCmo81pCQ0KIuQ4f0dWEDZpKbHkzwcaU8IKbLopaLb
         Z8Jdgv2kQpyaWQJa8jKuTBt494V4/HMHS9zSqwhX5vtyjEuJ4Gl7tghl5ke+ZJSG0ZXN
         XhMw==
X-Forwarded-Encrypted: i=1; AJvYcCXB48e2otKVdtEgPfpVu9AbNz/Bb9WiLT0I0t1iuY+ajwZDRClTAxPvEEWpb5ii6mk7QW+Qc4aTcVLq@vger.kernel.org
X-Gm-Message-State: AOJu0Yx34KkzOHQ/mHHo7JcuoPIobVuD9CWwMqY8OT/VvU8N1L4Nr++U
	d14uRJAO8/a1Xn/NqAg/5PFOW625xZFg/fW6JOESCvxLnkkrnO1KRblK
X-Gm-Gg: ASbGncsTX+xMAlFTEU412/wez2TRGQSsLBeyhxRVCWl3zG0HU/Beo4oi17Z4ZWsJzke
	A7ho9K5fYt8s7nmxFWrhPOG0qV+UUPkLG5iJcPlJjVt9ZqvdFuSBBLL2C9/vpCPSTUCret9iXUE
	bY50CuRB8HgxLCi0YffHxzr24VzYvhs00+mItd69dFGQarEPzuIzsK0Bu4PfmozJaiCzI6c0hky
	WcKuJNjnyR+NaTDGCHOUIT4z/Z2+Yzqx/Jfg+su1nGesVVD9DmKAndV7EdMS1W2YIghGPVxg/nc
	+cOTIVj4sKcAcQlPhUB2u5wZEfnmFWB+uYxilHqdmT64Z9sIvvyaz0ldYezWACiIXZw5HLgRnp4
	qQ+7a+wEJC9zj3EVQ3wslXPOyxVsg+A920NmD9XNdZbrUOCfzz9mJLQ9aS1zY/axrC2bwM7sMB/
	UDg7VeEO8EdjonDyDSf5uW928cf4J52/xfpoLsfPeNHLUevccK9flWDlgH5uJCAmMV
X-Google-Smtp-Source: AGHT+IEbCi0xm7TZs0YjOtrOHHNATQAm6IprX3ckD0OQpGOtjk01tDJ8J2LVgeXv3ddJgQ52ljhLtg==
X-Received: by 2002:a05:6000:2901:b0:3ea:6680:8fb9 with SMTP id ffacd0b85a97d-425577761c8mr3272501f8f.3.1759327255965;
        Wed, 01 Oct 2025 07:00:55 -0700 (PDT)
Received: from LAPTOP-AMJDAUEJ.soton.ac.uk (globalprotect-nat-extbord.soton.ac.uk. [152.78.0.24])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fb89065b5sm27029828f8f.17.2025.10.01.07.00.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 07:00:55 -0700 (PDT)
From: Junjie Cao <caojunjie650@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Clark <robin.clark@oss.qualcomm.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Antonino Maniscalco <antomani103@gmail.com>,
	Jonathan Marek <jonathan@marek.ca>,
	Eugene Lepshy <fekz115@gmail.com>,
	Jun Nie <jun.nie@linaro.org>
Cc: Junjie Cao <caojunjie650@gmail.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	freedreno@lists.freedesktop.org
Subject: [PATCH 0/3] drm/panel: Add support for Novatek NT36532 panel
Date: Wed,  1 Oct 2025 21:59:11 +0800
Message-ID: <20251001135914.13754-1-caojunjie650@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds support for panels using the Novatek NT36532 Display
Driver IC, a dual-DSI, dual-DSC controller that requires DPU support
for 'slice_per_pkt = 2'.

Since the current DPU driver lacks this capability, PATCH 2/3 is picked
up from Jonathan Marek and Jun Nie [1].

[1]: https://lore.kernel.org/all/20250220-dual-dsi-v2-3-6c0038d5a2ef@linaro.org

Jun Nie (1):
  drm/msm/dsi: support DSC configurations with slice_per_pkt > 1

Junjie Cao (2):
  dt-bindings: display: panel: Add Novatek NT36532
  drm/panel: Add Novatek NT36532 panel driver

 .../display/panel/novatek,nt36532.yaml        |  83 ++++
 MAINTAINERS                                   |   7 +
 drivers/gpu/drm/msm/dsi/dsi_host.c            |  25 +-
 drivers/gpu/drm/panel/Kconfig                 |  10 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-novatek-nt36532.c | 437 ++++++++++++++++++
 include/drm/drm_mipi_dsi.h                    |   2 +
 7 files changed, 550 insertions(+), 15 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/novatek,nt36532.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-novatek-nt36532.c


base-commit: bf2602a3cb2381fb1a04bf1c39a290518d2538d1
-- 
2.48.1


