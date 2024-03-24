Return-Path: <devicetree+bounces-52752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E467F887E65
	for <lists+devicetree@lfdr.de>; Sun, 24 Mar 2024 19:50:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 133101C20E3D
	for <lists+devicetree@lfdr.de>; Sun, 24 Mar 2024 18:50:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C470FDDA9;
	Sun, 24 Mar 2024 18:50:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pwRKFTw6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E77FED2E6
	for <devicetree@vger.kernel.org>; Sun, 24 Mar 2024 18:50:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711306241; cv=none; b=NoiidAdxkHWDzOMMSe4LP9PJwU3lPED+QPkxwnXJlXphfrHe7yZCRSo1LRAedNyZ+nVQJaI8wCB5J1R88tnDxMXC3UGyVUJf9gaziQoT0e0hPe0DAfKvx1Du/tZWjsLBAfy8Ge4ccBi2SbTBDvD5HMDEVgBrdWiJZsZ2Rjw2FE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711306241; c=relaxed/simple;
	bh=UEn883fEvn74EKDrMBY5HRtTZ852wPrXNTB+0TMl9N8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tP+MGv935akqVZsRn+ehdRPl9tNyN4+RO6/flT5JSTQ0rlhOgZp+Yv64gjuK5zafZ6gWnBbwnMQrEgU/arsh6Q37pRkNZ2IOzGZ1C+z35NoYijYRQCu6Uc0w05L7T2Il6Z8nyFIbFfp9+QbJIIRjfjujYCDtefUsGK1sb+kdy9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pwRKFTw6; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a4702457ccbso476034366b.3
        for <devicetree@vger.kernel.org>; Sun, 24 Mar 2024 11:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711306238; x=1711911038; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YXniBx4zGce2I+zUvQZeh9F9TJPf5+YSFwkB/zgLcpo=;
        b=pwRKFTw6OdAohH71ob1uq/UqdOJvYF52hhVVkrZnWlQj3sj5+LTQnV5sAR/ljLGFEB
         7zExttgTxbWreEslBKzqwR4MQAtiy7TYzlK0H3+ct1HcD9tz1zOMPuSEusqXGCWsCWJv
         7Yq0WdWU9T0FzKi00sK3d2na44vWWXZbnQZaR3Sf2eaDDlHgN7aq9ujLLnesIuEQ9bd9
         uzhA5KEJ6U2T1Z/2Yc+pc+nCI/IHM+Pc7T+PEBqT8p5OjhE+y//sQ7ydMVLpWwt+ix+G
         8LwD9csIvw1X8BS8etqYvaTncGgkeCRl9aC8tcEcPRnvDg5clokKCg/SP1T5as6KYvMV
         9U9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711306238; x=1711911038;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YXniBx4zGce2I+zUvQZeh9F9TJPf5+YSFwkB/zgLcpo=;
        b=Nvj7czBTGtWpENAcEBy4Ybe1vJ0sF6EeM3+Da0S3RQKwkUlTe69VuuxUnSqbTs2vlV
         qVbY7ElnfKxWSAMVe+35KIXzy89el3uhpNcI1/1/VSmwCF0k16J0Z+3N4w4yR9kywwYp
         EjoKkV14x+43DoCUn9SRQIpfafIAU3qzzvre/rHr0GrYKEASSd2Lw10kRSiVwJsCrRoG
         j2kmjEtvAaUtKe2jLTGblDE599WFhstH5lmkwif0tHoOeNPdauNMBffAjdz9uwYR1cJR
         PuQ5/KxlbplyGPkAZI02zhznc5wBE0pctwCerGGow2ZBna2n1io61aQV0B2LEay4MHgG
         Y61w==
X-Forwarded-Encrypted: i=1; AJvYcCV3FZZX07puT8K7ftGAuNugNvoy+UNM6Ran0Ins2PmpWdxMJ6NyUVYYEah4kvcnU7p4P8Q819uBDQu6W2GGCCtTyBzLpynPve0a8A==
X-Gm-Message-State: AOJu0Ywq7d22G9vF8Maq/qIYVrVn9hFHS2+r/raobmPoBsy4bX3blNrG
	qO3MRrCp4ueO/N9EC9Ff2bVb3hMv7o7J4Yb3nyF3lWghp+a0O7I360r4lfva2Zc=
X-Google-Smtp-Source: AGHT+IFpaLpaD9DR9dWYOMiX2pj9Pu71KXZWIlpnsJOHVrOCZWTzkvOiza0oO/K+MJBGHCvg3UERWw==
X-Received: by 2002:a17:906:b243:b0:a47:1d01:bb8f with SMTP id ce3-20020a170906b24300b00a471d01bb8fmr2788482ejb.31.1711306237970;
        Sun, 24 Mar 2024 11:50:37 -0700 (PDT)
Received: from [127.0.1.1] ([79.114.172.194])
        by smtp.gmail.com with ESMTPSA id kn5-20020a170906aa4500b00a46524d06afsm2188136ejb.8.2024.03.24.11.50.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Mar 2024 11:50:37 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Sun, 24 Mar 2024 20:50:17 +0200
Subject: [PATCH RESEND v5 1/2] phy: Add Embedded DisplayPort and
 DisplayPort submodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240324-x1e80100-phy-edp-compatible-refactor-v5-1-a0db5f3150bc@linaro.org>
References: <20240324-x1e80100-phy-edp-compatible-refactor-v5-0-a0db5f3150bc@linaro.org>
In-Reply-To: <20240324-x1e80100-phy-edp-compatible-refactor-v5-0-a0db5f3150bc@linaro.org>
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
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=715; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=UEn883fEvn74EKDrMBY5HRtTZ852wPrXNTB+0TMl9N8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmAHX4iS0d2pQK1abiEyUGqEBZHZJ2E94lwhHzy
 SV+OHdxdqWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZgB1+AAKCRAbX0TJAJUV
 VgDTD/9P5eObpOH3NwGOJBXgjEhwh08WrSARxONu7d4ai2ARgbmiOc4l2h4FgMxpr5QtIxwb1D1
 BJEJHZl0KBpFK/5HNn3ZZQtgGGcpp1/LzYNvIB6P5TgRR7yxabH9LzeB5pBXaK48V/t7+UM8B9S
 PNhuJ/W6PYW/Nj0so7WCfKG/7XAHxxO6M2VcJ5rMyes9mTdzoeBXeMwguHamavAJ/0+UNPqPyBa
 OLD1Oe64pW/duvMqhoF4s2PYVvKBDUVMUMfPvQ8+yhizbdNM7fYaDxrI89yRO4F7QjSNMSxQLo+
 Hq/orrnfowW7rQK7EFTGVYRuxLiQnDwj221uHLG6sDHLnAnNdH7h3GPJf+tWkAyMSYNHmOCW3TC
 FSTSs65vOz7gvtDKWqdFkpoKC1v0/X824VcWGEDx6bs2oPdDm609wVAWN/1RbMyP84uhRH93clP
 E+c4/DciD0NHcQtBW0KgdlcKZtLdoDbVT/GrhTaV53VWHAasH+ffqwWtlbW7qQyNvYw2ndy/9Qo
 1sOkrPQ0b+ZOb/s62BouBwGjDA01UyKE8qXhbl9pEJmzCFjI7pkjftCgKPMZgwDVZNqd+a5ot6d
 MV1odRIF6p7D2V0qMyTt+YEoQMdVH5OU0JQ8khnO5aW2nyH1kVPWmEiZMqx1Wg8JEwaFB7l6yyr
 y83z4hvCjBDyKZg==
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


