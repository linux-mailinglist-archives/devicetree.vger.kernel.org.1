Return-Path: <devicetree+bounces-236237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 151CCC41A58
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 21:54:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 51534420CFD
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 20:53:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9185630F80F;
	Fri,  7 Nov 2025 20:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="s15Wom5E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDEA730EF86
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 20:53:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762548826; cv=none; b=aEEyffeKyiPrwMfkOXhmuyojH/xn9aZwYHuRm4cpkk8W9v4SDb7k04C7K5Kh5WoQpBWN6zdmRzcJCwuH29bmtUe0WOrYnL585M5CzPj+s7nn1Iltqtxc0IVEYArpQER2Z+bdp8uDeL1sENE7YHGqXUkU5vF6LinjD+qa98INZOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762548826; c=relaxed/simple;
	bh=GzDNbyMI4KydFDgGfy/VeBjUSngx+JmJMBw+foU/HUU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=c7JisD52a0GQs/8mQdmwbt5nWAV3gD9VsPC5uHvG9YjyiW3i0Hvqi/cwIpDC9EbZ7vj+LGu39bV8Iv2rzjF+Csk4xtfMiiB0dh8hiQhzb0O8cGjF3wTl+o9HlqGwSoO1Wh5r79Odg+WaFYQbADWYhBOnBD2JkDyrsl0XIJUx3Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=s15Wom5E; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7c51f56f3fdso829260a34.2
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 12:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1762548824; x=1763153624; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bw4pFNPg7WOI6b81QBAhCby/sZRUjd7BzHL1pO1Aj/k=;
        b=s15Wom5Ept/5mOhvrjk2e5yVNHW6l6OyjjxkPzgfUuv5UrG3VpUnsC3QmnNyJSH24T
         SWr03VLihNvPnQ7vCmV74yBzNzLgXhYGDUOwkfKIRAyRKrhnXoBz16kmkDKSHsnFiiXA
         +eOjOixb1LYMRbpjxZwRl1hXDOs1RzZhVH9niTAKOp0DbcyBmgjXTw1TF6rOFtxLqGvw
         spbbFe9ZtN4vsuZkzJddMijKQKuHTwT5UtkzN2p6Z3jhCECsNvb0GaaGpQ4vxtO2aWNs
         iRIEv0PfFrVRTwxrHDaSVbA7y48S7P61iAei8w+1LxroPAImRKoC8vI6qJR/sILgSnBL
         O5Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762548824; x=1763153624;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Bw4pFNPg7WOI6b81QBAhCby/sZRUjd7BzHL1pO1Aj/k=;
        b=us/gfUHmF+ErwIJJMU8CS02cPfxmjowJYZOX7w3Ul/bdw4rtAKwivA89+VSg2N1D1B
         1kJzDd5adGcIpQ+X6huQS+dgXnqKkekFxIPwNJppSzfpwAsu1qMKXoQT4Fn+zs9xt4+q
         RjbaZZYbocM9XIKlSrIuP+kd+EDH8M9mr/G5i0ACFN5gmfyNSAxywEsrcyvPexveMO4m
         JDlcjtYgrrk5CuFnqiKhxWNMa/7b5mMeLrwcU8643bRh3Re3k6ZPhZ/uWsRCo047JucN
         qo/BBHgYikUNcB6mTWNNlYAZRJmkH5fGKr/M2GFVzl3EhFUJP0NY74+j8APcsysRVDQ3
         4lVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUq4Y1NNO27p6eJPysCLktz/29et1VMEnVLOOlBdpRqIvMfHhqp1ohS4B5c4lTMG3M39pHNqw431HXH@vger.kernel.org
X-Gm-Message-State: AOJu0YzoRsG5vaT6kDcb/1MIxfiaw7SXpbVecHWbbU2lI4CVlWzIMVaS
	yXpW1aEZO9XBJPHf8fZ6RO1JnO7aFCTMO0pSyMme5hqf9WkraRl51OwPXvYdKR9zAPU=
