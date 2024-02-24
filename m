Return-Path: <devicetree+bounces-45507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8871586240D
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 11:15:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ABAEB1C215E9
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 10:15:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FD8E250FE;
	Sat, 24 Feb 2024 10:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="prIpvrHg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3068D249F5
	for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 10:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708769716; cv=none; b=Zs97GG1oPSalS6kt9r3/xyEshKVNMggZ+sfXTUBncqMtpOqnTdAcdQjyc5+UqG+v0bpC9D9tpehetbn1SNHD5dAIwgIQGysH2lNNMqkS+fSNyugdz6PTRWEJ0LJdv04q7+mR+L+9KEAck1Brk4kaDfB3FI0O7vph6vR5mh17ddE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708769716; c=relaxed/simple;
	bh=nPQPdZdHWxEYvyb9kVY8THmiKsCdd6pfv64gWqI0Ddo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Nu0RvDzqT8PUgQ5fpzRwH9F2Ra9XqtpesTVcP7DvGP/u/YsI6C9yWuwSP3jRAbjjcWGIBes87jDZ17+jfdav4CQ81ioigBQ4hYBXANz+5naj4wZzUmZMZYlRB9+4pPwUX5GQS4XM6FeKSSqbEkKV26cDpyBxPMPJYnSLr4usPds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=prIpvrHg; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a3f1bf03722so149632166b.1
        for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 02:15:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708769712; x=1709374512; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mREQhNxJ9n5S//Gh3G5cSj1rmAQc6jGJZXGvN6gjkRg=;
        b=prIpvrHghOPPve39TmalmxRn/3lJ7EM+1hcLaXK/Rns9rtYVIcPwcIx/rOrtJMy48A
         4wzDRirL6ChYjgqZ4xEK9+qdCxcfH1WSVLw0VAoCGjKBXSCL+mJ/AbuXbD/LoXkJn5xa
         1OtuHE4IaDyDTmsfwOlr9+6QxCs2feGSpcV0722ZQcrhxEN7z4UFB4OiZAoHFIPCPXeW
         GGMpieLXa2BZRu6UJO/AcF9EoMAqttBFNZ+0f5o1V80baGDm15/X8CCeg426t/k5dbTX
         /YC5k+QJbZ3M4Ot0AYi1PvSJz6gS7f8DAOc9k9Q3n7VajcIqSsE5PS7VmYyqNZvzw9+D
         LQHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708769712; x=1709374512;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mREQhNxJ9n5S//Gh3G5cSj1rmAQc6jGJZXGvN6gjkRg=;
        b=og8wW6CY/fotnNnAXdiDWOrE+tVx+QdfHEh9M6q9fLToU+IkYaCQc8JypYNip8a2BT
         7QlKEy7SFwR4gKbAsqC2QuGtyDxwBV3WlpGIKOvrgJQHQtPnKhPjmYdlaRaLWl8TmgfA
         kFxohLttXrkkfdSG6uoPmP5BHrpxy+aXWc65nJUfT7ZTjFoAlNskMnkVPRlW8C6JI0J/
         J7kG1qVnbUAYClvJ/j1xipccxCRs21Q8I8XjKhEKjyB8ZgHgaYAaBxzd/EEf60HONvu1
         umLFPrnUZJ4kdyOzJAurjwtZLLMcnQBxAGi8+qPFSYWzLeAgDXdunpNYbfh6rw3Z7I4+
         Idrg==
X-Forwarded-Encrypted: i=1; AJvYcCXhw1pTDVcTjaLsoikAxOhCJuBKbsxRhO/KzafnBu9Ks6q8MJOdbmN2i1ixz9IsJ0qniu1ybL9JYDDd37JXh6UcbJ+wMsmgsxXJ+g==
X-Gm-Message-State: AOJu0YwEAqQUq4mqjEmt6WirABZNIoZj7UsbqWCez32vEK+z4zyl1h9L
	hULDl/XDlFpLhSH6RoCpMdL4vifvt5uf+MErhQZ/7FMA+CBilaEE6+JkEjvxXk0=
X-Google-Smtp-Source: AGHT+IFd1wsOSbtmEoZPY9UWgY8TgFvSNpdgsrKO4NoWFMg7r9o2S+W7m1WEBECqg9wsum4bNWSNrQ==
X-Received: by 2002:a17:906:36cd:b0:a3e:f79e:ce56 with SMTP id b13-20020a17090636cd00b00a3ef79ece56mr1239936ejc.45.1708769712523;
        Sat, 24 Feb 2024 02:15:12 -0800 (PST)
Received: from [127.0.1.1] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id p10-20020a170906140a00b00a3fb4d11809sm446545ejc.204.2024.02.24.02.15.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Feb 2024 02:15:11 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sat, 24 Feb 2024 11:14:51 +0100
Subject: [PATCH v2 2/5] dt-bindings: hwmon: ti,ina2xx: use common hwmon
 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240224-dt-bindings-hwmon-common-v2-2-b446eecf5480@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1077;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=nPQPdZdHWxEYvyb9kVY8THmiKsCdd6pfv64gWqI0Ddo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBl2cGl8NOeF+9dZUBWDwTidWtC1yRuSeA3fnNSy
 e2Jh611ReeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZdnBpQAKCRDBN2bmhouD
 14aAD/9kk8lq9D1J8Tc1aqIqvQjknqi/C4lVAcN5JYC3LItTfjbXUVJ18LqJuGtNziJm3ToIh3d
 33neu5DvxlS2CDeOH/zu6cUTxPXBy0HZbojnfNmQsooD6eokCgIpKERDPRuFfDXTeyoCjh61/FK
 ZMJFW9S4zj28QhXq2ILZvnhmbmgZXiV+yHbwOU2nwwGw/66n1xd9gtdN80hQpHb90yCxpD5f9Bp
 Z6lfZzeqA2+bec9tfF9jd4leJxze0SB7Db5F4mxq7k29m078egSWfHoIkalBfLwuH+bvffvwWpl
 t29oA+2R7QE9eD/0rHNLrejFJ8jYqFnIXsCKwWSErDwyiLhVLQesad3cJcRsRyROwyuOQpG+IhR
 GGJNHL/2ZZleLIaV7fJVyvXQw1+215JaBQ/ZwYRjF/aUGpqPmjA6Ue03/frs4nAzxr12/bMyiNh
 aQeu/pEJG/SzksBkvW3FFP0j4GNEEmGV3jPPs2PhjWLlC27mXrrNCLXZTLh5Kxj3qLdftE8s+9L
 MBcpkpt2g9hX+5p04IxXA2BohfacwQ4xBLe4VnIZFZgXb/158NOfhZeo+9jANq+Pz6xuFJ0K4SA
 +7lumA3JpWTJ4tY7sSxC/L79FBhvPxev4QZxmXwbbkMu2Noxj3VadO/nGKZAcCOs/hPBvxNBFFR
 Os+S9u+Z7PkVbWg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Reference common hwmon schema which allows to drop the "label" property.

Acked-by: Rob Herring <robh@kernel.org>
Acked-by: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml b/Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml
index a099bb71415e..df86c2c92037 100644
--- a/Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml
+++ b/Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml
@@ -36,9 +36,6 @@ properties:
   "#io-channel-cells":
     const: 1
 
-  label:
-    description: A descriptive name for this device.
-
   shunt-resistor:
     description:
       Shunt resistor value in micro-Ohm.
@@ -73,7 +70,10 @@ required:
   - compatible
   - reg
 
-additionalProperties: false
+allOf:
+  - $ref: hwmon-common.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.34.1


