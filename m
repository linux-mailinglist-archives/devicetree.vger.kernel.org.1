Return-Path: <devicetree+bounces-60556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EB58A9A5F
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 14:50:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 14FF61C21016
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 12:50:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02EE71649CF;
	Thu, 18 Apr 2024 12:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="TCVK3aOm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D931635CD
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 12:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713444513; cv=none; b=LF41R17jXNeREFAwRulnLnNcLuaen8fvMDqR633734nE9it5Fxkh4CrtUE4XqT8EOZX8YjArj96ZMx29tVwYQty842XHh0ElihGPBlkhgSU26VwbmLxQgwFwkhZkK3b82XAUjaAAwJIMNU5/2Dndgdo+obmxZ25L+m630/gTcWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713444513; c=relaxed/simple;
	bh=rF2Ft4/jo+8jlUv/5SD9PoDryldsp2ptl9ihYrt1QWM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=Lky/7jhV3nSty/F1UQFyW6nN/xsbwZ8U54/NLpjWbNgsU5idsnILwy1nA1+b9vCebNT27/p+sdIcRljUZRVkEJaEAmKISOG7L/1+YSbUlVGFDm7nRuvGBouoneegWk4QEs4YO/1Eho1ZgIN7Jtp1/y8Y9Pe1jVX/IOkm5dvc3YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=TCVK3aOm; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-2a52c544077so675937a91.1
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 05:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1713444511; x=1714049311; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uGDsLEb5BghVT9qGOK/loQQdaX4v11rqejOU2LWrdN0=;
        b=TCVK3aOmdgk1QDN4DOjxln8ICe57v4T3xJmJCqlxQuA5r/629scoVShEpSnxEPqFXK
         TxemM9TIyBAmmtwIKzWFEotJYhgnrhbcmHIvEzeWYrjBEahhQsuc0/xEdfKZ0aIi2f6D
         BhpMP9KOvkCYt6DzMduxls8SjTsadw9U+GWrnsOifA/EXlGYr4MESqcdu4EGPAAoRcBQ
         C/Ep4OYVx3mRuP4FzBF5Cg2QLHSATsl518cwG/ApFfxxQOrrrM/Tdi20fq+9fK2WpaRP
         fJEsu8bQV8IiBielY+uljGLH8vktZahIZLHa09fV+LQ9JU+x/dJoZX/nDt0ZOiL9gEHK
         iSCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713444511; x=1714049311;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uGDsLEb5BghVT9qGOK/loQQdaX4v11rqejOU2LWrdN0=;
        b=AczOfGYIjdnlxSUwD6lbW8GHZPhVe6/kghNqBrr6EQn5pGNczOYqNwiEkG/IIUsW0o
         Z1AxMN3Xz8XSvmoC4QL5bt/r2l9AKRzne8Fd7rLj3L8YDPO6ZtQuPb9DXf/7S2AylWbK
         kx+CGGgA346831r3vb23D1JGxO2AVXpC24R1ElJPsdCzVuw1xBL1UxCOGNHyFTWj8QN8
         RqBiqjx7t1/jcYr0q1QJ3crxBH0OlIStlOARdg41+unvtPXNgoJ2jrtsTgsFQoZHIarV
         gBgGRyprxRMMPamW056ejV+wVWhdxLyg4hbUvyuA0DJNMHkVtVVmvUez08696OGuvkrz
         7n8g==
X-Forwarded-Encrypted: i=1; AJvYcCX9IQtf/9AZq2zxMYp/k23Yw2YMNqXk5CIuuJ2P7tJUXzLtdxiPRiZPcW7ylFG3TFUAzM6JBhK05fVg8u1ZU9YgpV6L/Cn8ulzt8g==
X-Gm-Message-State: AOJu0Yz+zrZzKP8eWzPgH6xSkpTlHMaVmFnk/B/i+gszR8Jwvgv5tuTn
	4CFACbRDlC999lNfjQAOnZt1yAYo/cKvmKx3BeB96o0B5FXAhdW7vvNL8Uxdk+k=
X-Google-Smtp-Source: AGHT+IFp+L1hQ3/71MRE5nC1up3U+FLG4bqHqA86kwgOkj44rzc6HfpwUAixZbMftqOKs33+zrh95Q==
X-Received: by 2002:a17:90a:88d:b0:2aa:c2ba:3758 with SMTP id v13-20020a17090a088d00b002aac2ba3758mr2382354pjc.42.1713444511114;
        Thu, 18 Apr 2024 05:48:31 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id ju24-20020a170903429800b001e3d8c237a2sm1423509plb.260.2024.04.18.05.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 05:48:30 -0700 (PDT)
From: lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.co,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v1 1/2] dt-bindings: input: i2c-hid: Introduce Ilitek ili2900
Date: Thu, 18 Apr 2024 20:48:14 +0800
Message-Id: <20240418124815.31897-2-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240418124815.31897-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240418124815.31897-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The ili2900 touch screen chip same as ilitek ili9882t controller
has a reset gpio.

Signed-off-by: lvzhaoxiong <lvzhaoxiong@huaqin.corp-partner.google.com>
---
 Documentation/devicetree/bindings/input/ilitek,ili9882t.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/input/ilitek,ili9882t.yaml b/Documentation/devicetree/bindings/input/ilitek,ili9882t.yaml
index c5d9e0e919f9..5063ea2c8375 100644
--- a/Documentation/devicetree/bindings/input/ilitek,ili9882t.yaml
+++ b/Documentation/devicetree/bindings/input/ilitek,ili9882t.yaml
@@ -19,6 +19,7 @@ allOf:
 properties:
   compatible:
     const: ilitek,ili9882t
+    const: ilitek,ili2900
 
   reg:
     const: 0x41
-- 
2.17.1


