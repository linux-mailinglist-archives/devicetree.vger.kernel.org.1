Return-Path: <devicetree+bounces-75397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B4C906DB0
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 14:02:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D78C9285909
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 12:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E214148FEE;
	Thu, 13 Jun 2024 11:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="aokvGDiZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBDE11465BA
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 11:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718279943; cv=none; b=e8SJKmyRUbg26j0QpIC3XJzcoTuSMbjl6fZ325NxWNUwRA/hNnsX+b7QVMLIFcOz4ivxxRG2dzDso36+bCnjzP1ppfLHzFBFYUoBRg0QX0BjUXrJKiFejeqDPqayzOOEbotdRacCT4r9LCKUOGAuV2B+3ZZ9fM1SGdpmZE/Xdlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718279943; c=relaxed/simple;
	bh=aGMUvbThPhErp+EwY2Koq/zGZ0Q5K1vOzP1T9cIWhEg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=JrupgL9U1e34Z6i5VsxD0HcJEYM2j3gVjostWbOdN4XuQlcAWEtP7dPMl1HWPd22Vt1nwbC8nno/oaJPDZf35NqpMAuKwZLC6BAxf/g0fzLnHtS2KBfeWWlNpBmvc7fQbbIS/DoTBpxZUbsHB/FDpJfI7F7H3nUnhwjZOQQp//4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=aokvGDiZ; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-2bfff08fc29so755327a91.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 04:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718279941; x=1718884741; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RUVmviAFFyRpV6wsk/iZMwYGlufLkdnnaJs4+woFVo8=;
        b=aokvGDiZ7R49yCL7e9bKFnair2Rjtjek8KNpIwd/C6EWJv8tq3xHr0y6xDSnHcu4SM
         BbQ42klbHkdMu/DbpuA6S3rj6P6HGOQJFQkGcFIcDuk2XhITDUYXkTkIAQlOyRVZvPYi
         3uXq0Nb7Fl2VOg1O/E4u/9CA7Q1f//AkxXsNA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718279941; x=1718884741;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RUVmviAFFyRpV6wsk/iZMwYGlufLkdnnaJs4+woFVo8=;
        b=HvmSPWKyzIt86YpRmev8EWgsaITfzuBKC2kP0L7MY9/1+3mAqHI/zpezMYUB9dfuO3
         J4XfDlmRJ/t6bUUSFHNZfEytggioJzg3/iUZcwU5afdQWkTjZbu/KpmT3Wb/dGqza3H+
         h9F16aKnc8rjDkvBvHqHzZiSle1FJMXr4RCRLzRkZVuNhjaMlqz0SWHKiTacwjZaQny3
         lo95kZhV5h38CCf00n8ml19jwgYzd2c0wILrcxzI/6R/iBM1R/yv8gqu6z6/3xsGb3i4
         WsKGMyawXF6sNru1DtkAfeLqzHYbb+sDUKvmNHmt9Tds2y2ObeHNudRQ/Wz84OmXgCgh
         tCxw==
X-Gm-Message-State: AOJu0YwHzAiKLkBO1ZnFi3qU5MqFmlHwlC7jojDBy2LSwDlsufQACCYI
	hJ9NVOQJDvafJb/aTR/P9J9Q8apSzAQf7PRBzcckt7zqCOz926vsLdszVrSEbg==
X-Google-Smtp-Source: AGHT+IEHLpea+Zt5sKXcwFlof4YCHcKNSE0NrMfoPexcEsFoAXB4lMjoBLC+b8lATP0BTCtDNShiCg==
X-Received: by 2002:a17:90a:6b07:b0:2c2:1d0f:3c6e with SMTP id 98e67ed59e1d1-2c4a76d3ac0mr4601923a91.37.1718279941007;
        Thu, 13 Jun 2024 04:59:01 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (60.252.199.104.bc.googleusercontent.com. [104.199.252.60])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c4c466c3desm1453505a91.46.2024.06.13.04.58.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 04:59:00 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Subject: [PATCH v2 0/2] arm64: dts: Fix the value of `dlg,jack-det-rate`
 mismatch
Date: Thu, 13 Jun 2024 11:58:53 +0000
Message-Id: <20240613-jack-rate-v2-0-ebc5f9f37931@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAP3eamYC/23MQQ7CIBCF4as0sxYDiNS68h6mC4LTMpoWM1Sia
 bi72LXL/+XlWyEhEyY4NyswZkoU5xp614APbh5R0K02aKmNtOog7s4/BLsFhTftaXCt9ag6qP8
 n40Dvzbr2tQOlJfJno7P6rf+UrIQSViNKfexQS3PxgeNEr2kfeYS+lPIFs/5GK6UAAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.13.0

According to Documentation/devicetree/bindings/sound/dialog,da7219.yaml,
the value of `dlg,jack-det-rate` property should be like "32_64" instead
of "32ms_64ms".

Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
Changes in v2:
- Split the changes to two seperateed commits
- Link to v1: https://lore.kernel.org/r/20240613-jack-rate-v1-1-62ee0259e204@chromium.org

---
Hsin-Te Yuan (2):
      arm64: dts: mediatek: mt8183-kukui: Fix the value of `dlg,jack-det-rate` mismatch
      arm64: dts: rockchip: rk3399-gru: Fix the value of `dlg,jack-det-rate` mismatch

 arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi                | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
---
base-commit: cea2a26553ace13ee36b56dc09ad548b5e6907df
change-id: 20240613-jack-rate-c478fa76ce19

Best regards,
-- 
Hsin-Te Yuan <yuanhsinte@chromium.org>


