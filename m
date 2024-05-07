Return-Path: <devicetree+bounces-65423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4538BE4E0
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 15:55:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 134E11F2396B
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 13:55:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7561915FD04;
	Tue,  7 May 2024 13:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="ClgZZhaj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F195715FA85
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 13:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715089998; cv=none; b=CI0QbfEPpPV4J37ePmklt/T76XFb7OIQBqyJvyl9cOXHF9my+KNXXV+RzrahvfQ5a5w70K5RLNJYDML1aw+y48/eNf4sDAMvEE6txNdtyGazdfhdqBucyZhuB/MhUYBKMgCwLlYuDEsyX88/Mvk7TD84ExQwvi3tNcqveGwU60g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715089998; c=relaxed/simple;
	bh=7HODzZmfMnTI5NYHsgXgMT++adhv9u43VzpHj/lwcQY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NMOfQaXkpbXajwYIQHUVjYtengjvhQr4rq9pYB/w8+wbFaFxuwGAjB1bLu5QclXEtPRYztNPP2atf4BbsUhpipqwLCteBgmcl23kq/1zYdtUZASXYQW0Ek4cK7RpaegCmEl3LTfG78+q8tgZr7fNIpLYVS8ey95OZEqBFBH8DbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=ClgZZhaj; arc=none smtp.client-ip=209.85.166.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-36c809db200so14029755ab.3
        for <devicetree@vger.kernel.org>; Tue, 07 May 2024 06:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715089996; x=1715694796; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YRLLQgZNrYl6aBdDwC8zCW2rb525AGUm7KQlD+QKN8s=;
        b=ClgZZhaj8cwdgSoSqxIT4hq+wNQwgZOj5gBoZVmY9hbiNh12LS3EkdbwKQqaWaBxFM
         EWv1aRFpPkXBKC3gU85w6/WQJ/HbKbIoIUF+94urAamTdo97z6pqEnMjSGx7E2/TZatz
         yZwaHjfk9K/Che9jgdVrzHmVUJ3IFscYHZRj/MFSVll9/fyiWpTtazzKkxFshX5Vx2Mg
         rF3fpS5VuQWNdszOn5k/KFjVC5/83N5hLpHlLH9peYgxdXBEsaPTMlJoP8jvBSnTlakN
         YlNglPQBjcGHViA9hcTEGmU8mydqAT7nW2xjKFUV/C41wGeAJV7QSCbdQqeF7EZ7cmuj
         G9DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715089996; x=1715694796;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YRLLQgZNrYl6aBdDwC8zCW2rb525AGUm7KQlD+QKN8s=;
        b=TioaXDHCu3aP4ybJCJ+n9UlAlsg3MoMOSFojK8OmSIeBEIjohW68crcJtkmSH7o3mm
         6vJYT6SD2dtCnLw8DJNnziUJ3QtpTnifj/aaG9xRMQM7Bi/WDn8kVMVhlS1m5b9U76Tj
         hrXu9DqqarjSeMpjUK4HNYLU8Vi6LZJJbcagFW7tqujgOS/AshBIWEvtVQ4EOW8RiY02
         o+1Gj6FhWVwFVbe/DtUgyCTiG0Rh8J49tU5QpI4T/Xg74F0astz0EA75ENARHt2573es
         V+Bf6R2wNfe6NZ7D8CMD6lGWnf7jEiWooRSoYayz5fpHE8mkPiZoaJHE1IVyPXtk1lu8
         QVBA==
X-Forwarded-Encrypted: i=1; AJvYcCVZR/28r7WPqtJKwfhcNXjLYrMAo6B/9gC5fw0/pTFEkQMFi9rSRi9GxqjTksnuBVg0apW8RPDnFBVruXvLXsOwxVGsW1u78vl7LA==
X-Gm-Message-State: AOJu0YzhS1j0II0URH4vFMUi9DTbpU8vg/8+DQ5w5bhbmXiPAUTYUyVP
	2YRbxjhyt25nG51vpYE3wSGaOPs8Pfmzy4OvtPzaA+62jOKIFqTxCktQS5afVyg=
X-Google-Smtp-Source: AGHT+IHc4r1U7Ta+XPtKwX/5kY5lBnxwzZ+rmvwhMf42hHN3z0hGF5Zk0LA2SvP0MHmm3rHamg9HHg==
X-Received: by 2002:a05:6e02:174b:b0:36a:3c07:9caf with SMTP id y11-20020a056e02174b00b0036a3c079cafmr15721916ill.30.1715089996261;
        Tue, 07 May 2024 06:53:16 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id e7-20020a63e007000000b005dc8702f0a9sm9850542pgh.1.2024.05.07.06.53.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 06:53:15 -0700 (PDT)
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
Subject: [PATCH v4 6/7] dt-bindings: display: panel: Add compatible for IVO t109nw41
Date: Tue,  7 May 2024 21:52:33 +0800
Message-Id: <20240507135234.1356855-7-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240507135234.1356855-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240507135234.1356855-1-yangcong5@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The IVO t109nw41 is a 11.0" WUXGA TFT LCD panel with himax-hx83102
controller. Hence, we add a new compatible with panel specific config.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
---
Chage since V4:

- No change.

V3: https://lore.kernel.org/all/20240424023010.2099949-7-yangcong5@huaqin.corp-partner.google.com

Chage since V3:

- Update commit message.

V2: https://lore.kernel.org/all/20240422090310.3311429-7-yangcong5@huaqin.corp-partner.google.com/

---
 .../devicetree/bindings/display/panel/himax,hx83102.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
index 53a6ace75ada..f65b47cad0d4 100644
--- a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
@@ -18,6 +18,8 @@ properties:
       - enum:
           # Boe nv110wum-l60 11.0" WUXGA TFT LCD panel
           - boe,nv110wum-l60
+          # IVO t109nw41 11.0" WUXGA TFT LCD panel
+          - ivo,t109nw41
           # STARRY himax83102-j02 10.51" WUXGA TFT LCD panel
           - starry,himax83102-j02
       - const: himax,hx83102
-- 
2.25.1


