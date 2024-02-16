Return-Path: <devicetree+bounces-42581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 56026857D23
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 14:02:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF074288257
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 13:02:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4041B1292FA;
	Fri, 16 Feb 2024 13:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KmnmpoPX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E6F128825
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 13:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708088555; cv=none; b=jfIvGjCc7GDr39OZt+4QsM8f8I2gT2A41oD/Pd9JMje3A3khnUFaaeSiwocQTb4ZLCfESD2V74ej3UZX+QkQRU202IHBTs77GED53+4JpDHx7fvctLhZVYbk/Hk0IM1dRo37L9O0+nOA8C/ZTv3yWNK13Lov1c+WraQvIQP5Rec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708088555; c=relaxed/simple;
	bh=UEn883fEvn74EKDrMBY5HRtTZ852wPrXNTB+0TMl9N8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=M+Y1ngGXeoMTH4B6zqr0eweTIHKjRdrAkXwTZj5oupW6hvq/zCsAS+B3EgtB26oynlolJBbmddNjvuFEIjmvy5flkzVUlUzvx1DLqxBGDrwJmBa/DN7JcpVvZ/GEOnyHliW4kwhlA33IQ/kTMd8E2KtsMecJ0D2wPGWDjsTV7xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KmnmpoPX; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a2f22bfb4e6so257916566b.0
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 05:02:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708088551; x=1708693351; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YXniBx4zGce2I+zUvQZeh9F9TJPf5+YSFwkB/zgLcpo=;
        b=KmnmpoPXCze8J0AvchP9cyl2pZevmotlnts78B+xSdoTIHIazbg9+d4d5TNubjh+cV
         DL9c/cf8m5XY7n5njptDQqWKH9hqXZNY47+HhV5Wyh8l3tKD91BvHnv6nbuXFw0NskPV
         GGiDaCzeMEYlMrwQNmcELiFeqFZnHGpmm/foyHITt6QAGo5yO3cfMEFhe1xNbyE1D04p
         wHHS5gZF4kHWuaaUw++7ClcNhmuf7ZF5Zlz0Fxop6yTZ23sqqm7Nu3OlvRUixgGfn5c1
         Pht1GJGZU4WPYLI+BbBGBOggyLxcT4Wg2E9mwIe29VprwcTOJkxKYyB/a1bp6R8rn8qW
         0gnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708088551; x=1708693351;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YXniBx4zGce2I+zUvQZeh9F9TJPf5+YSFwkB/zgLcpo=;
        b=j0uqFFdL+DaI6aLdV/lhXawxUQboibm6krAkD7hwk9EmTIKN83qXaJ5VpwktnYVTU9
         auSvr6gVBifpZEcR0cLWE4aLljxuNhogydI1fLOQ39nMRSDuaEKi0uR9wrDaT+iWgImE
         /wdDWpas8t8lIlM4Mk7C2rZxN3VGvQaXxWCNFs4uB5UL37AKcBzGv08h5DDJu+V+Trgg
         1bQMDB4iRyFu2yfJN0yMd0n89xIhxHrEvZTpi5L0phw8QhzQ2mnSsZ9RlKmkEeWP+kgX
         JkoU0ni2GAeYMwfp1roJQWcU2g/Vy3pkfTJMXRpqbtudF9Mx/AI1iLivYp0SnL8YmSaO
         m8PQ==
X-Forwarded-Encrypted: i=1; AJvYcCU9VkDobTG+vgE+Rs75PGrr3+IE5n/fkN9oexa1/WsAiWKX2RLabSVOBTJh6VpJERj9GOGOWUsOIGgLSGz4NuJY/w5swsYTlWeAaQ==
X-Gm-Message-State: AOJu0Yy0YjWRK7QeCk2eVx+aeAM6Rttk9wUk8f6AZbvoRcm4Qt76IcDC
	+0sk19AY8kpbvrGwHmOcKwDULGQSK/Kxe5W5yCxAWIU/y0eZYfQ61+OTyurFJ8M=
