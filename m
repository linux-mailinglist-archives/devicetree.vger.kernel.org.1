Return-Path: <devicetree+bounces-103916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B5197C9B1
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 15:06:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CEEC1285837
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 13:06:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13BA21A01BC;
	Thu, 19 Sep 2024 13:05:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="E9QTYpu3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341FD1A00E2
	for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 13:05:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726751104; cv=none; b=anETYN5tYiWE8OSSE6N05XEnHX7ZmUnxWtWqpOoxvBYOnk32LH1e/TTMOJzzTG1BJFdnVqV1mhpd5xSQcLUl50Q+vLYAcSgW6XbgtwdYw1BrZN937TtAg8qknTV9RNrsPeXGDaPZCtR23ELiKZtLkInYNRLNnW7vznYOBKT163A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726751104; c=relaxed/simple;
	bh=/ovmFlVD/7j+ipJY0VPXyzdNP1zhe/wqKiyGk4ajqgM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=N9UWEBqUwTSIvC0oTcHf1zVE+PbSpwyS3lGXnpnphp4bHys5eG/5scF1oHMYrn0LY7bibgk42ogfhqUXLlWQtkV/57bsRZvYgc0bmnekUjp26HrLMX++e7lTgVORu+1tEDxoFd+sxL8tVQ5WU25ckDKUqifScAC7JzBRUF0ELdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=E9QTYpu3; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5c42bda005eso1036929a12.0
        for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 06:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1726751100; x=1727355900; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g46xgvcRuzluvD9uFfVgOC6tB6SvIHIhrOwQLDjP3Ko=;
        b=E9QTYpu3jQaal8H9mZ6HwShBozQbTwcCvO11gFMo/QU6oV99UzwaBNHxo7jaOZSogf
         43Ws6pO6eBbOk9ZQAJihVCeIbVlCTsTuoGtpWF9T4AGEgAGP9PwYoI/7Txfn0lMLYYQz
         cUJ/xEWZ0/OlZJazxqj6P48Swen/eNP9We9jZCuhrFqGGB/vX/Y8R0vqpCQeXEP8uIYt
         hJJIiLaC5ISBZOLs9xjxvK0+s9BV+kE+xC4rsoH0y0kBF4rtxasVvbj6tcpIxkXujOS/
         huq4j34KwHlLlANPfKZd3BMoMYCUDF/5kGB7e4PXyFRnXv703+4ldzWHcOggMT5p0gWo
         w6Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726751100; x=1727355900;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g46xgvcRuzluvD9uFfVgOC6tB6SvIHIhrOwQLDjP3Ko=;
        b=fnJ/C4FVQvXT/Q4VdFqDCB+VL6yvhCncby2YSgfpJmUHtpXRSum2u9WGUF59blZZtK
         jub+oj0wph9TAOlkdcQ/WH2NnafSV2N2z3dFRmq8yvn1hCj1Nm0vXjSBgJF4ITF6qsxh
         CXDcjegjqPvNjAROG22DZK350d6/qC2ok87TCmqTXfNOLZj4f6d2M799YgDuIEVH/H/V
         TKndXgalUDpBaK7vjypYStvRpc9kf3CndKGZlGoG7wCxpK8r1dkY77+GbX/lSfjfIz0m
         YbHda9TDojL1yXTMmEqsGgcf6ndonEJku4SJY4OEfFzXOUMXb8nhacQBEYKOwTy1ypfE
         Kyuw==
X-Forwarded-Encrypted: i=1; AJvYcCXsfZ89MXAVe4jLLr667dI9HmkcwkvYJNQOCkK0JdoLuQZFwpBwHJXxcULzJaiwagEHbqnu8o079uIf@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/xza89EnwfGRVWqa5yRkRBsVee+iRM68fj55PkX5XK9dLnlLf
	fzMdfuhgV6QWEG/K00j7Wn6wJeJ9bZ3MOb3gEkgcnNoD2aVIlpKmGz99sOuZ91k=
X-Google-Smtp-Source: AGHT+IGZWvWVarAWxHdzLKTJNnQgxlemGlabJF9ZbqtOnxayKzR9Y2NE1y4XM7BEumvgC0ymjc1kfg==
X-Received: by 2002:a17:906:bc26:b0:a8d:2ec3:94f4 with SMTP id a640c23a62f3a-a902964d007mr2208929966b.54.1726751100495;
        Thu, 19 Sep 2024 06:05:00 -0700 (PDT)
Received: from localhost.localdomain ([188.27.132.130])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a90cbc7122esm53213166b.124.2024.09.19.06.04.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Sep 2024 06:05:00 -0700 (PDT)
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
Subject: [PATCH v7 6/8] dt-bindings: iio: adc: document diff-channels corner case for some ADCs
Date: Thu, 19 Sep 2024 16:04:41 +0300
Message-ID: <20240919130444.2100447-7-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240919130444.2100447-1-aardelean@baylibre.com>
References: <20240919130444.2100447-1-aardelean@baylibre.com>
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


