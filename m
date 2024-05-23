Return-Path: <devicetree+bounces-68732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 820288CD2C2
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 14:52:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39C67283C1A
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 12:52:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F3D914F9E9;
	Thu, 23 May 2024 12:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YEppVM4v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28E114F137
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 12:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716468584; cv=none; b=Nctvyfrewy6b1LH1IQpHHWS1gGQc7dx0vJIpGodoGObIstBgpDnZkqhVbMSBtAETrKeIUIrGJkTnjEzZylG6ZWF0YW4f4nXqpbHFvSkR7+agbm+q7kE9nv2czKU61DxlG5wDjJBOnAJvSSN4d+nSqMNVjhZV4kRInjYihTRDfn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716468584; c=relaxed/simple;
	bh=/0McRX6GoM2+nGIkWn2jaKs7S924L4q446vEYfmzgP4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=snPXm4b3p6Tzf6Hhh8uZfI0LE2/P+GGL9pBIe1ypZTCu2tR+osfBiYIiyR89p7lQAV4cL66F8u/LwezGmdFqTfVZnS4+bCXV7RHgGASWsKPa5MgoDPRLTAcHTgdyKllUJohqTeWfjfIMYEEh7I/2nBxz5GKNOyQTwOwngVzF2WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YEppVM4v; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-354dfe54738so1384339f8f.3
        for <devicetree@vger.kernel.org>; Thu, 23 May 2024 05:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716468581; x=1717073381; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=28zbSoB8+Zxd+IxXtMzgHHKE2gbwNBphtmm6Xt7tCzg=;
        b=YEppVM4v+NgHGBpi/QcQPRfZhw7NHTJFguLXdr+fm7OSjJEeJqAJPtOJByCUBwRpV2
         bchQhC+4w1Cdsgob4F6SF46M9ipDYXxXVLRoB227EmHQd9p7uhpfnIpRm3ABCCQVgYib
         STUg5wbCQEMsdquS/uaTslrwdLjPg8V8RyxxPe4N/Trc8sSM4TOCP2AOHg/QxspT+QCl
         raUTPN8KMVd7VfHOSdqIL/CJouvSEJmKMP6TvGdt+T+7avrOkYtvn7HnPNwNltPT0Nkg
         9EMIC+KYEzi6OzkwU3FlIDn3XJDIPRe1+/5Ex/kiEQ0V6+gQgTPHi2FcgZ/fFsAf79qF
         iogQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716468581; x=1717073381;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=28zbSoB8+Zxd+IxXtMzgHHKE2gbwNBphtmm6Xt7tCzg=;
        b=MItxejLOj9zPnqYhUfnGKljh3oFAYaUCcwYuDfAJXaqPeDvVMq6t/AGl7Dw2orvn+k
         VUTuh+ztBsYAzd0LOB2DCUiLrJ8NEVRBkvLvG/yWQZGzbUE55EAc0XIQuorNqhKiiHXv
         ZCpWpN1zVDqf5JNS5pja1OePrNR2emcafIhQYbFQbgwG29tS0Cr+OchLe0Q+1ng+j98q
         b12xFuHLqcxD40I4ieQxSt/g6ouHHDjIUOZLuVJTfb42K1erTsgdomlpGBkHarhNG1eQ
         YAOId3BsibLrisFmS+aYzVuvjmJ2YkwMd+cJozk2t6foZMtZEXEPa8/FXuTdm1f72Pdj
         qWwg==
X-Forwarded-Encrypted: i=1; AJvYcCWOaGaogOen3nKCPeaWwDgY5mYvpbWlsKu2oeZ98EkV6Qbor+a9LT783NXUuFsQIlCB7DOPogQcCcVGk6hsumbWKn+2exILjnp3WA==
X-Gm-Message-State: AOJu0Yxh6Go/YwPbt9cxJu+LBlTTjhJa0j8aOFl8M87bbzSpul5rAPF6
	NkoDjmwGzrZQWp8sGXW412u925GEmXvoBp5z+WWleH4HtAPyklsJU/F8xO8Pyq8=
