Return-Path: <devicetree+bounces-226050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7F7BD33FC
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 15:42:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 32D924F2280
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 13:42:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27A253081CA;
	Mon, 13 Oct 2025 13:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WpUec/18"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA123081B5
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 13:42:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760362923; cv=none; b=tyRaSvLeLulO2q9Ln+ZhdbWBzC/RhwPdkQVtG7ZqDVaTD2aPwwShp4MxpywPqr0CrEP6NWKhtAeeB+slTrRvKiIPg7fJ0iQW+u4L5GDBvDoh3APuV9lGYCD8WTlWmBaPz0bUERJjLtWSX8K7O/W3eiH2vgboDiqCGwwsa4qmEK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760362923; c=relaxed/simple;
	bh=E+oiUZgen68cnjAENtdOLkMPulLFXMt4mXOQGkGDE6I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kp00aKhprEIHTbgyh/FvdfGjdXPJrqcjMzEWDK1XhTv1YzsqmxgDjJuqiSn50bNHuf0ckIYwGSMAV9+iKr5ZeM7B0m0ur7NewPlEJE+v4YMIHjzgLQnaTimhlnUx+hRh2ir/EFe8CweMbO50A9/XYKlYt7fm2wjn7ubI4FioIsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WpUec/18; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-634b774f135so6805187a12.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 06:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760362919; x=1760967719; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4bdqoW+LR5yZxLdoidUpEK8sPbCwQ5DxDfyq2+aB58A=;
        b=WpUec/18UuhKo2VRFbCUDr4lDzIFwAArkbjvUOa3ONab+Snb0GigVByjpYkFtpZheX
         ML7CUKAlJvp8ri4RRzOMDK1jQEUHAsBIAl6KjqJb6pXa8JvP12796sbfPZPMNOa7Gx+N
         58ckgJ7cAIYtzDIardYx71pAQ1tXfykIqmFy/jbcMhw1gC69D6AJFwMr92N8kYUGhZxM
         wf7+q6VuYu5Uv3djKjQRoLnzXQ9Zu8uHrRir2n2JqY+mY71L+3FfH434Kz4c9X9CYMdl
         vw6l8sSAPFRfuj9p0KIeiI4DdPCuPCJiUKr5j0O9QEvI3JwLsPpMxlUprz+2/tn0FzKU
         wu1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760362919; x=1760967719;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4bdqoW+LR5yZxLdoidUpEK8sPbCwQ5DxDfyq2+aB58A=;
        b=xJbBYKNE4fSAujtKUFJtpkH5zoZtQMS9EhVICpGZZIDrmmbhqRxQ81PQCf/fbk9HMf
         QEXkr5WyslIupChjmJwO2RKfAFm1zgXQJ2ssqA9o09XoTlKm5qhFunOK5USH7ctDQQIB
         UwJv/gE/REaonAgp8n9haC76/j150Ac3R4ETivqQJCw0KjDyPlUrxTo3fJAcBX77nX0e
         JoErOSqaEwGUfsxzvPgVwON55Bp24So0rURYT+EwynjF2CGOkLhtxUI6wOZ23D0qHuxB
         pYz6mGBFWEcwkpl3t79YRhu1pnchtvRWIh/pdbQ+1LireTxYiJtG047O/se7mKADA5n5
         csRw==
X-Forwarded-Encrypted: i=1; AJvYcCVAvs2R+zbS+iCcJUWXN8aulJ5tg4A8OzXlAUVbjIgXVwWsBlGh11dZBwAQUxxdvKh2b4lPyJJlvWLH@vger.kernel.org
X-Gm-Message-State: AOJu0YyKOtskvUvE2ylQ2l6G3iB7bT33n7A6as2zQgcHBH75ZBpdy4zB
	sOIZ3qQw+UH/SOyrawWkC9bEO1FvTrN8i1THdeHqcox58jhvlwxLtIrI
