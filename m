Return-Path: <devicetree+bounces-224241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B4199BC1FEC
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 17:55:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 880BC4E2531
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 15:55:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96B7B2E284A;
	Tue,  7 Oct 2025 15:55:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CWm2hSDM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FDBF42AA3
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 15:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759852510; cv=none; b=Wy7ZXNPGH17WSAIiiQrYhXpng9MK2k+8Lp2+EEf3JtsvjVEjjGh+ycGouWFbaHbb4lPtz0AVvobuhczAv8r/f5MiDAGrI1H/d7/NXdVmOku7kREO65CNNYY/9Ko8GiCBpc3LCymTZMDBQywGv8tSr4JAdE3nWj6AMI5tLbBHiaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759852510; c=relaxed/simple;
	bh=SrQ0izSJThSrT/IpzfFEkCObODKK/0BzDV6aFd4HJRs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=nN76wOa3LDVXB8XHn9F8GdSysgboymu1ysgyl6iWHW4ElfEMar1yN1AmbgSqo36gt68L+GMn/MCUviTE6nsASTBfKJNY8bbUQxu4gH3+zj9XZbl0wMGICcF1TmBFou+MWhQW5XgpigMIVDWsFvaCZUobWbiZRq1N1lvJVS4yDVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CWm2hSDM; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b463f986f80so1008349466b.2
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 08:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759852507; x=1760457307; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wwn4iJ0kBXeAlbYIX5lfnaPGY5x3TCgAKgWBsfGbbTA=;
        b=CWm2hSDM3JRTPGemHdI8shDXDd03ugwh1jEHL2MqtQEWXEQzV5KuGBvyEazeT9DFul
         OxwK/FgIryZajV16jRWeQrn7/InnYkrb1qsEqeYZUwnMnXijm4caVnitDE0gQHhVMv7f
         d8njaVOelVhtxlhjTKsjk+9zI+CLDjZRxuuS8oeEnwY2+BQVE8F3Oy8Z2Kw/xxkyzRG0
         Tcz61JumUMFVM+14yoL8Scg6aLM7aqIZPyPl3cbD+44wlga3eaTVST1uU/FFNIGAWCQ1
         hCnaM3sD0vEZMVeIb0Kuvhk94rYS9knOnvbFXm5oTaOKZZfxEe6xqERWhm13IwEm55BF
         sxnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759852507; x=1760457307;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wwn4iJ0kBXeAlbYIX5lfnaPGY5x3TCgAKgWBsfGbbTA=;
        b=V3EM98yk2x2szqoLNuqEVGM6cbtltxx68JzzHVffUhV6iLzF50+Jrcu4TjnNCqukUL
         WI1ac1fjfGjXNCKXPgNyPwmyRwCaI20CdzD6s+edTJ1IJyHvTwlWUKqPSWYOzfiIR9I4
         nQiIAxtzkD5Qxzd8/dol2Aw4Q9D6zZ8WrKLq8654gonNXq3v/TNqBCpUZDMcaO4nRD6+
         z4VfE2AzXWwdS94PGdNE0B2h5IDqzayP6UBfTaH+EXqVNcO3w4frJ9ie1cE8J5Xm2C93
         +jOAc+pzajcSIfabZBN+nkY7kBSXrENKzReprla6DvhuARJIiLX5dodnUC1hSd5fS00c
         Iglg==
X-Forwarded-Encrypted: i=1; AJvYcCWBoV39mmccyixtFnGTjG/b7fkcY/7wj0lXmVZItO24uDBOmRSBr9XyL3PXs+Xu2PnARvC4h+MlfJkO@vger.kernel.org
X-Gm-Message-State: AOJu0YwfWC2DoeUsg05Q2p28SaqJ1S8io5E1vJdwFICK/gULxKFbnl4w
	oenMAyiksOn3/d7LdRE3wrYR1RQdOZKacydWBDcNKgnyjt1X4kS/5/nJCYFTPYX+HLooMhCiUi8
	jFL/Dvao=
X-Gm-Gg: ASbGncvQM1gSHum/Eh6Ue5/BRBwpTSjlcTKcd/JMUFJfhWpmiBTS2n37x8BUYgjHE8l
	fC8mQO97CFt+SXnKK02XLcrHF9NEvZkPe7To5E40c75KfllYtLHU/S3BsE0GW1m+DXUWesX0sfV
	q61ENWp6rBEnm+zk6c/OerwozuXpE7xvBhxJSsKimvmh8uMMXQUpg+1NWJeYmAby0N8FbgfrOEV
	TkK7PIXiplFSLrVjeCE24bIXCPNOREngjvN1HtL4ZaBcR5A3djZKfPIB2rnH98/pzFi6mlVjPM0
	jUUic0zL0XpC7EkhsnhZuOYq02e5JiqVGmvcP9nSTH8xya+mqJ3bS5J3pOQ+hCD/OTn5EKSDZWo
	dKwzB2cPLQutkTce0tNJUl0UgJ/XerqzLAK+LKSF3n/UiAT4fXQZSrAyNxOEbYD/mZ6SlbXWJn3
	338bWz+gsl2i5WJc7pRHB2XGmGjjRS3GfIjbisZbiMXgq1X3FgN80=
X-Google-Smtp-Source: AGHT+IFMkqhgkZjYTFJJlsb6ohBZEtxooSZT5I4ro08N0+thklTNSC1wFRUbLDiJOSsfJFdfZDi8ng==
X-Received: by 2002:a17:906:7312:b0:b48:44bc:44e7 with SMTP id a640c23a62f3a-b50abfd68b2mr14143566b.48.1759852506937;
        Tue, 07 Oct 2025 08:55:06 -0700 (PDT)
Received: from puffmais2.c.googlers.com (224.138.204.35.bc.googleusercontent.com. [35.204.138.224])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4f7eacdfe6sm225312766b.27.2025.10.07.08.55.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 08:55:06 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 07 Oct 2025 16:55:04 +0100
Subject: [PATCH] dt-bindings: usb: samsung,exynos-dwc3: add power-domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251007-power-domains-dt-bindings-usb-samsung-exynos-dwc3-v1-1-b63bacad2b42@linaro.org>
X-B4-Tracking: v=1; b=H4sIANg35WgC/x2NywqDMBAAf0X23IVoDSn9ldJDHtt0D24kW6tF/
 PcGj8PAzA5KlUnh3u1Q6cvKRRr0lw7i20sm5NQYBjPY3hiHc1mpYiqTZ1FMHwwsiSUrLhpQ/aS
 LZKTtJ6XpNV7RmjGYaJ13twCtO1d68XY+H8/j+APzX4i2gwAAAA==
X-Change-ID: 20251007-power-domains-dt-bindings-usb-samsung-exynos-dwc3-504b0c57a78b
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 Krzysztof Kozlowski <krzk@kernel.org>, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

The DWC3 can be part of a power domain, so we need to allow the
relevant property 'power-domains'.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml b/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml
index 6d39e50669447917a2cd94dacee5822467eeb36e..3098845a90f342dc29f4343fc0ff5cec009d9629 100644
--- a/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/samsung,exynos-dwc3.yaml
@@ -36,6 +36,9 @@ properties:
     minItems: 1
     maxItems: 4
 
+  power-domains:
+    maxItems: 1
+
   ranges: true
 
   '#size-cells':

---
base-commit: 3b9b1f8df454caa453c7fb07689064edb2eda90a
change-id: 20251007-power-domains-dt-bindings-usb-samsung-exynos-dwc3-504b0c57a78b

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


