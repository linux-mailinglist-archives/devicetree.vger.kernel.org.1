Return-Path: <devicetree+bounces-66408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BE68C2EEB
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 04:14:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EFF9C1F23493
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 02:14:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA1741CD3B;
	Sat, 11 May 2024 02:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="EQeBCrz9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87910224DE
	for <devicetree@vger.kernel.org>; Sat, 11 May 2024 02:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715393635; cv=none; b=WQOcU9F4TP6Mw0ZLDqyGOh347coup7F9qc0K1OIm94ug5mtR7tMdbCujEy0shtlbBbnZ2KNZ+IrnCTaZa8vRhIn1lqBhVmHhZTok8ArzEfTarBpHLwyL18tomnQa+pJCy5ewcIAypkPLUDseGd+HdYWBxtmwYxGFlLANSWypGbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715393635; c=relaxed/simple;
	bh=Lgw7uRnvgXG/u1WaCmK4tejmRfIXensfiTyFmxlWN6A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lVQJMv1soOz2Xtp6JQO8lMLWI+nN/F7+3iV9VC0TVwrDS4jVd+CuIN7SRKg1ryOFih9V4c1+vrdJTZ4ciMkCiPCQqVm4LETIt2PK3NbbGSgqVP1niIjYT9tDeBVQtL9tmik/wNib9qse5CU/uNRIfjqxRlg/Smwj5QgzjJJytQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=EQeBCrz9; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-5e42b4bbfa4so1542100a12.1
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 19:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715393631; x=1715998431; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bQEZxsQcXbFNRud/9tqyFt4L75N7/HmoYq1WCcfvWzY=;
        b=EQeBCrz9V4dk8Kmag19lw8qAWhRTUomvrF6GWK/xtBv2vtpULe+NC1ihZdAIdbYlj6
         5P1ONCuotKJh5XQIZ0BIQL2ky2s2Mpg2q10cnFC7j3I0+hQKT8zh6bHfs43SeKL+agUs
         tAr5KHWHVOCCitpKVelP2M9pDHTPEHb+0EhyQwVYUjaK6ZcHmSj//w/2aOAGFLIA+JKl
         gOmQN+VqSwVNSy3Y/ezTXk8YjOXNPBZeHhyVgw3y8hKVSWKiNFGDMwY5XHplZtDevG+7
         zFttA5XPTuUqD9GyRgrCr3lVnCRFI19GDZTWEp4qTUjxlddqCcl9XmduBXDNHPWTvY+p
         9yxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715393631; x=1715998431;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bQEZxsQcXbFNRud/9tqyFt4L75N7/HmoYq1WCcfvWzY=;
        b=wASxr4maO4VS6KkE/VtqElaWsViZBz9PsMxC9/8WEMwWeASZxlt8e0SaY1ftXqeedz
         KknjhgpZxFg3+V05h9PMXGfUSHwlha85K7Xn+kO/s6USd6HUuSf93NIrpkPXyDGlpp9y
         stg4U9yj3EsoZc3NO2suixznj5WWGATw9o4j+1SYokqWYdrIBvsenccF5EpuISA7f+97
         mcxg+f0dsbm2OozuOULLPDAjYdb2gUFxgu8EtXVzjRuL7FpskoH83t+9qO81cyymLvaT
         fmYihXmA8acDeAXVW22ez4DHTNt6Uwa5bLgWLTxSm5Umuk696sLSuwU46wLyRJF3cxWQ
         h8jA==
X-Forwarded-Encrypted: i=1; AJvYcCWibupbSkOGLEOeADlbyXQhxxhjHIYuZWFiegmLQeVKBluYrQ9VH9Wv8cYlbWkdXNKiW2XCaXSfG3We9TOJXLBNfauCVIXbo3x6bw==
X-Gm-Message-State: AOJu0YyEqkV3TsCydMRsV4JiAjKMSwZzUYSPH+MxmlkdOxo/Gbiz4Bx5
	+ddvR5U4MA3akcvexeaIDQsWpo78NQzOoDiHZxTfMWfO7yvM3MGexs4xBgW1DVI=
X-Google-Smtp-Source: AGHT+IEEE3ACyk/EL6MmyTvESNdeNwSQRq5IWG++U8g1EgwnOiinICb44Nd5g4szui9OS+r/6cpMgQ==
X-Received: by 2002:a05:6a20:7fa5:b0:1ad:6c5:4ea1 with SMTP id adf61e73a8af0-1afde1b6fcbmr5902294637.41.1715393630666;
        Fri, 10 May 2024 19:13:50 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2a9d9acsm3680340b3a.90.2024.05.10.19.13.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 19:13:50 -0700 (PDT)
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
Cc: dmitry.baryshkov@linaro.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	xuxinxiong@huaqin.corp-partner.google.com,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 4/7] dt-bindings: display: panel: Add compatible for BOE nv110wum-l60
Date: Sat, 11 May 2024 10:13:23 +0800
Message-Id: <20240511021326.288728-5-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240511021326.288728-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240511021326.288728-1-yangcong5@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The BOE nv110wum-l60 is a 11.0" WUXGA TFT LCD panel with himax-hx83102
controller. Hence, we add a new compatible with panel specific config.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Chage since V5:

- No change.

V5: https://lore.kernel.org/all/20240509015207.3271370-5-yangcong5@huaqin.corp-partner.google.com

Chage since V5:

- No change.

V4: https://lore.kernel.org/all/20240507135234.1356855-5-yangcong5@huaqin.corp-partner.google.com

Chage since V4:

- No change.

V3: https://lore.kernel.org/all/20240424023010.2099949-5-yangcong5@huaqin.corp-partner.google.com

Chage since V3:

- Update commit message.

V2: https://lore.kernel.org/all/20240422090310.3311429-5-yangcong5@huaqin.corp-partner.google.com

---
 .../devicetree/bindings/display/panel/himax,hx83102.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
index fc584b5088ff..baf8b053e375 100644
--- a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
@@ -16,6 +16,8 @@ properties:
   compatible:
     items:
       - enum:
+          # Boe nv110wum-l60 11.0" WUXGA TFT LCD panel
+          - boe,nv110wum-l60
           # STARRY himax83102-j02 10.51" WUXGA TFT LCD panel
           - starry,himax83102-j02
       - const: himax,hx83102
-- 
2.25.1


