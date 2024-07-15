Return-Path: <devicetree+bounces-85737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA0A9313DE
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 14:16:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49A9128240C
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 12:16:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0054118C18B;
	Mon, 15 Jul 2024 12:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kClym+ZD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3582B189F5C
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 12:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721045769; cv=none; b=HR2zx4/vgb2Z6sB7y8P+CZWZ4cvyYop2caALfNtn97mpE82FZ3CEim87vLdRA6u9m8G79C3N7tsZ2zcy7c3gIgvhO0LvBTvBX1tGJt+/mBA8MKiJVVkKOSwNb0+cH+f60DaHDxAVRa3o6d+HBW+vEmQ+JzYGNzafq810JvQdtp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721045769; c=relaxed/simple;
	bh=us5vFbV1oXrFQ1IRmJFjWmuvUJ7Mz2t9/i5d0K/nxWo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=N+BeREUhWu7Gj3KRnFsNIbZmQIruX16oCiy9Nt5oQYcowlH+F/LGNeCrilv30Dfk++ZRp6I7RsQlhiJZublpwnzU5UtDCayh2MAEmfoOYjJHEmD2POsPCTk30tKxcrlf+B4rXyGyAxqTjY3rCAcDOq+9qrLxUBttlB01USOAvt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kClym+ZD; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-367940c57ddso2622554f8f.3
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 05:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721045766; x=1721650566; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C4zewyPEhlNFFIG7IewHHr+zZpf0Zw7H1PjOS7/qftA=;
        b=kClym+ZDk2qJRRmPpHLGp01d73dPEUrnBzUe10NhIWj1PTHpD2+JUj6L6o+aKXkdQI
         iTv9chTm18X1y4P5pc01TDu2dd/c4Uh5279v2RC2KMU0Bi9B73Q2rl9O2uSo5imMX0Uj
         kLMBjCMlFw6O0+pVs/ImgcYZvvk4enNMwtiX1R9Y/cD6pQCFaX0gR4UpuhHAZthbMV0n
         D7IiBvn+yjxSnli/aE+tZ8SyaoJ71HnF5/q6SyVaFVkkRZ6oGqZmwELHflfelsm+vM2D
         e3M74eaf95kDjspy01yQBLOUF7E9+77wT0Zm2fJiHlhbUZBztFoTbDwtGXx5PfBGspyO
         gtiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721045766; x=1721650566;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C4zewyPEhlNFFIG7IewHHr+zZpf0Zw7H1PjOS7/qftA=;
        b=GYveUdtZXDgoCKwAO6D8acv4JwLpH2dcHHu92T1yiT/Kwq376Nx3mENEoc0XDFffMY
         aU/PeDEp++OPxLRe1u74LDHCIoEp6ACf86BAV5YX6SNDPDUeYsBHxf8ryE/Kd3UeSMqP
         M1li+dOSVkP+UsUwQVJ+oug6bk74bbmnsJVJhf35JJ4rTbNCLiMtqwTomv/DZPITH6Yl
         k7/9T4mK5z7UlhajlUQ3iXnEkIxkHT0u0N+i4plb/47/zgudDL/FBxpgHl9pY6VuJuIL
         yNkRWk81R3ml0JTJ+tJziSa2DzE4jLIRk5AVy7JLIRk8TzYwBEH6z/32YFtYd9CJHdld
         OJIw==
X-Forwarded-Encrypted: i=1; AJvYcCXEUMe0mVqfgxr4tW4ZL3rGPMn4m4RJR9KlZyGFl1O7ar9d8ZUUGkqSFn6O1++nlYz2BBQCohiYJ4FqasA227mi7wdbf1bxE+4oqA==
X-Gm-Message-State: AOJu0YzDUdcjVwb0Euu3Lx8o3igdqK8XI2JOh+ctheni490tWH0TSfSi
	bM3stkbsrcsVtJ6Z0bn6B1SZMxJ6Z0BypxmT6huFBHKeulY7SEvP/Uc+gOva6kc=
X-Google-Smtp-Source: AGHT+IE1hOML28f+XraJzEd8SFOSIj91LonNL45CkfZTFsChgS0t1o51jq4Yctj5be3mCBmPsTXBdQ==
X-Received: by 2002:adf:ffcd:0:b0:367:9791:2939 with SMTP id ffacd0b85a97d-367cea6b804mr11785800f8f.21.1721045766633;
        Mon, 15 Jul 2024 05:16:06 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff1f:b240:886b:1a3a:7569:3d95])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3680d9771aasm6369201f8f.0.2024.07.15.05.16.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 05:16:06 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Mon, 15 Jul 2024 14:15:38 +0200
Subject: [PATCH v2 2/4] Revert "drm/panel-edp: Add SDC ATNA45AF01"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240715-x1e80100-crd-backlight-v2-2-31b7f2f658a3@linaro.org>
References: <20240715-x1e80100-crd-backlight-v2-0-31b7f2f658a3@linaro.org>
In-Reply-To: <20240715-x1e80100-crd-backlight-v2-0-31b7f2f658a3@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.13.0

This reverts commit 8ebb1fc2e69ab8b89a425e402c7bd85e053b7b01.

The panel should be handled through the samsung-atna33xc20 driver for
correct power up timings. Otherwise the backlight does not work correctly.

We have existing users of this panel through the generic "edp-panel"
compatible (e.g. the Qualcomm X1E80100 CRD), but the screen works only
partially in that configuration: It works after boot but once the screen
gets disabled it does not turn on again until after reboot. It behaves the
same way with the default "conservative" timings, so we might as well drop
the configuration from the panel-edp driver. That way, users with old DTBs
will get a warning and can move to the new driver.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 drivers/gpu/drm/panel/panel-edp.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
index 3a574a9b46e7..d2d682385e89 100644
--- a/drivers/gpu/drm/panel/panel-edp.c
+++ b/drivers/gpu/drm/panel/panel-edp.c
@@ -1960,8 +1960,6 @@ static const struct edp_panel_entry edp_panels[] = {
 	EDP_PANEL_ENTRY('L', 'G', 'D', 0x05af, &delay_200_500_e200_d200, "Unknown"),
 	EDP_PANEL_ENTRY('L', 'G', 'D', 0x05f1, &delay_200_500_e200_d200, "Unknown"),
 
-	EDP_PANEL_ENTRY('S', 'D', 'C', 0x416d, &delay_100_500_e200, "ATNA45AF01"),
-
 	EDP_PANEL_ENTRY('S', 'H', 'P', 0x1511, &delay_200_500_e50, "LQ140M1JW48"),
 	EDP_PANEL_ENTRY('S', 'H', 'P', 0x1523, &delay_80_500_e50, "LQ140M1JW46"),
 	EDP_PANEL_ENTRY('S', 'H', 'P', 0x153a, &delay_200_500_e50, "LQ140T1JH01"),

-- 
2.44.1


