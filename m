Return-Path: <devicetree+bounces-42757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C221858657
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 20:47:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F62A1F23B6C
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 19:47:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C109C137C49;
	Fri, 16 Feb 2024 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XaPJPgGf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B44F1353EB
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 19:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708112853; cv=none; b=SbyvyxqnK+jUPTK6cESV8K9AQxq8+taW9JBXPls6OerMghm7Nk39RZhAD/dtcvRJQmfyNPkLDBUxtfD4w959uAjhx2uc1gyn1gmXmCWnA7xwA2YB9vh5ICDcFpK7POOTkwDwk9lflmRqc418LBCJxHFM/1csExVP1BzoLHaku70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708112853; c=relaxed/simple;
	bh=SmhWWVRherSSU6IqXDSK9iug5x4NrJoiSZ8Z8ot0gvU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=XHiUqaZRasQed633ZnsPqlY5Ckh+OnDB/82lS81mN1LCwjgkJttZYaczIMP+TEmeFVn/PE/5rLtwsbIKbYUZ/xRYMfa4Y0wvU6S+o/p3U8imlU0Sp46buZxic0aD9gst7ryf4D/uswylXq+yg0+Ld5PrdTd+DOUb+rRZfewICBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XaPJPgGf; arc=none smtp.client-ip=209.85.167.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3c031c24fbeso1979368b6e.3
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 11:47:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1708112850; x=1708717650; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aMru+TbGR1l/T6gVtc9rPekac/11roVdl4ywF715rRI=;
        b=XaPJPgGf6+4DSb+48CZdpb/6zy2dVdfciJU9M7veAukxk21aBXcgBkaBunaxw4qfcW
         W0qYVl9gm62oIhzFnlZ5XhTja2wncdmkE1XZsIWtAaWtf1ZkO41Di4V2kxnIM88pXz1z
         6Xzh3kHXkpP51Yl8L41YMZYz6oNMWEP+inW8FzzMjXoGnnRWIh19WaLTIMH//jFxctOv
         eeX8ORtg2epRipILHtgKvNjmckzOz+MOMW0XRVIyEDvU+tOv7tVcOrNC1LXpml2IPcmX
         jasxzHnKIIr+gzmQHKew39h9Jw2d6+ueP8CXz3wt4jKll7oQy3D8kj1JlpQqnHYonmDl
         RBpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708112850; x=1708717650;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aMru+TbGR1l/T6gVtc9rPekac/11roVdl4ywF715rRI=;
        b=Tj7y1qzzAGmg77+UM96LGYhYamvbUAGXhV4HMbYEdZ0yn7QvXu7LjrB35LNehi2eIl
         Y1mxjwKIEboTbmmxVgmHlsXwoUxMf3WLyw+m7lDvuJr6rXcH2ahkMBgc/JRX9ZB/so6f
         F69pexa4UCtfXLjo1ZQaWEGuo/XexbxxcmZvl7B5TvlOsRd7FOrN1ecnmV0D6djvjEA+
         bEBGup6jg0lFmoDXkfQuLGbRu6K8U9MM6Af0VyK9Kl5EhntgLxMiL/s4TuCWe64N33jv
         +XsAGyBv3E2MnLv23jsFwhIokBY86NHprZLC+v2ejavpSW3iF8+ZXZWwSmEKFEYZciRA
         FZpA==
X-Forwarded-Encrypted: i=1; AJvYcCXpK4sWE71Iu+Cu22JCNEHCNBBqODKlENjC3sTSmHvSya/r4NufnL/5bEQkWMUVFpi96R7xVhu06ryH8f2Ln6wowuwZ5tHRIQSJPg==
X-Gm-Message-State: AOJu0Yy8qa2V8v5bM8hc+vUEHIwWdks8B3+p5BMHIvQCbpVNd0+vAL0r
	MRzAhw8RBOKaJLwzrQfJmfkCbajEFZyFwRNCatNZg/rWxctJnl9hrbdkNetc8ng=
X-Google-Smtp-Source: AGHT+IGJBZrYvbYX0IG7bRqDEFfE5DW3EZ9u9PL8550Cr0O0GrdlPovf38xkFRfX8pcp2zGtIU7kIA==
X-Received: by 2002:a05:6808:f91:b0:3c1:3d7f:5363 with SMTP id o17-20020a0568080f9100b003c13d7f5363mr3720080oiw.36.1708112850496;
        Fri, 16 Feb 2024 11:47:30 -0800 (PST)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id cg10-20020a056808328a00b003c136d7ed2dsm83412oib.43.2024.02.16.11.47.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 11:47:29 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
To: linux-iio@vger.kernel.org
Cc: David Lechner <dlechner@baylibre.com>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] iio: adc: ad7944: new driver
Date: Fri, 16 Feb 2024 13:46:17 -0600
Message-ID: <20240216-ad7944-mainline-v2-0-7eb69651e592@baylibre.com>
X-Mailer: git-send-email 2.43.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.4
Content-Transfer-Encoding: 8bit

This is a new driver for the Analog Devices AD7944/AD7985/AD7986 family
of ADCs. These are fairly simple chips (e.g. no configuration registers).
The initial driver is only supporting the 'multi' (4-wire) SPI mode. We
plan to follow up with support for the 'single' (3-wire) SPI mode.

This work is done on behalf of Analog Devices, Inc., hence the
MAINTAINERS are @analog.com folks.

---
Changes in v2:
- Added limit to spi-max-frequency for chain mode in DT bindings
- Added spi-cpol property to DT bindings
- Renamed '3-wire' mode to 'single' mode (to avoid confusion with spi-3wire)
- Renamed '4-wire' mode to 'multi' mode
- Dropped adi,reference property - now using only ref-supply and 
  refin-supply to determine the reference voltage source
- Fixed spelling of TURBO
- Renamed t_cnv to t_conv to match datasheet name and fixed comment
- Fixed wrong timestamp pushed to buffer
- Fixed scaling for chips with signed data
- Make use of sysfs_match_string() function
- Link to v1: https://lore.kernel.org/r/20240206-ad7944-mainline-v1-0-bf115fa9474f@baylibre.com

---
David Lechner (2):
      dt-bindings: iio: adc: add ad7944 ADCs
      iio: adc: ad7944: add driver for AD7944/AD7985/AD7986

 .../devicetree/bindings/iio/adc/adi,ad7944.yaml    | 204 ++++++++++
 MAINTAINERS                                        |   9 +
 drivers/iio/adc/Kconfig                            |  10 +
 drivers/iio/adc/Makefile                           |   1 +
 drivers/iio/adc/ad7944.c                           | 427 +++++++++++++++++++++
 5 files changed, 651 insertions(+)
---
base-commit: bd2f1ed8873d4bbb2798151bbe28c86565251cfb
change-id: 20240206-ad7944-mainline-17c968aa0967

