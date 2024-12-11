Return-Path: <devicetree+bounces-129633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DEEFB9EC669
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 09:03:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93979282B35
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 08:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E30361D6DA9;
	Wed, 11 Dec 2024 08:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BXiSvNgg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC0E1CACF7
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 08:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733904204; cv=none; b=kAsViHO8x83e6+P4ymH00vpU9IvmhVV5J6i5TB7omGtveQxRkm5ZjhZjttE1LOcHg/D5vGaI5t55cGHyEtrUIGgZ2OfqMLRvvK2YpX8QC1I1v3MMYxr9+VRpxELvugTEiUtOlDjycguGtU1ULXrWBfgSDRsX3SeUunsMGR8cMyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733904204; c=relaxed/simple;
	bh=jGLTAugEoSXwKu8aklCQX92hP9mnmqNNM/X8hnjjVXU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lhPOcg0p/FM8Jb+65kPkDwYPd3WL/wkZM97aByrSKa6a2rrHxmwyCc+PNRJiOe1o7s+aNVCn1Rc2LomjMLgp6r5hr47sIY5B7GtHMPGj5w77rtQ7lW39+ssxugl8nmK+nWyOxK1OrkNS0QCHksnR6jFjIgCMDbwFznd+hKw9WoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BXiSvNgg; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4361b0ec57aso7983475e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 00:03:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733904200; x=1734509000; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ka9OJ0lCnfA6ALixeFrsKSZhUTbEuLvcviSCATqki7U=;
        b=BXiSvNgg5t2CFNMgSUyuSmgNIoIp8Wp15UrWu94I3fbZiN6/HHjOkrF5cyWVn2zjR+
         XSCsgW1RIQAqJKSvrH/mtLGqAQ4CjczpQ4hPVhPsG3NiSKlQP9bw6AlyLt09HKT1rjAc
         RsQLT3Oa18nnEmUeI+1qGUr60fo6a0ET00xQOZD1laU7WPlUYBKsLNYBeivH8DjLxmKO
         eiqJ/sjZ3+LqIBdeyAceP7AFTVRaen7u3ZsmeYqMRsiZnfYa49/H7eEDR8r8+jlPenSJ
         aCJd1CcPiJbV3VLxOjBnSrC8/QUdW5d1NipOv0UWcXa1cGK/NR2xzxK/Lzs7FTVeu4uT
         7FXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733904200; x=1734509000;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ka9OJ0lCnfA6ALixeFrsKSZhUTbEuLvcviSCATqki7U=;
        b=aJcimi7elmNQKKJLrzctimIYvlIw6cbikXNbrTtlYgKlvHdr+UHMqHZG8xldGs1bzt
         W6NeRy5EYjVASvzglXMiqVxXC3lz5J/QOyRTbqFHrliFdkPcG6dwn+usi7K/Asw+TufD
         F5t5HY+s85jplp9rGBMGBxJOPDsgYJZCE+f2UBa1Xqk+0XMrkMENfBPAhaJrgKUralnm
         /w7ea6rNL9MmSk99Zqifkax+o2Rxndx0ZS3W+j9/3E3QlKfdSNRqc7ErrjXeucM7yJg1
         NUQo8hCA5a46CZqVihPV0h0v/1dhM/bx8RIi67faiDd0FGMcEdDZUwgChcxOvtpPrS4n
         TaWg==
X-Forwarded-Encrypted: i=1; AJvYcCWbIgndFcKhepzibFeudvHrBOWyuDzd3EYByr4dPWBwrlOmiiEt52LlnE8QUkoSeW2wqAB6MAONCd98@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3e99VqH3wZOLFkxcH8Vv32A66F4hdeiYo/JQRRLpOsdk/2co4
	t0T/7sQxjshnsGmpsbTRHy5YsOSXXtKHoB9qv6iQzABhnYlrKc7dAsCW7Z9N61o=
X-Gm-Gg: ASbGnctaGls0ztvriPXoUr4zxaybbwpm13oIP6ybYeTS4AywPwXT4tTLasmqHsmdlpV
	52pUWxdYFe5nbhqfN+il5C5tupMKSK9iteiJPeTEqnL8SFPmSZoTVAI95agS1wIZFdoR1dhNEWH
	v542C4+JsRI1Ip85P5GhiXpRzGGJk2SDyqrjb+XRA0NH1gA/eAsJiYC7YdpR+4sMxN61FyPrn8N
	d1FTYrM/pLPxbeqIvixdJZ4rDF3USkd1VxqEP6SgLImBYXyP4msf261iuDi7QzzdDeypBrjsEk=
X-Google-Smtp-Source: AGHT+IHWSpWWPAgWODOqNYAQeqXwV4M6/qa5IG0bcfsOVvPNnC7nYc9Q+AsrFujhHWryMnDX6OGU1g==
X-Received: by 2002:a05:600c:1c82:b0:434:f819:251a with SMTP id 5b1f17b1804b1-4361c396f09mr11655815e9.9.1733904200332;
        Wed, 11 Dec 2024 00:03:20 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4361b09fec0sm24205795e9.4.2024.12.11.00.03.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 00:03:19 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 11 Dec 2024 09:03:09 +0100
Subject: [PATCH v3 1/6] arm64: dts: qcom: qcm6490-shift-otter: remove
 invalid orientation-switch
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241211-topic-misc-dt-fixes-v3-1-010ac10529b1@linaro.org>
References: <20241211-topic-misc-dt-fixes-v3-0-010ac10529b1@linaro.org>
In-Reply-To: <20241211-topic-misc-dt-fixes-v3-0-010ac10529b1@linaro.org>
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
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnWUdBCUq+ziFgPhHwzu+bghr1Tb1Cfu/8HA9RMZFz
 egv2Za2JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ1lHQQAKCRB33NvayMhJ0QHbD/
 wN46TWo5MR3OuoAvw4EEBrinwNE3D7zZe5J/HBTMEWYtJujT+uBtpd20+TGQDpj1oz1lgkdlsTFwxV
 BMiX0qUf/8GoKYk3DRK0UHOByBOYTSUxPdh6ZEegSAkqixxPKRwrsh88wfN+mVt/20ETUMo9MrN/QS
 J+687o72/LeyNL10iZ9vi3moXo4qm+EXspgVp3bOZE5bkCnD8X2Dbj7GltItLR5G8p5G5NBcjcmSV4
 IuIvrkJ2CKFwzDl7SccjspPMhYpi0rUjufbkuUwk5nJKgh05XWb8mN+E4gDMI1amfpGEI2HXhbbMQC
 5XT2PSs1zsC7gH/EcfhK4MT16B17csoFGkse0810w/Cpvz/mUXsEm3m5gN66FA93FjK9GXyInuA1iI
 WVTN4aUDi2K36rJJHLzscTiWZ2aU5tHfNVjJakYUC/uIu19UBWenDs2plHMXJ3qp0JuSs+auL0APcd
 XSFafc415Q8Z/TW2gqh0l4VnlgCcJWxkq87JvSH8XFLwG5buisXwzxVpfx0ChzIzjTRVRle3G9Uqac
 +R4sVRRBYehjuRkLin+n1rpfpA79UBC2aK8ev01UiTEU/ULRq5DgkNHFmNVtV+Jyla4f/QwuwlWDZp
 Ihog/7hDstdGCpeoZzuCO9Kgdaa2r7UkRVJi3aUrV/XxYaR3PsRxWTTP4VTw==
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


