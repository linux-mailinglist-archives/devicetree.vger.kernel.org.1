Return-Path: <devicetree+bounces-102375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40AE0976C67
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 16:44:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 062CF2819C9
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 14:44:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E24501B9821;
	Thu, 12 Sep 2024 14:44:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="mab+uNUQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A9841B4C26
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 14:44:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726152279; cv=none; b=ED9SfafUT/aF4Vss1y+6NiENUGyYWsf4x+i0lHWHbuYYQOZ+jfXayJVhiT8BtfyCnPsQmLj2M3bEnxBCrNeXGUwnWkmPoD2rcrOz/Dxu1BI3gsgU6vJu45+Qq26mXhlGb48usIoOmY2lhc0qaCT3a3Pz5T050CqH56ZdZjnfQOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726152279; c=relaxed/simple;
	bh=ailPSFTxMrNMGHA7HZ9l1aBMXWsllhW7RSR3xtvRlgU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kd+yrOwnPhuiJOPLCndDL6mNKUmB7NgVARsJvnlbJywglHtUU9feGA49gV71yLrQjOP67HLDTq0ObOrjWbVrR4GOzkQqRYpAU2odZwV1B/DZg/gU/HH8ULAWkM/gVPR3uFNFRmkcrOyVZDJtgUwtC9NmLBH4XZ5C9tRMded/fT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=mab+uNUQ; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-71911585911so878952b3a.3
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 07:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726152278; x=1726757078; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SnjQo2l57VNy0/9b9V7jPtL8zuWKJeeYd2oBfdE66r8=;
        b=mab+uNUQPU3h3IBtI8kmp9iQpEIsMxVBb/poFeaP8Mwmq2vKz+nKTFvo8NfxByz3bm
         0z8J4PZSuWiTFvS1umPRyfxMry+OX4u9KQ67ptv78k1FaLlaQoKdnue0TZRtwIFTGdDa
         OznG+JrrJT4nxGzqWuFomejbhNWXrUJKBhPhg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726152278; x=1726757078;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SnjQo2l57VNy0/9b9V7jPtL8zuWKJeeYd2oBfdE66r8=;
        b=g+Zgvf12A2VrSpwwMqrBEWQV3OCqWyGZJUWofxzb99dYzFX3MgCBbcA3mzlnfZCcGr
         c/65afD73nlx3+I0hhjrGbjXkyT9IY6Z1k0u8X2NJBdZofEcMuPPdgLqbVLWN+19uBcX
         fO7j6rDMqbvJLTWOv532ubza8nKmSfTb5wZ7SbsxE08yWilo7KGwWePo6e2W9sQlda7L
         lWk+D6S8Y7kMkJF23EMHgN/Ccd1IYoS+6bGMcfOXXPV7dcFx0kmBY9FCIv5hbKJ0QM+A
         4lS+4BhAvXZksAE5J+XM2L6O3xwR7HI3OeqZ3saOhZggRF7r5x6UAcP1SAe8P3cSuQy2
         Ph8g==
X-Forwarded-Encrypted: i=1; AJvYcCXAx+mVQ3p2rXI1U1pReP/zZYbqDna063wyZ1D/XDdTKTTQGtZaMcJZUofDs9ahrixnXx/RmsVQ2ksr@vger.kernel.org
X-Gm-Message-State: AOJu0YzpjxYRvYyW5dwvmgmvC6xerYsUeLbrZrx7mTHeZrwF7nJcG6Ak
	Af1U+co21cTi6xmpgIUsIZJRBYDtfp2fYRwKS0hmtBCBqKujL9KOPPt++dNEJw==
X-Google-Smtp-Source: AGHT+IGe8UZsXDErTlsFVsKEqocto9ktULRfXcWaq34cYE7rYYe0pLbf4dzAsufnELC8pqE5fNjDew==
X-Received: by 2002:a05:6a20:ac43:b0:1cf:36f2:21e9 with SMTP id adf61e73a8af0-1cf76358fdfmr3795202637.32.1726152277655;
        Thu, 12 Sep 2024 07:44:37 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:8638:897f:b6cd:8c44])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7db1fdee186sm1826269a12.85.2024.09.12.07.44.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 07:44:37 -0700 (PDT)
From: Pin-yen Lin <treapking@chromium.org>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	CK Hu <ck.hu@mediatek.com>
Cc: linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Pin-yen Lin <treapking@chromium.org>,
	Fabien Parent <fparent@baylibre.com>,
	Jitao shi <jitao.shi@mediatek.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 0/2] Fix dtcheck warnings for mediatek,dpi binding
Date: Thu, 12 Sep 2024 22:43:57 +0800
Message-ID: <20240912144430.3161717-1-treapking@chromium.org>
X-Mailer: git-send-email 2.46.0.662.g92d0881bb0-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series fixes two binding schema errors in mediatek,dpi binding.
The first patch adds the power-domain property to the binding, and the
second patch adds the port node as it's required by the binding.


Pin-yen Lin (2):
  dt-bindings: display: mediatek: dpi: Add power-domains to the bindings
  arm64: dts: mt8183: Add port node to dpi node

 .../bindings/display/mediatek/mediatek,dpi.yaml           | 8 ++++++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi                  | 4 ++++
 2 files changed, 12 insertions(+)

-- 
2.46.0.662.g92d0881bb0-goog


