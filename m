Return-Path: <devicetree+bounces-171789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 684FFAA0335
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 08:24:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 163E3843FF1
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 06:23:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D4AB29E07B;
	Tue, 29 Apr 2025 06:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Fmt4JqKu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DD7274FE2
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 06:19:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745907589; cv=none; b=jlFbmgrXn9w8OQYTJ8FEAQoWJt+OVP4yYpdycaCFpGS4uR4maMrlHKLCXC4ecx+UpazwIBSwh6ZyTiJy4YIZsz5OTlewglAKRnA2Y8noFQx6egOvEdTAmGp6//QrbXzDFaBcm/wPLYSzLwib7s2xs2qIC0h5UABUhrD/957Y+0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745907589; c=relaxed/simple;
	bh=j1cZ/ama4pXQcm0lNYjPZ0pmuSUHD0UY9XZIX1D92as=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=s1UL5rZjh8eCVV80Wy1saKR3QU7r6LrYPLhr8dalEDryr8xRM4ojsyjvJmyUvngMXm9b8WVRGpMUAVgXAP2SKOAWOs6BoTkgAgQTj8nqN8xo/UNsI2bY8LPRF6pYjumzc0iEr27+33W8asZRlgJy6rBeSgOF+hPiOQ3YF7BCs4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Fmt4JqKu; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-39c1efc457bso3958529f8f.2
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 23:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745907585; x=1746512385; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5uELk3IX0KmAe3gKWKpct9PqfIxioiMahM8zzKV5oTM=;
        b=Fmt4JqKuBIRrgVmjue7TZ5UP41EojdrQpun2F11XlKWXLIMSWAyLZLeWmG6Lce+qih
         yLaK4DAzKOa9dF/TKCpBWTdtniag5IbA3szLuZOy+5Qlw10VvMKAdQbnkZ/fudQY1ILT
         m0Pbgmw97jH5Cgt1bgI59Hxmd3DDReEeAajjXEapTWCks6K8yy/NBN7Mfh8iwSukLa8G
         unu73Ag27uPWFofcC53WSoCNW6m3heoUhFGHT9VwqtUZfXFfhattPjFAhMDht9ofoF3R
         rv9CLY08dnd0kUt5w8mDUnjV9iNRuNFtFkNOCyLhn2Efy9dsJecJ9rWwx3oMpfZGlJCy
         BaQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745907585; x=1746512385;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5uELk3IX0KmAe3gKWKpct9PqfIxioiMahM8zzKV5oTM=;
        b=r4H1gdN2DyHA7iEryugzAYBvrVarnc8V00oC575X+kldqZqi0qqUgpyb1Ohmq9wcDq
         j24QD5vxjD95gulCGDReN+GJAidPkD2b5sXyUyDQiz9z0joFVtYJLfn6cZ34juyjDFbV
         CbONWogUI9Z9ACk8esbau8XHwjPVz79puF89UaVtd5QZAjagcS7uo2MbreApmjqy5fmB
         o9vie8bsKTa9FFZLQrjzV8S509NW3cT/sSfLhQZnUXbHn6X1NUHkK8ihxr+/kB6sKjG6
         bILAf2gLEXkEIdnIRxwBK6UslZpLyvuoOapw8SxwigDcnQAZSIMkih2j/98qK0wxqiQ+
         I4PQ==
X-Gm-Message-State: AOJu0YzdzqqJh1nxfSbCEOY9S8D0pDBrhzwd49JttxVy/G97FOogqLjV
	D9EbZjgcsllGgcLkv9kf/lUdzWrw/49POc23N8xPiXhrdz/xA8d97zBLN9ECe0A=
X-Gm-Gg: ASbGncvz8ZvW7Hx/IJWnIFpw6shUqd0ZDHKPCv2FbijF+iHY+VZCjC/aR4Hm11TRUkq
	MLJ4HuDWi5ogWYJmYeVMSWztzxP2QSMhD+2ZjiKXigImLWqNZTHgcRVlsqJ7REpWLUGwuJXb2Lh
	hhydkjIm90ZbrxkpIu61xzM6GzAkK4Vs1BgzBJfY/IsXYyWKXFnqda+Y0CMJT9ASTd8wkEoVD58
	jpebOCw6k31FSQeiLBSWnfzsje71URnODeIRmN9d84A2VUJsW7joa4q9NdVcnH4nghfsUbzBG5T
	H3c9c2ia1CmahzWRI6OyudUvLI1WbsJWxc1Y6XhHY6J8JmuKDnocNnptno743omUsL14w3E=
