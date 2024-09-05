Return-Path: <devicetree+bounces-100492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D445396DDD3
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 17:20:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 634FDB241BA
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 15:20:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62B3219FA90;
	Thu,  5 Sep 2024 15:19:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="OG90m6Ec"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F07E19EECD
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 15:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725549542; cv=none; b=l921Gy1tbjixQZtw7rwVwPX29oxAma68cqho8Wx9vW067uzhVoFEaKDTsOnJjmkcH3/UEqXVoYKzgzWC/JpgJwEBAqvviZRIFWEPj9E1DsslC/HCGeNp4vbIVgJpG6ufBNxf2mF2eDiArO7hvjTK3opYqjmcQ8qdI1iIPUFod2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725549542; c=relaxed/simple;
	bh=+u+kBqfT5sVB+pgsFs493wfhD6zF/8fwgOOVhk+vQOQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sYHPH1LL9h18Bhxum9NX6G87+KOnXO5WNNBkKJsQVqJJlSF5djBzEsI/zoocw8CkqcoBc0i8Knn0eM6I79Lmg9hGYX3hL7SAMwoirxvOzMcxCMiagsg1kec5gF2PYuduxHmpF/8lmP+TrOB8658Pfw34TJS9wFLA5grjslzpHKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=OG90m6Ec; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-42c79deb7c4so7466675e9.3
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 08:19:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725549539; x=1726154339; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ugfbUTgXER9ktB6DH95mWqrkHVrS6OETUlZJp5IMaqg=;
        b=OG90m6EckykyxpfIygSNoioRBx0sZo+ytJ1w4LE13WrmFna9pgOC2Q28H+M03cSwk8
         bkx3V0jCFMvJi4VwQ7+Jez6KuYqNBn7xjxU97uPpRreoGDe1dqrubboeLXX6TLoLjNzj
         oBSvkMcZwFEfS4JBZEGkEpuO1WBSlW0MiCczuxpohkq7OEIATluSfozs7JHx5wy0/w/h
         5bEjF9LF0QdZPoAAIMXeCYdAkkAUlZdPNVDZ3lkXDCFZjn9Zc8gRyg/GkB/8k1Od1ALa
         6v8ZwRBUprrfeIyfWSw0ZMKay5DjF/PQoNdenjKYCJqqd/pQ2CyiTe7nQrhrYNbNJfkO
         FPlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725549539; x=1726154339;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ugfbUTgXER9ktB6DH95mWqrkHVrS6OETUlZJp5IMaqg=;
        b=A9Fln7zMvE9CIx25Z5jsqiigV3VC1UWnU1oYRLJbUY64xMZk+yzpfqbKDIAK5tBjLP
         s7wU5dVCbhh5Hwk9DgYL7p4RIHt8nQbnadnqmPA6hT+8JNwFyoBe0awyoqLjIOng6dwl
         MdyxHAFyTPfyBF2wZtDOu5CngdPDNEmzdYysZewa4fxxxGzXUABAePbuDWcEjSgNQsLH
         GtYYzyJVLoN2+yVAkLs0wrEMESTbBxFcD3IgqjUl0c7Po4WmLY+fQ2bMHgJ6xa4F4yK8
         8y2klEAQjDSEYBWhpm2XqeDsgx87s4+gb6qRwyPNpnDjyigEeNt7uU3vgPCoPGBxPm4o
         eefg==
X-Forwarded-Encrypted: i=1; AJvYcCV8d1tU3+TnTrWIU+EsjTTDZxDiKotSlLe3spGNZYDZq/iL04KsLLhKFi1xLjJByHGaNDh1WxZKr1zS@vger.kernel.org
X-Gm-Message-State: AOJu0YzqpaMWUzzvifA9l8hYUgkhmUAmLOp//SX3cIEAGG4FfvmJlt9r
	rVTIXTRQeNMHVTPw451hqvAH+tjQXnUfoiYZAyh8wPxKGPaxh3l1as1sfQUBqN0=
X-Google-Smtp-Source: AGHT+IHTvRUw/LubhoyB2Z9CNuafV/MrTgCADVJk/19v/j2hC2bB+gVGpGuNn3EZdHWvkvbBzx4dzA==
X-Received: by 2002:a05:600c:1c0d:b0:429:994:41ae with SMTP id 5b1f17b1804b1-42c7b59e84cmr109958235e9.2.1725549538880;
        Thu, 05 Sep 2024 08:18:58 -0700 (PDT)
Received: from [127.0.1.1] (host-95-233-232-76.retail.telecomitalia.it. [95.233.232.76])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-374c1de81b2sm14031076f8f.30.2024.09.05.08.18.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 08:18:57 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Thu, 05 Sep 2024 17:17:35 +0200
Subject: [PATCH v2 5/9] dt-bindings: iio: dac: add ad3552r axi-dac
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-5-87d669674c00@baylibre.com>
References: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-0-87d669674c00@baylibre.com>
In-Reply-To: <20240905-wip-bl-ad3552r-axi-v0-iio-testing-v2-0-87d669674c00@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, David Lechner <dlechner@baylibre.com>, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.1

From: Angelo Dureghello <adureghello@baylibre.com>

Add a new compatible for the ad3552r variant of the generic DAC IP.

The ad3552r DAC IP variant is very similar to the generic DAC IP,
register map is the same, but some register fields are specific to
this IP, and also, a DDR QSPI bus has been included in the IP.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml b/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
index a55e9bfc66d7..c0cccb7a99a4 100644
--- a/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
@@ -24,6 +24,7 @@ properties:
   compatible:
     enum:
       - adi,axi-dac-9.1.b
+      - adi,axi-dac-ad3552r
 
   reg:
     maxItems: 1

-- 
2.45.0.rc1


