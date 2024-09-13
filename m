Return-Path: <devicetree+bounces-102754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F99978212
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 16:02:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E894E284333
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 14:02:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 844A71E00AF;
	Fri, 13 Sep 2024 13:58:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qhrOy5Df"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D0AB1DFE3E
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 13:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726235881; cv=none; b=LW5xmeOyrXz/AGSUwE+CY2uf3L3xwTBxL2dgUN6N30bxJGbWeepq/lgiuvMX87yI6SCec60DbqFjqtVKWtyw/fa1UXkeZsGnDlFSg/N1uPn2yBsP0M9j+LGYdPQCGRCUkfqIe4U9bLoYcwF39pHVrysZQGgqxysVjw66EBO5FsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726235881; c=relaxed/simple;
	bh=/ovmFlVD/7j+ipJY0VPXyzdNP1zhe/wqKiyGk4ajqgM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eEWOv+OLKDjDYZwFa8Dy6aiuEWH38P9rXb2Woc4SyWz9Ov+7KN97qjbvpJigvXW/TlIoc/93RCVNEtXR9AJDCS6KvGhTPz1bt9AQIDJpEYGyN3kMGFyvpFm4psIVPJTx80DdH/Z76U+vvPEij6J+yggFcYYzq7SH1+XPm0LqlEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=qhrOy5Df; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-371ba7e46easo1659516f8f.0
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 06:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1726235878; x=1726840678; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g46xgvcRuzluvD9uFfVgOC6tB6SvIHIhrOwQLDjP3Ko=;
        b=qhrOy5DftY8E5YlAyhsJr4ch+KnN7MHNJ6zvz0N+JXZeqZjRbqA9ePTgU+p0GC5Tls
         +iCY7CMLEi5TS+2lCt1+T3OwqP0sh9VosbxQAOOvyiPmGTTHmQTNBWyrbkfMt5yPldjh
         fSBk67Zpffkf/HgPUy3rrw1soGe6BW3VPRIsQ3fRYxZ/W+dJjezMd1CM5t13SXtlCZ8e
         5tnXBg/n5Ed+Q4v5w0NjINlIp+ajmXcoo1rFmo5EKnRZhAyskXlfh9k/31huzuZofA7d
         7kyecAgLh69fNOiNNHlq9rq9Ypwe7O9G7bxZtJlSJ5gsD/giKxtdO6E4YuWzPsgM/4ei
         TZVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726235878; x=1726840678;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g46xgvcRuzluvD9uFfVgOC6tB6SvIHIhrOwQLDjP3Ko=;
        b=kIiJOOo7h3lDcZDVyAdONuc2WY+rPX7MwCA6as17dP+a5bIAfA60r3xa+fqgiw7qcT
         ayS9+6b325kuCjpDSgYrpq4/PTMZEHqvpqOSS1l95s5QF2jYGT2NfmUQqJ/3VlrNRxv8
         EEG7p0nb95Z6+m4attuwKGh/h7ZpR5UfvOir0qq2Hp0078VdWbrm/PlB28axKX4gpL58
         pYMY1JDKRtqwo6J+HnOUNCnQpKVYlL0BvPrqhso96ilT0cRbLkrkO6UJHxvRWanVHfNq
         nGlwiBOxHz7gTG3JnDqxuHK/EC2BS6sWIEVej0WGbvDUFgimNqkL0Dse7JCoK/IjrfPb
         ZvCQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7DIPwsmY7lnm0grwCGbl6P67GTj9Ak2UgJouP3mazxRMVudwiVoGOUG9Ny+mh/oiJ/uvhaAKR/sHT@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/Y+ukMEoHp/IBCbKNk3fdZoNurm4qheDfyVmqmCyY7JzDD+Pk
	6WYsWxbOteoZVCOEhDXcF8JyKESRIEUmEIE2hYJYEJpsvLu6w8Ynlyz+05G4vWE=
X-Google-Smtp-Source: AGHT+IFcysEod0NxncaxDd4SBio0xzbV0cHz5ucPvVZFdGqB2E7WOEJARnDjPv23bNoUkmOyAClF0w==
X-Received: by 2002:adf:ea8c:0:b0:368:7583:54c7 with SMTP id ffacd0b85a97d-378c2cd3e6amr3985869f8f.8.1726235878002;
        Fri, 13 Sep 2024 06:57:58 -0700 (PDT)
Received: from neptune.lan ([188.27.129.88])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378956d3941sm17104749f8f.84.2024.09.13.06.57.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2024 06:57:57 -0700 (PDT)
From: Alexandru Ardelean <aardelean@baylibre.com>
To: linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: jic23@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lars@metafoo.de,
	michael.hennerich@analog.com,
	gstols@baylibre.com,
	dlechner@baylibre.com,
	Alexandru Ardelean <aardelean@baylibre.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 6/8] dt-bindings: iio: adc: document diff-channels corner case for some ADCs
Date: Fri, 13 Sep 2024 16:57:41 +0300
Message-ID: <20240913135744.152669-7-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240913135744.152669-1-aardelean@baylibre.com>
References: <20240913135744.152669-1-aardelean@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some ADCs have channels with negative and positive inputs, which can be
used to measure differential voltage levels. These inputs/pins are
dedicated (to the given channel) and cannot be muxed as with other ADCs.

For those types of setups, the 'diff-channels' property can be specified to
be used with the channel number (or reg property) for both negative and
positive inputs/pins.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
---
 Documentation/devicetree/bindings/iio/adc/adc.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adc.yaml b/Documentation/devicetree/bindings/iio/adc/adc.yaml
index 8e7835cf36fd..b9bc02b5b07a 100644
--- a/Documentation/devicetree/bindings/iio/adc/adc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adc.yaml
@@ -37,6 +37,10 @@ properties:
       to both the positive and negative inputs of a differential ADC.
       The first value specifies the positive input pin, the second
       specifies the negative input pin.
+      There are also some ADCs, where the differential channel has dedicated
+      positive and negative inputs which can be used to measure differential
+      voltage levels. For those setups, this property can be configured with
+      the 'reg' property for both inputs (i.e. diff-channels = <reg reg>).
 
   single-channel:
     $ref: /schemas/types.yaml#/definitions/uint32
-- 
2.46.0


