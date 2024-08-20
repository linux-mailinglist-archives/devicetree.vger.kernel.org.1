Return-Path: <devicetree+bounces-95092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 215DB95808A
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 10:07:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D1D0B284D41
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 08:07:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0903D18A6A9;
	Tue, 20 Aug 2024 08:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="oQ7MzaE9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98E5D189F5A
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 08:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724141242; cv=none; b=f7KOpySo6VwswGWHPPd8PSaOH82hHn/cu+TaKAwftRwg9gYt4ulo7ceoJyi96J1Rbm3jrIeniN52KSYt1+O2HsxW8A7t2InHExrMNCUxeZeOGmayD9iViUb0+n0cAXadWcBvl1KW6hp0lnPAE7fPZn6cBY265s/C4sTauDropKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724141242; c=relaxed/simple;
	bh=4prlT2M7ptUqVHJcht1st+Q4i8V3iRCnND+nUDH4uSQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=U1wz6XfaO8ik6qMHTWgyf6Rsp/2ZGHm1qVTGsH9Cs2LQw0z4p8HHXVSTk7/EJgpDMAifZt3sFLaGiYM55BVJ9sECzFr6s71uXP2AgEMToJh+OGJd5/KOMdOwUaTCGsVlSHhqCeSSoPCB5xW58N96nMLMaMMy+1wobJb3EcL+abw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=oQ7MzaE9; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-7afd1aeac83so4105201a12.0
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 01:07:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724141241; x=1724746041; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Iox3pW+t1+/mCNWqBkSwh8gOTlOVaTTolmdqxDRdGuE=;
        b=oQ7MzaE9+Gfn372gnSj0jPnnmbUU2Cg/pK2665tvePPxa2FtXOX9Tdu0U3VMHeExnL
         bcgERvBOJTd8UrY2H5nS6iZV7us4KNgEJyUJIRiDZafPXn+8LZ1b6Z7/d8lIY4Pmb7/j
         EAx1lO8EhNj+vBgR0GQ/n9fHpm7E3pifI0kPA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724141241; x=1724746041;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Iox3pW+t1+/mCNWqBkSwh8gOTlOVaTTolmdqxDRdGuE=;
        b=AudlIku4cFVoLv+0ZEl5ZcTI2gVvAQrGnC4YKOeD0hdelodGxPUaiG3Len02SOTdza
         6KXiFKZEkVq+sQJpuFSOOYJFE4+ajfmgB+0Yas4OYA+dmPB5IcFkYVSD4T27JqCHRkjr
         h+knNNFgBWEszssmDBOkZxGNSniICh5wn1TKu0b1dsC0PZh4AYl8ojT6ONXP8EEjr2m8
         Ko6DdvYsGFa6DDD9FfMBYA2xke0KbPp4s2A6d37cDkfppeyvtm7UWb74czIrblkWDont
         Op3R3jJtKR8C3d4kKAqb8GQI1/Ay0akBv31krTidqSvYaTPBTembvVK9NMxndJoOVnNJ
         Zv6A==
X-Forwarded-Encrypted: i=1; AJvYcCUOlVUNCXAJEicncw27AAb6VzG/++XZg2tn69HdW0O/zdUvoNt9dCxsaUGVloQMYNTpMJ1Bt1LLrb62@vger.kernel.org
X-Gm-Message-State: AOJu0YwjbOuE6OIoFFjHJCQRWcEKRarVj5eOhQFEXm/0FkBa426G7QQD
	nLIady/hItTlNXo0wtdQHTSzLz5pWSjiNIFC7tKOQekhHtAPOdXV00Qo/Kqp+w==
X-Google-Smtp-Source: AGHT+IHQpe/xH18Gz0WxkaiRSQ8MloxnO4Qm6+EYZVdcVqYqIRvsLVNRO0UiYRv0FQyI2NXLjvAwEA==
X-Received: by 2002:a17:90a:ce08:b0:2ab:8324:1b47 with SMTP id 98e67ed59e1d1-2d47327c70bmr3278247a91.15.1724141240742;
        Tue, 20 Aug 2024 01:07:20 -0700 (PDT)
Received: from localhost (185.174.143.34.bc.googleusercontent.com. [34.143.174.185])
        by smtp.gmail.com with UTF8SMTPSA id 98e67ed59e1d1-2d3e3c752aesm8640053a91.42.2024.08.20.01.07.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2024 01:07:20 -0700 (PDT)
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
Subject: [PATCH 2/3] arm64: dts: mediatek: mt8186: Add power domain for DPI
Date: Tue, 20 Aug 2024 08:06:58 +0000
Message-ID: <20240820080659.2136906-3-rohiagar@chromium.org>
X-Mailer: git-send-email 2.46.0.295.g3b9ea8a38a-goog
In-Reply-To: <20240820080659.2136906-1-rohiagar@chromium.org>
References: <20240820080659.2136906-1-rohiagar@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add power domain phandle to the DPI controller in mediatek
mt8186 SoC.

Signed-off-by: Rohit Agarwal <rohiagar@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8186.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186.dtsi b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
index 4763ed5dc86c..e27c69ec8bdd 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
@@ -1824,6 +1824,7 @@ dpi: dpi@1400a000 {
 			assigned-clocks = <&topckgen CLK_TOP_DPI>;
 			assigned-clock-parents = <&topckgen CLK_TOP_TVDPLL_D2>;
 			interrupts = <GIC_SPI 309 IRQ_TYPE_LEVEL_LOW 0>;
+			power-domains = <&spm MT8186_POWER_DOMAIN_DIS>;
 			status = "disabled";
 
 			port {
-- 
2.46.0.295.g3b9ea8a38a-goog


