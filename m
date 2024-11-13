Return-Path: <devicetree+bounces-121614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3E89C7959
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 17:55:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 702E72825C0
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 16:55:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74D431FAC4F;
	Wed, 13 Nov 2024 16:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="EBHpjLZQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B0C139D19
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 16:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731516928; cv=none; b=FdYjX7hd9ejXw6uAwppgVCCEvN4261fMKiXO8d6sD8t87UCEUAkYF/s3UP4VQ3Nr0atDUg681/NotHnzEY+5H1epCBW7P/SIRq5uBBun59qoqYSTY0mHiusmc8mdD0/1U7iJr+REQfszyAV1+hQ7MMv1c6MVIcxlGsjER32YUBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731516928; c=relaxed/simple;
	bh=/Tjor6KKk4xz4p2UNnx1L3Hj+WRdCr3/2Kvmk9fys44=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=fXkRgnKKG8HLu7FFo0YacxKryN4IkR34FXyt9qC2HNRMMxLqIml9BS7rMf4yYRaMm12bOsox4XufuarMW6YXMhrq/SfYyh6peGN4rEQjmLDpqG/kb944/sAxmy6OxSnqJfL6BRLm0EP7pF9oAq6lAZa405fixho9kfQbXMxHimE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=EBHpjLZQ; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-29066daf9e2so3113434fac.3
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 08:55:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1731516924; x=1732121724; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x1zaQxPIwogRJjHGN9609O4s9HbrZpDwx8BCPdVZsJE=;
        b=EBHpjLZQXj+/e9GYrmZ4S9I0jW3osiycHkIQghrBVC7gZamF8+BeHKvn6J/5pWoV6p
         Ex7mFXp15e6Wnm7A680mbc0sv6oZB0yTP79m1S0YCEdVfhR+v8w6Bt79hTgTReYfGdWY
         s2QcizovsOdJTuyyQBiwau1UTV4fFkHhpCNu4snMETQtlVRX+/dYJpVuMHx1pQcbWhMf
         NNKOhaDDN+Vl6tB5XOnhUC00NZiwV/2Qo/s7qTLjsa+nipMDhigjeuVE5CuPqWYo3J+1
         T6Pua4rviHOwKCPWkWNvxLSIhKUyJGSGZggJW1NldJ1/BpUtsRtmCu7F6cHqSZw9Ovg5
         JCvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731516924; x=1732121724;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x1zaQxPIwogRJjHGN9609O4s9HbrZpDwx8BCPdVZsJE=;
        b=m+tXFToZ/MToM93tiUE0rLvAlweUeLUn3he/fQQ5Ww0Fsq22zgZolTEWYrngpvNoB4
         Y3Hao6kOMC9lyvWO+O1UVLEQ8k6jsvfRRkHgKJFxKUUORMTCSYKXs8QgJX4LhGmol9mn
         6DF3reft6dwS/bSDuwOLVAVy4h5Qq67pXsiXoCfR92jwSi18U6aOHCBB9Lf+kDZzqVu9
         nyQQt3osffPpI4xsakx7s3/ky2/NsEj+8mPDbRWK85dbfHE7YxXS2CT2LEFOaifuqDq8
         FzDUlOc+ktWY7DU732VOdxyY9LFbim4MMS8azC5+nL4oAaxYTk6say1W1E64+VonKusM
         lJeQ==
X-Forwarded-Encrypted: i=1; AJvYcCUCAOC6UWXkgSPVH7fLgKaI9+PQnsYJ3KVxrn/ZrwJtGUrs2l/Vn25xZHp32D8aNFmjS3NZyPvt1JNj@vger.kernel.org
X-Gm-Message-State: AOJu0YzAHrXR2y7Ukl5SnnaGxxwLH4wcTn4A3Px/mmhu0OwBZfi2f+83
	byX89UWsW1VCvtMS8UzBXs+AWyZsG0qOsMLS0GabNeM6Clu3qABfMcWguZZkUmA=
X-Google-Smtp-Source: AGHT+IE1xuqZj09odVIcRE3lFsD/PKcU5+G/h9X7w5dwUoGWic8F3HSh6Ho0wCSYo0NNczzVP7u5Hg==
X-Received: by 2002:a05:6870:6107:b0:287:c014:c979 with SMTP id 586e51a60fabf-295600989c8mr17393653fac.13.1731516924484;
        Wed, 13 Nov 2024 08:55:24 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-295e8fe5c61sm873432fac.23.2024.11.13.08.55.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 08:55:24 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Subject: [PATCH 0/2] iio: adc: ad4695: move dt-bindings header
Date: Wed, 13 Nov 2024 10:55:18 -0600
Message-Id: <20241113-iio-adc-ad4695-move-dt-bindings-header-v1-0-aba1f0f9b628@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPbZNGcC/x2NwQqDMBAFf0X23IVuTBX7K6WH6K76DiYlKVIQ/
 73BwxzmMnNQsQwr9GwOyrajIMUqcmtoWkNcjKHVyd2dF5GWgcRBp4rvhgdvaTfWL4+IirgUXi2
 oZdZucM7mXqX1VGOfbDN+1+j1Ps8/vhsUhngAAAA=
To: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Michael Hennerich <michael.hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Corbet <corbet@lwn.net>, linux-iio@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.1

During review, no one caught that the dt-bindings header was not in the
preferred location when the bindings were created. Move the header to
the correct location.

---
David Lechner (2):
      iio: adc: ad4695: move dt-bindings header
      dt-bindings: iio: adc: adi,ad4695: change include path

 Documentation/devicetree/bindings/iio/adc/adi,ad4695.yaml | 7 ++++---
 Documentation/iio/ad4695.rst                              | 2 +-
 MAINTAINERS                                               | 2 +-
 drivers/iio/adc/ad4695.c                                  | 2 +-
 include/dt-bindings/iio/{ => adc}/adi,ad4695.h            | 0
 5 files changed, 7 insertions(+), 6 deletions(-)
---
base-commit: 9dd2270ca0b38ee16094817f4a53e7ba78e31567
change-id: 20241113-iio-adc-ad4695-move-dt-bindings-header-d6922ef7d134

Best regards,
-- 
David Lechner <dlechner@baylibre.com>


