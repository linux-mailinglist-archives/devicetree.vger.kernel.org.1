Return-Path: <devicetree+bounces-66372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD0D8C2B65
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 23:04:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 041771F23784
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 21:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 314E013B597;
	Fri, 10 May 2024 21:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="aO63s1mA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8397113B586
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 21:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715375089; cv=none; b=s6uwpxN+cevbfsMCgH3TwcckEEmGSWR3cf/zUx15fUFzNU4Jj2rPBGVawN6ZuHyhhIGkOYZUJOp8ejs8i8h3sOYhA5tsd+CD/jCG2n7L2+q15/BoZ174f3i+yDKNLAy/CfHnNMsJqzFEbdLMc+IqM7r2HMkOI5rX57Mz+r0Hn9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715375089; c=relaxed/simple;
	bh=VfLBOBFS9px1B2o+hcKJrQSVvzPYkQD50/pPCs8h+tc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=qx/bNnjl2TTOvRXqttOxORBZNxMUsX28uRyC1C8iHkaiRRWyZWhzrmPNatUQkZxnGXDe47vIcTtgVyMrLK1GAKgFo6ZIJmkdzDy8l8GTZ6DEhyqxRmMsnnQhJqb0sZ/PPrO/dMxL9OEddSSACNv3EqXyEh57wTUUaFuffT4etWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=aO63s1mA; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-23e94f0788aso1276813fac.2
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 14:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1715375084; x=1715979884; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qEYue/AOjuByQSAvDWI/eVpcJ2TVmrbfHj6LOCzHZ/s=;
        b=aO63s1mAzpq1Xm8ImptjXKZfduimyDfPqEQzrUcGeikuPfZ46qOb+9mp8apOKcl0N6
         RQkO91RuxPU2t2oxPqJaBZGvUxMdJxhdUuLIfz0OzgOvT05+45F2mpP26tUY7E23Ue68
         VvwbBibQBEJ/wtFQjg3hyV3kZeFMFLJ3bso+QRVlRypyjKxHPrp4gxxU/7OyGtlTPGnH
         nQy9sazTAX1M4qEgyISyo620En32HfNKRRLrEnZbDUgGC7HP6CfqwVmdHcwk9mFGtsDl
         a4oVHgms0+wWXAyGyaWTUBUAJ7ByFUQ9kz5D7u9CtxHU4XJGMmiMoU7Z1rYrdilC6XEn
         nIPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715375084; x=1715979884;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qEYue/AOjuByQSAvDWI/eVpcJ2TVmrbfHj6LOCzHZ/s=;
        b=dOLBTCwTfTJ0eoi1flKNUeyrXX3FDV7H2jeyKgtZHHk711eq+kyQPXYc2qOfd9Gajx
         CDsH2lRgWLF/YxMaRnSnpzLNaS3MwDFTcxusTwpehDq9siaEZ6Rqi+6QccHpSJHIl4pv
         kotjVgH4E4t0cYbjldqhePWox0vNczqCsmYWyr4PTzl4pSW3mfm9yQCaWR6QSeuwX85O
         nHR5+W9lyibMZdd/OjkxbbyoiJyhQn+bm2GyjPZBpKowcw4DXrr19UVJpVuRy55VgxF2
         gjjwN2ZHfZijpc+/8Cydl07wyi/56YvlUiBHHzK+2rD8K4dKb3Rh/o1aRqmRvAd7hrj7
         Q+cg==
X-Forwarded-Encrypted: i=1; AJvYcCUavNIZUtqiUWxW/W9wXmOQCsDHHrLGo384asbGfbjZkByTmhWFByEJoVdC1U2eB1/PcSqiX6fj8z+MIzlSKJCD90C5NgrU4slllA==
X-Gm-Message-State: AOJu0YzcQR6hz6OCgCNqxlzCaCKLTaR7p1ShQenMmu3wLG9lbVsrBlhe
	XN8vZd2HbTEgleIi9dKZl3gZ9jXtjz6bd5Uf8eRbJZlXT/dOc7VegDAueuDBkMM=
X-Google-Smtp-Source: AGHT+IE+Z9Gv0mEoyVq7GkQVyxM+Fbs//42IwhhbeCYp7oKZf4jj5u3ny+Hd+41J/i0ScY8ge+nQ9g==
X-Received: by 2002:a05:6871:3311:b0:22e:dfbc:4d9d with SMTP id 586e51a60fabf-241728f4fe9mr4400114fac.1.1715375084498;
        Fri, 10 May 2024 14:04:44 -0700 (PDT)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-6f0e01cc159sm841521a34.40.2024.05.10.14.04.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 14:04:44 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: David Lechner <dlechner@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <michael.hennerich@analog.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: iio: adc: adi,axi-adc: tweak example node name
Date: Fri, 10 May 2024 16:04:38 -0500
Message-ID: <20240510-b4-iio-axi-adc-dt-binding-tweak-v1-1-a1f633c4602c@baylibre.com>
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

It is always recommended to use generic node names for devicetree nodes.
The documentation [1] of the AXI ADC IP core says "The most important
part of the core is the Receiver PHY module.", so using phy as the node
name seems appropriate.

[1]: https://wiki.analog.com/resources/fpga/docs/axi_adc_ip

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml b/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml
index e1f450b80db2..9cad4c439045 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,axi-adc.yaml
@@ -57,7 +57,7 @@ additionalProperties: false
 
 examples:
   - |
-    axi-adc@44a00000 {
+    phy@44a00000 {
         compatible = "adi,axi-adc-10.0.a";
         reg = <0x44a00000 0x10000>;
         dmas = <&rx_dma 0>;

---
base-commit: 5e3c5871138da700796587aa5f096d39135f9d36
change-id: 20240510-b4-iio-axi-adc-dt-binding-tweak-054f97a78bff


