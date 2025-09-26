Return-Path: <devicetree+bounces-221920-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 249BFBA41DB
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 16:21:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CEEF23AD80A
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 14:21:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16D232222AF;
	Fri, 26 Sep 2025 14:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qdk9624X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1359921CC49
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 14:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758896362; cv=none; b=CbwKpeSQZokFgiNJbbcXukRkuRiZlr2buXyw8LUvun1/ZdCGeX/bHVGHsd/w+0S2bggwJE2p3YtjwJHIZvO2dDrlp2RhtyGk2TiEgO6Jkzrnw9ojGi9ccRC46mySCLzqJEQMnBKsNez0VcEA+Vw6Rfpie4rDz5Oy1DqP6qExI5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758896362; c=relaxed/simple;
	bh=6/JQRqBUjkyOthrpHav3m3u/rhn4XRG3F00Nzd3iX7M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Xp7psDWRiWZno8YyangchPWRmhi5CHr6XekMEPmqaQkx1vSWChaOTuqTovYLxVLp1GvEb3h6i6Qc6i1aEyWbUoPctvjpJw4juqWAiIjnd50zVH4geVzW7bdE3m8Z9t3hEgbhJHVs+WWrS8nRMbKO/QudDt/ckisspKZV1r0wclk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qdk9624X; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-4dce9229787so12592781cf.0
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758896359; x=1759501159; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B7RhkLG3JZ6AWWqhGvapjhsuUBsTMt1EMhEwLlIwGFE=;
        b=Qdk9624XheBy8q8fKYUANY0V5dF8L3t56Yq3iVWKsKT6+g7pCi3AChpD5g6arDP2q4
         KswmDsFhZjbAlrlv+bqPWFQgIZvl5s8g347+dWsfiBUMPN5sSKj5WTS2v6s891s3Vhjy
         Cb9nN8fIStc4KFcjYtRyfI4fwd1i1Op7ikFQ2yRIHJqNoewhWtF763XaZb+2VhG8FyI6
         Lk2n0T8zzT3SYzdQR3a+QYSDBmU3XAwXOaqr+x9GiZMititSL7G34yEUI2pMRzidMHZc
         pZ2PJVMy1IpZjm6htdHrTf607v3RRfi+xeBAwc8wZ4gnTx67F7V9Ki7Bd5Vq12aQSe+9
         NKxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758896359; x=1759501159;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B7RhkLG3JZ6AWWqhGvapjhsuUBsTMt1EMhEwLlIwGFE=;
        b=EQXhCS2eqdulJvvvpuB8eOBL8J5XJbWEgCllX5R6592/BdzOq/25A6yr9RYweBF9FI
         ZzTn7bHouX9tJZXNG6fR1rUPZqlpWJ2VpV53OegE2tKtQJ3VKFjRKQw3i/i1XQCpOzUs
         UvLbBHTpXr90Q8z8W8CA/UMT5X1qPg4/x9rID9MAi2xNru0eOKvJD2gSYsoQU3veINQN
         90vRMoce6vzBpkNtoYKDKnXh/8Ix7x80KMNdFIckOP/U4guZaxKC0zJotOO1EkghT0fQ
         1uiawuxKxHEc6m8PTwrbizKwqipKHzpv3ijCwksYNWpz0pa6U5zac9WutIGv0PXQNsBR
         NBYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVr30/aEkq3rzTx+meyL0G3MV5S0f3MOHqcCliuNNevEP/Q7m6Aj1yrShGdLqP77ncioDYMCBhdjFmi@vger.kernel.org
X-Gm-Message-State: AOJu0YzmR9b62SxnZo5IWxq9F64LkOx3c9M1+Pv3mwKQ0phN2GTrB/Uo
	SSgRWTNZyxl2lizDibflSn9U/Oe15Lk+1aUTXzmZCmWCvQ4KTebSYwfe
X-Gm-Gg: ASbGncvNHYU3THBjpfLSS2a+nkEao/A279o+F0VZue/AuuFQZLYHwYvSnFVY7ls1gjc
	2rgTQ6RBgkENvl5n9QVM6l/skuG7gEEjy/WwLF7eZjb2YzS1wF1h4hfwZ+rKeaVN+tUCLObCzBN
	Fv4u3G6+3tKW8i5uVYj12SlnrcbPW+g50wrN4/emqGBSbDVtNuwAm60aMq3ZQzrbeUtSFuEG9ao
	xUSxXHTrxkStHVvBnUKyqBqbbxhKTAfC8fDPjhotiN8yf/PMnDhT16+URuYZfEW9/ZFyFegXR4g
	Dm1krc8jY62zUPKPdZcTcs1V4rKjoUocAYOUZSxDF7Z65JDg/Mx1U5CwPvbn3FGTIf2JzBpyKyS
	5zbYXQMxVjcA0DZwHPWi5dI7k/AtzG87rCgkNp8NSFofQl1pkbGN1Y1RU0o2Lk1BaKKrc3+lk9E
	6f0O0=
X-Google-Smtp-Source: AGHT+IFYT5zqtCX6jEUpwYjGWGW6f0XlIeWfVAPlXuLdY4tpOyCPjaihGRB/xqEcUQS2/YwFMG0jYg==
X-Received: by 2002:a05:622a:4a87:b0:4d2:be57:c380 with SMTP id d75a77b69052e-4da4bfc0801mr99026071cf.62.1758896358460;
        Fri, 26 Sep 2025 07:19:18 -0700 (PDT)
Received: from localhost (modemcable197.17-162-184.mc.videotron.ca. [184.162.17.197])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-85c28a89bdfsm287474585a.18.2025.09.26.07.19.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 07:19:17 -0700 (PDT)
From: =?UTF-8?q?Jean-Fran=C3=A7ois=20Lessard?= <jefflessard3@gmail.com>
To: Andy Shevchenko <andy@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 2/7] dt-bindings: leds: add default-brightness property to common.yaml
Date: Fri, 26 Sep 2025 10:19:03 -0400
Message-ID: <20250926141913.25919-3-jefflessard3@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250926141913.25919-1-jefflessard3@gmail.com>
References: <20250926141913.25919-1-jefflessard3@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add default-brightness property to leds/common.yaml to establish a single
canonical definition for LED brightness initialization.

The property is currently defined locally in leds/leds-pwm.yaml and is
needed by auxdisplay/titanmec,tm16xx.yaml. Properties should be defined
in only one location to avoid type inconsistencies across bindings.

Signed-off-by: Jean-François Lessard <jefflessard3@gmail.com>
---
 Documentation/devicetree/bindings/leds/common.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
index 3e8319e44339..96bd7fd0f053 100644
--- a/Documentation/devicetree/bindings/leds/common.yaml
+++ b/Documentation/devicetree/bindings/leds/common.yaml
@@ -173,6 +173,12 @@ properties:
       led-max-microamp.
     $ref: /schemas/types.yaml#/definitions/uint32
 
+  default-brightness:
+    description:
+      Brightness to be set if LED's default state is on. Used only during
+      initialization. If the option is not set then max brightness is used.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
   panic-indicator:
     description:
       This property specifies that the LED should be used, if at all possible,
-- 
2.43.0


