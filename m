Return-Path: <devicetree+bounces-12468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCCE7D9A07
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 15:35:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97DF7282485
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 13:35:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32E8C1EB58;
	Fri, 27 Oct 2023 13:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="X7vCATgG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F941EB4A
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 13:34:48 +0000 (UTC)
Received: from mta-64-228.siemens.flowmailer.net (mta-64-228.siemens.flowmailer.net [185.136.64.228])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DB2C10CE
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 06:34:45 -0700 (PDT)
Received: by mta-64-228.siemens.flowmailer.net with ESMTPSA id 20231027133441ef2b2c0ab32f819910
        for <devicetree@vger.kernel.org>;
        Fri, 27 Oct 2023 15:34:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=IIIZv3qhvVrJIFdod594YJFg+VBqFZbwCQJVB6InzvE=;
 b=X7vCATgGhzz6tJF3X8ZjSu65Avgul4GuAaIC4U/PVZV5lr7O7+u+pvgDvjHq1NO5oO5Dj3
 2kAt7CSD+HnbIJlVWymuXlzTmcg2LvwlOBC5m1O+/fc/gbjveWw792IuJ1dr9aWb+Uv7BJm0
 T3VW5le+mJJr5akzCYPKKsokyvMRI=;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Benedikt Niedermayr <benedikt.niedermayr@siemens.com>
Subject: [PATCH 5/7] dt-bindings: trivial-devices: Add IOT2050 Arduino SPI connector
Date: Fri, 27 Oct 2023 15:34:36 +0200
Message-Id: <7838d99a1795337c73f480fafcbf698fc17d16dd.1698413678.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1698413678.git.jan.kiszka@siemens.com>
References: <cover.1698413678.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Jan Kiszka <jan.kiszka@siemens.com>

On the Siemens IOT2050 devices, the SPI controller wired to the Arduino
connector is normally driven by userspace. Introduce a binding for use
by spidev.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 430a814f64a5..01b9f36afcd5 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -349,6 +349,8 @@ properties:
           - silabs,si3210
             # Relative Humidity and Temperature Sensors
           - silabs,si7020
+            # Siemens IOT2050: SPI interface on Arduino connector
+          - siemens,iot2050-arduino-spi
             # Skyworks SKY81452: Six-Channel White LED Driver with Touch Panel Bias Supply
           - skyworks,sky81452
             # Socionext SynQuacer TPM MMIO module
-- 
2.35.3


