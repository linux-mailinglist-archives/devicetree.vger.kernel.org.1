Return-Path: <devicetree+bounces-218576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6D7B81DBA
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 23:04:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 26D04466DC0
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 21:04:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83E9B2DC339;
	Wed, 17 Sep 2025 21:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Sl1BYcI5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C89D2882DB
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 21:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758143067; cv=none; b=sZ4e8crvEe25d6NLGXLpImdJzWTuGSG27kUIiB3XYmSP6FLlstawXdjHZPiHhbIP3JdhkB55DrhY7gnBRf8uaW7QwCkgco4FKIivGFJ1V9r+inAil/pYsPsp/CCq3qeJTjPiIdo/FR6KADvii5QCjJlZ7oRFhj1gv/SyAsQ+gdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758143067; c=relaxed/simple;
	bh=XU1ekLOUNIJuvyNVZ49DfP0GKjHnS4C5v3J1EnzRwMc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Wrgu3UI5g1r+aW3h+BQIShbb5ijMHl8+vjdriAW2GZv2svNqU9e8TwOyklL/5MuCOaitoPbI9lfXD+OgP/qu0/Q8WcRy2+JI94PxxvSBoYBgz07WbWrb3E6i+fYLSVhAhHpn5H7Wl2E1WtJaLn40Jn677ta2YS/1BxLNJpSI6Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Sl1BYcI5; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-812bc4ff723so29302385a.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 14:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758143064; x=1758747864; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j1PFOqUngE3WRT3vXoG+nn2/r+9Vx7zz/vfzR0o6Iog=;
        b=Sl1BYcI5v/y1tOBssAu7aur7SWSRTrpAgZ6eXe57QHCEmO/alfzf/qiBAoO4YvDnW9
         deMcPyaieRxEkz5RYpGig39GupK3Cja8td3kGx77tA5jVpwNIBJdD2P38TvvblhZAK0g
         bgMbhI1lxT2L7pIU3PAchv9fk/lArarllEY7Vyt7csVOoarxp0zRw1cpb5aZsUdU9f9t
         uaKUO90WRC/3YqRp+XGZDvUNwakNHjhe9aNfdZylRi6Qe6DkivoBU5peUf0s+4SB+w13
         w+06rAOFgl9JCyFN0g6hNNaLq/LzD4TADv1ZBx7zqmQeGP2sqVi3i9mpWvz+zPLuDVzP
         4WGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758143064; x=1758747864;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j1PFOqUngE3WRT3vXoG+nn2/r+9Vx7zz/vfzR0o6Iog=;
        b=p8q8kBerNu0zNjBuh5tYBGAsHoNVnyqfAeh0f/E6o+cxROGDKLYNowKptOEPAAD9dB
         S05ZiLOV2xJsQRmoDuTCItifcISvMttgTgyYePHvFAye/akuPUjoO88255g5JsID3VwY
         zORKmFh5+vl4yFUZUTUCfaOTsqqeJDo0YOh8X4AXnF1Ir59Qogd8xTbmoYqpX2m4dcR+
         k+ltKN5CttIbhanTMEjFtZ0o1ZMeLLr0mf0WENShmUBdW9+PF03YOZ9rdxJ/q6CPIvR1
         2CRUiVngI/jzlD8o7lguY1YwMM0IMuq1NIxg18KGcgN5ChHFYfCZrUWATubbXniYge5v
         3Vmw==
X-Gm-Message-State: AOJu0YwiydZh2tLn7Du0IOreavJ0+Q/HEbkxR2lgaQ76RnB7NpN11ueR
	O+m6rFXodfCiUBfmg+z3F/FMs37oVb1XL2BSmMt4I1CQzITUrQe2sApJ
