Return-Path: <devicetree+bounces-61394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B44318AC851
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 11:04:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0FD00B20D51
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 09:04:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37B6D53805;
	Mon, 22 Apr 2024 09:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="2l4xDT7f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508DB13D88D
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 09:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713776629; cv=none; b=CeQo7UUl7HSvbzS9sTJ4x3cIYT706EOZuE+gTDe7N96V9tVRr/uvM0oejwz+3fOMm3bYdHy4uk1X99Cae+mLvSiX2JWYUrCfVvTAjoNMZaKSqri+SaKo9t8U4lq8kbh/5anBpFpGWhwRewr4Vc4lRzxoN+pmaCvTW1tM0a0uI2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713776629; c=relaxed/simple;
	bh=qbN6RcoxSrzSImtVV1YcO1nagAcU3+AYt9dUtLCWxOk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lH5s3/KoQwCpuCjp/7KGo2IhHekrRZQbEwZq+jf+W5gsnhXfS7mz4GFjB0PUdvf5e9Pb4edyva/sJ/kAZy+yezvFCflJ6dgdqOrAuc7A+Hn2MZzOrw6J+3cd10dRUlrNw9lOQ5KDCajvom+wo1SWrLCfKOR7/9taQpK/R5kx5ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=2l4xDT7f; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-23333ef4a02so2497990fac.1
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 02:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1713776620; x=1714381420; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LUQGG/clLJZnAtvPMOoTwY8ItLAOtc+n6AjmJmzIfBY=;
        b=2l4xDT7fOtOyNdGqzcEVICUkg8UFCzc1B4LR0mtRadhjSIsbBEQHPtQjlBFAoXnXY3
         wSwJDvjiKNo4pCtfY7Af3360TY1/a4ZVCjOExozRqXsCcwi4a7EIyU2blZ9AuRd2+/B5
         YfHpBdjkOwTGJDWY/91GIXkP+UPIV2VFBVfGESAN5EKzAacanBstjhGm4LJh4+gdhPaU
         kZ/znRAdSS6cC7tkTBobdtawi5tsmLj1N7qWjZQQoAqbUAR97VsMZ7czV8+pj0VY2QZx
         WkjVhzbxRZYu03QvvIp32MZ7wwpzMA/Q8V+u0gnwgy3XatFOqkyIrZHyubqcQB26hI4M
         bAzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713776620; x=1714381420;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LUQGG/clLJZnAtvPMOoTwY8ItLAOtc+n6AjmJmzIfBY=;
        b=HUV9bAbJ4/FmO5pttuQ+ftfFesb+T8K9ShxyqU08CgezHzterrhSt90ghZv7pxauYe
         VZ+KyQDgPIVEFH68HcoO7EVW2ABbmNSgIcyKbRB0xJ9NZFh4qJGBPKJJIrhi4/5fFA9Q
         iMH2vbyS3wBgYrjdUHdGRFiHQMY0Ouk9/RVO8kEvKNJb6kwNGSkSYnC53/ja1zO0cApV
         n/hzIlxPCU6cD+8Zz7tmsQP8U+1+NKjYthCYWFDeXABvGR891GNMzq4Y4slkpV3POV2c
         HAlAq/s1Vpww7HascnLQRYImxXm7CJliDDGZwUfdtCctvslPoP4CxZIkZLCcY+CTrrHA
         N+ZA==
X-Forwarded-Encrypted: i=1; AJvYcCUXQYv6KCMy4JQr2zXD0TIwwzd/nePRVz0RQ6Fd5y/AGQkGSNNPvrxj1pce7CDR8veyy8fZA/XBX6pwTpl7YkEE7TRCbe1eBDX2iQ==
X-Gm-Message-State: AOJu0YwtMvTJDFLKG1mFhrnuQeIsUhW+cfJUJjpX1l6ewLSvMFPS20or
	cu8+wLEZUYzx8AcBAKGbADhaEldiVDMm+J9rT2KK85V3zLPhY3DLHaPUUdhO0+erbcU4djYLHRW
	f
X-Google-Smtp-Source: AGHT+IEVycp3aE84ZI9v6SvOp72fnGMHJ9wpmeuHO8eo0YEEN+3cTZF/H30yn+rU0sWSJY6bMwHS0g==
X-Received: by 2002:a05:6871:50d:b0:233:f233:c3ee with SMTP id s13-20020a056871050d00b00233f233c3eemr11509815oal.50.1713776620440;
        Mon, 22 Apr 2024 02:03:40 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id by42-20020a056a0205aa00b005fdd11c0874sm1919137pgb.64.2024.04.22.02.03.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 02:03:40 -0700 (PDT)
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
Subject: [PATCH v2 4/7] dt-bindings: display: panel: Add compatible for BOE nv110wum-l60
Date: Mon, 22 Apr 2024 17:03:07 +0800
Message-Id: <20240422090310.3311429-5-yangcong5@huaqin.corp-partner.google.com>
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

The BOE nv110wum-l60 is a 11.0" WUXGA TFT LCD panel, which fits in nicely
with the existing himax-hx83102 driver. Hence, we add a new compatible
with panel specific config.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
---
 .../devicetree/bindings/display/panel/himax,hx83102.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
index 2e0cd6998ba8..86c349bbbb7b 100644
--- a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
@@ -15,6 +15,8 @@ allOf:
 properties:
   compatible:
     enum:
+        # Boe nv110wum-l60 11.0" WUXGA TFT LCD panel
+      - boe,nv110wum-l60
         # STARRY himax83102-j02 10.51" WUXGA TFT LCD panel
       - starry,himax83102-j02
 
-- 
2.25.1


