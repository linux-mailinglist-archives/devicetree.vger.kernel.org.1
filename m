Return-Path: <devicetree+bounces-221500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CFFBA03D3
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 17:21:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9BC917B0629
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:20:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7EDF311C19;
	Thu, 25 Sep 2025 15:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NTXpN3D6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8791B30FC3E
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 15:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758813465; cv=none; b=cJW7K3uMEgDsSvZtiNNtDF5tn7NQgz86D6Zdfgsk/017lAIImWlcOwvNu/ttSCdPzTKDcVzjMluwaPNucYlqNj+Hjz1zwdBbPGxHHLMfkVFsP+Eu7EAQRumTDTruYVL1jxbZ1LVkKr0e7IUMZBknH+EY3DnRap/ET5gbA5qMlIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758813465; c=relaxed/simple;
	bh=faNEH5cqnjXg/gz+BC2wvXan6ZNvtxWC+YqN8DJQyXY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fP9oH7ApNUpgaTIqB/Lrr1KSgll0IZJGR08nco8GuZXiv0jEjRk6TOnmD6ZLFOIYO5cx2MbIowMMaz3Yd8dphmQbVYDNItIkPkRtk1ojDSBqqLpewOyBNi33LXgzpf5pIC+XhLaG8M0eFFb+VMjMHrZq7lOaEnTr7uKkcGGnN3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NTXpN3D6; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-57ea78e0618so1030156e87.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758813460; x=1759418260; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fx8+4vdRQ/UAxNBt+6HBXITvbdfxM4xzJ6LhrqnP1X8=;
        b=NTXpN3D6RjC7x+DI4IhKqzSUMIS6fhlXc2MlM2TOGlDxPk5q479CIUsDhqRRHPhMTr
         Oaz8rOJ0Og8goPYi2sfzzodiwIZC5MV0eUzF90HpxrVNBhbjzR0+dxoVFCVJaD65N8jO
         b4lYEOmyXlX3OHFZyhvrLMsuvSC//CqVIPRk26o3v21RZzhImtEgR1a73VApm/FLMPh0
         OFIWTxD1F9RllNdw4cCu7G4m0iTblNrNAQi0dP+7RAk+GHIQuimiRTw3CKVFk4U5kC4q
         9TjgrHFmrOq+w5qq/lQE+AHTvr5cIY+dpQtyIkKAcM8g1E14dnO6BC1VqvNpaOvxJOSq
         glmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758813460; x=1759418260;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fx8+4vdRQ/UAxNBt+6HBXITvbdfxM4xzJ6LhrqnP1X8=;
        b=JBc+aOniQdSELmrcQCSO8Kihp4N1fZ9q9TBeC2YYzPrFuyUJt/VY7jhztKcm/0xkqa
         9FbUcpuOYQh6GB97q3roadGmezGSiE1MHukesDFRwFVfOW8UP2sxmHEXoFtsXOT19/he
         LbCrCYsiuHsxvFcBzJ/pfObAmtOszFap0ymR7UCNN7etXy/k8w98of2exkQ4entFpd6G
         WWzHqU+COUGz2SwCbdCmHDKLG9m2zWAb1NVH0egqVKRO1Mmkp59PF2fBsKkyLMyw1xA9
         6UE02Z7Ofg+24gxMS0EBqWlb8HGunmcqXGLNlucw7EZy9dynCk4aSlh9R262In3ukASs
         nJZA==
X-Forwarded-Encrypted: i=1; AJvYcCWEyZyjtI3BtBPd7WxP02DPUUT9GV9252l1Lt2BgWExbEyaIIfhhcneyN7gPPdo0bwsCuwcGBlNML/B@vger.kernel.org
X-Gm-Message-State: AOJu0YybWhLiYn64yTKXYHrVeOljIxNVpIYz+ctlPaCDXPOcr7IVlmdx
	iwfyCoSumq2qhKEFxgNQ4WY/btxtCH1aKNBhiFvzPi29hvSM77TE/eVu
X-Gm-Gg: ASbGncuCxfpfc9OEyi3wy2gSrYyb0I7yttLNrvhy2ZcoCgxkE5+0Yi2HPZbL0MRTRuV
	QhDY16MQkU3X0TMHZtBBBgXUt2T1KnHVkN4lIC0mG4qB9G9a6N2gc3qXDPRHnYNawxQrmAjHXLe
	M7zoJMXY1XJkSv65e+2E5DheoaykYoQLlMN5trmo71tA4iljImmovBhhesGZO1FaYmHEKph3nbY
	4zALcKgCNfC4e/Awwz+emtzj6G8sfMVS+3FmOeYNHdrt5RL7a2l+4hd3lrYO/4+IOhpc5YGbvP2
	BuX2lrQZ1/Rf2nHqay2vwipGlgA8n76C1kiT9KvoLvsmpjnn1zJsv9ZyjsifHhL2nFJnbuA26Ea
	XwqcmNOMTu7hq1A4rzoaYJ7sv
X-Google-Smtp-Source: AGHT+IEtsXlkJh4zDVIxsS8Hs/r9wYDKZCtJ2sfjXml1D1zv5EDl/W0Gpd3rSyCqcwLuY7gdFAOzVw==
X-Received: by 2002:a05:6512:ea3:b0:57d:a69c:7083 with SMTP id 2adb3069b0e04-582d0c2a408mr1257970e87.24.1758813459477;
        Thu, 25 Sep 2025 08:17:39 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313430496sm870084e87.27.2025.09.25.08.17.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 08:17:39 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Sowjanya Komatineni <skomatineni@nvidia.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>,
	Dmitry Osipenko <digetx@gmail.com>,
	Charan Pedumuru <charan.pedumuru@gmail.com>,
	Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>,
	Aaron Kling <webgeek1234@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-staging@lists.linux.dev
Subject: [PATCH v3 16/22] staging: media: tegra-video: tegra20: set VI HW revision
Date: Thu, 25 Sep 2025 18:16:42 +0300
Message-ID: <20250925151648.79510-17-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250925151648.79510-1-clamor95@gmail.com>
References: <20250925151648.79510-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

According to TRM Tegra20, Tegra30 and Tegra114 have VI revision 1,
Tegra124 has revision 2 and Tegra210 has revision 3. Set correct revision
in tegra20_vi_soc like tegra210 does.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/staging/media/tegra-video/tegra20.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/tegra-video/tegra20.c b/drivers/staging/media/tegra-video/tegra20.c
index b7a39723dfc2..4b69b556387c 100644
--- a/drivers/staging/media/tegra-video/tegra20.c
+++ b/drivers/staging/media/tegra-video/tegra20.c
@@ -589,6 +589,7 @@ const struct tegra_vi_soc tegra20_vi_soc = {
 	.nformats = ARRAY_SIZE(tegra20_video_formats),
 	.default_video_format = &tegra20_video_formats[0],
 	.ops = &tegra20_vi_ops,
+	.hw_revision = 1,
 	.vi_max_channels = 2, /* TEGRA_VI_OUT_1 and TEGRA_VI_OUT_2 */
 	.vi_max_clk_hz = 150000000,
 	.has_h_v_flip = true,
-- 
2.48.1