X-Gm-Gg: ASbGncsCq/zmyhslCEnut1ecD3beR8f4OqB9f59JqcaLXJSqvMMOVtn/fqZ73bsL2rL
	UNS4b8Qb0r3I9TRIwDaC9K22Za0l6XihxkyPJZWaAM8ZOGO3k4Bsc1ZdJy6OHI0HvJ3/5e9NKBV
	7bwg4AQ5HjETEdXkymL8trS0n+j/n5+cwLrvXUGn14DnwTp+SHVDfEyH6lOaFJSpw+aPX9Obl/9
	sQ3yU9kC4XnzVHV8+q1vlJPh8TWZnoBnaOj1OkJ6QpAflTOUrOo4Mqfuw0GQUGiCePXzxFJ/Qwn
	wr8HrYkKgEwdz7fk4/VWDXRnh7VD9FHWTCD8HDMu80OVeT9/5vYMUlSdshx2S/N0et1qR7wbttq
	n8Ri1mamoKgcXPbTRv8v8SbkvFHDzMbc22gSxqVFQh88hdfxBzV7ngylLwOYKAE6/eSDBXp590W
	5Lpot5TcZRryR7
X-Google-Smtp-Source: AGHT+IHJtzeYQurhnlAW9tml/nOCL3ntwqVOYGzJy1iG+4nFDJLqIFVys/FUilJjcxgefmjojh9Slg==
X-Received: by 2002:a05:6402:50c8:b0:61c:cf8d:e51d with SMTP id 4fb4d7f45d1cf-639d5c2f5a8mr20630779a12.22.1760362919103;
        Mon, 13 Oct 2025 06:41:59 -0700 (PDT)
Received: from tablet.my.domain (83.21.75.22.ipv4.supernova.orange.pl. [83.21.75.22])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63a5c32249esm8729019a12.41.2025.10.13.06.41.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 06:41:58 -0700 (PDT)
From: Artur Weber <aweber.kernel@gmail.com>
Date: Mon, 13 Oct 2025 15:41:49 +0200
Subject: [PATCH v7 2/7] dt-bindings: clock: brcm,kona-ccu: Drop CLOCK_COUNT
 defines from DT headers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251013-kona-bus-clock-v7-2-8f473d99ae19@gmail.com>
References: <20251013-kona-bus-clock-v7-0-8f473d99ae19@gmail.com>
In-Reply-To: <20251013-kona-bus-clock-v7-0-8f473d99ae19@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Alex Elder <elder@kernel.org>, 
 Stanislav Jakubek <stano.jakubek@gmail.com>, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, linux-arm-kernel@lists.infradead.org, 
 phone-devel@vger.kernel.org, Artur Weber <aweber.kernel@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2725;
 i=aweber.kernel@gmail.com; h=from:subject:message-id;
 bh=E+oiUZgen68cnjAENtdOLkMPulLFXMt4mXOQGkGDE6I=;
 b=owEBbQKS/ZANAwAKAbO7+KEToFFoAcsmYgBo7QGf+ItKfJtMmRNf1EyGe+DAhXxvE0FB8Xc6T
 83+l6P8PoOJAjMEAAEKAB0WIQTmYwAOrB3szWrSiQ2zu/ihE6BRaAUCaO0BnwAKCRCzu/ihE6BR
 aPJED/99jvVa+gYxsmfku8hqbnFcbTpy+1rL64+7ChnpDDOCPdBm9QZy3EIrI8kdBmDM/Mvnkos
 6Ch9+AXNcxcMJFWRvFLHQ4dBKCPBVdAwwm8qLE8KzrbOs3Cxt7CxnxlkRgQAYkzXr/va10iBxm3
 g4EbK9bjqwsioUSLpTofaQEMW/Q6kwO+tLtEHaDGy05NE3lZyW1eCD7Nk8wW5dky/oRoTHtSENu
 WV3gbXwPCUxqJXfqaGwhdkboXDbiQM9f3vCSaf4qMVzRPjvflptITwBBtJ/8hWAZKHvpe/HJ9Rt
 ACGdZVSxYSs8MZHavFpOET3Kma70j+FpO+BV9QYEcVKRj5JzKPxEQf6VMRIAh4tHHGVa3ie6YOe
 fjWqQbkCFYYuVepxgU4ErDN8USVu+i1lcnp7b8yNyrwgMX8jEK3Qh057xtnXt5amoGl1CC48vi+
 hzb5jpuXFEMLsoI7++jWQoMdbv2N2oRNZXJ0dzKLv7Kvp6Sy8ziP/wZIf181ElGMVweMg1LGljI
 +FIqPhVmTgKwXYsCuyV8/cnGif3jwdkiO0gzgatXLEzOUw4FPPiTij4gVzT6Do1YA6XT5m6YRAo
 bJSuMIOK8C2ooGlD2BrMHGHOoSuIFc1coN3h+k3Skc4FlubsZjCY5PeFAvDKRjpa7j+H5WXqobe
 uf9fYV4PlZKuuFA==
