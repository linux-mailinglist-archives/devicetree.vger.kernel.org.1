Return-Path: <devicetree+bounces-253431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DD340D0CADF
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 02:07:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CC823302354B
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 01:07:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 974EA2192EE;
	Sat, 10 Jan 2026 01:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dSpPf6v3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FD91F63D9
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 01:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768007252; cv=none; b=daTdu+g2rxAG1nEA8yRg229giRG+svhprEU9L3GNEyhMCJ1dRsMnSu3Bp8GbSssI7F34l8dgiA4w49OH6/XK2BePSntBgsr2BFHNKPnJDJtgPf7biI6PB29+8Vbk8NV91YT6xKy5ksETR5HpxEw7rnvVOX/3QwZjR92+eMfYt1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768007252; c=relaxed/simple;
	bh=qaQa3SSyJBlku56nJMC0whrRFkEaplidsQS8+eoNWW8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PWM2ddY636TJ4dRV/QhYpzFvDkMZJVRxtMRan9OI9iaDaLwXbTJtWhCzcukmA0AJl0gsdgDedIZdVmJtfzCjZmNNZy6LNEq4iQ2oGxdH4h26N2CNMVNYV7PDWEzrwyr58w0Ku6jV9ffniXZDXZlTG9907UlSA7m98UaHrOZzGkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dSpPf6v3; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47775fb6c56so44978685e9.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 17:07:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768007250; x=1768612050; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4+ExvoWXyfk7B3PZ+QbuMC84j6wcYdimjvcwYA1OVjA=;
        b=dSpPf6v3zuomdrrH+evYW/74hNxToJ/lWShubu7tfvYFk3NoAhnmgkQ1U7XFQOrkxI
         aa2oskcW+Oh1adVzPaKpvPnvTfqDOWwKIzCt1jusB6wXlbo0mHyic1Rg00UadX/WzTUb
         XXHEk9BoUIrGpdbHQZBvvpRMOqYF70HVT4Cb9iBl7Qn4exuZLiTc0eeFmpKEyxk2IBho
         MPoUCz8B8ky2s7b0T/TcQZPsn00bHguTbliAtOtZrcg2sKx7dnm0YlDjWR0iVnBKA+wC
         Eq1c9RUyoBT4AVGPlnpGiV7IP7T7obeKMRyj/A4vE69zJ2HrN0LnTTNRR4u78ncNmQkb
         e//g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768007250; x=1768612050;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4+ExvoWXyfk7B3PZ+QbuMC84j6wcYdimjvcwYA1OVjA=;
        b=EXYK1uFl84S93Mp/Nq2Psay/D9WXLAxG/ferhxOtyXDq4MJNnfZJdvYQzMju+++ybm
         8rfEEowU1ZsyEZUHSdGIzI0Zunab72sRh7aNjSX9kDSo8vQ7B3ID+yqZO5REtkWRb3mQ
         PmCnjl6Wye1Ufno6o2HPau86ii2A4hSvTkub80qIpP37lLAAwmfi9MyvCYPnRH191IFD
         tEj/KPEUgCUYPo4beZ7AncxjRm+0p9iRA3yjJfCCsUIYWF11He0Bc+Sho8PNpNo9Qv7J
         7vqSNeWmRAH9G9yPTQlV6qVrBtBjJhMTo8Fni6SEd5rpBMBSS9eOvIJpKPzHF8n0ww82
         ysiQ==
X-Forwarded-Encrypted: i=1; AJvYcCUlynX3xTwCbd42Aesa/zQn+UGsa9sO6TvhtqSsp0bLcErX3j5I09w1DL/JrBIfO6WrhPx4aPagvqJ7@vger.kernel.org
X-Gm-Message-State: AOJu0YzX9JKlZpZ7anFDgEECvSETc5C2BxRRMFVcAGULuML1kW1timdV
	DoLviDwex7sFctan3BDzNFN6wzHZrOwMaUhtIt1tGPQ1cEAJ+OrVG5L/
X-Gm-Gg: AY/fxX4uYIPQxSkWwpZcq88EcGpHWz1LwtirBdLAe0VD400xEs/QOTPxscxYGi+21qS
	Xuzf0tmesabybdNPvGuUmZwR2GzfVPIYhjEoM8CV1Xn1OJQrOk2bfdidJsRYmxT4NNhxjE3gpyI
	rya9KY3eDDjDmHfi5UieSEqK8Ha+f/VWF5naRmL7b0lnzSUhGea5sffc+CUk5K8SGBjX7Bf0Qw6
	f6HdMEzro3hZNygTyu+lXqBUuQi0B88ZucQk/ecb70KN7/+q0hLlXC2M/DDfeAKiQVOKyn3hKt0
	elXns8UulFKniZGKxh4HQFUNH/Ma2DOR+7XJPIcn+OlkwKk2COPdXtY6I0YcKYETunUuSUSB85R
	QICmhIvDi5j5x/fcY9OApt/JRlXUam0tLp9s81uJLPXvIWy2n4zw28i36fLk+YOwPLx7rMRAol6
	+6KGumejEqok35F64AOnzVzNYvEoL1bQhVhVIqErWi5EZwb2rfl8h1ct/X8IDKrzIXLOSSLQfyX
	7q6zg63alaOf05Mbw==
X-Google-Smtp-Source: AGHT+IEelYoC/RfOsLxl9axtfdOf6Cg+r/5BA+2WK9IrH0gt6a4Cep6y3e1I+Dzf8IC+Aozsyrqvjg==
X-Received: by 2002:a05:600c:8b2c:b0:477:6d96:b3e5 with SMTP id 5b1f17b1804b1-47d84b186b4mr120986455e9.7.1768007249488;
        Fri, 09 Jan 2026 17:07:29 -0800 (PST)
Received: from stor1.home.marco.cx (ip-178-202-227-016.um47.pools.vodafone-ip.de. [178.202.227.16])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d8717d9e7sm71779475e9.8.2026.01.09.17.07.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 17:07:28 -0800 (PST)
From: Marco Schirrmeister <mschirrmeister@gmail.com>
To: heiko@sntech.de,
	ulf.hansson@linaro.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Marco Schirrmeister <mschirrmeister@gmail.com>
Subject: [PATCH v1 1/3] dt-bindings: mmc: rockchip-dw-mshc: add rockchip,disable-runtime-pm
Date: Sat, 10 Jan 2026 02:07:13 +0100
Message-ID: <20260110010715.1610159-2-mschirrmeister@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260110010715.1610159-1-mschirrmeister@gmail.com>
References: <20260110010715.1610159-1-mschirrmeister@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a new 'rockchip,disable-runtime-pm' property to allow boards to
inhibit runtime power management. This is required for boards like the
NanoPi R76S where the bus timing becomes unstable if the controller
is runtime-suspended during idle periods.

Signed-off-by: Marco Schirrmeister <mschirrmeister@gmail.com>
---
 .../devicetree/bindings/mmc/rockchip-dw-mshc.yaml         | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index acb9fb9a92cd..41f2644ca2ef 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -100,6 +100,14 @@ properties:
       If not specified, the host will do tuning for 360 times,
       namely tuning for each degree.
 
+  rockchip,disable-runtime-pm:
+    type: boolean
+    description:
+      Inhibit runtime power management. This is required for boards
+      where the bus timing becomes unstable if the controller is
+      runtime-suspended.
+
+
 required:
   - compatible
   - reg
-- 
2.52.0


