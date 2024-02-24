Return-Path: <devicetree+bounces-45506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF6E862409
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 11:15:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A8C0D1C2157A
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 10:15:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F27C22615;
	Sat, 24 Feb 2024 10:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OSLVfP8Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FE1620B3D
	for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 10:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708769713; cv=none; b=qf3RNxqVROPRchv6OIa22EN5l7fbhBOg1HUyD6vdT35pJmnb+fNDh5rekK+qFTLI6q4GYCcF4FtCnQvJF7qZXAfbkH26B9dCXzYLC8O1JrcV6LXMKyVOmsaNLjS/x/VBFt6nPC2Zm2/Ylxt7eqsqaJeqLAbJpA2UfMN6nSMaXNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708769713; c=relaxed/simple;
	bh=l4m2dqEyrF9Sv3N7Zx/W2SjiPgbLZ6B/2YNlzjOwnJk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=N1iIKtpwOf2IqEV7+GIwGA2TVlrg/PezMf4NFtcr1pY5A5kaQKpBUrgevRGL0IAE6DopzlvGlhtf1Y9K/zS9ZlagbJfBRwn3IEb4K7NUzaG+zvL53qQonIsoHNon56DgxGDzKu69PT1fhjLXMOUwvVHvpUeaKt365pbNGpQY3lE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OSLVfP8Y; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a3566c0309fso147096966b.1
        for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 02:15:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708769710; x=1709374510; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D3hgZ3Hoy35cVx71s4NjThIl/1iE3rrM7PF8rQk+MLU=;
        b=OSLVfP8YYsTvhcXYCgUeI2Yvzy5I/K/FxU9zyeiX8Y3eycoqmFhp2IUpGmN55V1Sf7
         7B8MVvFdhsZFkgMAAKPtq9JeCUxonSbcM+OPekOUyf1tVMGICus1GncUPolP4ilQUU0z
         00pX6r7b1TtOh0hfb7D5MhmN6GKGNYzBKjUBnOLhQOXlcwdp/ww9A6OyG/Ug9gxPWpke
         Qu5sJPFLQ+1Lj/mzHqYSj1qxFtHXROqBhxC3CQp9GdN+b+dXv6FjtRUVqCgOBzKclBed
         VsggnliBxUCsZ+tpGcTbCQ0UY2BHt4mkw2lg930Bg+cAKzX9hBk632goOLvfKmPxjxwT
         vQ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708769710; x=1709374510;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D3hgZ3Hoy35cVx71s4NjThIl/1iE3rrM7PF8rQk+MLU=;
        b=OlztonBHW+3eV0KCxYwiYmEqf6lpmJlEnmrzZCedJQVDuEOxwmAuQoWNUMDQa+M5pM
         PL5SGViWRVNkF8z9YvUbxzdRQkeweJnnEjrHXSKzQiWovtHqelkzl6hjWtJiW2bOQ4Ux
         Wvk/nWp9yEJ1ITRDXblnnC6ilM2eABRv+gKlwcIMlcZJIGM5fPpUX5zv4Ilq9bB7iOaE
         tLOQ2EmI+e0rfGAmHx+B9HhKlMjix5HUDngeYtAtwgebGou2sG7wYg3wkuwnkumzXOyh
         9YU7BFPc12VVbH3n+oFSzkccQyqiF2W5G+IekFdXlst/3MIAxRupKfT6F4J4sMvYq8xj
         of7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUWchfJc7YyZ2bV1YBD7XnrLu9/baYNphBjnQifYJSHD4dzUONkAWXlFLbtorhflqqf3uD5KZvChA+9TkWAVYg8YEFu4MMw5Wis8A==
X-Gm-Message-State: AOJu0YwTOUuT8pR6+PyRqKRA3DiuhjRW8oYGw8YAapeehOosq6djFPvr
	oak8SjL/PHkGMTB+fyuKS3UbsnYHYT2IjOKVcGM/aqkXGinSZAPzut8KtbnWer4=
