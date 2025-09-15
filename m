Return-Path: <devicetree+bounces-217208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC97B5709D
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 08:49:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 439C216A5FE
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 06:49:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C100628C871;
	Mon, 15 Sep 2025 06:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="ztqs7/tJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA76217722
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 06:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757918939; cv=none; b=jpAMZwbz1/S0a+iLDeM1+Rv50pRPFSluq4vosXr2Ky+0S7W6uCXSiczSZSkT4rKj1+1ClvIasLVZB9CcXpSccQazibrgu/Ai2hrplKbC++IxGAy4ScbjNiIx7Fzvu6OUniDKh/FCSZQXx3t6PWjkV9bdBA+l3l6MNETNFK3bc9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757918939; c=relaxed/simple;
	bh=1drSnzrbgIy1jdrQOPrFNMW+P1BL3uQW7eCgBejKEJw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=eiQuWOxq8js7/3VllzFcyBKGiKbFoU7pR+WpP0Xg38a3OhEcUuY7YmPKGhMrvgYObmTH7MTzbfxgfJl+vN43ewhMZGWkNJiTPK/bOuqpNH8NREDpWlSAJO06uiUmTGLLwKB4StWOeGk1fbHnDAL9JyiwEc2gcP8/XzdkXMeK5ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=ztqs7/tJ; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-323266d6f57so4294365a91.0
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 23:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1757918937; x=1758523737; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fiUtUPpKH3GTS21MnIohX80aiXP/6F0+dIepjp0LO+E=;
        b=ztqs7/tJpilYAmQFpQOrXUEw4Ihmuu5uvyv+mdXZnVWqtylvVw3aa/k0I2iis2BEQM
         ZfFenRbHA9nqMgPral+37jPx5yOng7QabgxLyNPUUH0OW69RBYry7VE9PuOMjjqCAZsC
         T5cp+wHMTe297c0b9qMSNqO460rYCDEvfn4meqWZ77KOvhhi40REqnvxeSk1Xt+Zy7K+
         YWlqF5c8+aEbSORzpb70np6OFV9tgGiIqMjSTRULJbTVG6mKIz1A27SSB4sbNliTLZXn
         K6yajmBF0y2UTn3eFCwAyhuCPS01ou0ju6iU7Qaqvw+PL3G83Ph+eRrPQ8QMottphZsT
         OFTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757918937; x=1758523737;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fiUtUPpKH3GTS21MnIohX80aiXP/6F0+dIepjp0LO+E=;
        b=plgndKpkZdj0LOP2oaiTiufLDAMz1qrj0pJRS4wYrgzy7YB8RiggYYOSY2BzGuGP06
         kVqNQNV1A7mf6M+Jx9CJaWuf1L20GOKxOQt/2Jli/fufkZsB/+RwT9o8uDQFHObMdZVe
         wetVKXXQQIomp0g1zHHfqTHwCIyMJaQaJyU72HUffA2a5C8ogKrfo+hN4/aESj4r1mZO
         ahuo5iXSR2eB3RanxATsS7nUGPUxgP6ZdMtDpucxhKP5G+ndCCfVv8nv7v3fXeFrOkZ+
         6+eHUalQq+ujJn6vJ/cZeeAEzvikqBiPeHPjWMgqRbopNbBpd2ItdhdNyPbL4ms8TNty
         imwg==
X-Forwarded-Encrypted: i=1; AJvYcCWjGEWTaRWHxIRnChQo5OlAHtzsiJJv9WVU6yHjc9aLLy9EbwUEl7ewTjx1KWoLwpsmaDaSt46k8b3D@vger.kernel.org
X-Gm-Message-State: AOJu0YzP68rCYnAiYNXNXbnJAg6IdNugt/oK/ZRmSblCpETzvnh+nmoQ
	ogoKjQaV0yr0moWHkmXj0O5di+JxtgrxwKaH0NWdSPxOqY26RDQfcIBzv3MmzqzwZsE=
