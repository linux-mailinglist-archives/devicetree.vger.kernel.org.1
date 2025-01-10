Return-Path: <devicetree+bounces-137468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDD0A0920C
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 14:32:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 288A47A3DBE
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 13:32:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39790210190;
	Fri, 10 Jan 2025 13:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="v7syYrzE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A7920E6E5
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 13:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736515890; cv=none; b=Wj5OQFV01Q3JIepc8nw/EtAI1f4S9EUnUx1H/lpwd/mEuHWiOY6GIhGLX+aftxysje0mh0nPg8t6A2kqdsVBzTt6olqewHAhMQLextsPvEaWUcJ7ztBkcb2MoBKwuHQHKFzUmMtsfC8MtrpgNqrVkLTuMp4fYP+5IwBMaGLdWyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736515890; c=relaxed/simple;
	bh=/FrM5Q7dkW2P/a4wYWyi5MUyL8Mql8ICFVAZt1ovMlM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JkPnOqKD9+AMbKDwHqHfAlpOy4bZy8JQ8KWLrUhq4xMrJP38B2sEIoDGuWcXxWAX933kcUlkg1R3AQq7UDja6g+OqImKkrMSidIm4FErpMv4Ss88HOdyxCLEIZ0cjNIRcaq1/KcDFIvSC+vISeZN/TVntP5oCxhGvmIak8AvurA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=v7syYrzE; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-385e0e224cbso1146312f8f.2
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 05:31:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736515886; x=1737120686; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=czQovKHFJiawW3q43/tzxcBianm24ydViBCbQnMA+dM=;
        b=v7syYrzER7L7cHIJqBDMpP98urjyRXlYH3BVOwsLAnyZYJjNHh/DZ/lvIegQ1tC8Kf
         AbkRBXOSCba4gVgj5K6EbviTPo9WEscP2etKQXtkRNDlSt3CCvASpy7dt+t2PQbcSo0j
         tzakd2bTST5D3pbYpmxwo0UbAQ91egOtQRSMtVMg2EZrrF0V3K/lo37Xs67Xd/IWjTsH
         5wBOi5cL53G+QgNuOzVVXClyOFQJ4eMlI+t/Jrt4SJjCAJgSRtsZibNWDhukGn/JbJn4
         KV/5wVUd3j9AjffcSNIgIR6yA/V5qPqS4XdKmzmQABOKszC/IONdbM11bvOTr9jEbHew
         G6dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736515886; x=1737120686;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=czQovKHFJiawW3q43/tzxcBianm24ydViBCbQnMA+dM=;
        b=Ek2x7ZM7cNJSsq9B7sNwaf+7QQIYoM9+ENS1njKUL/Oqk13xQKAQGhjKB9FZiO1T+P
         /jgwenj95wsa2j5Rj1re517L9Ry2ffP945zeH9MQstikZa/6RD6ckE78t1MSPewq7ZDb
         0cZbqpiGfsxq+fkRZHcWn5fTeSXPguwMrJuYPoZwGssMKYwLNgdFLHqjg4O2wzUSMYFx
         q/qGGBcaqdPTtQtukFrIliTWHm+vtPVHV9OA0K5RGxzMIawJu9feYPPDF7+P1otLfmyO
         Fvq9FngdI2MiZprv1rjLg7oxd0kcer+vDAB6CTHlS/LScdCTMMmxuWTkHO/O3ovhHwp+
         YoaA==
X-Forwarded-Encrypted: i=1; AJvYcCXMIo5PtfvX4FxoNyLtCGmjsXCyGvYgHjDBVymb72s/L2YCLN2YDasKkHemnX3H0dBzZpkIaITtfXy3@vger.kernel.org
X-Gm-Message-State: AOJu0Yxo4hKx/X42tH82J2x/d/H5y+bcMmRQFSSSSxA2CdN0/CIPdWe8
	LNah1g+kXSx89cOZILdUVgk2brMtNZEawyXoVB2fXo57TbBr1fkSm6IwYIsaLHc=
X-Gm-Gg: ASbGnctCWgEkPuGZisc4R+wEuQozqCNGgcFZc4ZhNlZCl7VZeK5iiVnMR3WXbPz56rZ
	U8oj4Vh2JrPRb97xIxphK7KfcyIuK2Dj3eYb6d/pAHnnaRiSrW+36IOAbrDJPgAgL6EM5hB7cy6
	rUNg2XtTrVUzGjh4CnxLRPpBfyIw8EbHnHltN//vsEXE1ElaOkz09tcMeU2G6jfCSsSguOlQo6+
	datr/A3vLtGrmeN1VcJgr2OYVZBfm/fCyXT8W/gmlkjo27u5vq7VxMthFA3
