Return-Path: <devicetree+bounces-31696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5670282C3C6
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 17:40:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 665821C216BB
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 16:40:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 973C777628;
	Fri, 12 Jan 2024 16:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sidvQdmx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7534E76917;
	Fri, 12 Jan 2024 16:40:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDD69C433F1;
	Fri, 12 Jan 2024 16:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705077627;
	bh=cRBsVA/gjcOt9pjoEuJIhQ39NaZaSPebkpAvtLwDKu0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=sidvQdmxQCI6reQTQ3LZd/V9c6xn5xjq1z/QYANcQ7nXPqIygpHnDwz7g4mCqACOm
	 kGhKqMonMje+97GS9uX2kRTkiqesRXfJOw09hLgQqRXKM35s80e40sDJRjVCJIY089
	 x1/Kbn0yEud96N6zUwHe0aeVBxTeqsW8VQFptyP9b1na2M3eTGaazNSkeInQY+ryoM
	 kIXb5UyN2gOCnLIyyV7X4v1WIl+pgnKRn00k313YqFLrK+7CJLWfjvEfIytwPvMzlb
	 bpDRRJjPFiRFS151h8kXHjMyYU4WwLmxhMG4EOYH0cZqGu2HFkW2utr7kvPp8AB2Qc
	 qMVPYdDH8ClGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD895C4725D;
	Fri, 12 Jan 2024 16:40:26 +0000 (UTC)
From: Nuno Sa via B4 Relay <devnull+nuno.sa.analog.com@kernel.org>
Date: Fri, 12 Jan 2024 17:40:15 +0100
Subject: [PATCH v5 1/8] dt-bindings: adc: ad9467: add new io-backend
 property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240112-iio-backend-v5-1-bdecad041ab4@analog.com>
References: <20240112-iio-backend-v5-0-bdecad041ab4@analog.com>
In-Reply-To: <20240112-iio-backend-v5-0-bdecad041ab4@analog.com>
To: linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Cc: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Frank Rowand <frowand.list@gmail.com>, 
 Olivier Moysan <olivier.moysan@foss.st.com>, Rob Herring <robh@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1705077624; l=1193;
 i=nuno.sa@analog.com; s=20231116; h=from:subject:message-id;
 bh=u0BDfBpNIPqTnjAdSKSUmF2FUWY8hltyVdK2adeadi0=;
 b=0A0bNz6p4SU4S0tvmVegsKtunFO2qbhyJ5h86vXtH9MmwG5yFqjmpmpN5i/awSW+owcX8B4Nm
 YmAOPvmkGJGCjeAgvyh7rbBxW0UvFQ0egyzgD5qM5QHX/ifr4BIFHLA
X-Developer-Key: i=nuno.sa@analog.com; a=ed25519;
 pk=3NQwYA013OUYZsmDFBf8rmyyr5iQlxV/9H4/Df83o1E=
X-Endpoint-Received:
 by B4 Relay for nuno.sa@analog.com/20231116 with auth_id=100
X-Original-From: Nuno Sa <nuno.sa@analog.com>
Reply-To: <nuno.sa@analog.com>

From: Nuno Sa <nuno.sa@analog.com>

The ad9467 will make use of the new IIO backend framework which is a
provider - consumer interface where IIO backends provide services to
consumers. As such, and being this device a consumer,  add the new
generic io-backend property to the bindings.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Nuno Sa <nuno.sa@analog.com>
---
 Documentation/devicetree/bindings/iio/adc/adi,ad9467.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad9467.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad9467.yaml
index 7aa748d6b7a0..eecd5fbab695 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad9467.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad9467.yaml
@@ -44,6 +44,9 @@ properties:
       Pin that controls the powerdown mode of the device.
     maxItems: 1
 
+  io-backends:
+    maxItems: 1
+
   reset-gpios:
     description:
       Reset pin for the device.
@@ -68,6 +71,7 @@ examples:
             reg = <0>;
             clocks = <&adc_clk>;
             clock-names = "adc-clk";
+            io-backends = <&iio_backend>;
         };
     };
 ...

-- 
2.43.0


