Return-Path: <devicetree+bounces-133104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8A79F93A8
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:54:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 784A816A153
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:53:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C730B219EB8;
	Fri, 20 Dec 2024 13:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SI13F7aW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E215821638E
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 13:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734702603; cv=none; b=mEqxqQrRTFQqLm1PLc1F+YxWntQQ4EV6SeJhd+y3azKWfTWKTc3LYzz7hfY1qU3DmTvC9ApOa8DXblBbZFiJUHfX0LqKqDOseepOrXHK+U9iOtlHFW0s+gm/tgw3isQBO8wazCDpa34RqE3yIhi6yRJ6hoGDxNPd+hNsh01g0Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734702603; c=relaxed/simple;
	bh=98UdmgNXZR4Odm8WAK3DNauL946xSKIV8vPYFoFzXtc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EoBDcyhFFXjE/4m3MIVbWAkYaW9Ad76TCt6Kub1tI5KdIQ/t0l3EbHJt4E6MrQUrf9eAOatz+p7g9G3A2WTQltWWKGra9XF+z+QbYSz7nCSM762QnTMSavxMITDZ17F268i2LMKy3HDaU9eZyIDKhjNQLLmldqvOILiFm8QGmn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SI13F7aW; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-435f8f29f8aso14149085e9.2
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 05:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734702600; x=1735307400; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vYqkobOK+CGs+TgrhYtB4J6Yl7NbzklVF+5ziOlA9ss=;
        b=SI13F7aWZl3ze+TueJuL9j8JTC/efTOY+yljHQaEfuee6GFFAHPCCBkXwhCWOhJtIL
         W3SIv5QC2jH1CybtmnJxWj7it9TImIY3uY4eq5HhN30B91LcASl0uoKXsSbdA7bGOGSq
         yICR7nrilO3WtqeSG1X8dUY952nM7ZGCJK2Ny2bZqyBQPhP6iBHFf7TxAVFL+kut66zQ
         AXtdse/24bgOBzCyEHWXVktyeRRBbHuso6F5tP+iqZBuWtwXVuDcxVDAkCX3XwV4u9BD
         azOvY1EChZeol55huPOgRYE0jI+pLc3xhS/6S3ThsUfpan4Z6wtxRGo9EcGLqIvyWIIY
         vTSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734702600; x=1735307400;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vYqkobOK+CGs+TgrhYtB4J6Yl7NbzklVF+5ziOlA9ss=;
        b=TNJG0+KqkGczdF6FmpAUXFqdUTZLsBH5HVcuGHLeQhdBa7hy3xRzHm8LZApSHTiAJn
         0YTJ7mO5fXeB+1RY01nbOquYN2vcICQG30JjzdESvFwT3iyB4OtbHhAo4QvG95CEj+rv
         nXsuczx0A+v3ej+Fuial28ApTvNuwLgl6bcKopbCOil8uBe9KnQXJmJpdTuv0hLz4vFH
         ULKAazhAH/LRYLVOIEOtcrA3DesHxT9lKe9JV2ct2V4oxZ1pJH5qmYiAw2C5/E5VEZb9
         jIyDeJhv1RKHwsvJ6KGpwmq+rGGtpSH1CLX3RbrhnUyX1cH8xLDEyu4es+xPGab4k4nG
         gQvg==
X-Forwarded-Encrypted: i=1; AJvYcCXHPJoMevJCO1fwLyNky8s2YBFQEfkLfs1QvG5jwnJ0+kd7Rg3a/FnIEOZuwPqkHANPC+67+KdRwdiI@vger.kernel.org
X-Gm-Message-State: AOJu0YxkqHlt/S+kMmH0p8QNomzBNK39VFYH3bw/1knmFIKUNFunVUKC
	4KUHb9p35qBuJmKDE2H//rGiDUN2COKcDmxkO0f+tdviHy51+g/roMGcC8xJwu0=
X-Gm-Gg: ASbGncvSQy6UH5opDfSPABFTxhF+OobFc4v1oDDGGC9bek+jpEYvHMwi+1oKlQ3wlsl
	lBDnxeurl3f94f/CXe300a/69COekA+YvpGSi3h5VYj2PHQexXPsy+Vk68TVXedc3272bhM4vzi
	82vKK+LMXYC/7oV5T6s7sUJFbpm3hBHPdURVYiHjHkPIV1wc4pbl+XX4t9FwZmF0lx9m0FdLYsC
	/Zi21vRRnpheyHlKlLilcvaA5exkTr4bAPK8J27rco3/a+vCWEOEWE0spq60tG4YjoQWXs4hZD4
	UGoNpdSVp51toFvmT2W7sT0qwgmqXTYDODFL
X-Google-Smtp-Source: AGHT+IHmrkvtNC0bpXN3WfagnYqTmX3f/cgHqADtcvMIQyUNWR5Q5Jsopz545p5OgeVnpUJdIYXklg==
X-Received: by 2002:a05:6000:178c:b0:385:dfab:1643 with SMTP id ffacd0b85a97d-38a221ff705mr2979256f8f.27.1734702600234;
        Fri, 20 Dec 2024 05:50:00 -0800 (PST)
Received: from ta2.c.googlers.com (130.173.34.34.bc.googleusercontent.com. [34.34.173.130])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c832e74sm4044313f8f.30.2024.12.20.05.49.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 05:49:59 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 20 Dec 2024 13:49:56 +0000
Subject: [PATCH v6 1/5] dt-bindings: mailbox: allow #mbox-cells = <0>;
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241220-acpm-v4-upstream-mbox-v6-1-a6942806e52a@linaro.org>
References: <20241220-acpm-v4-upstream-mbox-v6-0-a6942806e52a@linaro.org>
In-Reply-To: <20241220-acpm-v4-upstream-mbox-v6-0-a6942806e52a@linaro.org>
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, peter.griffin@linaro.org, kernel-team@android.com, 
 willmcvicker@google.com, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734702598; l=1213;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=98UdmgNXZR4Odm8WAK3DNauL946xSKIV8vPYFoFzXtc=;
 b=L27tekKbbbVcK6U5BoYlAcu5YGoP7VilFJa2kRv2a4piHaSjgl6c8pZq3lyr2xXRNPu1TQkQh
 AuzOHGFoQW1DsplvHHW5KhfrQXyL0uUAXa/BQ4Qcems105t6N1TPsWA
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

There are mailbox clients that can discover the mailbox channel
identifiers at runtime. For such cases passing the channel
identifiers via DT is redundant.

The framework API will be supplied with mbox_request_channel_by_args().
It will allow clients to request a mailbox channel using the runtime
discovered channel identifiers.

Add support for referencing controllers solely by phandle.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 Documentation/devicetree/bindings/mailbox/mailbox.txt | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/mailbox.txt b/Documentation/devicetree/bindings/mailbox/mailbox.txt
index af8ecee2ac68..fc31a4a3b637 100644
--- a/Documentation/devicetree/bindings/mailbox/mailbox.txt
+++ b/Documentation/devicetree/bindings/mailbox/mailbox.txt
@@ -6,8 +6,7 @@ assign appropriate mailbox channel to client drivers.
 * Mailbox Controller
 
 Required property:
-- #mbox-cells: Must be at least 1. Number of cells in a mailbox
-		specifier.
+- #mbox-cells: Must be at least 0. Number of cells in a mailbox specifier.
 
 Example:
 	mailbox: mailbox {

-- 
2.47.1.613.gc27f4b7a9f-goog


