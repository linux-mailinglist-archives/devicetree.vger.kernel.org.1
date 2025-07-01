Return-Path: <devicetree+bounces-191699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F76EAF01DE
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 19:30:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F4081890C77
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 17:29:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96AF528152B;
	Tue,  1 Jul 2025 17:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jLiAdaZe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C1C280002
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 17:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751390941; cv=none; b=W9pnM62C1Q0qJr/QO0EgYV5puQly2NcxSsd7AAnuV2y5PvppePuZ/qcufE1GbVe4ay+LEsubHiN5+BQgV6X5k870LwZDAmDeUkdCLThV9rCkWDgs2U+kHpickNsu/xBxGmGv1HuGZqqrXp0yb20G+zU1rvprUZy5VWfhO/mVWnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751390941; c=relaxed/simple;
	bh=lKLvoCVJRgutFe2R/Rd+FFb6y/96aAw7/Kdifm/nYNI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Qbp9klaoCbD2gXpkfHdeEIHUe4yxLNxhx+M/kXyW+zDcyl0sjA+Cn5HLhlAcUf4fWheRGDQP/PXL8/oEFLG7OcS6Z9GO//+1jvuTaEeOrxXPo/z28gpSI/0Qw/LAVwlk5sqVS8c7VWqauxM0yOh9V+kDR7oTNrjdTMRFU6q3BJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jLiAdaZe; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-45363645a8eso41574915e9.1
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 10:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751390938; x=1751995738; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bLYmm/W841t/0A2F0oIr72Kx6VbF3J/btLHJRobqvhw=;
        b=jLiAdaZeofVCHtmtvWsRHEwYNpFYRg4aDjMy+MXNKVX8dg5jDOuhxVrqkxGHOHQZF6
         Kkq3I1e2xBZ5biaBNKBAk9O4PD/q+xzxE6o5ty5bkVIReFjRR52h+UctDrtj2e9cwu5w
         Oc6ucocKQnittO07+M9Rhgscw2x1nJbY25YH6ePrd5iPLSR4LnhLA0ZFCDrXGJZd65KL
         vexvO6NBNbkpdvzKXW/TE9H5L3l80UsJObnRfAkqP7nWnydGWzrbxOztyfL5tErAu3As
         gMun5iX9PANcg1mABwj1yaIO2KJkBDsI85OzoMKlXCZucf/PZ/DrGblFlJvBUZzCJTAW
         FN1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751390938; x=1751995738;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bLYmm/W841t/0A2F0oIr72Kx6VbF3J/btLHJRobqvhw=;
        b=MDXlK3vA/MvJnt4pZuNFhnXKP79Apc50UDrC1fUj+jKEZpg36HjivCpY4j7YFDQWv0
         Re8qw21omFvKfIDT3tkG4wZ2AgrlQLMUJPHZqO9bnf4YrD+EIG+vkJuTshv9AF96/Gdf
         0t/TQJiYwNlVhJT5xa627r+Ne+XEbol/t9JJnFVb5zhFhTvJtsze8ZpMdqqXSqpSqOoG
         xeD5uEfJObb0EkxGSs2vV/leMZVMR6Z5HQ7IFqrcperE20oSgu9wCPo/FQ3mS0XR+ysP
         wIA6aoUI/OECt2T3cYXXGuziBP2sr+ZPYPHVuhiYHNx8AIpLPuU78wnDHuHB64CrzWhF
         mBzA==
X-Forwarded-Encrypted: i=1; AJvYcCW3M0Lwd5VTNTl9f6RfIDwciwf9Y9K9xCDtWeP2JAM+39axx17rVw8ThMKjcCam+5XMFzO1XVYXrSg/@vger.kernel.org
X-Gm-Message-State: AOJu0Yxd64Hrcfcn30TUvwKtqEbQip3OzX8n4F2iWdC0+idg4GPVZ0Ae
	Y0BR1hxc+1+Ki9CXMY6vOgToXSivmCo/DyEvxw08AdDunYnmy1+LuUR9+Gvyz+mqbao=
X-Gm-Gg: ASbGncu5roPDcw+8na8I5ibI/4av1fW4Nc8M8TWvDDjc8mS4AbKtLbjvArRcNeWBTq1
	l42PQiB5Dffv+rdZ+yYlF6QEh0NWOBuUU1ou8dPylpLzlm6Ms7++uJKSP9Fp69y3UbSPB4zp42B
	GH/9jVk/sVgXOTO8mlXb94iI2LOybXmUhnM6VSypVFjUKo9H4R2i4uMpT92Nd/HqqBeogYVQeyM
	FhR2a0TXQoQN4Tjgd6xVHfjdy4RYuyQ+kSkc7fBg+u214qLXAzYJeBQIyWWGkCBAoAIicHiYW+u
	fCNxl0gr4+oFrHuySb9ycG2P8ONGlCOE/Shu+wKHx/oiP+9U9zvz9FIPlnhbYdHoGw2FhzHmv3F
	gCg==
X-Google-Smtp-Source: AGHT+IF4HQoWvaoo6s2knilDjvFtQ5l+MD7/ur7mX6jo8Z4Ek68Oqu5P27xeS+nao9YYpdCcOso2Ww==
X-Received: by 2002:a05:600c:699a:b0:43c:f3e4:d6f6 with SMTP id 5b1f17b1804b1-4538ee7122dmr218050125e9.31.1751390938018;
        Tue, 01 Jul 2025 10:28:58 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:1425:eda1:87ab:f850])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538234b1b9sm198716175e9.11.2025.07.01.10.28.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 10:28:57 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Tue, 01 Jul 2025 19:28:36 +0200
Subject: [PATCH 4/6] dt-bindings: clock: qcom,x1e80100-gcc: Add missing
 video resets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250701-x1e-videocc-v1-4-785d393be502@linaro.org>
References: <20250701-x1e-videocc-v1-0-785d393be502@linaro.org>
In-Reply-To: <20250701-x1e-videocc-v1-0-785d393be502@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Jagadeesh Kona <quic_jkona@quicinc.com>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Stefan Schmidt <stefan.schmidt@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2

Add the missing video resets that are needed for the iris video codec.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 include/dt-bindings/clock/qcom,x1e80100-gcc.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/qcom,x1e80100-gcc.h b/include/dt-bindings/clock/qcom,x1e80100-gcc.h
index 24ba9e2a5cf6c31e6e88c682e6bfcc60490d692d..710c340f24a57d799ac04650fbe9d4ea0f294bde 100644
--- a/include/dt-bindings/clock/qcom,x1e80100-gcc.h
+++ b/include/dt-bindings/clock/qcom,x1e80100-gcc.h
@@ -482,4 +482,6 @@
 #define GCC_USB_1_PHY_BCR					85
 #define GCC_USB_2_PHY_BCR					86
 #define GCC_VIDEO_BCR						87
+#define GCC_VIDEO_AXI0_CLK_ARES					88
+#define GCC_VIDEO_AXI1_CLK_ARES					89
 #endif

-- 
2.49.0


