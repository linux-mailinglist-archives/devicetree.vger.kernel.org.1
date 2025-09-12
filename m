Return-Path: <devicetree+bounces-216262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C36B5431E
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 08:43:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 16C2B1C82854
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 06:43:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7522286410;
	Fri, 12 Sep 2025 06:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nAbFBBCE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB3E2848A1
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 06:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757659402; cv=none; b=mV9dIpKGQQCaAdSCrVjvX2KtFA5Vr0nvzH9vI1RiS1jkF8CKSKTNAUFx4rsv7Y7w0A/peAvr2PfVdaw2sszBH/TDYMR8TL+yBaOVsadZvtTDnsKZMsUbxuSM7PXloxyGJVBra7Up8NH1AGWXbcXb3VDTzbPwG+MCF/an9BkIds4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757659402; c=relaxed/simple;
	bh=hrp8hJwCv6JtGRmkoW3+4i682foozLoyZ8LXR/WT2hg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oEU83T3Gaa2wzeWEIh8paLOVeXb2GX2ro8l8q3OZAa95tOz9NXZt8Ivuob34gta//Cr0+2gWMAgisgjgXScFh0W8nvOehnnmSMr31EaeH7RLvcW6N42A1UwkBF0XJshATqIkyIVAd9jr4VKXlD6/N0EoMhE3GfNWez/gYVcSWkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nAbFBBCE; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-55f7c0fb972so1599301e87.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 23:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757659398; x=1758264198; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/e6a4r5HwdADWqt2gxdEiy8yhSw818PuxVS+VjAKm8A=;
        b=nAbFBBCEkrqQmoFhdT+1kT9udZDmUlOabmbHxQexVc9tNaeZ9eVrwzOBsRUTbSAJ1e
         estnDEk0B889g9AqELk+iMhHfACJtGAQdQWREngq3ZitADVmW8sKmEKcKGqsR5uayERp
         M1qb/5Z/rZMPeDPpynCI1a1bPazyIYSbk36fFlIdmjTsg5iIVIU/cqET7Tr+mSNAzY6h
         wctjhTWxCy3OkvY5dcYlEaaRTwmjF4WVMR6p/7hIwJxOpcTRtXJy+CLhHMW0yBjOp1cC
         Q1NNsHYfDC5ZMR6bvy/chjYQ39gH7QWCxO0OLjgADvizFPFlghp3XS9rAyqGPxKFoFq4
         KriQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757659398; x=1758264198;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/e6a4r5HwdADWqt2gxdEiy8yhSw818PuxVS+VjAKm8A=;
        b=fruFrp40FdIqE77bdwQLMYqPIxrnMdSbLQTVAAdqhoWIVHuFv6d2nUlrqYszzee/jp
         yJfY9G6vTU/bowGcl/0gu3lE1TUdihyZkF9EYbXNmJMvlQG4StDDGo+/xIRDMYhbcVuu
         7QMI6iuOOas0sRGpulocG1hxDo9g5JBxjFKqozDaFMPxdhvJwoP7ezUgiAIeKyU1qgIk
         kDGKN0bbHgsnczKh4Ce+VSDhDMnIB8wiReJWeDNBxrI5HX2sIsA+cNSUBEiaeWGYmQH5
         mqzmdVYwAuCiV5EpV0TWStFYVpR66IX7YqpI8+C4UN+9O/eLV0OPMAYlDden9tAkJgSl
         QdDw==
X-Forwarded-Encrypted: i=1; AJvYcCVm8SilkXINIo5XjdikAcWF7XVjRtwwkpR1bLHMDwI/R95AmqB296WWxf/myCxvQ6Ni5G0evw4O9Yjs@vger.kernel.org
X-Gm-Message-State: AOJu0YyY27H2oHnr6meagJfFsvbzp4PJ3VP9MJFMjkdT5rfuQ/sKUUM1
	BylDp0Oo5TFAzfv1u51rjgz/yZP/AilY6+VyIepZXr9wWSjJvGB7gyBv
X-Gm-Gg: ASbGnctmArPYOYOmncYws1jKQcKW3zZK/CEGon34um0SSpnpL950s9RrTVs07XX+wnY
	+WhlGgm7IFg2qfvnV6qStGgYJeFSJdYIbFBgTia1PSWNKLxfmlTHdpCHnY5ub8LpVmvPKnflPFj
	F2V44kKO2rDCtlaURkQ467m9/xMzTm7ncgccNA8PI2BS4mbBSgnUm15MbKW5hLjPkubXPLoEsAg
	0OFhFw5wbn8OGxqkTkDKhSAhTbZbiH3eIFHECsSHDpM99upulghYzAO5mX4tZAWRiM/MyyxSabB
	a4huFagNXmUzr0UdtPrnGnLkMAnk/JHW9CI+8tStn5R4ViNO07cAlkKVEdCJuHqTqrQVhV062ZC
	H7CU5aXI6jfHIHA==
X-Google-Smtp-Source: AGHT+IEe0jkCS9U8WkTjVXPYNmZSLn/syNXqorRteuFNbdIlDVO4YBhxkuAG4CzXjByN5DDqyt0+Lg==
X-Received: by 2002:a05:6512:290e:b0:55f:4efe:42df with SMTP id 2adb3069b0e04-5704dba12c6mr472968e87.40.1757659398015;
        Thu, 11 Sep 2025 23:43:18 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e64bd15e6sm917403e87.116.2025.09.11.23.43.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 23:43:17 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] DRM: panel: add support for Sharp LQ079L1SX01 panel
Date: Fri, 12 Sep 2025 09:42:51 +0300
Message-ID: <20250912064253.26346-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Sharp LQ079L1SX01 panel is a LCD panel working in dual video mode found in
Xiaomi Mi Pad (A0101).

---
Changes in v2:
- adjusted schema with ">" and dsi0 > dsi
- fixed copyright from Nvidia to Xiaomi since sconfiguration equence is
  based on the downstream Xiaomi code.
- adjusted commit name of second commit
---

Svyatoslav Ryhel (2):
  dt-bindings: display: panel: document Sharp LQ079L1SX01 panel
  gpu/drm: panel: Add Sharp LQ079L1SX01 panel support

 .../display/panel/sharp,lq079l1sx01.yaml      |  99 ++++++++
 drivers/gpu/drm/panel/Kconfig                 |  15 ++
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-sharp-lq079l1sx01.c   | 233 ++++++++++++++++++
 4 files changed, 348 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/sharp,lq079l1sx01.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-sharp-lq079l1sx01.c

-- 
2.48.1


