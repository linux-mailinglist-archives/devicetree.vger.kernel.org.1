Return-Path: <devicetree+bounces-95452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EB49598AE
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 12:57:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F2ED5284165
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 10:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09B201E9189;
	Wed, 21 Aug 2024 09:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ZvaYDio8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 960951E9168
	for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 09:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724232428; cv=none; b=Oq0qWFF4urQi7DaarVk3v5HH7W5w6h9m3vhCJ7SHDvF2hfjE9Ic2pzLYYHqUAOhqJCv1TLXRrvGOL2uEaFGqBIow5AsRymOZ3fh93derKVt7oZp0YaQpnAf8+d6oEI2kRfZjGU1ZrnJHuUzt8lrfVOYAP93mQmJb77tHW/wMsFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724232428; c=relaxed/simple;
	bh=6Z3mOwzdNJ8ZVlCh+Y4LUfp4zBkm7TqdB88HWv1/19c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uCvx4ASW9yQxCoOnVKq+I6dmGef80PGvX/fzTetswUwaT0dHOyHXGz7IytWUDi3MTu6YFymhnAFGLRj7zKEHPAjVNpDSwXf1e9TXPCm3aeLYr/G5JLdKhlDcfFDN8NNihpP8mdQ/UUm7HVLUehr3o3AiKWYNoc6VeSOd5rxc00E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ZvaYDio8; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2021a99af5eso35654205ad.1
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 02:27:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724232427; x=1724837227; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5teIJEcm0AV/k2WnKwH/7mKliV2959WnLZFIN1xCsco=;
        b=ZvaYDio8iQuiQk5CS+UdazT4Gn+Cu4tbMUsqhIQ4/S5o6bpm2III5hpQeSAUydH0pf
         bQIQA4+tUT/xSrxCbot/HrecUS6Y69z8BJcP6QDB6XbBOcE3G8DhKP3yKSbQfZKH3zqB
         tbmyH7EaAPkTr+2fdP04pF0pmqq/q0NsbXpZ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724232427; x=1724837227;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5teIJEcm0AV/k2WnKwH/7mKliV2959WnLZFIN1xCsco=;
        b=O0fX3ienANqsTIypXHLUCZpzbU+sagahSCwuMcc+OZrfb1RVhHU41PStUNFS48Ea5l
         A0rcAcBG5EoSszOeULMzXgpA5I/Q0x6Xt7QtCqhoDdS8X1/cWP1IwsElH8WJ0a2mnxgY
         2jdMY65gtYs4fRSbtu+h0Bqg76GGvDmupCWJs/hTWc/o3yq9oYferub0l58nkRGyiJhn
         per+NX3rJSPUC4HBt5ef/ZeyrrvfIslEH1nHfC+I1Ux9vlmlsFaWuR6D0689uNNdwn7o
         qXhQTQkmlfhs0ChTWMfhAO8o5ovlp18LYPsN8syrLFaJ8vYIIHlURMIDLXqzp5BaBdS/
         WqZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUPC+ltqwF7gxxayQ29ErvLZXxzjS48INTBUXTX+4fltRMLBjGol/eJBAyNqGX1h2ddSI65M9fCkH2u@vger.kernel.org
X-Gm-Message-State: AOJu0YycQ9rs0A5H9VH0OCSc/H9aBeHtFz+nV0jLUtHnPjXznnKQZ9nc
	0/rNh0IOZqw+YM4NeDs0vMRkzcNHQg9a2a+p/aVA9173TQhRgexw9lNFkGyb+g==
X-Google-Smtp-Source: AGHT+IEbt5Bs5xAE6EXU+ozOpdvalfD5bwlOmLZH40RAQn14UF8l3N604XimOQzcaf0Y9RYTSflQ8g==
X-Received: by 2002:a17:902:da8a:b0:202:1a49:d0c3 with SMTP id d9443c01a7336-203681c866dmr12445415ad.62.1724232426742;
        Wed, 21 Aug 2024 02:27:06 -0700 (PDT)
Received: from localhost (185.174.143.34.bc.googleusercontent.com. [34.143.174.185])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-20250470617sm37161595ad.268.2024.08.21.02.27.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Aug 2024 02:27:06 -0700 (PDT)
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
Subject: [PATCH v2 0/3] Devicetree updates for MT8186
Date: Wed, 21 Aug 2024 09:26:56 +0000
Message-ID: <20240821092659.1226250-1-rohiagar@chromium.org>
X-Mailer: git-send-email 2.46.0.295.g3b9ea8a38a-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

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

 .../display/mediatek/mediatek,dpi.yaml        | 19 +++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8186.dtsi      | 21 +++++++++++++++++++
 2 files changed, 40 insertions(+)

-- 
2.46.0.295.g3b9ea8a38a-goog


