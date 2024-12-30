Return-Path: <devicetree+bounces-134721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDD99FE5E8
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 13:45:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4452418826A4
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 12:45:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D17201A8404;
	Mon, 30 Dec 2024 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fJeV4K7U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F12461A4E9D
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 12:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735562693; cv=none; b=inWowcrohvRcS0/KKO52+vQpn/jOgbcWBL1LPoTIeP2oDsOYbjgpH0irCZ9ATRYmOS2el33Q0CdEZA3xNR0F7t/LPVklsxLuoo5ekBmkSw8hDdpbPxm8+x1+EtwRKFYBVHESoEtqANmpRO6ZFgT7vUD/uwvsw3P/gJVccs728WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735562693; c=relaxed/simple;
	bh=jGLTAugEoSXwKu8aklCQX92hP9mnmqNNM/X8hnjjVXU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XdiEvvRSExNrW3b4XBT7PLL4kQ7TdPLCu//UNsuUgBxH+g8h+msqEt66tMiJXL2YngngqYmYfmpr6Z5JIbZURFbDZK8Hl9aft9FhPXrq/5g1BDMG26HE8eKe+/0B9pEBrVo8OyOTXkV8YFWU5l3+AY2e4hbfMxDQRZIVNf1n++w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fJeV4K7U; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4361f65ca01so91578035e9.1
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 04:44:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735562690; x=1736167490; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ka9OJ0lCnfA6ALixeFrsKSZhUTbEuLvcviSCATqki7U=;
        b=fJeV4K7U42nWyoVFcR4D5R4KqBMkjmSONsDHKF3AEQEuiOWSIQE8a27MfHg/G2Kdby
         bKInHpY+htW9yeFCg2H7rHwWcTJR5dO9FugN1jX3t/C0Zy32psidU0rj4NsqPVW1xdWS
         5pD6EASk376dVHLte0ziBod2sqF+ujaE/6HJrT2OcRkVomZ2o+u6U8hT8yk++9f+TwP8
         vUYi7OeNDRQ0hREpVKRL0wPz8NFEUkcw1x0wUzfYgCXUbjBz496OYAI8yYmJaxJd714K
         /3W6iUdJCxErSmW3KvWQ1qoVV3kyDuCbvw6xA2iABgzveku3POYILZ14cXYelnOl6pKc
         RaYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735562690; x=1736167490;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ka9OJ0lCnfA6ALixeFrsKSZhUTbEuLvcviSCATqki7U=;
        b=QJHlFggUU5D7MtBqQ1yIg1wbKQlgmDdHJApJW1sv5m7LWy8yOQppP+bVT7+RoIuNkz
         F+ZSybpPEEqz24WSuheh+YbnRBZZ+6f8P+heGmXt4dMIfwQYC0J2VYHvT2YeckEzv+Qt
         gnedpZJA4Kc2JU38Emk15ZnLqMGV9XJsw0kuX5xE5F26ZMcvcG7ZjSHyPEFpPDYeiwgF
         fHEXJkW2hzvJrJNh78a05Gud8Sa+s2Fgl8GYX8+ovLuAxhJc3/qrq2KrDvMQvq3iNfRW
         qIjfDd6mFqBomomexoqoDhCb31qIFO71UgQUyou+U+zqRhtnU8ToFPnueu183LScoPf2
         EYqw==
X-Forwarded-Encrypted: i=1; AJvYcCVQxu3gVPRmb8lnLUaV9HPA1F8stsE/ohsQWkS7VIGGOoCCe32qRNcMsT7nBDmL8rCmHw0LQUEBqBya@vger.kernel.org
X-Gm-Message-State: AOJu0YwutUj2aAlmsUe0u+Wa+59LNv4aB6JTy+04VargXbll5yNrQIob
	mcINLnxyK7HBLqPPJGTD08Y91e/+GWHDlNKFfT/WNs8r39aVOVpMVozx9NQDCkk=