X-Google-Smtp-Source: AGHT+IGPagTUjFwrYYmmjtjuTfXbN2bDVAsHyXfD27cOpCNW2lmXYAioeDkCa1NDyoNEQON0v8I1+w==
X-Received: by 2002:a05:6000:710:b0:385:f4db:e33b with SMTP id ffacd0b85a97d-38a872db2c7mr10663137f8f.21.1736515886322;
        Fri, 10 Jan 2025 05:31:26 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:2555:edac:4d05:947d])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38a8e38c990sm4598193f8f.56.2025.01.10.05.31.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 05:31:25 -0800 (PST)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Fri, 10 Jan 2025 14:31:14 +0100
Subject: [PATCH v7 4/6] arm64: defconfig: enable display support for
 mt8365-evk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v7-4-6703f3e26831@baylibre.com>
References: <20231023-display-support-v7-0-6703f3e26831@baylibre.com>
In-Reply-To: <20231023-display-support-v7-0-6703f3e26831@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Simona Vetter <simona@ffwll.ch>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1025; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=/FrM5Q7dkW2P/a4wYWyi5MUyL8Mql8ICFVAZt1ovMlM=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBngSEnoSo2eM6ojRqCmld2hpFcaxilavl+I21EUqLr
 Kup6t+SJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ4EhJwAKCRArRkmdfjHURQB7D/
 9A/L91PiiGu2rK2SMP9XGcogr6oaqx6UZaDXrDKetU5D8kgdn7C2qhIjPzekgzy5B8ZbekLxqmm7YW
 PMw7IdT778IA30r2Dv3xkkjoe0EZZ39x+QTxTLbhd4xFSQLL08xnf2BExPVCJMrVBA0gI0zjNxw0dB
 UvzNve5p8WDSB3b8EYX7Tcx2r4tnFWRhlv5uaGziE2vIyxMAEVAzO/jwryBD4w9IoU4GIHp2w5rmsd
 i8l+fwpJp+rvhZUIrm86OU282/J5plCcuCG9NdxJjwAf73Q4m5qAhyz3JQtrFWEsv9/a3FY5FjFgLG
 Kp/dJXr4rspqMnXVGnIc+9yfRR6JdtGODsq9d80FoqkPQ8HQ+Qz8bbaHAg63EOTIFx4KX2nAdXqQSJ
 H3POeEMfpRMigfsIDX0mKw3KJzpRVdfwYKk8zOiKvjsIGq+c9HBXz8mQmq92oPyHH17wBN3EFKfTN9
 Q7x5bPl88hrGjH927T7r6sPCPckmUgZ+oooJjucg3R3CbiEClThzYPsswxpict7DcNfnzz0sXGG6wr
 wNIw7x1GPN2cVka5ughYRn4aARpjw1XAlAmKyGN2rQK7ToCTkoNYzW2VBzi22tLfe+hyreHgTB+9MS
 ThR/RoVxRpcIOa3VzZ5G2cb4Fur8bl/CNAQT5uJ0J0LAczK9D9jTqY/jMpjQ==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Enable the DRM HDMI connector support and the MIPI-DSI display
Startek KD070FHFID015 panel to have HDMI and DSI display working
on the mt8365-evk board.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c62831e61586..1e2963a13500 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -897,9 +897,11 @@ CONFIG_DRM_PANEL_NOVATEK_NT36672E=m
 CONFIG_DRM_PANEL_RAYDIUM_RM67191=m
 CONFIG_DRM_PANEL_SAMSUNG_ATNA33XC20=m
 CONFIG_DRM_PANEL_SITRONIX_ST7703=m
+CONFIG_DRM_PANEL_STARTEK_KD070FHFID015=m
 CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA=m
 CONFIG_DRM_PANEL_VISIONOX_VTDR6130=m
 CONFIG_DRM_FSL_LDB=m
+CONFIG_DRM_DISPLAY_CONNECTOR=m
 CONFIG_DRM_LONTIUM_LT8912B=m
 CONFIG_DRM_LONTIUM_LT9611=m
 CONFIG_DRM_LONTIUM_LT9611UXC=m

-- 
2.25.1