X-Developer-Key: i=aweber.kernel@gmail.com; a=openpgp;
 fpr=E663000EAC1DECCD6AD2890DB3BBF8A113A05168

The CLOCK_COUNT defines are not used by device trees, only by the clock
driver. Keeping them in the DT binding header is frowned upon.

Since they're being moved to the clock driver directly, drop these defines
from the dt-bindings header and only keep clock IDs.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
Changes in v3:
- Add this commit
---
 include/dt-bindings/clock/bcm21664.h | 4 ----
 include/dt-bindings/clock/bcm281xx.h | 5 -----
 2 files changed, 9 deletions(-)

diff --git a/include/dt-bindings/clock/bcm21664.h b/include/dt-bindings/clock/bcm21664.h
index 7c7492742f3d..7a380a51848c 100644
--- a/include/dt-bindings/clock/bcm21664.h
+++ b/include/dt-bindings/clock/bcm21664.h
@@ -21,12 +21,10 @@
 /* root CCU clock ids */
 
 #define BCM21664_ROOT_CCU_FRAC_1M		0
-#define BCM21664_ROOT_CCU_CLOCK_COUNT		1
 
 /* aon CCU clock ids */
 
 #define BCM21664_AON_CCU_HUB_TIMER		0
-#define BCM21664_AON_CCU_CLOCK_COUNT		1
 
 /* master CCU clock ids */
 
@@ -38,7 +36,6 @@
 #define BCM21664_MASTER_CCU_SDIO2_SLEEP		5
 #define BCM21664_MASTER_CCU_SDIO3_SLEEP		6
 #define BCM21664_MASTER_CCU_SDIO4_SLEEP		7
-#define BCM21664_MASTER_CCU_CLOCK_COUNT		8
 
 /* slave CCU clock ids */
 
@@ -49,6 +46,5 @@
 #define BCM21664_SLAVE_CCU_BSC2			4
 #define BCM21664_SLAVE_CCU_BSC3			5
 #define BCM21664_SLAVE_CCU_BSC4			6
-#define BCM21664_SLAVE_CCU_CLOCK_COUNT		7
 
 #endif /* _CLOCK_BCM21664_H */
diff --git a/include/dt-bindings/clock/bcm281xx.h b/include/dt-bindings/clock/bcm281xx.h
index d74ca42112e7..0c7a7e10cb42 100644
--- a/include/dt-bindings/clock/bcm281xx.h
+++ b/include/dt-bindings/clock/bcm281xx.h
@@ -27,19 +27,16 @@
 /* root CCU clock ids */
 
 #define BCM281XX_ROOT_CCU_FRAC_1M		0
-#define BCM281XX_ROOT_CCU_CLOCK_COUNT		1
 
 /* aon CCU clock ids */
 
 #define BCM281XX_AON_CCU_HUB_TIMER		0
 #define BCM281XX_AON_CCU_PMU_BSC		1
 #define BCM281XX_AON_CCU_PMU_BSC_VAR		2
-#define BCM281XX_AON_CCU_CLOCK_COUNT		3
 
 /* hub CCU clock ids */
 
 #define BCM281XX_HUB_CCU_TMON_1M		0
-#define BCM281XX_HUB_CCU_CLOCK_COUNT		1
 
 /* master CCU clock ids */
 
@@ -50,7 +47,6 @@
 #define BCM281XX_MASTER_CCU_USB_IC		4
 #define BCM281XX_MASTER_CCU_HSIC2_48M		5
 #define BCM281XX_MASTER_CCU_HSIC2_12M		6
-#define BCM281XX_MASTER_CCU_CLOCK_COUNT		7
 
 /* slave CCU clock ids */
 
@@ -64,6 +60,5 @@
 #define BCM281XX_SLAVE_CCU_BSC2			7
 #define BCM281XX_SLAVE_CCU_BSC3			8
 #define BCM281XX_SLAVE_CCU_PWM			9
-#define BCM281XX_SLAVE_CCU_CLOCK_COUNT		10
 
 #endif /* _CLOCK_BCM281XX_H */

-- 
2.51.0


