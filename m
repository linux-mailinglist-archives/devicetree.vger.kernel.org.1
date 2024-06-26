Return-Path: <devicetree+bounces-79969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCD6917807
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 07:23:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 013F11F21B0F
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 05:23:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ABAD14AD0A;
	Wed, 26 Jun 2024 05:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="tjEliz8k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFFF314D28F
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 05:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719379372; cv=none; b=L0kybRc/qABUF5he1qCWe8IeUTTHzWXroBXrV52w/skogNX+ffo1ziAYo3treYP4lhu2+f5YzTdA4oljX4HO3i0GBpX7oHyFmUMUInH2AyaheFTJfdkUVIDc1rR2BO5TpCh+vYEJsldpn4qtLSIrm/WiMUqIl45W7OVD2Ug3QXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719379372; c=relaxed/simple;
	bh=a1RYsDKd+Gx+HCpHgxZ5Xhox98CuqWhGZ4anTJgU4uM=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=CKxARQARbBBACpNFAUJOmMRb64uuC5uqRZwZe+iY0HhQcLss6dkQ+1eRBK7ycgAWk0bxRYh0m6ZZ/cSlDKHBDLtrWha89wpJo+y64hLJIGWcY+QUHDLoUc9UdRJ+dHf1PySmVkZEjGKg2S/tZDZKXKf1q9ety/xzQ+NSYi+MXL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=tjEliz8k; arc=none smtp.client-ip=209.85.128.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--aniketmaurya.bounces.google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-63548741556so116165877b3.3
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 22:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719379370; x=1719984170; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=f9jiGA4+KsY6Ibr0v4fJPXxwYeKjydGEY68SB+90XCs=;
        b=tjEliz8k/aBeWBIstiOnYmauF09IXgcyDm2KyzgyY8DintuekXfAn0j10jS/DfkFzE
         3H61gASampAtvggGgb2KmW2pauA+ai3r1GLoReBQB0wBNHwrnEcoBmOxhucp7x25Nvvq
         /2FiAsxh2QcU1xF0Db/6DBRtHcEjjeIZOiikAHTyj5iaFzDhSGMKQnhtN2IiLv67XGk2
         mfAS2Rsn7B9V1tKxhWUJKfwnsV6yS0vdwlEC003h5p/TOfa/4F/+yI5q1Rum/wJHUsOD
         gXmI8NCSu3nxGxNTpwCkXoT1Vv8hvfjRKM6RmE4j1Ta6NSS440vOOXEMYYkpphw7Ph6o
         I9Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719379370; x=1719984170;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f9jiGA4+KsY6Ibr0v4fJPXxwYeKjydGEY68SB+90XCs=;
        b=pj0L3WHuaMxOdCdI7edTdr2IBN+lDiyTuIwxNJ31Ufmc7pDprodpXtlPmVD2V6tFbA
         esn+dsLpkZ/lls2t0LAfmhaj5DNAPQmIMiuPtE3gms2SD4Yfz2y1tqgrOQxLM5PwkYJX
         p4jp4cZB9xbo/3WA/OUkpd0K6Oq9rZfMEH1ktjPbPcw0OrfuU2WWwHbEsxVf2SwwXlKa
         gi6NgDpGqm7AyBsTTFSUbAP1XuL0TFeyC7fnu7Q0CvXFasYTLf8QneY1pUY0zpT2Uc1w
         Z+aAIJAcOB1czcXKm9hNNr28gu9pmTKsFhD3QdE/h/BguKL9JMwCVRkr8N1w1oJjz6Vi
         w8CA==
X-Forwarded-Encrypted: i=1; AJvYcCXKFXsMg0VQjaVse4wyACYbYhOTWraAg6n6JtPkCFZesOHoAPlEn3/9RIaZwBV4dHOd9kV6meDjfeNcEOvy+qh0lfSi7UYkX1vHPA==
X-Gm-Message-State: AOJu0YytmDmulcENZcCmpnKouhKodWtaF2BxFhkaIkwjk2160dB+4O9U
	h6uuCpI/YGdWvbi00BCeQHuyORZeCNylnpGDUW0qAm/THENERm6+O245mZRzUJraiBMtjH+qmIA
	Rqg+1fIsFtvly2TYAlJGXw0eo6A==
X-Google-Smtp-Source: AGHT+IEPyF0Z4bQtX59+73aKE0baxBQClOtOaCiHEOoPqLHrjgfI1SuTNVKmjRu5xi+hpp+RcAEoWSMDOiLVvyIP/vE=
X-Received: from aniketm.c.googlers.com ([fda3:e722:ac3:cc00:4f:4b78:c0a8:3387])
 (user=aniketmaurya job=sendgmr) by 2002:a05:690c:3602:b0:62d:a29:53a0 with
 SMTP id 00721157ae682-6434041982bmr1536087b3.7.1719379369752; Tue, 25 Jun
 2024 22:22:49 -0700 (PDT)
Date: Wed, 26 Jun 2024 05:22:37 +0000
In-Reply-To: <20240626052238.1577580-1-aniketmaurya@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240626052238.1577580-1-aniketmaurya@google.com>
X-Mailer: git-send-email 2.45.2.741.gdbec12cfda-goog
Message-ID: <20240626052238.1577580-2-aniketmaurya@google.com>
Subject: [PATCH 1/2] dt-bindings: i3c: dw: Add property to select IBI ops
From: Aniket <aniketmaurya@google.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Jeremy Kerr <jk@codeconstruct.com.au>, 
	Joel Stanley <joel@jms.id.au>, Billy Tsai <billy_tsai@aspeedtech.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Aniket <aniketmaurya@google.com>
Content-Type: text/plain; charset="UTF-8"

Use this property to select IBI related ops in the base platform driver.
Otherwise the driver defaults to return EINVAL for any IBI requests.

Signed-off-by: Aniket <aniketmaurya@google.com>
---
 Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml b/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
index c0e805e531be..08c8ccdef691 100644
--- a/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
+++ b/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
@@ -25,6 +25,10 @@ properties:
   interrupts:
     maxItems: 1
 
+  ibi-capable:
+    description: Set to select IBI ops.
+    type: boolean
+
 required:
   - compatible
   - reg
-- 
2.45.2.741.gdbec12cfda-goog


