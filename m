Return-Path: <devicetree+bounces-225005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C076BC9884
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 16:35:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5A0671A60B6E
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 14:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 679252EB5DF;
	Thu,  9 Oct 2025 14:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="iUOJFunX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDC1E1A3029
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 14:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760020530; cv=none; b=bbrFp/uYC/SxB+PFSg2f4/Byu7Ypz0jUeCGQRf/JrkYD+gSrX0ZIZeJUnYCIhUACWiyycJVT4gJFxaYt+ECW+fl/xdyq6EVMvCF24f9S02RXlf0tTKF165r6IH9DtH7yrtt0+Q4evq9BaCjfUruhniYhlkGe2fDXz3pw42/H0GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760020530; c=relaxed/simple;
	bh=DC16tUoCJGqdCaZCKlPxmdAri6UTD51Yi97Na91Z5Ew=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GuqM8gz1OuWpXWknPX2G/UqC+ncxFZZqUJ+i+tU95DuQvCLuVWf8zqAqPHjx+0RTfIpwq0JRX2Lspy8NRI9vYPD6cj0RAJE3NcM0dhb+ImGY+jKZENxikdM//kt6JTpFTDTV4soGfNuPPbxAVt0OwNrL7Ddc77jJTka1YM8jQto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=iUOJFunX; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b3b3a6f4dd4so190901566b.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 07:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1760020525; x=1760625325; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dlfDjHrcdfKrGBvOyIQt5Lw/+fx5LVzeszJPP8D8ljg=;
        b=iUOJFunXX6SpHyVuun4dkJclFtfb1WyfNUpQ5owGJ6CZcnzRnViYgOfk5RanHIleDq
         q62E7zUIr0c4aL2dTS7YmBOEL+2F64uqojTFXrXxrzExreY/JMJXDw3raieN1HagAXug
         GtbC8Y/6xdiVkcU6wqIMGJ/+kDTEgjj6nk8u1yGY+PR03Wsz0WDwNAYCWNNeYpSnAwP3
         YImnI30IWQpOQv7V8b2stA/3r6HhNoL6hdDC0ZoayJxRGwz1bDX0mfqUvB62+t2WspgW
         WCUVmX1VVgJ7hMFyJAgxMAxy/dvs/vxLixPdk8HvDo+3PxHVX0Rkm1/23U4o421o2z/L
         OsgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760020525; x=1760625325;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dlfDjHrcdfKrGBvOyIQt5Lw/+fx5LVzeszJPP8D8ljg=;
        b=BPQWJTEuK0exBuxCQFdyp+82qCzKibOxd3Rq6DIQIjHIcMb/QwHr41SHVEFI/WKHqV
         2rXYY1PVauQXr7FtvOXOqtOrhXABQUyyqbXWmrYDxfDQ99R7+x3b8OIKOHPpdjbquAMs
         1tLm/GKB+uTakNdVD6QsdkcQDQcJKWTIh2ZURb9N4/+VYasd6A//eLGG1mcJvMQ0uBqG
         lCqy6Gl573SCd4gqQSkGdMh7EBY6DxC7lJpQhXuPiCw8i0NDdKVPC1SGGSqsx5o5TuUZ
         CKsSucbl3XgguhNJkkJ+ckPk5YVQX8mtXl98voLlTFp5UrlTjgf+UuG7SUIQngGO22yT
         iy/g==
X-Forwarded-Encrypted: i=1; AJvYcCXaNq45mfW3TgVJSSiL80WRYFiVXFJNSbSLbXn4qO1LM04q6/0unt5Xvo4zyNWO3v/FDA9omAWa6p3h@vger.kernel.org
X-Gm-Message-State: AOJu0YxXfGliAs9ZdWKvFpwZzhuQInxRsAyXX5W5QuNtkLPz3+Ni4taX
	3/WG4aIIRgFbNlp/Djg1DN4w1pHnPv5QantEJFJTt9ibdxhPaCf47s2tbwFMx+Z8vZY=
X-Gm-Gg: ASbGncvpzMA3EYkLi5fg/vcg4HTMx4cYB00XBdgiPUNZH/6OfBe8xAqReUMf4Ff+Go4
	zGGf8VKCJ/MzwfZQPEkF4sNhSar0fFFRN/wd3y91gY7F+D6HEQKyDPmaT71JBkMd/P7rnQvLDVX
	h+HGwmaczohVryxjcokDMqXrHw6OQekqpf0kE7mcV2Xy87HEPefwkX9hZt+FLS15nbwhjxXxPuO
	XfPNtlyixeQYhPZj9cofeX1PX21McIi7/nHQ/x5J4kmKRr0YZ03hrkbXbI819rM9bzhh40Tt8Mk
	mNRkJI4ohSr+7c4Ci6lBb1PUX4jYwTQdW/hMJnbNDk6fCihuw1umiiXBpm3fBg6PzhOu3R2e/pl
	ajKGBvAgIaNlery6VxDTMT/9Rnhke7P20IrORtZuLAZTV4hAtSnTocsRoimLYhOKkpeNpqGgncW
	bDAPifaIBQ2Mcp91Qaedl67LOkuJ/P
X-Google-Smtp-Source: AGHT+IFr+JayJiI/I7GtD5Am8LsYRvZTBEDWCg7gaW9yIcgYbX0jYmBj1aCqR/Li886um8C6i2SVAQ==
X-Received: by 2002:a17:907:3fa2:b0:b45:a6e6:97b4 with SMTP id a640c23a62f3a-b50ac7eab77mr881171466b.50.1760020525167;
        Thu, 09 Oct 2025 07:35:25 -0700 (PDT)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486606dc84sm1885797166b.45.2025.10.09.07.35.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 07:35:24 -0700 (PDT)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Date: Thu, 09 Oct 2025 16:35:07 +0200
Subject: [PATCH v2 1/4] dt-bindings: media: i2c: dw9719: Document DW9800K
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251009-dw9800-driver-v2-1-3c33ccd1d741@fairphone.com>
References: <20251009-dw9800-driver-v2-0-3c33ccd1d741@fairphone.com>
In-Reply-To: <20251009-dw9800-driver-v2-0-3c33ccd1d741@fairphone.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 Daniel Scally <djrscally@gmail.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760020524; l=839;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=DC16tUoCJGqdCaZCKlPxmdAri6UTD51Yi97Na91Z5Ew=;
 b=81CtBnB7VTEGormq+HKUETLhCoxzffogHTSiVoP2MaW1g4FKdg9qmwnA68EPe1FVZMWa+413s
 odfYumDV0MPCcgnPpB7UaEjgGXjtymenX160dy74x1jX2K9F/LfIf6m
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=

Document the Dongwoon Anatech DW9800K.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9719.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9719.yaml b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9719.yaml
index 38db0764c0f70ad49295dcddc182b7e100a68b29..8e8d62436e0d0c4f9af9e52262b23881abd37cec 100644
--- a/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9719.yaml
+++ b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9719.yaml
@@ -21,6 +21,7 @@ properties:
       - dongwoon,dw9718s
       - dongwoon,dw9719
       - dongwoon,dw9761
+      - dongwoon,dw9800k
 
   reg:
     maxItems: 1

-- 
2.43.0


