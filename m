Return-Path: <devicetree+bounces-33174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D620A8327C9
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 11:45:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0664B1C21154
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 10:45:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAA794C61E;
	Fri, 19 Jan 2024 10:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M8PDrjNL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0664C3C9
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 10:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705661133; cv=none; b=KtlH+9xdYf/MLdWS5r32aCJYgY2hqd0jHw5HCs9ui1Qn5wm7dzF6swYziZyvSCYDSTrAGHf0cdn5y8CJzVlH2jCZtvYlcMspJHPXRa2TI+GYTBaj45s7wEAPhNp1BNFVb7ZgdubOJUNfPTK/AfM1XSBW0oqGvrCHMJPYq7L399E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705661133; c=relaxed/simple;
	bh=37jpLv6HsDjfq58UT+g6uG00C2Y7+aRvCtuRbHaslLY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=U+/HUqBDtfTQeGP8/r/wqZR2dKVYppoeAJLFOIvXW2WpQz5YHuGEKAtHJrwU1DyNQoaV/7PJG8e5Knrj07hzODPfHjr1LjWPern2BdRdOZYq9rjhzzkMX2g9OIBfSmMgM1BpYmh/c7NYpVqm/SN9R0vtUMoEKzeZC9wz3O9MCms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M8PDrjNL; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-40ea084ec14so867405e9.2
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 02:45:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705661131; x=1706265931; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H74QYBuoWbNPw1IrHpaPtV5Fr/Jo8QfnPV+pn460u7Q=;
        b=M8PDrjNLebLy9eSHsN/cvhQ311/guZHaF8bjFlOIRwXxQKwsyXEMETqssTV61V/RS0
         qm7SwmDz8dzpqMG0mIm8vnlJNo1GYSlkePKjkvxIDCrvcDvsfmT8u38AKclWqPuIVr8n
         5kH1R4gZl+YhxNTH2zqIlWXy46HhW3+GDcmkGKB1+2W3WAKLfrDJn/JndgWoY3AMVmzm
         HdDdpYgrciw22SFl5612fNrP+dqIi/MSg+GOZEdTNQYJt/VUxviYyF3UeeMHsHJrVnLL
         kOQDSMtqc8Sx2SIkUPXcTxt8xf6hvI+0qdtqXhOqOoz1+sLsRqM9pZidz8vTMYDIdytt
         nXdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705661131; x=1706265931;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H74QYBuoWbNPw1IrHpaPtV5Fr/Jo8QfnPV+pn460u7Q=;
        b=aUy+QyCErJ1H2XeLss/ABXyQU7Ettn0V4wlDc4+3V7IZ/rdkhu+khQfvibZR3tv4/n
         35JpPfR0R93XbKF9lUe7u7olaHvkNULkvZe+mh4PEej+aihFrrUkse9N3mT/qna87gAm
         j83VaNG8R3ZIfFiN0nY73BCkwLQwiDdrka1Evni81BDE9/tIlwq4NmbLNX+NhvFdVj32
         45+YeJyqf4dOn4sYAJixS68AD5Va0ha8YxqrbtTofj2+RNrdMQ40Ip8h6mZrL6S+RWye
         1Ggvu1tQwHYpiF4Ld4Rb6FLlIDj+BuT8B8Sx5JCADuW2UeQ1uiAfEN6gr3lviQLAXkvt
         ljBg==
X-Gm-Message-State: AOJu0YxouYUoxs3X6LFBQHceytcc1YRS0aEv8Vv/YptA04TrU02X2SVX
	gGvNvVNi56iofcNM3oPl3/YA38UXOg6hfzeJlXkJAcTJN9w2uau5xwwj0ROZ1CQ=
X-Google-Smtp-Source: AGHT+IGe2DxncF/tdHEyEyQetNG3qty4lJaRlXD9UVpv8DePV8y20R67SD2hJpbDmH4wko4vUgqtqQ==
X-Received: by 2002:a05:600c:2152:b0:40e:6587:edc8 with SMTP id v18-20020a05600c215200b0040e6587edc8mr1512939wml.91.1705661130766;
        Fri, 19 Jan 2024 02:45:30 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id fm16-20020a05600c0c1000b0040ea10178f3sm77470wmb.21.2024.01.19.02.45.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 02:45:30 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: alim.akhtar@samsung.com,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	peter.griffin@linaro.org,
	semen.protsenko@linaro.org,
	willmcvicker@google.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 02/19] dt-bindings: serial: samsung: do not allow reg-io-width for gs101
Date: Fri, 19 Jan 2024 10:45:09 +0000
Message-ID: <20240119104526.1221243-3-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240119104526.1221243-1-tudor.ambarus@linaro.org>
References: <20240119104526.1221243-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All gs101 serial ports are restricted to 32-bit register accesses.
This requirement will be inferred from the compatible. Do not allow
the reg-io-width property for the google,gs101-uart compatible.

Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 Documentation/devicetree/bindings/serial/samsung_uart.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/serial/samsung_uart.yaml b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
index 133259ed3a34..0f0131026911 100644
--- a/Documentation/devicetree/bindings/serial/samsung_uart.yaml
+++ b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
@@ -143,6 +143,8 @@ allOf:
     then:
       required:
         - samsung,uart-fifosize
+      properties:
+        reg-io-width: false
 
 unevaluatedProperties: false
 
-- 
2.43.0.429.g432eaa2c6b-goog


