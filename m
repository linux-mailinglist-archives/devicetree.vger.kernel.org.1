Return-Path: <devicetree+bounces-229829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4106BFC8C1
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:32:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5271B6E23A3
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 14:22:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B4ED34C13A;
	Wed, 22 Oct 2025 14:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dRW3mYGu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EF134C985
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 14:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761142899; cv=none; b=EcuEImooeUzSBGRvzf6KsCt66Vlg5ovoMkgyT79JEKFkMzrJQ+40IOp+Vx6cRr7o3MvLw7QofQwAG53+XNCWVGk8Or+tuObTVHMLh8FcZwfb6Jrz+B3afIoKRXks/b2f8R3XgNXSyXlMSMfDLSgXz+sg3phb+PiOD/JT88BC41w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761142899; c=relaxed/simple;
	bh=u+qJVWyapenrodgmMyyh5sdeoJQIHo+UHZurPNrBBEU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mZAoexYKR7PTOkiWKQDQrUjpK0ejsDlln0mX5rs9VWUaDDN+dahMVcKE88wp8Ketk0gH6O3vNvLzxaZlD4PJAfbT9N/12eGTtmxTFPxb3b0vYzmT42Y/rP3Heqgw/AMEGwIogVxqQU615bUPgdnM1sU6wntYesPBlPggLkrIndk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dRW3mYGu; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47112a73785so53148375e9.3
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761142893; x=1761747693; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oNnZ9HXiG4U5oHkge6rfZLR0dPMVP9tD5A0n1Dg/8XI=;
        b=dRW3mYGusnM/Qmj4Y0elfbsCR225co2bFqnzUeMQY71kxiDG6gIjouamI/pS8dbXZd
         PIEdkZzuejc/uJtv2auEXrEzBp2mVsXK9G9CUW1OLiXLnO++rxWZBrlcfJaduayjiLlg
         liqQDgRSbp9KKzUUbT8Ue/lYFtvanYlxk4nlzHl8VJy0XY1ABF1RsSkA6ENVigxnxD9o
         cmAUvpQQZAs1XvwHhnir1OXKqiDmtzh2MUcUEYtgwwg18EuuGR2I5RmUSbCMRXZA01U/
         xqlASVgBaV4qcyybRNHDTXbNpj6fwTAB24HY410dsaFcLiPPv4KwgNSC9suYdITcpus0
         L8Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761142893; x=1761747693;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oNnZ9HXiG4U5oHkge6rfZLR0dPMVP9tD5A0n1Dg/8XI=;
        b=G9BmsIcn8Px3GUXIXwdnngPCsJNEpCSoe49R4+KSkpCeSQVmpG0pEkaJxnNBEWPxlX
         8ttz7gTBepn6K53K6lh8LsD+Va9z4NjgqZAx1vh/BnN3zL6UByf+4zhyMgRM46qespsc
         UnbHWAS7jwrCrmyRHkl+8IFhNvMItHdL5PwKDHLL/Yu9Av9x6gzmkG7JPX0pQcmxcg0e
         ceLU5GhenWQ5PMg1yxj5IWxryrj1qClk3Qwd1IYgtqsZX9H4gnXZeWftqHEcDDDfAJKW
         jFztVlgQzlMX7S2vlWBVnwta+SgjpIIpgp1yc/3Zo/u3dUblMKZo/oOqYYtEAAGA8/Oq
         RKzw==
X-Forwarded-Encrypted: i=1; AJvYcCUrtCGGu2xWed2ueGc7m7ElSTnEjbMNXHTqaGn9VxlDJuz/b/U8RHJUz1Sij8iOThprKGxtGL9/J1Gu@vger.kernel.org
X-Gm-Message-State: AOJu0YzQzmTGWxK69mB+eBA/xZ5dg6kcEMol4tRL77GMcBdA5mdh7JfC
	BMgC4a0fWt+1JVZFeW27UI0p6hNl1lo97knJURxenpPFnhtab2fbi4O9
X-Gm-Gg: ASbGncsCCwbH1vlkL2j1YYKa/hLVlyF4zB+zEt2CuG4K1VkQj8gU7puODLaw/NKMv7u
	ydlFXOo/G5sqg4+j44CZkOokRsXwZGb50i0BFPsmqWy+K7mNtUkGrSgRsDZp6Uf3nBMBuBXNaEB
	TC0qTBXj1FDrPo7QbMrD0KSlhypnmz3KzcGs/4d4eSxbQXARVEuwVcWwf967f1b0Dyxxhn6BE6P
	TTk32DJBvN8Ng+zKhHFpobBIKKHHETtYDonaQVJuFL3KSImxD3q7e2e7sfPOynJZHJMtdr22AJv
	2O2eySqhZkh8z7UKZXz3ba2tKATqJkcw0Scq5IQIeOXs74pcGXMEG6WVYj+xWmfB7XoL3fmnI00
	17+efrNPA779tqqTjEkFENP9hsv+8ls76CM0Uzde72T+w4zX/NuZ5gJs+5Re5eV3lvXaO6xKRtD
	8sfn9uzGsFZpkb
X-Google-Smtp-Source: AGHT+IEnXWlJDCOikv9Trvtrnq+YEjaVZ6eiwnQHVodVjHM0wnLfQoIbLbeHL/Nmsexg12AMq8heQQ==
X-Received: by 2002:a05:600c:518f:b0:46e:4a60:ea2c with SMTP id 5b1f17b1804b1-47117925e1dmr162394545e9.37.1761142893340;
        Wed, 22 Oct 2025 07:21:33 -0700 (PDT)
Received: from xeon.. ([188.163.112.61])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427ea5b3d4csm24803518f8f.19.2025.10.22.07.21.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 07:21:32 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
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
	linux-staging@lists.linux.dev
Subject: [PATCH v5 06/23] staging: media: tegra-video: vi: adjust get_selection op check
Date: Wed, 22 Oct 2025 17:20:34 +0300
Message-ID: <20251022142051.70400-7-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251022142051.70400-1-clamor95@gmail.com>
References: <20251022142051.70400-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Get_selection operation may be implemented only for sink pad and may
return error code. Set try_crop to 0 instead of returning error.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/staging/media/tegra-video/vi.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/tegra-video/vi.c b/drivers/staging/media/tegra-video/vi.c
index 7c44a3448588..856b7c18b551 100644
--- a/drivers/staging/media/tegra-video/vi.c
+++ b/drivers/staging/media/tegra-video/vi.c
@@ -476,15 +476,11 @@ static int __tegra_channel_try_format(struct tegra_vi_channel *chan,
 	fse.code = fmtinfo->code;
 	ret = v4l2_subdev_call(subdev, pad, enum_frame_size, sd_state, &fse);
 	if (ret) {
-		if (!v4l2_subdev_has_op(subdev, pad, get_selection)) {
+		if (!v4l2_subdev_has_op(subdev, pad, get_selection) ||
+		    v4l2_subdev_call(subdev, pad, get_selection, NULL, &sdsel)) {
 			try_crop->width = 0;
 			try_crop->height = 0;
 		} else {
-			ret = v4l2_subdev_call(subdev, pad, get_selection,
-					       NULL, &sdsel);
-			if (ret)
-				return -EINVAL;
-
 			try_crop->width = sdsel.r.width;
 			try_crop->height = sdsel.r.height;
 		}
-- 
2.48.1


