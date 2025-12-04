Return-Path: <devicetree+bounces-244203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D219FCA2726
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 07:06:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4C94A300A254
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 06:06:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2E3F27FD56;
	Thu,  4 Dec 2025 06:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PkrVp30M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137F842048
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 06:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764828414; cv=none; b=IXlRwX8dUdkQ2HSeL5nahL1YWVkLsDztRoV42uhopGLdoSSUMJ0z06czloS3rexbxcFqEG99QOIBt4yt310FbfwO98gn5n58Zy07wn7T2MaX6IettbjFyIKhrSqPhwtnhbf2e7963qYXhMJRb4mGrxQo6zbvP+xOjWeS8NqMJaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764828414; c=relaxed/simple;
	bh=AAy4P8dvMHeneV0IgwHSPlPKzVlb7cPq1pIPErAgdos=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=WHe2/gUodrpdrbx4/4osUJbfV1bYO0vgTa9Oife8zjFpdJqHaCrz+7gFXvPOd2R5U42BXDJMbF04T1hAZGdDO24Ticpibu5zeAXJtoKm7+X1+49uvrP7itXBNixwahJgwTC6bdreowlawZTbTr9L9c2BBc9iz8jo6jO3TTnkFv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PkrVp30M; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-645a13e2b17so741630a12.2
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 22:06:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764828411; x=1765433211; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JZ9/LjENMEgkqGr3qDNK6DAWAvXersuPBKAH6ygTJP0=;
        b=PkrVp30MQE1vfk2G1gIlcfb4551DN2ZeNHIh5VqaIQqW5O5UX7QZlWVFkNN4CZ7hzB
         qOelANgAxO7ZlApK8PvYrTyznQOrt2Ul1ErAmtZPRKEZPAd2/F4sRO6Nh/QKPeEo67IM
         /bH0KqrbM2WJfJ9jbCO4zSZd9QaU5YdNVXxgXvNzSP4+LY1YbkZcpqV0MwKPFPiDwl6f
         v/BZSBCDxTEltlZhYhYoXVJgGDQBpqrcL0BVBcCPIqt3OSqSfkIKvemYqXY1oH0+MNdm
         eTx7f8WE9WvtMn+0ESqMeZUoYI5vZ4Kr4CtkiFchHY4IVftk3OpANNFUTeHCnqsgXsew
         9BiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764828411; x=1765433211;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JZ9/LjENMEgkqGr3qDNK6DAWAvXersuPBKAH6ygTJP0=;
        b=WYdbLl37o22xWiT9q6pB4VPnMRVu6Ahr5og673T2MUSsZ3TJFZd5GJdtf84Z2w1qzW
         F3yeHn8zMAFm+V+VYDSj8aQgi5FoYdxzlDSkJJWaMnbSP4Lzul0uGxLu7syImqz21NWp
         fVJYj93qn9ZUHcCZ+TjqgZWBVmQg5Wx/R78QWN7V9F0x0xdAXZqyZ+GS3hU9tEJ+PLOj
         cfF5K57TgCDw9Bn2f+boj2gGVc9G+7d+zM5CersGp+PNhJqRT9XajHDCyO6oITwKlUXw
         Yq8GyIh27aFHfC9Q7fNpfaBc6C5mx6cz2axql/nM/78VP8OKWvm545KefLIEJcKQMT+G
         9kHA==
X-Forwarded-Encrypted: i=1; AJvYcCUlybI7DaA9xilVUbGxGuoo48BTTQPCXlzSaUYRj+rZA71kPchexVAnq1LqpqrzHPFTTgAQ8Ffv1WFt@vger.kernel.org
X-Gm-Message-State: AOJu0YzlCD7GujbfFXA84NFsLHDa1PuCCFUcqx+obDJSMpKXxCxttax+
	VcBtQ4V34bHvioEZRs36SW0p9J4pwqCvrbBANqF9KhSBpBapHb9vN4AS
