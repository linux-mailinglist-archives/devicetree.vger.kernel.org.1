Return-Path: <devicetree+bounces-61396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0B28AC854
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 11:04:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3EEAA1F218C7
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 09:04:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31D9084DE0;
	Mon, 22 Apr 2024 09:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="Wtb49YIB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF7713B7A0
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 09:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713776637; cv=none; b=kIM648AR85ffQviOFYFTQTyWnIsiSTRCDsJiEi247Pp6jfaxG8JlMrLhUNVmLmztbPxwnDHetxRQgmyNaaDwqoiRlFei1T7zx8aZjdcLEKlrGHxnIytnt+X80C6jd1zObUK4PxeHJdra+7LAtbG3o5a+Nki75S5MX3db13XQt8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713776637; c=relaxed/simple;
	bh=shFP/YdmkQxd969QjulRf+AjCiOMVl33thnZR82jOLU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=n3kNCD8wjoEVnI+DII6oqttcedt4S91+i6sQgtW8Gh6THBRaMiARUqNWJLiAoc6DWcKLMTQT0LjAgEcKvXlmQi6skDGPlrxRDpRUzcV2J13Y0KzWY9r6YI8ZQxEJD6iqec2loB2+fLcuqnzIN4gaVLQj0euhnOA2tXQiRMizngI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=Wtb49YIB; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-22ed075a629so1580781fac.3
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 02:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1713776630; x=1714381430; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j4yhfc/0Xvld8cEQVKIWw5SRb/C5QHjhTbLUB/06J8I=;
        b=Wtb49YIBTtxNkGuRwmMdFgvWgEQz7iMkDd/eBVljkMnIfa8JJpJVmZQE06l0JOUlfT
         iqIsUkXjkrsSQ43vc9cOd2xsm8jt+IclVtqsoBZAozH1trWbpIkUfoXdO5Fy628PeGBB
         BwKTw2HrkzMK7WDnBH2tUXRHWaFbNMAg4vVVsnBtEQ6irDHuAkIUioT9IEsd+YUdSKwi
         HDrIH4xThj+PzSlZEBYHIuyrk+GGOs16uIpU+fuT7WXCOKAxMFDGM4aEp9yrx9kDdyYx
         4QOv4wKMbUVBCM52kzdLMMVEWGtOcaD3JXw5sWNWuMMZBTWzV9Gc2Wou7ApjpGWj1vBa
         FKSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713776630; x=1714381430;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j4yhfc/0Xvld8cEQVKIWw5SRb/C5QHjhTbLUB/06J8I=;
        b=QAOIYDpesW3rDf1ol7LvhOBB3Q6lMRNuBCD3aCX52ItTu4xNgV3Mf6qs35Qcqa5S47
         b2REJuxeWRSsD2IVaS6MVX0RSdzoa+S5kddmK/K144Z5/5f0liniUwIIuCn2k0g1SaDm
         0sBYHitKPFNvxRVyCu1JZPrfITEYTltTwVec7gacqqqres5bjRVN4ZMB6dQFJggLNvgf
         s2EbrsV1dN2Tm3Vv2uFPvZRw4Uk4t+iKQ7zA1JHqywMR0Oz47zLfJ3IIPQefFKKIjUnQ
         Ksa1v1wGvLinHRjN6vAO8Ve9YIcPelTvHkUL3okcsFUsbw2MxHp5fHHhSw9yZcOd+ZC8
         Ktwg==
X-Forwarded-Encrypted: i=1; AJvYcCVSZMxXpGj7RWAF38KA919fpTJwAzSep8jyR/ukbOhLpeXPDHWw2L+AR4UDKD+mD59wDYcYx/eeFLe8LT6rsUKbMo1z9YtiQZLEDA==
X-Gm-Message-State: AOJu0YzwyLa8UaX+1zV35ptiXfkgG9Jg5ztzqHOQEEut3J/lowwrU6OC
	SKqTJtZh1SL3OJnDJ3KiyVJPHx3yTYJ/Iyf53PxML39S3ICAoZpuwXXM0/MJy40=
X-Google-Smtp-Source: AGHT+IEukExEYER3CO2AOrEmi++wHZk0VIqHFMC/hyUrUwPFKlp5PfARglTzWPr3wYUxAPg7cEj6cg==
X-Received: by 2002:a05:6870:6ec6:b0:22a:b358:268 with SMTP id qv6-20020a0568706ec600b0022ab3580268mr10954092oab.25.1713776629937;
        Mon, 22 Apr 2024 02:03:49 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id by42-20020a056a0205aa00b005fdd11c0874sm1919137pgb.64.2024.04.22.02.03.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 02:03:49 -0700 (PDT)
From: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@chromium.org,
	linus.walleij@linaro.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	airlied@gmail.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	xuxinxiong@huaqin.corp-partner.google.com,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH v2 6/7] dt-bindings: display: panel: Add compatible for IVO t109nw41
Date: Mon, 22 Apr 2024 17:03:09 +0800
Message-Id: <20240422090310.3311429-7-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240422090310.3311429-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240422090310.3311429-1-yangcong5@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The IVO t109nw41 is a 11.0" WUXGA TFT LCD panel, which fits in nicely
with the existing himax-hx83102 driver. Hence, we add a new compatible
with panel specific config.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
---
 .../devicetree/bindings/display/panel/himax,hx83102.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
index 86c349bbbb7b..780521aaae9b 100644
--- a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
@@ -17,6 +17,8 @@ properties:
     enum:
         # Boe nv110wum-l60 11.0" WUXGA TFT LCD panel
       - boe,nv110wum-l60
+        # IVO t109nw41 11.0" WUXGA TFT LCD panel
+      - ivo,t109nw41
         # STARRY himax83102-j02 10.51" WUXGA TFT LCD panel
       - starry,himax83102-j02
 
-- 
2.25.1