X-Gm-Gg: ASbGnctZb/iJ1pXN7Tdrk2MuUxwuTGjxs4OcaTbAe3XZgjtphcKin8xkWKihGbsc8sf
	9CdMQp52101v5AnNNrYck5oblZOLaKvtJBWq6QvfJ8qLTVfBLju8Z9pSp/ZasmAa8gGgA+HBcMD
	eFIfYnZoMpXEm+2AZHqi54wsZbfQ5bS0ySmof2d+B2hGTV5g9py8AEzVkp+Nb35XMp7YMUmkvZq
	rmT3qBYvC3BbFMdVVwr0zTV0ulF52Cf5KjFqfUiDJa7tg98WauZzpNVR/j/E5rcq7MZ9dsPfmq5
	M8naM41olooDTvHOcZRqW5dWtfw4xjYcecgcpxdNAwR4cC9bryq8Y2E59BD5x30P58Fp8qV/0X7
	sRUBcaD/bvAQsAVVAtkDv1o9l+MkwsIK9gkv0JRq/n/ubxioQv1YoQr5O1NhdNwiefxJAQvDhBL
	iOk8OG
X-Google-Smtp-Source: AGHT+IGfK4c9b4dcviAlGkTvokFM18b/RZpHMLFU9OtYfQL7gB4N46H+oF0gdluiqTzWFb9WGu4bYw==
X-Received: by 2002:a05:6808:bcc:b0:44d:aa6b:a578 with SMTP id 5614622812f47-4502a40c801mr380282b6e.66.1762548823806;
        Fri, 07 Nov 2025 12:53:43 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:7bb8:950b:327d:4ba4])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-656c57eae5esm2915601eaf.16.2025.11.07.12.53.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 12:53:43 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 07 Nov 2025 14:52:47 -0600
Subject: [PATCH v2 1/6] spi: dt-bindings: Add spi-data-buses property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-spi-add-multi-bus-support-v2-1-8a92693314d9@baylibre.com>
References: <20251107-spi-add-multi-bus-support-v2-0-8a92693314d9@baylibre.com>
In-Reply-To: <20251107-spi-add-multi-bus-support-v2-0-8a92693314d9@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marcelo Schmitt <marcelo.schmitt@analog.com>, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>
Cc: Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2076; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=GzDNbyMI4KydFDgGfy/VeBjUSngx+JmJMBw+foU/HUU=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpDlwtAwtlV0VQGNVIxEBaAxjKPBXvLbMxZAb/W
 qByJpooBjKJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaQ5cLQAKCRDCzCAB/wGP
 wJTrB/9LuHD+FF8YuGEQ8ift3smVYnehTtkxIxJlPmGPlglTjsW/tP2kiiJ0j6dET2OY+l9YVMg
 xtWPfOKrH6DXK72pckNTdt7YIp5y/+1UuiTrZ5yiPeyC4jkov6+jzNeZToP8AevMq5pnxLEid6U
 7juw0TfIaw3Htg4FSkal4pt8/DhjkbLSJv4dPxyBFLym1R5Tjoki6xPx/oiFbWEgThNhlTUIOHK
 cPBHEFumqpqrHrnz7H7gjaT3tVc/YYOVfH6CaKXgIFYUH/cLnvt7f/J6ngV+tGl8myJhEeb4mUV
 AkpNNAqavMCLXweLYq+dGaXsyTPFXR6jmPK8BKYurywRRS6/
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Add a spi-data-buses property to the spi-peripheral-props binding to
allow specifying the SPI data bus or buses that a peripheral is
connected to in cases where the SPI controller has more than one
physical SPI data bus.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v2 changes:
* Renamed property from spi-buses to spi-data-buses to make it clear
  that we are only talking about the SDI/SDO lines and not the entire
  SPI bus (SCK, CS, etc).
* Fixed prefix order in subject.

This patch has been seen before in a different series from Sean [1].

[1]: https://lore.kernel.org/linux-spi/20250616220054.3968946-2-sean.anderson@linux.dev/

Changes:
* Added maxItems. (8 is the most I've seen so far on an ADC)
* Tweaked the description a bit.
---
 .../devicetree/bindings/spi/spi-peripheral-props.yaml        | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
index 8b6e8fc009dbdc80978f3afef84ddc688ade4348..6fe739eaf09876b9c5d8902f792ca02181d7266f 100644
--- a/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
@@ -89,6 +89,18 @@ properties:
     description:
       Delay, in microseconds, after a write transfer.
 
+  spi-data-buses:
+    description:
+      Array of data bus numbers that describes which SPI data buses of the
+      controller are connected to the peripheral. This only applies to
+      peripherals connected to specialized SPI controllers that have multiple
+      SPI data buses (a set of independent SDI/SDO lines each with its own
+      serializer) on a single controller.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 1
+    maxItems: 8
+    default: [0]
+
   stacked-memories:
     description: Several SPI memories can be wired in stacked mode.
       This basically means that either a device features several chip

-- 
2.43.0