X-Gm-Gg: ASbGncsBD5nWG6wuJQ8KsPZMURuWBWwk09PCrVDvKv1FwSqBwZK6KkqRaBNOhpbtNAn
	Dxz/Z2mwVsNCBjEw9McSbl124vU/xItJ26BGSIHXi5TKhZZexh0T5QOc+oJBrJHLLme162YiOQo
	lLfn74JvNQMhIOG9IVmxlcBx16oam8UxVVEq81zNrUb3yDmAuiGzWz/RZevW8H/753S4++mz0e0
	dPS0g1xuEdsPvv1sqAa+xcNH0OdYBsXp6zWA+sYCn4YJCB450hH7HcgjJ6l3Yeqic+92nP9MGo3
	ejehUD3NVAA3iMuL4J4O1zUvrxt+EACQKw4KrIht4DqAQgHFAOqSaZbzneNPGVrtNqipSSsO4Jc
	INfM1ks+GAnQowcRJ7xSnKx3WguIgUy19VxB90Wxps65MNE/c6cLsva5L02O01mZUyXiccBq6gP
	oMMUuJF+QbfQ==
X-Google-Smtp-Source: AGHT+IGzgtbqSQa+Nunwm3tsFNhMDU83uHRCJF1GCTTEVoUczGHtwgIxvcTuLpvcqSN7APe8juko5w==
X-Received: by 2002:a05:6402:4302:b0:640:cd2a:3cc1 with SMTP id 4fb4d7f45d1cf-647abcf4242mr1593608a12.0.1764828411280;
        Wed, 03 Dec 2025 22:06:51 -0800 (PST)
Received: from xeon ([188.163.112.74])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b2ef7798sm460296a12.15.2025.12.03.22.06.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 22:06:50 -0800 (PST)
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
Subject: [PATCH v3 0/7 RESEND] Add support for panels found in various Tegra devices
Date: Thu,  4 Dec 2025 08:06:16 +0200
Message-ID: <20251204060627.4727-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add support for panels found in various Tegra30 and Tegra114 devices,
including panels in Tegra Note 7, Surface RT, Surface 2 and Ideapad
Yoga 11 T30.

---
Changes in v2:
- dropped gpu/drm: panel-edp: add AUO B116XAN02.0 panel entry (picked into drm-misc-next)
- expanded commit descriptions
- return accum_err on prepare
- switched to devm_regulator_bulk_get_const

Changes in v3:
- lg,ld070wx3.yaml > lg,ld070wx3-sl01.yaml
---

Anton Bambura (1):
  gpu/drm: panel: add Samsung LTL106HL02 MIPI DSI panel driver

Svyatoslav Ryhel (6):
  dt-bindings: display: panel: properly document LG LD070WX3 panel
  gpu/drm: panel: add support for LG LD070WX3-SL01 MIPI DSI panel
  ARM: tn7: adjust panel node
  dt-bindings: display: panel: document Samsung LTL106AL01 simple panel
  gpu/drm: panel: simple-panel: add Samsung LTL106AL01 LVDS panel
    support
  dt-bindings: display: panel: document Samsung LTL106HL02 MIPI DSI
    panel

 .../display/panel/lg,ld070wx3-sl01.yaml       |  60 ++++++
 .../display/panel/panel-simple-dsi.yaml       |   4 +-
 .../bindings/display/panel/panel-simple.yaml  |   2 +
 arch/arm/boot/dts/nvidia/tegra114-tn7.dts     |  13 +-
 drivers/gpu/drm/panel/Kconfig                 |  26 +++
 drivers/gpu/drm/panel/Makefile                |   2 +
 drivers/gpu/drm/panel/panel-lg-ld070wx3.c     | 184 ++++++++++++++++++
 .../gpu/drm/panel/panel-samsung-ltl106hl02.c  | 179 +++++++++++++++++
 drivers/gpu/drm/panel/panel-simple.c          |  65 ++++---
 9 files changed, 496 insertions(+), 39 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/lg,ld070wx3-sl01.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-lg-ld070wx3.c
 create mode 100644 drivers/gpu/drm/panel/panel-samsung-ltl106hl02.c

-- 
2.48.1


