Return-Path: <devicetree+bounces-95454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED2D9598B5
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 12:58:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 41F921C21593
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 10:58:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53B7D1CCED2;
	Wed, 21 Aug 2024 09:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="MTUpasgA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E40BF1CCECF
	for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 09:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724232445; cv=none; b=bU9hR859e4F/qgrl0F/MEitmjwlPA1pDza1iu3l1zfcQA4Eq/YR3ml2HHrwk2sGpoGHIDGynb4zkX1VYQaCIAKlnR69LgaOPXMRTfmFckcGh7ztFVTSPlA6m24dLnmAxUrI0L293anMWkcMNkF97Opla5oXP4VUI1z5n89IOe9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724232445; c=relaxed/simple;
	bh=4prlT2M7ptUqVHJcht1st+Q4i8V3iRCnND+nUDH4uSQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=o2Ua54Wb4u4xBYrjzax8HJlAz/9ZVn8pDy0f2AUw6XWTNO5adunuCzO/A7YNRnniOajD/lP+hlU0+NxzoudEvKk+3uTwB16LQMT+UbFlrt0+N42EyrjoYMKEv9pDT9/96ibteeqCBtj0tYGv72PfzjiQcgVZFPoIzVsKXasrICE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=MTUpasgA; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-7aa7703cf08so4666018a12.2
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 02:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724232443; x=1724837243; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Iox3pW+t1+/mCNWqBkSwh8gOTlOVaTTolmdqxDRdGuE=;
        b=MTUpasgAjfZMAwUss8DgBemXQ8PPGQCFW4lDNweg4mL8N/tFz+G0qrRtjgyhqQfsh0
         bK36h5lsaxz5LkHZL0iAT/oOXT2jG8w8fUpOuEcmBupMT4fv0MCA1+XMA7KI/29aU5EH
         y6QjB8nw98Eqr4n37kK6pvHqgNN5vXxACGpWc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724232443; x=1724837243;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Iox3pW+t1+/mCNWqBkSwh8gOTlOVaTTolmdqxDRdGuE=;
        b=P1TzGMcfy2vRJyRPDedFwY8TEEG8rQMmTM4vO9HQAEt2slh6QNZpn3suJB2pjSV+1B
         F0cDSo1pm6HUQ8crHtEmffCMYb+1bX/nGnqJIGrOxxDpDGhN7NYpvHYsrQd/rQ7bG4+Y
         PxojSneszIeem0jp/pTWoITTYRgUcq31BK9f+R409LxRBywwnCMO1v06bitc80Z+FS6q
         WM6KISjY+tiroR4ft6wwquCvpF9hrbXpkFXK6JHxOaX9lHtYpjDy1MXNK1W0peF/v+cZ
         /72uzqBJzP1XIOSiOYORrmMoZGAy3i5VBQDSHT8JLTSeOVmbtMbDy2eqnNXjeNT8Rp/A
         Q0cA==
X-Forwarded-Encrypted: i=1; AJvYcCWgmVnLxvHGxFRhuZYgyRgDWGvvBhQBAIZGUvCzunnMyOw/kh//4YSDEPXEsUZvYF4FMduFqRYvQw/h@vger.kernel.org
X-Gm-Message-State: AOJu0Yzg/twtKDtj9lRtB/OEOs+UsBZkjGlMNWOuZVYOjhoLOFo3t1kI
	HlsfuQiMMrGCpkXDbI8b8zKCO+snj1VyoyL+1jjPGGmzFZKCcHMawyFPYXtJvg==
X-Google-Smtp-Source: AGHT+IFSbd2+CTAvT36vYi23wFOBnvLtUPzf574J+2rtgzO0If0Rhiv3cpNXndh5NgP+JigUun2lAA==
X-Received: by 2002:a05:6a20:9e4c:b0:1c0:eabc:86a8 with SMTP id adf61e73a8af0-1cada0115e2mr2213758637.5.1724232443153;
        Wed, 21 Aug 2024 02:27:23 -0700 (PDT)
Received: from localhost (185.174.143.34.bc.googleusercontent.com. [34.143.174.185])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-201f038e33asm89674035ad.219.2024.08.21.02.27.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Aug 2024 02:27:22 -0700 (PDT)
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
Subject: [PATCH v2 2/3] arm64: dts: mediatek: mt8186: Add power domain for DPI
Date: Wed, 21 Aug 2024 09:26:58 +0000
Message-ID: <20240821092659.1226250-3-rohiagar@chromium.org>
X-Mailer: git-send-email 2.46.0.295.g3b9ea8a38a-goog
In-Reply-To: <20240821092659.1226250-1-rohiagar@chromium.org>
References: <20240821092659.1226250-1-rohiagar@chromium.org>
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


