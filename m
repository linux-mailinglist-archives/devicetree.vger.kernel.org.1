Return-Path: <devicetree+bounces-191696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 049CAAF01C2
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 19:29:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE10B483F8A
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 17:28:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AEE527FB15;
	Tue,  1 Jul 2025 17:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qm5NCs6v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE7EC27EFF7
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 17:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751390938; cv=none; b=crf+VIi/iMqM3nAPpFeQ4NOuw9SHXg/xY1KuxNjam/u0xhUQttlppWLqBxOMbCsbFtBlZDQSN8vnDyJoZvFljAeNhuX7aBWC1Pv6OGDqODQWkiww1jc8rJiMcudVpQE+gpO0wARzQBZ6IM+L+BnTviDNAc+6afgcbP8vjCdT7Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751390938; c=relaxed/simple;
	bh=Zujt7XXF2JCBnDponojkL+Lg3jkgrBtStEB3brioxIk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Akn3RbdAo08Z09W2Z2nDI8hAoK59RLhxXm/cm5GaZwjx52YeDyQv0RXME0whN697N9tSnMepQ3Ti2Qiz0k7+sy1PdE2FdcJU4HhRFz8SP9x7nFbfDyfLbS7lqFb+UwLBTGRvX5sE/gHR7/dNKSFJNwhnILLpJqD2n7/2m9JwrFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qm5NCs6v; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4538a2fc7ffso39785285e9.0
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 10:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751390935; x=1751995735; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wi7fY/KxdNeetANCh6SKDsJR8TexnSGBGPpGc2ysHjU=;
        b=Qm5NCs6vJsoBX3RpAkc7Y8vAGU3R03dXgAJ4ky5vCF9g/BM+QHufXOXsTtVzC7CVb+
         o0sjtcUIzUPN0hlVkclHY2O/0I54ENzKWvsG7pSiYaljBkm2QwQJYO9Llg8fpPbQdcNp
         hdXCo266ap8Zg3+FP5TMmQOU8ZjhpgIOLLV29zQTOR+sOFd/wD0zWuofswadjd5OIS8M
         bqgYmzAsTqZnZNXg9gzmUbNZHyUtG+d7SKGb5Ywrq8deh+Nc/Bfj8SJnYESaL5qenUX8
         GtT+mLirzQotO20KoQ82KR7+ovrw2uo+mrbI5FMJERJk9l3GyRbJqKIoYfaJgNGHZv1O
         E+5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751390935; x=1751995735;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wi7fY/KxdNeetANCh6SKDsJR8TexnSGBGPpGc2ysHjU=;
        b=AdNA/6BG2XFip1uZXwIMtDc/4gef56iZVaod3aQJM+p2lnv8NEEFAWQtN9KQ5md+xt
         f2TMFRQglRDRFdhRlBxTHFiyMJN715BcE60+sGeDL0Zfkgny3HRRe6ZcX/8NtHGKK7gt
         YEVZXqiHxpjg0igoJ9X+uBKe3PaY4wFMiMFEbi2BfPffnCRmVhogTjav/gxj311Wtsbc
         nGKpjRZSPiSf64VUqweYJ0eFNnOPTdUtlwsNZ4ftdwTNuj9tvEpg+Dh/NZoszoxCCwOI
         yLTfhs6Oxahwx5pWQRuHsJSF63gx2SorKAAZ/0O5qJi8vcY8OcO/OkP0AU6RkNpqFXNw
         CoBA==
X-Forwarded-Encrypted: i=1; AJvYcCU2LCjzN5iIWdZ9WfQK2BlbuZFcaSkS7OT5orlC+ES+K7lgny2OWUPR5qdDU422N4gJIOQlzPJCr3RY@vger.kernel.org
X-Gm-Message-State: AOJu0YwaPnpJX966/Q6/xAoOTLuKvBmiNp1Wl7xFs1uGm/YvArf2Se+i
	sDrFGslYSLUDQy9EafWl4Cs0A8XZx4AHWxCbWbGCapxatz3D6+SQY+zk7zUiQ1qMHeg=
X-Gm-Gg: ASbGncsMAMQnjP4PXV2aaV3tWHujrSvPuRvS94dSXhrL336vI2rrPSlD7ESNiZcuE08
	wMoXHOVvuGtpoFI4f8LaVFR8RR31gA1lhNaVXkYxEZDjOA24PZGxjvAUvEhJIH0vTBDPY7MCLVu
	f69sGv2oKPcpLTNmv9ufJEOskB/uMALzeF/9ZYkw62xLVwGDC9aHLvcqbchunnbhKwxDOpjIOgp
	AN8dZgu5XYnPsxE5DHMNoMDKExq26ZyZsLny8TWCU4cPfEVTlWrhao7Ee40RVDmerNizzHAs6bf
	D3S0oDQ7zxxX8XFkDC44L4oMiRgErygJUKinEgCirhE95WEnr82a2S/t/FrryHvaRxabi+kOzpD
	OaA==
X-Google-Smtp-Source: AGHT+IETZJBfTD9XuFDlt03qYFLOlybO8L1BIgA2+brpgkJyTjecZyDbBkqpSABvlGgIIszRDeEhrQ==
X-Received: by 2002:a05:600c:46d1:b0:453:84a:e8d6 with SMTP id 5b1f17b1804b1-453a78b99f6mr49058275e9.1.1751390934981;
        Tue, 01 Jul 2025 10:28:54 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:1425:eda1:87ab:f850])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538234b1b9sm198716175e9.11.2025.07.01.10.28.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 10:28:54 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Tue, 01 Jul 2025 19:28:33 +0200
Subject: [PATCH 1/6] dt-bindings: clock: qcom,sm8450-videocc: Document
 X1E80100 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250701-x1e-videocc-v1-1-785d393be502@linaro.org>
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

X1E80100 videocc is largely identical to SM8550, but needs slightly
different PLL frequencies. Add a separate qcom,x1e80100-videocc compatible
to the existing schema used for SM8550.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
index 0d99178332cb99d3f02f50605e19b9b26e3ec807..fcd2727dae46711650fc8fe71221a06630040026 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
@@ -25,6 +25,7 @@ properties:
       - qcom,sm8475-videocc
       - qcom,sm8550-videocc
       - qcom,sm8650-videocc
+      - qcom,x1e80100-videocc
 
   clocks:
     items:

-- 
2.49.0


