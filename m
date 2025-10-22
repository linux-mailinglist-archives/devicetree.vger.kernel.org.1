Return-Path: <devicetree+bounces-229580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B393BF9F9D
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 06:47:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 228023AFBBB
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 04:47:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73A542D7DE7;
	Wed, 22 Oct 2025 04:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b="bn1PcFsr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 841882D77ED
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 04:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761108434; cv=none; b=QgTymxSySttOqtZeMOGNTTrl1W3bxZE9EvJUrEOdlXctj4m9bI464fza2CgF8SKEXg6mrfYl0Z6es6vFGvE4DYG2CcHnKK0ZuN59V1MUcW69geCLd+gTSPOQoDivRttCIUS+wKEwAmzz9RnRu7qAfVUi6BuvC007mpJAmVTp+3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761108434; c=relaxed/simple;
	bh=emjKQWb3F6rOxwSUr/RzSm5M0/FFlkCkJAaJf7c48pA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UYcTMalvpOwYvDs8yJTCVTnHAvpwLbRPl1yPrlWYX7WPM9sT8fYoOSnDuZVFkEQlHehR1lX2s5iWmsc1Ccrer4U6FqT9jZTxLga/07HR4+b3MurF7FSZlyNXIOwoASZLis05HBIwgEO7iuWSU8GRDNwCNaqz84kCKiRWQCBbuek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=bn1PcFsr; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=dpplabs.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-3327f8ed081so7736697a91.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 21:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1761108432; x=1761713232; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f8FKJOKMqwXHhFrO9BQqSZunbt6V18YJAj8RFJDvZcc=;
        b=bn1PcFsriSRAVEoic025yNndQX3cGFAf0excqQh8HyfOYn4v7NZ1x7jj5emW4veEux
         ep9bnAKsw+XbLQM7k9FOfd075zTVeFHMrsAiQLghn+Z1Oqi3magIjU0BMWKOk/X1PER3
         fDspvi/4CPzrd1TWRbS1cYOvAh/tfZaQZBaealRDoyN+ZsWy9Y4uAQXk+/pQksxGo7vi
         wzmDL5mIhLXesySPjKbV7Sr0SB/Vz8bHWra0hc3TPUSGmKpuYxzc5hYuKHToC5bwj5Yc
         TLT6DqiClLEQ/lccuMow7tfXIYhKC+FZ9MxwBnq2bhpWkz9T5SkUePjytfrJXxzjVCjN
         bzZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761108432; x=1761713232;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f8FKJOKMqwXHhFrO9BQqSZunbt6V18YJAj8RFJDvZcc=;
        b=hlteats6hayItVr1FezL1Q4HvxJUW6xQYFCNXXYHq5zbXLjUm3S7NVRAeIuRNRYrqK
         96BzNhKDq74mY7bs7pF1Xn+vXc6D1cNB6O0HT7CND+toz0VHS+NcvGLz98SeP3ZD6NeR
         P2L+ictfwgIY+q4j2Gn6X/cmoweM3c4VAuz5Hj0OJmSMl2lMDRrEC2Y3d7zOIMkuS9pJ
         nLhdbdSODKxQuCKpjRiJoR/WK7elrCvPkBaOjCp4InAotSzSND8B2kTQm5lVck0dJC35
         bcWON73zwsDtIq8MtPT9NSPczbQyTrrBMbqzdz0ptL+OcfQQTDhdN10zUEwi0+zEzh1A
         QP3g==
X-Forwarded-Encrypted: i=1; AJvYcCUmi/HUt8Z8/rEFZP3Ltb4TN1n8jQyUmy5n3Lm62R+XG6K4a1JwZRJ2rnbTJpTghE3kihilrMthBT4V@vger.kernel.org
X-Gm-Message-State: AOJu0YyTpsoCZt5pvWxhYDryXwYezYOQQQJx5Y92iYqNkJDX2N2OtsF5
	p6BjQ3tF39H1Rp48sDk8WC7T/YwDxZcQTIGV4BItvr1fq15fIr1IsvUzdBjCo43cQ/E=
X-Gm-Gg: ASbGnctSUfWluzLPIiHD4E+W+lgAcHIl+HEX31c6750bKncLocjyT4SkoAWky1x/vTp
	F3iBpSjm8GSbzxuByt656RKJp8neuWNRv4pb4u2hdIzncvt+qD/Irf8BuV+whcUuyLwSeFCvUJ4
	KzW1SBmUwkPP6rS4ShOzn6dTj9TLVlqEaDAxoGoSykJyfJawnaoWvKVUXDz4Z4kkPzZZ4nbuyMo
	r8dnmOA1tNFEnf+A7wk0kIDFMiDTTRkHXV0lXpxC0nLZ4iSIo/4sk1J5i6N39MKfVDdDkHY5Hdo
	6fDr1VuRKpvak5ITEy3MKaOsZH3uHJ7itmgqG//RsMuF1LJLDAF7b4LdE5j5uymKrSR/dIUFlVE
	+rbGybTm2heNnZmoVayf0vd7fdbxde7a12gxzUHtDrd1HS/0Qs/2sBtMrNN8nXrJZ0zBT7mhSPS
	pTiHUG
X-Google-Smtp-Source: AGHT+IElLTdPaMtun1OrDiKuY5Pc6xIJ3dRoMTudaPZDceWpXZomujWtY5sZOb/M5md8LuBAZMbgNQ==
X-Received: by 2002:a17:90b:270a:b0:33b:ae47:fe72 with SMTP id 98e67ed59e1d1-33bceb1cf3cmr24397298a91.0.1761108431821;
        Tue, 21 Oct 2025 21:47:11 -0700 (PDT)
Received: from z440.. ([2601:1c0:4502:2d00:8004:e310:f3d:dd0])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e223dd9d6sm1257413a91.7.2025.10.21.21.47.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 21:47:11 -0700 (PDT)
From: Igor Reznichenko <igor@reznichenko.net>
To: linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	skhan@linuxfoundation.org,
	david.hunter.linux@gmail.com
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: [PATCH 2/5] drivers/hwmon: Add Kconfig entry for TSC1641
Date: Tue, 21 Oct 2025 21:47:05 -0700
Message-ID: <20251022044708.314287-3-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251022044708.314287-1-igor@reznichenko.net>
References: <20251022044708.314287-1-igor@reznichenko.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a Kconfig entry for the TSC1641 driver under the HWMON_I2C menu.
The driver can be built as a module or built-in. Default is module.

Signed-off-by: Igor Reznichenko <igor@reznichenko.net>
---
 drivers/hwmon/Kconfig | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
index 2760feb9f83b..b9d7b02932a6 100644
--- a/drivers/hwmon/Kconfig
+++ b/drivers/hwmon/Kconfig
@@ -2434,6 +2434,18 @@ config SENSORS_TMP513
 	  This driver can also be built as a module. If so, the module
 	  will be called tmp513.
 
+config SENSORS_TSC1641
+	tristate "ST Microelectronics TSC1641 Power Monitor"
+	depends on I2C
+	select REGMAP_I2C
+	help
+	  If you say yes here you get support for TSC1641 power  monitor chip.
+	  The TSC1641 driver is configured for the default configuration of
+	  the part except temperature is enabled by default.
+
+	  This driver can also be built as a module. If so, the module
+	  will be called tsc1641.
+
 config SENSORS_VEXPRESS
 	tristate "Versatile Express"
 	depends on VEXPRESS_CONFIG
-- 
2.43.0