X-Google-Smtp-Source: AGHT+IEgEcb1m0Nnzg3PGnVIsyGiVQGwk/Ru7SOA8W3ivWwH/8eR85AResYbugpBrxCuY+w1HOCtzw==
X-Received: by 2002:a17:906:3453:b0:a3c:2146:a0be with SMTP id d19-20020a170906345300b00a3c2146a0bemr2562714ejb.70.1708088551667;
        Fri, 16 Feb 2024 05:02:31 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id lg20-20020a170906f89400b00a3da60acdd3sm1317105ejb.27.2024.02.16.05.02.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 05:02:31 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 16 Feb 2024 15:02:18 +0200
Subject: [PATCH v4 1/2] phy: Add Embedded DisplayPort and DisplayPort
 submodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240216-x1e80100-phy-edp-compatible-refactor-v4-1-c07fd1a52186@linaro.org>
References: <20240216-x1e80100-phy-edp-compatible-refactor-v4-0-c07fd1a52186@linaro.org>
In-Reply-To: <20240216-x1e80100-phy-edp-compatible-refactor-v4-0-c07fd1a52186@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=715; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=UEn883fEvn74EKDrMBY5HRtTZ852wPrXNTB+0TMl9N8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlz1zhcNOfojzegsl6uRYJc4ozupuOL7Oat9eQ1
 +FfaWs/3vqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZc9c4QAKCRAbX0TJAJUV
 VuGeEACN6K5Xg2Anz/CjeZcowaPNqWdcwqD3wo+40GURz9+1RgAnvn9z/BfVjd1Kyg4ujBjQ5ah
 r6m/OPe3ELJlbSmy3cSdIPEheRVf7Zk7M+l1Cd1n/VayhxeXbf2xIl1u0FeBfQLvsRhpmo5okLw
 SpvyF2onoI9zAHC9MA16YHpxSALyQXEdO54Q6+uuUiKK9r+1dOf2WoMbCzNHWMIZ1/45VqMXezj
 7NaAxxhr5GtY1gFdp4Ts0l3jiW90vb4Q2ry8aun/OkWcSxM+jzfZ8FK2G/XJLWvFVdccSX59s0r
 0OcVL4lAUNbwMgDbNmjNwp4/f+N7rP5pz0OLISvsIlEHz3HP0WpqxcuHn8E0UBbsPHITqnT14ej
 cUuLqB8JxL0vaxISxOPHumrS74nJBXZN95UdJHn7lFTQlqc+ko3+j105OirnaanKpONbT1a7lSJ
 gOmYWJcVPReujYX886kILmqNsOpeswG5gpxwSK4JZddfPFN09Y9oaSpsQ8jAicMAvfuK2LN3SYn
 MIL0UOarQKMr84oBryIk4vj0nBKyMOQhbHsiamhMwiz4yK2y+yliNvz5vur0Kj+FWzXklrNuseu
 w4cOquy9eSdnS0Gl5O+EikCZzIYXk23LEbxvY/+oDNGOKLaPvUSaHPmf/I2W6Vw9KWqZzLeGHc9
 2DSE9pj+jr70FSA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

In some cases, a DP PHY needs to be configured to work in eDP mode.
So add submodes for both DP and eDP so they can be used by the
controllers for specifying the mode the PHY should be configured in.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 include/linux/phy/phy-dp.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/phy/phy-dp.h b/include/linux/phy/phy-dp.h
index 18cad23642cd..9cce5766bc0b 100644
--- a/include/linux/phy/phy-dp.h
+++ b/include/linux/phy/phy-dp.h
@@ -8,6 +8,9 @@
 
 #include <linux/types.h>
 
+#define PHY_SUBMODE_DP	0
+#define PHY_SUBMODE_EDP	1
+
 /**
  * struct phy_configure_opts_dp - DisplayPort PHY configuration set
  *

-- 
2.34.1