X-Gm-Gg: ASbGncupaC897SwtqDLc3BKKqpJAjy57rf7hT5YpZ7hpJS6zDnoHNvNtzug/ZhE8c4y
	YaJAiX2HFi8pjK4fhg1/x1ZVTMzPUIwV0jJn54NYI0NjnnHIYtq0d1/9JdiNlTk6TnadSR7yKwp
	+9ZWGUlmzZ+eS0LSGa0gSOvLm0xUdaU1uDIXGVpiAUeNpdAMKBlIK0Mms1HPuSAWJdIek4YtvtR
	8lN7obm90xPpT2jJK/nj1kK3yE+2ZOexJLod6jBbRMjpw7RbNT46zAh7NZ4UDxhjn8S/U1nNey7
	rJy11K0kkzabiYSN5yqhnwWvS06k84+uiiNzs5in5Hc1+SZUqWW/AwgHvGqDn/M0QEWEfcjQYmo
	HtQIWB2yR4zhYOb3lp3xjaTDVjePMHe/YID4CIB2WiNUk
X-Google-Smtp-Source: AGHT+IEFvNOShzKL68uD+NxZ49K1VTzvBYDXSCZdxnB+s1jOD/P17yqwToxMfbv19rJqIh6/MPoAXQ==
X-Received: by 2002:a05:620a:2a07:b0:822:f45b:a5ef with SMTP id af79cd13be357-8310a6416admr415410285a.29.1758143064276;
        Wed, 17 Sep 2025 14:04:24 -0700 (PDT)
Received: from [127.0.0.1] ([51.8.152.70])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-793543ffae5sm1897226d6.53.2025.09.17.14.04.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 14:04:23 -0700 (PDT)
From: Denzeel Oliva <wachiturroxd150@gmail.com>
Date: Wed, 17 Sep 2025 21:04:21 +0000
Subject: [PATCH v3 1/7] dt-bindings: soc: samsung: exynos-sysreg: Add
 Exynos990 PERIC0/1 compatibles
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-perics-add-usinodes-v3-1-a3629e4666ef@gmail.com>
References: <20250917-perics-add-usinodes-v3-0-a3629e4666ef@gmail.com>
In-Reply-To: <20250917-perics-add-usinodes-v3-0-a3629e4666ef@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Andi Shyti <andi.shyti@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, linux-serial@vger.kernel.org, 
 linux-i2c@vger.kernel.org, Denzeel Oliva <wachiturroxd150@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758143062; l=1475;
 i=wachiturroxd150@gmail.com; s=20250831; h=from:subject:message-id;
 bh=XU1ekLOUNIJuvyNVZ49DfP0GKjHnS4C5v3J1EnzRwMc=;
 b=qoi9lCpJ8AkWkqZ81/EvZO508mjaU6R+Gk9C1QakipPbjB8q7Q823odRC/wj3PM0v3lQ7YSMD
 4IM/iE8VhokCRIYYXwA20VgPFybc4sLeVrGugmXaVCYx7xAp7nD6t6s
X-Developer-Key: i=wachiturroxd150@gmail.com; a=ed25519;
 pk=3fZmF8+BzoNPhZuzL19/BkBXzCDwLBPlLqQYILU0U5k=

Add compatible strings for Exynos990 PERIC0 and PERIC1 system register
controllers.

Signed-off-by: Denzeel Oliva <wachiturroxd150@gmail.com>
---
 .../devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml        | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
index d8b302f975474a87e4886006cf0b21cf758e4479..173c51b17d9684113bb8254ee0c83e8e74de2fca 100644
--- a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
@@ -30,6 +30,8 @@ properties:
               - samsung,exynos8895-fsys1-sysreg
               - samsung,exynos8895-peric0-sysreg
               - samsung,exynos8895-peric1-sysreg
+              - samsung,exynos990-peric0-sysreg
+              - samsung,exynos990-peric1-sysreg
               - samsung,exynosautov920-hsi2-sysreg
               - samsung,exynosautov920-peric0-sysreg
               - samsung,exynosautov920-peric1-sysreg
@@ -93,6 +95,8 @@ allOf:
               - samsung,exynos8895-fsys1-sysreg
               - samsung,exynos8895-peric0-sysreg
               - samsung,exynos8895-peric1-sysreg
+              - samsung,exynos990-peric0-sysreg
+              - samsung,exynos990-peric1-sysreg
     then:
       required:
         - clocks

-- 
2.50.1