X-Gm-Gg: ASbGncsyTKyaH3RxZadny019H2AdaQ6jkPYiUII5YW/GyWgeT1+Mu9O6t7wanT1MZZR
	YNAFJcJvGmgOuyJs42IfW7G+XwR6V7XL2N7w/QZekADwfFvrkjJSblZHzvsQm3RjKUj/HdBsdAs
	ys72r8XHGkHLIxE5t3n+Tz+Sz310KzhyBk13VqNmv7CmorACptq3BOKnb9jXX5QlBY9we4AtlpP
	36PIdNwan7zRGPUTj3cLJ18Synu7Rf7PwNiVDGLhBseqLA64eTEZJVcC1xW2+U8gb9LvlAb6OyI
	IA==
X-Google-Smtp-Source: AGHT+IGr/+xJktCPbXgtRKy+Xf/V+no2dTuHAEOqxMxUtMqYzqY8UpXk6fSW+Lep12pEorVWu/sOaw==
X-Received: by 2002:a05:600c:4688:b0:435:1b:65ee with SMTP id 5b1f17b1804b1-43668b47ff2mr269542015e9.24.1735562690333;
        Mon, 30 Dec 2024 04:44:50 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4366121955fsm359913215e9.21.2024.12.30.04.44.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:44:49 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Dec 2024 13:44:44 +0100
Subject: [PATCH v4 1/6] arm64: dts: qcom: qcm6490-shift-otter: remove
 invalid orientation-switch
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241230-topic-misc-dt-fixes-v4-1-1e6880e9dda3@linaro.org>
References: <20241230-topic-misc-dt-fixes-v4-0-1e6880e9dda3@linaro.org>
In-Reply-To: <20241230-topic-misc-dt-fixes-v4-0-1e6880e9dda3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
 Felipe Balbi <felipe.balbi@microsoft.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=988;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=jGLTAugEoSXwKu8aklCQX92hP9mnmqNNM/X8hnjjVXU=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBncpW97NaEmzKsf2SxEr8EkwYMK+GPKXjVrmEPO8iV
 nPfVXV2JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ3KVvQAKCRB33NvayMhJ0ZCJEA
 Cl/OCLWr+r9MRXrJi2w1BjnbxKjjJWhJ1ETcWsHnHgQNQ12mHsV66qlMyWgVlh4JZaUg+Lpjadyc0T
 QvwcnEXYDdATmvt4GWlhbTS6G99UKJ/1hxHDLczwMEy5kOZ7b1A6ECBsdlz1YwUpaxXu3AtUzZMS/8
 eM+eJ8/h3rOMNHSbYnNhz7r5tJNSGCjzOUgdd+xhiKYPKC97yYSw2x7DGHhDmZZaZ+MlFzF1qIYNoT
 C0bcWThJkc5Kq8LAdTzgyw7J/1o9Y/DR1Fda090yr/NjLaXmZRvg5Ya0Kl52hPTHWhTxeyp8i5ybpt
 6x4nC+JrjexL8i9JH6OeClmCQ8S7CO8hKgM/G4gXziq+/s2yxbO9YqWAlfNvaisaoKdP+ahLADhmpR
 LOtL9lM5ap3uJ5G4ptzoo3mYxMTLWQyIyd0rgCn4tkba2nEOLzFdZVTXj3UlRSNmWJ1xHmY1DjadrA
 Wxhl8psHnQwAKgTfJuckN62Ihmt0uqLCFAAsvD6rACs2wUamzYar3k7ck0Z+2yQ7U2Ji1g+Ixhvmto
 FWHshQ9rgQDvFHluzfBt072JUM9UUoen1Qfo2mwa3m6E5W8qq7N+bQypHQhWFsLUOtVkrpnbQVrjI/
 7odxDMp75HJ+tCEF6QPpYIckc69pRX9BQLCbdc6fj7FPrB8veLkPP/yUaQzA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The orientation-switch property is not documented in the PHY bindings,
remove it.

This fixes:
qcm6490-shift-otter.dts: phy@88e3000: 'orientation-switch' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/phy/qcom,usb-snps-femto-v2.yaml#

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
index 4667e47a74bc5b0f01a53beb49993d238b13c4ea..75930f95769663f6ac3e2dd0c5f7d224085dda40 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
@@ -942,8 +942,6 @@ &usb_1_hsphy {
 
 	qcom,squelch-detector-bp = <(-2090)>;
 
-	orientation-switch;
-
 	status = "okay";
 };
 

-- 
2.34.1