X-Google-Smtp-Source: AGHT+IG1Jc9nJsRD/qjiQJ+nR8ppw8RruWeau58pKNYnGma8+kfMmhPve9+BI7tDLooWCEdf/kBISQ==
X-Received: by 2002:a17:906:528d:b0:a3e:e9e1:1c08 with SMTP id c13-20020a170906528d00b00a3ee9e11c08mr1404530ejm.66.1708769709910;
        Sat, 24 Feb 2024 02:15:09 -0800 (PST)
Received: from [127.0.1.1] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id p10-20020a170906140a00b00a3fb4d11809sm446545ejc.204.2024.02.24.02.15.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Feb 2024 02:15:09 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sat, 24 Feb 2024 11:14:50 +0100
Subject: [PATCH v2 1/5] dt-bindings: hwmon: add common properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240224-dt-bindings-hwmon-common-v2-1-b446eecf5480@linaro.org>
References: <20240224-dt-bindings-hwmon-common-v2-0-b446eecf5480@linaro.org>
In-Reply-To: <20240224-dt-bindings-hwmon-common-v2-0-b446eecf5480@linaro.org>
To: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Delphine CC Chiu <Delphine_CC_Chiu@Wiwynn.com>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Robert Marko <robert.marko@sartura.hr>, 
 Luka Perkov <luka.perkov@sartura.hr>, Zev Weiss <zev@bewilderbeest.net>, 
 Eric Tremblay <etremblay@distech-controls.com>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 linux-i2c@vger.kernel.org, Michael Hennerich <michael.hennerich@analog.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1227;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=l4m2dqEyrF9Sv3N7Zx/W2SjiPgbLZ6B/2YNlzjOwnJk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBl2cGk1mrABmK/45aoXvbUnmt7qHzmfLpSgn1XO
 MtfKpDW7/yJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZdnBpAAKCRDBN2bmhouD
 111UD/9epRcrbGx22v3j4QZLTCLtiZeS8wQrhzXUsv+JoiwP2RDezh/W/JfG+WS07FzlofqISSK
 TdMIH3axFn5l0afm2Oa1SklpIwo/y++/OWIAJN929h5Wkn2WTO8y06zBO8H1dUjBTQ7mea/KBOg
 T8UwyPnLGB9CcQ7g5ucWEu9+rUaoEt6Bj1DnSI5+qIgigC3B4+wGsDSYlNuVb7SGssyZ7LpQo4F
 vhDDnsc8P9SmuRSvIH1PfNVdOXuwfgMTUjKbMTiq9+IxQHT/PfNGbpojxpeEJW1ZTyocUHYUq+o
 aL4J647n094EGwFmBwno0GdK20X/jgshw9MQY9WmGftwPOyXkgB1rH2LmUFQJprCfNt+KeTFBi/
 ULDOrZNcuEQI4yOI6OE2JqKGjfiUBSEkjuKNicRIDB+6uV6xMxRYMEiwK8nB7ztylAp9cw2lY4B
 QQtx8K7nG4iUoAQWQm/gjssQujTYecLYsbIB5A2nL7rr20cMFCNi8f6zWsR7Wcz84jY4W3YgMLo
 rC7eGBGJsOhtJi4iz0OwNnGH1eeKzTfPNPmpitNOCUMbIG5W2ZmJaVKMjY/fduNMTkMIHPnpqPW
 BPYweBv17WupEz22XQKy99PGhFYZP47V8C9lOvxjjxNWrnqBZ9/J5Y4OtUdWy3Rmlk8CPrUcLar
 rb4PuANXHBzL6Eg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add a common hwmon schema for two properties:
1. "label", because Linux hwmon core code parses it.
2. "shunt-resistor-micro-ohms", because several devices already use it.

Acked-by: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/hwmon/hwmon-common.yaml       | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/hwmon/hwmon-common.yaml b/Documentation/devicetree/bindings/hwmon/hwmon-common.yaml
new file mode 100644
index 000000000000..dc86b5c72cf2
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/hwmon-common.yaml
@@ -0,0 +1,19 @@
+# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/hwmon-common.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Hardware Monitoring Devices Common Properties
+
+maintainers:
+  - Guenter Roeck <linux@roeck-us.net>
+
+properties:
+  label:
+    description: A descriptive name for this device.
+
+  shunt-resistor-micro-ohms:
+    description: The value of current sense resistor.
+
+additionalProperties: true

-- 
2.34.1


