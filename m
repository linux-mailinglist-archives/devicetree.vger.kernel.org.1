Return-Path: <devicetree+bounces-116602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C79B39B35D4
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 17:08:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EAF0B1C21B90
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 16:08:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D6D31DED71;
	Mon, 28 Oct 2024 16:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hwTwN1kV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95BE1DED6C
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730131699; cv=none; b=fsyBS1RrmUKXuLZDgsTmu3pMy35QpNpEbiJdcBpPpRd0FnEgaLiGBSO7MXJBS/inBB9Xa8B0eM/u3UrJ+ouJqE17wRojPx96QXgYzcVjbaVE5G+l3v3yGl7UEjTPfrrySXCi4O1t9zfR3PXCkKVTd/Fn5C+VrFHdBmgJL3HA1TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730131699; c=relaxed/simple;
	bh=hgMcpwy9TdCE65oxriQ+FPntRPBuJVE0q16nRMzx8DQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CzR+CetFTiRYXVC6n1RGFFg8mQD2TudpcOL3r/XJ6M4wHDKgBBoS5XRRMG5KX4E+4dKCpweiaE2s1cikUK4qlpTfaO3J4tgz/yjDVR4ZuQdeyhpUYhtgioD4eEcluKhQmqubXml5PqQlwMJKXR/c/Dg3kIYc+SlHwAwZwIXpGec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=hwTwN1kV; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-539fe76e802so5348007e87.1
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 09:08:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730131695; x=1730736495; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1ehYyki6INbo9Xh/4EaDRv1pQe+m2uI42PbP7/EkkyU=;
        b=hwTwN1kVjxQnCab5uCm3k8sRFgRDEBl81/VS8X8xyiQVc0FRfnrqok6iDX3mbECiaw
         YKK2y4o3LcJgvTwxFPTEC6cokoOEtnEWcnAYqWVcq/rj+aZb+0eM51oqoHiE8ja9tf+y
         vvvNIowIk/yEcUxcc1J5NsqQthpCFFj6NNOIx0IsAOWUa1rLfk5G8KDuQh9S1qq5Uyb9
         lEtehWFSdk6iZZ0S1+BcTsdmlGaZ2yeATXVmNQrGSKyRlvpLLZNGsei+K1KKOEg4lbis
         eCU9gm86eXmY69Ld6C/cEuJNPL9ompQYbZlsgry4JoFk1jFesD5mrFqJC8iw0WfzkTol
         55Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730131695; x=1730736495;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1ehYyki6INbo9Xh/4EaDRv1pQe+m2uI42PbP7/EkkyU=;
        b=lxt8whifmxjHrBTj4PBx6bvavD6Jgyv1/e0A5uSYDcLad1/SQ8AT0/NPgHfMPiaOQN
         zUIVjFP2VZbrC1Tn0Za8wk+53bAyr1J0jUrtEISXwKBRBN8AYQlJZ1eUq1JqrdRrVFN0
         DnKxRBVrFgeURQYUC2ehmL1EOSDlUr4/qNPzckQ3LZk647cLLKnzcaY0bAQSGozHj//w
         +2X4yZjwc1k0M4d1P6jhKKOpBqJm35rh96+Q0UcTiseLrLqonF6yCB5U/GBAu+ANkJT8
         kDakyO3pmmGRu5ivq5YuGMyqIPIRGU1FsEnNGrf5iQG/187Xf7jS8RlwQsBdbF/lp4xq
         Vngw==
X-Gm-Message-State: AOJu0YyPpZw72xcFj0xR3TGSibH7FbaiV5RJeQyXdnbRqn/B6ZTdIHDh
	lR+tmIlmOLi2ZGGvhBB8ZJkmUrdRNT9Sa0Frh+PtQmThnnw1772bLozraXM3Kow=
X-Google-Smtp-Source: AGHT+IFLpAoDaA5PuthIhIt2oMonRXwUCLN6LZ/2wBc8yQwsZoJ5qBz2LGvUkO2NkdrqpLu+TWvrGg==
X-Received: by 2002:a05:6512:3ba3:b0:536:a564:fd48 with SMTP id 2adb3069b0e04-53b348c15a8mr4031277e87.3.1730131694977;
        Mon, 28 Oct 2024 09:08:14 -0700 (PDT)
Received: from localhost (p200300f65f0c3200f401bf2b6011cd64.dip0.t-ipconnect.de. [2003:f6:5f0c:3200:f401:bf2b:6011:cd64])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4318b56fbd1sm145916995e9.32.2024.10.28.09.08.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 09:08:14 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Dumitru Ceclan <dumitru.ceclan@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Nuno Sa <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v2 2/4] dt-bindings: iio: adc: adi,ad7124: Allow specifications of a gpio for irq line
Date: Mon, 28 Oct 2024 17:07:51 +0100
Message-ID: <20241028160748.489596-8-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241028160748.489596-6-u.kleine-koenig@baylibre.com>
References: <20241028160748.489596-6-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1978; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=hgMcpwy9TdCE65oxriQ+FPntRPBuJVE0q16nRMzx8DQ=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnH7baQ6qc7828IvvEh96kIK411T6paMu9Ri9yR mQa+RhO2NaJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZx+22gAKCRCPgPtYfRL+ TozKB/9uLGZE0013XxnTuJbXRpJQVsaREztrAksqC/Qv5AeoQvUiHcaym7p96rY46NO/J4aOaj3 HbAzyCBoyMxKelyJJKTUoWZsEccKfJA7TCbZUuw9YWn7s5rxakpsZmt3kMC6jGHfYR8VDpZS/8l o0wga7yZX9QWJCiahabzLsKa6LBbcnN9p2eV602Cf6KEcmodQ4iYJot2+Tvgv2AUBWglRko9H3f ODqYAHu03qF/+XiavPAgVY2Bs6t5bqYgX79HqNayZ6zj6GrHrt60QMFXh/N3nqa9rWlZKZUlygz PUKjzMFNIUF9ZUyWWCze6AwtAAtLp+rJbrBTJlRlq3WFg+Bi
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

For the AD7124 chip the logical irq line (̅R̅D̅Y) is physically on the same
pin as the spi MISO output (DOUT) and so reading a register might
trigger an interrupt. For correct operation it's critical that the
actual state of the pin can be read to judge if an interrupt event is a
real one or just a spurious one triggered by toggling the line in its
MISO mode.

Allow specification of an "rdy-gpios" property that references a GPIO
that can be used for that purpose. While this is typically the same GPIO
also used (implicitly) as interrupt source, it is still supposed that
the interrupt is specified as before and usual.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml
index de49b571bd57..71a40c7ca4bf 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml
@@ -37,6 +37,12 @@ properties:
     description: IRQ line for the ADC
     maxItems: 1
 
+  rdy-gpios:
+    description: |
+      GPIO reading the ̅R̅D̅Y line. Useful to reliably detect the interrupt
+      condition.
+    maxItems: 1
+
   '#address-cells':
     const: 1
 
@@ -112,6 +118,7 @@ unevaluatedProperties: false
 examples:
   - |
     #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
     spi {
       #address-cells = <1>;
       #size-cells = <0>;
@@ -122,6 +129,7 @@ examples:
         spi-max-frequency = <5000000>;
         interrupts = <25 IRQ_TYPE_EDGE_FALLING>;
         interrupt-parent = <&gpio>;
+        rdy-gpios = <&gpio 25 GPIO_ACTIVE_LOW>;
         refin1-supply = <&adc_vref>;
         clocks = <&ad7124_mclk>;
         clock-names = "mclk";
-- 
2.45.2


