Return-Path: <devicetree+bounces-85644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE2A930ED4
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 09:32:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B5929281359
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 07:32:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13A191849C8;
	Mon, 15 Jul 2024 07:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="TttcLTpE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F468184138
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 07:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721028737; cv=none; b=Zru0N+7Bs8Naol+9tmCvMscwgTiLJ2T0UpsIaT5xM+Wu0yZ9htXiOwnyq1qcMd0k3wG5iPDr0BoKlo/ztDWpqw9gvCLY+x3G5/+pmeFtnPlk2+56J/D0cwK2dCJcI0oQfalMdvAyx6c5hyQBXRfqg6vPrk45ALx7pB5S0MuY0wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721028737; c=relaxed/simple;
	bh=kcvtxIEDXgyleJRD582N/TZL9b2vFR3po4BqgM2tRr4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=Z8ZvlvqAQlPZVkvdB5g0qWOs4d3Qvf0BLrLktIF/PbipA0KSS/q5RHY1fb5wiDPzGSQHoAx3ecjwecj9Jh0WDA9EZ2fHNqIgS4LrpFvxjOyRhsuVrZOCXWJSV5aXj6kxM5/4xfebl5nTpbD7eX4hqeGS0z7pgk6/8zKk1OJicdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=TttcLTpE; arc=none smtp.client-ip=209.85.167.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3d6301e7279so2682628b6e.3
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 00:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1721028734; x=1721633534; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6CswuAcA19Pr7Qir263TiKyjJHE6FeE4xJ8Qxw0DaMc=;
        b=TttcLTpEmcsQsejAI5qdVW7iIZ5kRf8gVozFl2G1ohr/15Z5t5xjjVHsGU4c6THWdC
         kQlRU2lSTKQAr1H3oq33XwihXgu9994J50+Nhae+hdotdrOKowLDA1i4NAgJhk/fHcIX
         JM9Ple7VJ5hUCW7BNXr2eOjgOpgtvb/qPIBdbjE+Mk1YckHsekjUor1xlcAjCOjq9SPf
         m02i//iKF8nNcQZL7Vo0ELarxa8cD50r+/VvXbUNMcvo53r/L9ZUiNxAHivdaOFCrS8I
         3swSj+KzlevoZw+pQweaaVwf1KawjvvBVNUzNoJwbZQ/TTQSc/t1ycJWzeEgPLSrDc1N
         WNEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721028734; x=1721633534;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6CswuAcA19Pr7Qir263TiKyjJHE6FeE4xJ8Qxw0DaMc=;
        b=xRUbGlTq7kUOZjXkXF+aCemqyl4R0L9QpVsBaoa1nA44FPrbGnbqwKwE/UqxCnd+QL
         yfr3BTE6CORpiaVaE0+s/rqL0ydwdv356uVwPDT9+V7j3RSpftEEUzPoQvbVpglbAmcr
         Fbgc6aG1kOZSe34EOBwikj47Fu1iPXj8ORMmNL7RGvQNxdWETKOseekNQ9G78kGU/V4G
         viaAVSnbfJHf3pd6nMP74BbOZxvI6DQ2T3zZaf/H3axP5sR9DNSakxaiTqlvwoJ+sF+k
         ctua2Emq7cV4UUO0zOVUdO8MXdGe2UfO9tIeZ6NjNrk9iajWUaThqLn8c2ebXSASV1ge
         06dg==
X-Forwarded-Encrypted: i=1; AJvYcCXBQT0PyBk5YgUwFzLcrAB3+ET8UD7iFa5zpTH3pdsn1nUfQ92U/9hmOMbsi7CBCm7GJPBRqsrA+4Ub60JC1s7traTR+D6pFw86sQ==
X-Gm-Message-State: AOJu0YwukZBuLkik46US/Sh4QFXlD+SKnyyKuc0GPH2D2ojU0AtDJPaa
	R9grIguspuc7+OR6xu1pHL+S27uzqfhqM25QcUkcyH3nIsRucnnotjUQfjc9C1Q=
X-Google-Smtp-Source: AGHT+IFbm0uDFRsPJa0Nz1krahRsJcjD7FdB5iaBEphN/CcHhS8Ov/LHN0lN+9E9KFXJdEPbJMBvlQ==
X-Received: by 2002:a05:6870:3287:b0:25e:1c7c:3de9 with SMTP id 586e51a60fabf-25eae7efbdcmr14809287fac.15.1721028734517;
        Mon, 15 Jul 2024 00:32:14 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70b7eca75a6sm3654464b3a.164.2024.07.15.00.32.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 00:32:13 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.co,
	linus.walleij@linaro.org,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v2 1/2] dt-bindings: HID: i2c-hid: elan: Introduce Elan ekth6a12nay
Date: Mon, 15 Jul 2024 15:31:58 +0800
Message-Id: <20240715073159.25064-2-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240715073159.25064-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240715073159.25064-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The Elan ekth6a12nay touch screen chip same as Elan eKTH6915 controller
has a reset gpio. The difference is that they have different
post_power_delay_ms.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes between V2 and V1:
-  1.  Respin the series on top of v6.10.
v1: https://lore.kernel.org/all/20240704085555.11204-2-lvzhaoxiong@huaqin.corp-partner.google.com/
---
 Documentation/devicetree/bindings/input/elan,ekth6915.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/input/elan,ekth6915.yaml b/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
index a62916d07a08..bb5910460811 100644
--- a/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
+++ b/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
@@ -22,6 +22,7 @@ properties:
       - items:
           - enum:
               - elan,ekth5015m
+              - elan,ekth6a12nay
           - const: elan,ekth6915
       - const: elan,ekth6915
 
-- 
2.17.1