X-Google-Smtp-Source: AGHT+IFThpMV/Hn8fv8bhLUDnjAre1JV27A3D8kJIgvlJw9xTbB+HJubAdPKRGlV07vzAa+DCEfhUA==
X-Received: by 2002:adf:f989:0:b0:39c:2678:302b with SMTP id ffacd0b85a97d-3a07ab9be39mr7770595f8f.45.1745907585666;
        Mon, 28 Apr 2025 23:19:45 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([145.224.90.246])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073ca4e50sm13302616f8f.30.2025.04.28.23.19.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Apr 2025 23:19:45 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 29 Apr 2025 07:19:39 +0100
Subject: [PATCH v3 3/5] MAINTAINERS: Add google,gs101-pmu-intr-gen.yaml
 binding file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250429-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v3-3-1bcc44fb1d55@linaro.org>
References: <20250429-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v3-0-1bcc44fb1d55@linaro.org>
In-Reply-To: <20250429-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v3-0-1bcc44fb1d55@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 tudor.ambarus@linaro.org, andre.draszik@linaro.org, willmcvicker@google.com, 
 kernel-team@android.com, Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=799;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=j1cZ/ama4pXQcm0lNYjPZ0pmuSUHD0UY9XZIX1D92as=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBoEG98RkuoPV0ry3Z4PLypiABZHhICoNaJvJmzl
 VrD7t2Hx4iJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaBBvfAAKCRDO6LjWAjRy
 uhJND/9CiA4POIsZpZfYrYWxI1RtoQfz0bxdT4Ik7cUrXlCIPZUvjwpWr8qmHvQTE9Pg7lWfxgj
 qVRVNh5pAxiIfudy10QlHmK4JNGcCOazysndlC6MDImVhynvgt27JL9OKS06+DfT6sRE0emLUul
 9bvFPilY6FxzCFL2CzIfKKUuGoFPB1zxwiEqooCK6IrB3TlP4kR0nqFVdO4aZOGRSJSPmspBIKt
 24bWWDgnAD5X5gr7lrF3lD50YgRTj8bzQ+yHtwc0fIQ/cQM+KpvwHnHOg5wUCuxllkYtqkz2UAJ
 fCII3zQzY5RwF5sFrEREDuxiu7ZtVE9PSBlYOzM4NudnuLYM+Z8wMoDC0R9vfeun3s0gqYftcB7
 gGJ3HQzEa5sqQcb5hqyVO6Bos+bgP2UgiYAazLouAvijAHa2Qisq8up9U6AmF19nnBDLO/GMovU
 cO8RuQysMeQV4NY9BWJLLr/azwnN0yC8Q0uVPGZAILidzoZ+rhLbAkCmFFf8PtRvvoby9ENIYo8
 uwCUQqie6oN/8FyNwIIN/HmOqszXQ21rFyKwbtG67tAqE7EbgLcaBC2YLn0uoSjN7PAx99F9319
 ETHgGVv12CAvIpqiUJtKp63+gWxVmqhpZYr/qWiv1OZC/dl9QLcQGd9SzUNauJktEt1LxA8eN10
 XWjSXrReQ3prmUA==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Add the newly added google,gs101-pmu-intr-gen.yaml file to the
Tensor section.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index b2c3be5f6131432647dd01f22bbf4bf1c8bde9e6..5b2ec4c2023f39a3dd532ac61f0075a0a1555411 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10118,6 +10118,7 @@ L:	linux-samsung-soc@vger.kernel.org
 S:	Maintained
 C:	irc://irc.oftc.net/pixel6-kernel-dev
 F:	Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
+F:	Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml
 F:	arch/arm64/boot/dts/exynos/google/
 F:	drivers/clk/samsung/clk-gs101.c
 F:	drivers/phy/samsung/phy-gs101-ufs.c

-- 
2.49.0.901.g37484f566f-goog


