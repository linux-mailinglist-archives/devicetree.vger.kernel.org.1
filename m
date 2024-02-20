Return-Path: <devicetree+bounces-43864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 996F085BB37
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 12:59:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2248CB22661
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 11:59:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F2E567C78;
	Tue, 20 Feb 2024 11:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DUETALiD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C25867C63
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 11:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708430303; cv=none; b=gO8BiSicdUoOWcot/yodEclzMFzd3CbtbW9klVT8eY/2zrmHqeOhyf+A1whDv7lwxcWbaQD/vxTQxhY5lCgKqUmcNI/RS1jDnTKc5BLAPPL3W3dUChoFN+1ojS2iboa7WjjcnBPeQb9QoKz7j0suIuvlE9SZW5NP9B+eEaP8qz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708430303; c=relaxed/simple;
	bh=UEn883fEvn74EKDrMBY5HRtTZ852wPrXNTB+0TMl9N8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KQteAjWHvu3871lFhpcdnnp5Tfc588oJ0Xhonqe8h3KVi/XO8ofTyIKs3ygBGwiCjK5OhzeD8Inlo/g+4H7HVHjc+iZl2V3lHMAx3YnQ4Vg9JyUtjH3cZipUXXrL3KiAOWYaLNXxJXCwAJ1GtoEe4ejtXTWx/xW65qbOaZBodVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DUETALiD; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2d094bc2244so73876671fa.1
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 03:58:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708430300; x=1709035100; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YXniBx4zGce2I+zUvQZeh9F9TJPf5+YSFwkB/zgLcpo=;
        b=DUETALiD9qXQVDYD9pVRAaxQITLJ63A4i7zvtPEATGd8LymrZ5ZIz+Ws5fPXt/at5z
         /0jM8L0ijfB93+ZMclZiG7Uq/YIk9ArDwYOVj4BsX4DCwHXL1VFaWBRzgL97dU/yxZbv
         qQDl2xIegP9P9K/9lorEZhZ9jtlBbXWE+DPplgWnZH5y5UUrX4GO5WYsj7V5erSgRgw0
         FNiZvktdosiu2Kft0YRr0UnyZfQ8MU23iBcyzgKDrjW33DdXtFv+uPiVyTgh2HzNsxdh
         yr682hti1T5fU2Y99QAWtM15PMEUTew33KKTilLsMv365u8gangbfVK0vx3XHrcESHgk
         PMqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708430300; x=1709035100;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YXniBx4zGce2I+zUvQZeh9F9TJPf5+YSFwkB/zgLcpo=;
        b=Oj1lWNa6vDSnAFztjJmh0/Vscn0oat3dhW62iUvHG/uolVKwQqp3078wtvlfu/Hk1S
         0qXtpto/tY9lY33BvNkooIi/28m01Ub020A8fCIY7LrtABtQC26WAB+/N3NhhN3pEhmW
         Xjv7aHZ0QTfpEl9lbz1TPt8KHV7cdYeV7Gl1WAj9tF0SeMow8ju7EspzAam9ilidgF0r
         u8M3U+1LCkPYRKPxEUvO3oeYvt5m8lAXF/D8cdrhWf+CgJOmjaee3GwHmmU3JqB1lzDB
         ur9i4AKel7qYDZFtBdj93Ou+zLRrIMFJUVBbtbzAd4nivrctlTb53ectZ8UjznAoA1cN
         aeuA==
X-Forwarded-Encrypted: i=1; AJvYcCUoVUQyr0Bf9Wmhaeuw24GSifUTqZr1aS5BNdQ2UGhj+FhFxxC6H8/NyoKxgOy666AdUSVohfsSiGFzy0ZF4y3RLVGvmXFGAyImqQ==
X-Gm-Message-State: AOJu0YwrI6hwsISFn3ukfmp00dtxCUbH8V48Fjy15EnYeoja3vw2toJN
	UPFkZ/GNP6AK+3yuR7dPY7bgNwST8rlhmLMyd0HVYXJqHizxowuXLJbm3oQGCYo=
X-Google-Smtp-Source: AGHT+IG4jWWO+KknvlzpM+Lin7JrB+HmfQsUsz/gayBqrfoSc7B9J+Cnq1Ez2e+vd4q1YCG4NdRrVw==
X-Received: by 2002:ac2:4241:0:b0:512:aad2:80c9 with SMTP id m1-20020ac24241000000b00512aad280c9mr4291841lfl.27.1708430300290;
        Tue, 20 Feb 2024 03:58:20 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id hu11-20020a170907a08b00b00a3e0b6ea9fdsm3806200ejc.26.2024.02.20.03.58.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 03:58:19 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 20 Feb 2024 13:58:10 +0200
Subject: [PATCH v5 1/2] phy: Add Embedded DisplayPort and DisplayPort
 submodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240220-x1e80100-phy-edp-compatible-refactor-v5-1-e8658adf5461@linaro.org>
References: <20240220-x1e80100-phy-edp-compatible-refactor-v5-0-e8658adf5461@linaro.org>
In-Reply-To: <20240220-x1e80100-phy-edp-compatible-refactor-v5-0-e8658adf5461@linaro.org>
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
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl1JPXL4Ic8N92mDtTIZbPRk9h2SHNRLPdcNxki
 2nwDS20y+uJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZdST1wAKCRAbX0TJAJUV
 Vth8D/9NTlqJoCtLixiwCSoEDO+8wgtAsvUobYA3/01ndpgPwajs8duOOTVTUd/F1pAvwOd4aYd
 fEw6G0L77T4oaedJ/tLeGbVr2oo+BtxtYAdzQDs6I0ZLLF7J+P987j9IZdtSz/iG51YQKwYK/1c
 kqDYEnpSQLG4V/0ItMUqOsiFzGvjuI7tMoS7ieoM07EbfRmf5q0Qn/uP1oMscBQFPnx+JKiEKM7
 VzbDetS33Rol2vbz6/P1nitKxR9ApL3ZENaCVvOGd1fCGiZmLbH++fnb1+meX98Zr9QGY2Rb4zg
 80ri+T/edvDFujKP1Z6NvI6Fs/ogyYzvGFxd4Z5MQxaKwxgSJJHamT1TQ/0OgvG236Fvd6QKakP
 iAC4llFD4+nd/xqofsCxh76F7bksT0ps05VgAUvmwKE6pn7Rsywj6p9a+tl8si9AREkg8S9dl19
 vmWSakQ9VUbzanGQx+JxkTysGv3v4YxC7t++zFvESIijWYcp3l5gbFfl2RClc/VdO9/aACXESGd
 ZqiXo1P3E0nKYbsQSf3c/gIJRMN3VYxOHaRbvVw1NCfC4t0dep+LFtLgB8nOBrYUXI30qrgeSFq
 FD12D/dF7xLE2uaPUPfryjE+J08evl3yXtHYtFqxKbplCSCZrD/WdfoYwqDGULg9E1NZpTR2ujV
 0KyKifVBRS5Z8sA==
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