X-Google-Smtp-Source: AGHT+IH9I1yKELxeEkwniF+9niwDJ4iWhtTnG+NlRhabW9VWGojLsvUwjFjxu/LmyLyU3/BR1jPY+g==
X-Received: by 2002:adf:e586:0:b0:34d:963a:12cc with SMTP id ffacd0b85a97d-354d8dbc8bfmr3661763f8f.53.1716468581288;
        Thu, 23 May 2024 05:49:41 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-354faf3fa68sm1259611f8f.116.2024.05.23.05.49.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 05:49:40 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 23 May 2024 14:49:24 +0200
Subject: [PATCH v4 11/15] drm/mediatek: dsi: Improves the DSI lane setup
 robustness
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v4-11-ed82eb168fb1@baylibre.com>
References: <20231023-display-support-v4-0-ed82eb168fb1@baylibre.com>
In-Reply-To: <20231023-display-support-v4-0-ed82eb168fb1@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1234; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=/0McRX6GoM2+nGIkWn2jaKs7S924L4q446vEYfmzgP4=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmTztTlpUBxrslkpM9KkVJFXYtjbSrCv5t3TWgUxI5
 XUvLM5WJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZk87UwAKCRArRkmdfjHURWb4D/
 9wTBNeGwtAKm9fDQEgY3KlVoq3aw7N/I6ggPNiqm7lu48cT3alLmUEiAEH9cxr+ooYaOeF6xddtH9N
 Avqu+Na9+0o38iHIVyjOU/IB4Nrily2yDRjDJA1hvhAiygXW4A1rr7erHlTrJKuA6b2//3of5lwcpU
 C2WinPN+uvFvTf8s76ZBBRDLcMwz1YlFJDVcMZtHf9E+dCO1TDJ/LJ2LpyUQzYxDFC7dL9ClMU7bDh
 aRUcvXBSGYj02LWSk2KUBxbt8uL0pLsU5egoPTh0lwNl9Q/okAbJ31MY9AXCM02DXK/fha8WOx3xTw
 JhcIVPZo1pHFDMBCXeO00MmXu5eMyLfszMWYIpgAVBUZN7zkaJTlpoGza91wmPCNW7lZPpZLunm67n
 EjdgwfwctDV8gmmcaZagkU1NzGw/gQPe1/Nq6L/Xvp0LLsWKkYd7IlR/WS8XGhf3akmBJ+njq09a50
 DygPcXf13zXLX9yQoQPT499tok9k750eiHUe7iwpZRUlxp//nSGY7rK7GyWBCNjVD488SyNYYHpOxd
 3ZvRpJi4DnKnKauaFbFvyIFAJZDd7xzJn7haovlEAzvWt1bhVWvKVhImKpOcepGVrhBx73DT2+2SkV
 LVMKKq0yd/o08BjawyKMV9I+MVYefWOReRhG1sp/k3yb1r9aGKSO7tNJcPQQ==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Currently, mtk_dsi_lane_ready (which setup the DSI lane) is triggered
before mtk_dsi_poweron. lanes_ready flag toggle to true during
mtk_dsi_lane_ready function, and the DSI module is set up during
mtk_dsi_poweron.

Later, during panel driver init, mtk_dsi_lane_ready is triggered but does
nothing because lanes are considered ready. Unfortunately, when the panel
driver try to communicate, the DSI returns a timeout.

The solution found here is to put lanes_ready flag to false after the DSI
module setup into mtk_dsi_poweron to init the DSI lanes after the power /
setup of the DSI module.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index e036d9394c23..cb546a9e9419 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -643,6 +643,8 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
 	mtk_dsi_config_vdo_timing(dsi);
 	mtk_dsi_set_interrupt_enable(dsi);
 
+	dsi->lanes_ready = false;
+
 	return 0;
 err_disable_engine_clk:
 	clk_disable_unprepare(dsi->engine_clk);

-- 
2.25.1


