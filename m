Return-Path: <devicetree+bounces-44363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D2785DCAB
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 14:56:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4B72FB28059
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 13:56:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74BD279DAB;
	Wed, 21 Feb 2024 13:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="UITYyNDO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9B478B50
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 13:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708523767; cv=none; b=V1ds3GKrjZC9vksXKWS/A+KdIf/rnsoaHXSDFe2OCqSFfy+qhsS3vC5nw8fftmIEngyb1tcfYC+lmIWEqBlqVAzEF9qnXlC39f22VGk06//29e3jqj27XCvDaKhXyROKevAfM0W9Oyy5nqDGb4Qwj8YR9gE9s7ElSNg6F6OhydQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708523767; c=relaxed/simple;
	bh=QAdJDrV87EsbheqKnHWugbVsjU4BINQFXJJI5+cMyWo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XxM5QXOdYiFB+8w2cV/gX1csmxgePrRaVN++MLrZfBe+b7g/vu+bLxzX9xXeVkRV/CwhpZoIFf0pZkZ8mvzUfSOa0el8Ksv/1cuwPzRmYPahvWlXooF8VabJE7+rI/34d31hut0dD2zbpUuid81q0WAoFqW5f7tg74UV67jqpwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=UITYyNDO; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-512a9ae6c02so711069e87.2
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 05:56:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1708523761; x=1709128561; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Le192e9NnBtNARlv8O7J8W0J9GLYd0M0VbDbOwWdLN8=;
        b=UITYyNDOjFvQ3ugqbRh3xV/cdLNGND9tC+oB9IHuheuDuCaAXWX0kQ9raJF/1pTCKu
         HEB8+9dy+wwufNPR/OQ7wuOXX+LEHd2AzadpQYOH0DRhwyE8DtEiITaCJVu9jZ2UG//t
         TsMl0x/7n/Iriyrt02zsHyaM3Due76P3F7rlxzgLLqXC2WKC5Zy+OUqCB7t17uoK6WGL
         +bOEV4XLefjgpyMNWDX9YqjMQsy0WHN872VLAW59pkqtrw2ks13+PBPlDPvRsgJMARgx
         a10HJkGo79sPxJPR7GdSsTd7DL6Kh5Fmfd/aal5XQ56Fki1d1jJ308FiYdgn56tVrYex
         1tCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708523761; x=1709128561;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Le192e9NnBtNARlv8O7J8W0J9GLYd0M0VbDbOwWdLN8=;
        b=NaXD6yu4KaOZ3l9KkOavdE/zPdCT8xwuHe4vNgY9RO4RIPryGAJj3dg7k3BkwlfyhJ
         P9GZGxee/eAYOyV4DLbconKfvV4VDzV/NEDBG5InMjl2kvnJ//JjvHBNJfh7R2yGlbe/
         atTSriG+DOk+6V+K1bsvCys4Zh/LsQcyymeCt6WLfFgQGpDcTY9wHXEB4YAIb5YNls9p
         1aKZbQVvCh/8ybfO5KUT1ipqKMOgpz8fdlEIXc0OMZPxROoqaPXu31g0FUx6ZJ6N8R0I
         Gebbgl2V1B/9dLGmAC7oWhO7ICIQ4Y94go6+YaQLWPQa2nZaG5w62gL1/5pXnRTZun4G
         jb3w==
X-Forwarded-Encrypted: i=1; AJvYcCUuFex32jQDqfPKXU9lHJhz7YrSJMGnxJ3LAG0vWYGHi2/jRQOh26SF56HggUwNay1CjgtikYiNGXnMijCHrXuWfU10bji7x87a9w==
X-Gm-Message-State: AOJu0YwMqjCiNs31ujFcB0GerKVgpNCdfZZs8uGeO+tuEhgFfd8oplhf
	PRF0VcnGpJ84MGywgVuXn+EWZgAzGJ6zDnYVRLfgup3Im6hxKqK/3rq8VKxGGbo=
X-Google-Smtp-Source: AGHT+IFzBms37jkcoNd2VL4j8syw+iw5NIeLtWdtw9mHf2B+BUGMNW6TYNBSevd/h8IcaV1ffhdpjQ==
X-Received: by 2002:a05:6512:2107:b0:512:d6ca:71ae with SMTP id q7-20020a056512210700b00512d6ca71aemr613204lfr.31.1708523761219;
        Wed, 21 Feb 2024 05:56:01 -0800 (PST)
Received: from ?IPV6:2a02:8428:2a4:1a01:c6d1:d0be:89b3:294e? ([2a02:8428:2a4:1a01:c6d1:d0be:89b3:294e])
        by smtp.gmail.com with ESMTPSA id ck4-20020a5d5e84000000b0033d3f0eee9dsm11831527wrb.27.2024.02.21.05.56.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Feb 2024 05:56:00 -0800 (PST)
Message-ID: <814c9035-1fda-4cd3-ab3c-95b58e2ecb22@freebox.fr>
Date: Wed, 21 Feb 2024 14:48:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH] fixup! arm64: dts: amlogic: add fbx8am DT overlays
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Pierre-Hugues Husson <phhusson@freebox.fr>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 AML <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>
References: <07f7a695-18a0-4211-82e9-b1e2c7166969@freebox.fr>
 <79ba726d-d02c-44b9-b6f6-59b17ba9755c@freebox.fr>
 <54b4e810-754e-481a-bbc8-984f859b116d@linaro.org>
 <15fcafb2-4b4a-40a1-8ef5-ee3aef9b3b9d@freebox.fr>
 <95cafd69-de6d-497f-b3d6-b6d7a8a3b795@linaro.org>
 <e3e47a72-8a6c-475b-a248-95da5dae24ff@linaro.org>
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <e3e47a72-8a6c-475b-a248-95da5dae24ff@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Drop compatible properties as requested.

Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso    | 4 ----
 arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso
index ed79809b15859..9591fdc31ee0e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso
@@ -7,10 +7,6 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/gpio/meson-g12a-gpio.h>
 
-/ {
-	compatible = "freebox,fbx8am-brcm", "freebox,fbx8am", "amlogic,g12a";
-};
-
 &uart_A {
 	bluetooth {
 		compatible = "brcm,bcm43438-bt";
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso
index 5da88fb94fb98..55fff35b09ae7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso
@@ -7,10 +7,6 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/gpio/meson-g12a-gpio.h>
 
-/ {
-	compatible = "freebox,fbx8am-realtek", "freebox,fbx8am", "amlogic,g12a";
-};
-
 &uart_A {
 	bluetooth {
 		compatible = "realtek,rtl8822cs-bt";
-- 
2.34.1