X-Gm-Gg: ASbGncvzckY99rVGIZnqBDa+kzjRr1pze4mmOeW1wnKI3GDx4Kc7M0Rap0HzhswNwBq
	ojHFs7NzHII0ThLQtd1wTXzv9US8YZE5KPWT0mBHrZuVYUhyqAou6U27CPoN8FBetlBBtzBmzQ6
	MJf1m7N+IDfNH9t6g5CJ0iwMs2jD1YUeA9nU/HipFS+CM9cWZRD7XZfCDwhHtHGagoOOuCXJZP1
	WAdB7Zt0gG8PwaVYiizmm8AF71elQMFIicLVvL2aGGGPtFq/qZJuO10s6jdM5tpNozH5N+8NWYF
	Vkk8XKMIy83bHxZ8xq83t7HjegPKpREmXPxioycIy64lwJ65HhmOiC95qOKrJH3K67Cn9ZW0WHE
	1m5dnuKmP12htIoPndCyIhSQ+0VClsf9Z7Ot8gNwmKE1CmZhFl+KOWtVDNMU9kjNHnrsFuA==
X-Google-Smtp-Source: AGHT+IEtIy+Hi5uuKxac8S0s2Kwt21jsETnnkrvc/UZLJ8TEi/PCM+nYkRL0KblqTptdD8le+aZKYg==
X-Received: by 2002:a17:90b:1d0c:b0:329:d50e:2f10 with SMTP id 98e67ed59e1d1-32de4f5cde5mr11445513a91.22.1757918937437;
        Sun, 14 Sep 2025 23:48:57 -0700 (PDT)
Received: from ubuntu.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54d3f4d40bsm929084a12.0.2025.09.14.23.48.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 23:48:56 -0700 (PDT)
From: Zhijian Yan <yanzhijian@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhijian Yan <yanzhijian@huaqin.corp-partner.google.com>
Subject: [PATCH v2] drm/panel: Add support for KD116N3730A07
Date: Mon, 15 Sep 2025 14:47:14 +0800
Message-ID: <20250915064715.662312-1-yanzhijian@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add panel driver support for the KD116N3730A07 11.6" eDP panel.
This includes initialization sequence and compatible string, the
enable timimg required 50ms.

KD116N3730A07:
edid-decode (hex):

00 ff ff ff ff ff ff 00 2c 83 10 01 00 00 00 00
02 23 01 04 95 1a 0e 78 03 3a 75 9b 5d 5b 96 28
19 50 54 00 00 00 01 01 01 01 01 01 01 01 01 01
01 01 01 01 01 01 09 1e 56 dc 50 00 28 30 30 20
36 00 00 90 10 00 00 1a 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 fe
00 4b 44 31 31 36 4e 33 37 33 30 41 30 37 00 2e

Signed-off-by: Zhijian Yan <yanzhijian@huaqin.corp-partner.google.com>
---
Change since V1:

-Add edid in commit message.

V1:https://lore.kernel.org/all/20250912131104.1726775-1-yanzhijian@huaqin.corp-partner.google.com/
---
 drivers/gpu/drm/panel/panel-edp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
index 62435e3cd9f4..2c8536c64c19 100644
--- a/drivers/gpu/drm/panel/panel-edp.c
+++ b/drivers/gpu/drm/panel/panel-edp.c
@@ -2046,6 +2046,7 @@ static const struct edp_panel_entry edp_panels[] = {
 	EDP_PANEL_ENTRY('K', 'D', 'B', 0x1212, &delay_200_500_e50, "KD116N0930A16"),
 	EDP_PANEL_ENTRY('K', 'D', 'B', 0x1707, &delay_200_150_e50, "KD116N2130B12"),
 
+	EDP_PANEL_ENTRY('K', 'D', 'C', 0x0110, &delay_200_500_e50, "KD116N3730A07"),
 	EDP_PANEL_ENTRY('K', 'D', 'C', 0x044f, &delay_200_500_e50, "KD116N9-30NH-F3"),
 	EDP_PANEL_ENTRY('K', 'D', 'C', 0x05f1, &delay_200_500_e80_d50, "KD116N5-30NV-G7"),
 	EDP_PANEL_ENTRY('K', 'D', 'C', 0x0809, &delay_200_500_e50, "KD116N2930A15"),
-- 
2.48.1


