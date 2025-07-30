Return-Path: <devicetree+bounces-200672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABD4B15A9D
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 10:32:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7252B5A34AC
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 08:30:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A91CC29AB00;
	Wed, 30 Jul 2025 08:28:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vt0W6Bef"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB917271455
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 08:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753864121; cv=none; b=Gjj3XhfCYm63jfI7JnB61WMJmkv8MAIVKSqbb4T3VPhsSZIGk+XQusny55YSiR/xnGGgO6fzFZqXMku4YIJ6A63QYnyLNeF+VzcIlRKosT/mD7jQlKTVfIeSV2/H6G6b2voLishyG0f4AM9+KSf46s+LCG3YjRQQNWnFShXYrbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753864121; c=relaxed/simple;
	bh=sRcDVunfGRLL2yhvCf8uI7kfBchpKqxSbo/lblxkRDA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eCtbNIW0SBjb8jfximLT3/suqwM5hPmhE/1jwS/rkchBo4bXFouXsrW3zyqOUEUsTI1GwLo+3lLvcYxGj7Hb/HbECxxtGEqYsEfXoGqHqoHiNW921/PhiAj6BogF9z4z0NLrKQ3kfGZHRwB71Mh9GcD/SPRyjMAlhf3URtVHSFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vt0W6Bef; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-451d3f72391so59397285e9.3
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 01:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753864118; x=1754468918; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8pP62+ReuSDmrI/Nghq7ZWC049e64GpNNqSaJZ0ig0A=;
        b=vt0W6BefcsTbAnMuXvvIPBdfjMYTwKCGR2u2ZVV2Gl/qra+exmSbcHdDwlIOjIewlE
         8KOsr3DH3wJfoBsyd20rjUAwliAVMWsuks9T5cECiNCwaTDQ7/1p0IQbLnp7x/YOl8OV
         vkQy86I1N51Ct8hI+zMLdTLVFMA9nF8ndNSAhCWXVzqhD5WzDAQ/HBALQtBFcIiXFAWK
         hKkijdzzzIf7AHywUG1BfyS0XRjqKwGoEYRckO5fIE+WFcNVSVG1Plj1Kpqj1P02gNCP
         rhPtgxmd8uVZoFwSxomTB6L6HXyT8Znd4ARRW6nZ6LPGWT0GuZRnZHUu3o1PgOtcK/OG
         iW0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753864118; x=1754468918;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8pP62+ReuSDmrI/Nghq7ZWC049e64GpNNqSaJZ0ig0A=;
        b=MBWbMulBhq+3evvhF5JOm3XgbJgY6kGVmWE1JOo5tcR8NXr+lo8oa1xtUa57E1HCOS
         T8mb2MADEBGbugM3zThMXDb+QZhl2UfKeNXg6/J7FpjQtbQ6YqqfJWhzZ4FYGfygmO6I
         MS/CLdLo+NdkfvqQcyDtvcNexnpTe6Uh58xSN2WGy69LCyTdg1K6HAnpqI9An/EH7+Uu
         AQk+WE5cTBoQVCMlMQv738NKMJ17VTDyQKWkWTFC/v/flxwa6tqWYTPEOFzwM2sABmnJ
         6CE/a4m+Vxralgj16lbMFCCEFsQ9UBf5PNQWW/3scH30TmNyhJfTTcX9hUvCPlYRHT8v
         Tgkw==
X-Forwarded-Encrypted: i=1; AJvYcCUT1SqSjMNqcCpsmgGHyuAXKWk67IrphgMKbMn/FfPGmZgwe2H5Zbg6X/KRPaaa86kuGSMWpeYMyWOj@vger.kernel.org
X-Gm-Message-State: AOJu0YyQl+3Eg3Lz5CcJJamADoB296F01RSRjpD7cOAZvMM81oDQaIQZ
	z57jcPtQJt/O6vKSi1LbuB8BCJcPmcbZmKfSg24qF20I83TsAl1Gulsr1cBTKox3/WoMxFy6Uh4
	TM0sc
X-Gm-Gg: ASbGncuSR7la15bZf7TbEuydxJzi0C/0BZE3eOqUeFQ6alTMs0c+z9xxV1RU/yYHxBC
	HHHq6Ih6b/bA85qls+lOhvFZ6rTN/Hi4hQ3WC1LvLIhAfMACfTAsNHGRUWT/DyA1VQl5rL+sPAV
	jB0kvyfyUzAlNr62tGy2bGJ1Dvv180ciwp7KOqmkZi/hbTDNHcFQl71pAa+OYS/oC1oqC9hlBnW
	Rzm7kOuIZExwvqLRoydmylliC93gX2dyKF59dBZ/F/MfDX7w7ERLjhX0E4/T5OQsrhzWc/4fzKF
	zhI6NEOUyDZ+oKgKiTFcgFnF/55n6K3waDWmWlGhABuftbIlC6v/bgNa9mjaFfT8s9jrDiKmaW4
	ggzErQLS+IY6iLSIQ6v1xB2316hOt1BthWHm/dKH4EUjW3JyV
X-Google-Smtp-Source: AGHT+IFJmr5qdka995uu9nQqfsByhZWOAnA7A7dfqcdi1Sc/fyAe6HxceXMGyrYqD+09oG7Kh1IQtA==
X-Received: by 2002:a05:600c:348d:b0:44a:b478:1387 with SMTP id 5b1f17b1804b1-45892bbf671mr22918445e9.17.1753864117938;
        Wed, 30 Jul 2025 01:28:37 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4588d873f80sm41992125e9.0.2025.07.30.01.28.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 01:28:37 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: daniel.lezcano@linaro.org,
	tglx@linutronix.de
Cc: S32@nxp.com,
	linux-kernel@vger.kernel.org,
	ghennadi.procopciuc@oss.nxp.com,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS)
Subject: [PATCH v2 19/20] dt: bindings: fsl,vf610-pit: Add compatible for s32g2 and s32g3
Date: Wed, 30 Jul 2025 10:27:21 +0200
Message-ID: <20250730082725.183133-20-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250730082725.183133-1-daniel.lezcano@linaro.org>
References: <20250730082725.183133-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Vybrid Family is a NXP (formerly Freescale) platform having a
Programmable Interrupt Timer (PIT). This timer is an IP found also on
the NXP Automotive platform S32G2 and S32G3.

Add the compatible for those platforms to describe the timer.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 .../devicetree/bindings/timer/fsl,vf610-pit.yaml          | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/timer/fsl,vf610-pit.yaml b/Documentation/devicetree/bindings/timer/fsl,vf610-pit.yaml
index bee2c35bd0e2..2aac63a58bfd 100644
--- a/Documentation/devicetree/bindings/timer/fsl,vf610-pit.yaml
+++ b/Documentation/devicetree/bindings/timer/fsl,vf610-pit.yaml
@@ -15,8 +15,12 @@ description:
 
 properties:
   compatible:
-    enum:
-      - fsl,vf610-pit
+    oneOf:
+      - const: fsl,vf610-pit
+      - const: nxp,s32g2-pit
+      - items:
+          - const: nxp,s32g3-pit
+          - const: nxp,s32g2-pit
 
   reg:
     maxItems: 1
-- 
2.43.0


