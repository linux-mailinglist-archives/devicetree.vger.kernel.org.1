Return-Path: <devicetree+bounces-98313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D67965B13
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 10:46:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C5B83B23648
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 08:46:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C013C1662EF;
	Fri, 30 Aug 2024 08:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="OVQfYSky"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2CD16EB4C
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725007554; cv=none; b=jKm+arEOEx0L2JXGgEl0S2NIQaNelm1v2XRIvsECyp7sshALxYFtJUelyNlbkeAJYmpFE1ruL42xOvSuGrrr9n9t3LaAp70bikS0dG4VPEg1nrUTTywl8JpFO/89IGr+DKm8SJRSZUslp7Zr1j73uLeLK8klZYJMSI1Obkz612k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725007554; c=relaxed/simple;
	bh=/DejoH0F8FI47zS0x7vpbj4RvJX01YssJVt4KW1Zszo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mxr01SKLLdy/K/JXUDNeXJdV7OTWUZgyMmakwj4krco0oncbEQLii+Roxr3+rAd+8p/Q+T3oFyvne2r8VbTHI3H2wcEm9Hh9gf7UpGrmx57DvlGzPklVv84r9PaAHDx/nf1o6VMC55TsdcZWwXWBCSPBNjfqQzPIwEBK4Ek6+U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=OVQfYSky; arc=none smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-5df9343b5b8so985057eaf.0
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 01:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725007552; x=1725612352; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uwb4ryjHwd1WNWOHt2dYb4LFy2usK3hFXIPxUh2iuvY=;
        b=OVQfYSky39meRcC3THWwS4DRBGeH3wyd2apYzy/hl6/zdhHQGFNoIi6FVoXF+dvgFn
         DYMRlvhdd8BmxmhosgPutiU5oW3HyuuKqzOCquMjzhP6MdJOyL2C2J+vfy/0P1iGilHw
         6y1iYrFYZhLZGgrObeMCNA84IcZWP1yPnrkIU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725007552; x=1725612352;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uwb4ryjHwd1WNWOHt2dYb4LFy2usK3hFXIPxUh2iuvY=;
        b=qShi9s7Nx+9EqIoWFuQBhTaRRSJvSbxIU/Xkm0vEstsw6ICFrZ2Rw/y9kGB8g+znAu
         lNvwJRGXxstQFDt2P/JnX89K1p3YxmdK2VwH+lcqsxkAYqPt5PRERuq+swkPPgTdXUuy
         ur39fifsKgDoFtfu8DwzPuw9HdARvnCJ6pnj+wiNJWiKqq43GLSAQyT5WE4ZDyunyvxb
         CiDc+pq1tm8LFp72mrzYuHAJdCPI3QmZilvhG2nZOAxwZuFY4qGmx0Ao1fY7jtalZ2gT
         tO7hIRLBzUu6kgFcYblIGvwIxG7PI+21KUc8Wj8iZr4hhViDqv7FZoCBrFGVmBI0oZMc
         IdOA==
X-Forwarded-Encrypted: i=1; AJvYcCVA9R2R0b93XEPoOkB4p5Avucp4c+1cJi4PheXENnZRZpTiB7TxZ4YyPZ8LtRFMijXp6JANzopJpN0A@vger.kernel.org
X-Gm-Message-State: AOJu0Yz14vx1LM1pTDmllrMC28T+zVmqiYnmha0J0H42YO4T8Xw6qRQ4
	ETAWW1D9K4baf8MpFUvsagVX6Dj+nLpdqivNmfDbGw4bRQXlqnf3wbP5jwgCFQ==
X-Google-Smtp-Source: AGHT+IGHGLA1gX/XRVCRV3NVqvnH4tc1FAiIFTMavidgJQhJ0QHl48VQRGJQ8UpPf3x2Xi2MLTe3DQ==
X-Received: by 2002:a05:6359:7c15:b0:19f:4c24:d9ad with SMTP id e5c5f4694b2df-1b603cb75d1mr694374055d.24.1725007552239;
        Fri, 30 Aug 2024 01:45:52 -0700 (PDT)
Received: from localhost (117.196.142.34.bc.googleusercontent.com. [34.142.196.117])
        by smtp.gmail.com with UTF8SMTPSA id 41be03b00d2f7-7d22e742774sm2467245a12.18.2024.08.30.01.45.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2024 01:45:51 -0700 (PDT)
From: Rohit Agarwal <rohiagar@chromium.org>
To: chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	ck.hu@mediatek.com,
	jitao.shi@mediatek.com
Cc: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Rohit Agarwal <rohiagar@chromium.org>
Subject: [PATCH v4 0/3] Devicetree updates for MT8186 
Date: Fri, 30 Aug 2024 08:45:41 +0000
Message-ID: <20240830084544.2898512-1-rohiagar@chromium.org>
X-Mailer: git-send-email 2.46.0.469.g59c65b2a67-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

Changes in v4:
 - Rebased on this series https://lore.kernel.org/all/20240603-mtk-thermal-mt818x-dtsi-v7-0-8c8e3c7a3643@baylibre.com/
 - Updated the overlapping starting address of svs node.

Changes in v3:
 - Update some formatting errors in the bindings patch.

Changes in v2:
 - Update the binding to include power domain in only some
   specific variants.

This series updates the DPI node to add power domain and
adds the Mediatek SVS node as well to MT8186.

Thanks,
Rohit.

Rohit Agarwal (3):
  dt-bindings: display: mediatek: dpi: Add power domains
  arm64: dts: mediatek: mt8186: Add power domain for DPI
  arm64: dts: mediatek: mt8186: Add svs node

 .../bindings/display/mediatek/mediatek,dpi.yaml | 17 +++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8186.dtsi        | 17 +++++++++++++++++
 2 files changed, 34 insertions(+)

-- 
2.46.0.469.g59c65b2a67-goog


