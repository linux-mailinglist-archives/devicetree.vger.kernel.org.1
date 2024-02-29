Return-Path: <devicetree+bounces-47262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA0F86C9B7
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 14:07:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4294E1C20E06
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 13:07:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8EB87E578;
	Thu, 29 Feb 2024 13:07:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BzdI+pvJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B72CB7E0E5
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 13:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709212036; cv=none; b=t1wDaa0oHJaZKpZlItIrHcjPDqxH1Je8ApJJcXvH/A8h4jlQubBC34n9xPLv35pKZEl9BCHKi2KUveGmBcTLybKYUww6KPyMUNVtK9zEaBT+h4zo7bL7Yj4MAExrdRxxY18F4qZafExQSixG7WxSDtxmaEB7HR0+4yx7MjBcuQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709212036; c=relaxed/simple;
	bh=gUhmXpw+40NNDKZNzyOCoORFZuCEOLT0lZh0KAJVHT0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WSPF5jV7jQVImxB0AxEbx/5CYaKGv/1ikUIHEuVdrmyHwv1dHbqpFV7XUjMs8co9fMe13M1EPTWanEGJaFw0sfikcUalfIAwLpvOHYSjsm3xJJeORjqTOJrfbA4k3sMBIXvwWRumI+aLD3gK4qzsieo9anTkgD2OeX9q6cKeQcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BzdI+pvJ; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-51326436876so628044e87.1
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 05:07:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709212032; x=1709816832; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YT8Y/OHXUcXm+kdXDY4DIbb1yI62HJpje5eqK4s6t4U=;
        b=BzdI+pvJHJqtqNkMytd3tkzUePhdhZhPQV6fx37Iva18TGKJ2zVUmItvJ1KWYj6Ydi
         bLZqllFPcJzH8zgDfUSgqn0ivbQl/FUeZ9ynRRmEBnNd9tcHryRVEIOfICjbS1tewIoD
         YPpIjgHgqKh8JWlrWXl9mVx59djfjwKqSkMGvaRXJ0uUb0hZz/JWRHKatZ2jy+K32ZY9
         7p6YYD+U0L2NeO49pMQTsSaCekyxEt/uihLfYPSJrDB+lcbzv0RIEBLARJWsK62CQt0X
         46xZaaU+g9G2LXQWeMDJt99SyzqtsRK9yfvUT4t2EK32IKRBaQ5CsdzD3jpp1Tl0P/EY
         aRtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709212032; x=1709816832;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YT8Y/OHXUcXm+kdXDY4DIbb1yI62HJpje5eqK4s6t4U=;
        b=A4A5GDFzyXllWRwd7r7j458dwBDjJy7XZDlYfU5wcj4h+MXndczQ92jiVKHTL41yDx
         4Q55+3yl+owix9H64aHzJPQhosWOG/mlprFuit+DNzxjjA0dOmowEYG5QCMgtkK8my48
         45cxmluc7DZtZXZfao3Se4pu4xywv+m8vG2Lafkt4Bk5f2Xo8aPuuZtoQotRNgL8rJOD
         HrXFdDTn1FyAcQPpVz0jju2MWEy1V1m1e8loI2e1u8TiOh15/qe4wYNrjGR313fHkSqf
         rusL9+YVxOeR6GrNcyAeFjjKT0ZChmyeH+lucalDM+gMa+8KGecJFllysdSBNnA23jUo
         y+pw==
X-Forwarded-Encrypted: i=1; AJvYcCWhB9FHmlaFExvUz7mhnMDTRLognhzddidTsjk86IlqstAYYTJDbjFS+NV+IgztrhG88dglbY19+tjjhGb484Zf2lR7v1hch/vWbg==
X-Gm-Message-State: AOJu0YyKu77vAcYlmz4mIUBqqIUJb7CnBPeAVTCMwCCniakayWxVPda3
	8YdidXQExz3j9T57VpEPoBKnFv6R+OsmADxsyNei7A0asykiWz1fe+XEp/CSa0g=
X-Google-Smtp-Source: AGHT+IGI0oRvCFt0+el7beJ3sqJpYurlpJRXVhgZ8B7Fm1nl0mXZqOm336eD0Jk9r0hr/gWwN+UFVg==
X-Received: by 2002:ac2:5f7a:0:b0:513:1a44:9a47 with SMTP id c26-20020ac25f7a000000b005131a449a47mr1225576lfc.21.1709212031850;
        Thu, 29 Feb 2024 05:07:11 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id t7-20020a05600c198700b00412a38e732csm2071473wmq.35.2024.02.29.05.07.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Feb 2024 05:07:11 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 29 Feb 2024 14:07:01 +0100
Subject: [PATCH RFT 1/7] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add
 mode-switch
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-1-07e24a231840@linaro.org>
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
In-Reply-To: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1216;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=gUhmXpw+40NNDKZNzyOCoORFZuCEOLT0lZh0KAJVHT0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl4IF7kYVKYuwXLg3gaQZ28Ht2PLc+SXmc7J18PML8
 11ZSL6iJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZeCBewAKCRB33NvayMhJ0YGcD/
 kBQWdidfAXzh48Vrdai5QHAlUStkyw45ln9BSqmR0P6Wb00UqLymCONEjPKSgM8Hg2jxxUUpdUfNv6
 75ZPLweTyFFPjVzqmY5SnhbFryhkkYAyyHjRfO8XvILuHpBxW/cdom8FiU/dNrticUc7LhkjBIPqmr
 x/nCDnb4kOgXl1lZBiSQgNrySA3FZ15Fw57yTS3QOer7+cpnJv1yR+ZNUBZzVTDPIBCmOzWdWIxE35
 D2VkUz3BddkAWIq/pgmAhRdvzSrExJxFaX+fOEWzn+licnmR0k2F7+JCCQgjRFUX096rWbrPfkS9dn
 H0OC/uNZGMsEdngZYO7E9gf60oYqIOy+JtdyURs7x8WviFuf4tmjbzfEKRPo49+JYs9juh6WcuMA5v
 EB4OZaD96YUJ7QkGHzuT2H7GogusWJUp87dVFhKJkcmqQ28pUttZ75fOGZ1DJ5P9zHWQbDXNs/Sg4Y
 eKesY4z3/n7bIcbJ/80u5hJ3VYQUa0k8fOyfhXJUuWage4DB+blWUjKhom2FFftWLGBl44WI+gbFP0
 HwO5ut9YFkIPvZpBAtkCv8IuF16O5JNxih7+jVJgwYj4v2TBDS8bXrvFLnHAQ/9Q/4MYuZGo9xVxvo
 dwucpiW4w5+FRfn9UZUmhgkPXf8Dc7IB0ekRVrTX/aE7YP0XTcQ22PluEFog==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The QMP USB3/DP Combo PHY can work in 3 modes:
- DisplayPort Only
- USB3 Only
- USB3 + DisplayPort Combo mode

In order to switch between those modes, the PHY needs to receive
Type-C events, allow marking to the phy with the mode-switch
property in order to allow the PHY to Type-C events.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml       | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 2d0d7e9e6431..49c6539b9df0 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -71,6 +71,11 @@ properties:
     description:
       See include/dt-bindings/phy/phy-qcom-qmp.h
 
+  mode-switch:
+    description:
+      Flag the PHY as possible handler of USB Type-C altmode switching
+    type: boolean
+
   orientation-switch:
     description:
       Flag the PHY as possible handler of USB Type-C orientation switching

-- 
2.34.1


