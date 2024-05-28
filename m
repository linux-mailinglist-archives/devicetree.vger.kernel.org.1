Return-Path: <devicetree+bounces-70095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 357818D262C
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 22:44:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E498628F382
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 20:44:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB5B917BB1C;
	Tue, 28 May 2024 20:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Lh0fKGxy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C8817B412
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 20:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716929021; cv=none; b=FzvvBqww1c6giJVhGiS7IxY7lzWSt2OOEz7Rfjp6ko1eDrzKufT4vIrf8ebbyBGcjlVETskhl4v9V1ESadeiqc+Y6cmbAJMIfYuo4dIKHoKrHOSQHX8EhHZft25zQ7lMsLfhSg981Tj9X2+W+mPCOzeml2yHNVCtP98KzQYg1Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716929021; c=relaxed/simple;
	bh=Lh4Hlg3OXkRgrzNaBrVJx9jsphKXiP4NDsWTTIpai3k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Dt8MO8arWV6GZW1oQftQpMeodQhc274ky4jAQHo0+sqoHyeo0LzrzdpdenKvDE1fUUKiMXEY8Kjjx189hUPbbS5EyozQVrsacKF+Hsk/s4fhhnLbX/bGQ9BW8zmiJuYwKx5/9fEKMItXKVmvBCfLMxL1Zn9F/5laZYBlGlSP3Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Lh0fKGxy; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5295dadce7fso1829429e87.1
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 13:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716929018; x=1717533818; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=POO2bYnl6aq7h8lxQS/2Flz3Bzpp7Ij0f+fr1wR/NfY=;
        b=Lh0fKGxyYfm1KyfgSqWOY7UnWK3JewPwm05jV/FzXLXe0A6GECSOSo6yLlNNDy44tk
         PCWTUaawhhPZ+qlLiSVqYMOBA76XFAsK+VjfvOmnwQlmbl4jL0II6OSOVBHIY+Pd9wrH
         J2kC5JYIl+wEE8SEa3uM2kpnAundkKG2cbzyOJXk8aoIPPfI5yfKbuLVRGMxGtN6Pcw2
         +TBr8pCcEGfgWaxgBwmqOPx6SlfpdyPcvQ7GuocKUj9WHwOPYIBTUns4AjsdfRxLymvA
         jteJBbZgfivDUMmetwMYG2d3FGE2S8zGI7OgtIeEOHaM/cNva2AcJr3sUEVLjJ/fYtCo
         zKqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716929018; x=1717533818;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=POO2bYnl6aq7h8lxQS/2Flz3Bzpp7Ij0f+fr1wR/NfY=;
        b=VRs8tjzSe+eZxp4b/KRR6kq9fx1xpWaRrU6t8gHz/9yWT/3tXYNNVCQ9HYuVaCerTG
         +X9SHKBW56PD2tjyg7KNSwE5hKTWxvLSxBrzZSHTNCxOKFkpsJgFHmI84zzoVV9WByPp
         qv6sZavV4Zr4zfrhueSLgqkgCfwNLm0hhXvD0z9XvceEVGJqc2+/QE8GIYbLCB52ljTY
         nLdv7Q/Dv93yZNhhVm9bAxTRf+wWqyp9RWuDkz95oeAGE8RL6C3JPHmRzpYOVjO4oiSf
         Hq4yvheH0aV4hX967xHiUGZ9aL4bn+4u+Az9D89RBTrurmIMuqux4u8T9VTTLvi1Qm5/
         IKBg==
X-Forwarded-Encrypted: i=1; AJvYcCWKOXuSAgJlET46I7YZzhNj013OIqPXvKHHmZ4F3iZTZZJd8cNtq/7I0NtQion72KucGMsrGo5Nq3/wIHh69N8IRfIcoXk/UVZ7AA==
X-Gm-Message-State: AOJu0YxHIaXSfN0tcxEGoC+jzKCQTqymDIODZO3O3PI7zEXgAEXTWHhA
	6ceztjYCNCv1Q2/bErHCG3oCfz7CKb4sP8u4TSD82XF/VaN6XLAxDPKaG/9OVS9P98UXlvlxHyK
	O
X-Google-Smtp-Source: AGHT+IHiMBjjkNVwN6MlJKQdJNHhTw9/NF2ZxkZ+oeU9e8d0M/voGuqJlp9nod48lHnWKrWipsu8WA==
X-Received: by 2002:ac2:5219:0:b0:523:b672:25c9 with SMTP id 2adb3069b0e04-529650a426amr8583040e87.30.1716929018166;
        Tue, 28 May 2024 13:43:38 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5297066b885sm1095493e87.127.2024.05.28.13.43.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 13:43:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 28 May 2024 23:43:22 +0300
Subject: [PATCH 04/10] dt-bindings: clock: qcom,gcc-ipq6018: use
 non-power-domain version of GCC schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240528-qcom-gdscs-v1-4-03cf1b102a4f@linaro.org>
References: <20240528-qcom-gdscs-v1-0-03cf1b102a4f@linaro.org>
In-Reply-To: <20240528-qcom-gdscs-v1-0-03cf1b102a4f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Robert Marko <robimarko@gmail.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=814;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Lh4Hlg3OXkRgrzNaBrVJx9jsphKXiP4NDsWTTIpai3k=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmVkH1BtS0w3w9UdiY86gSp1CApy+0s30pPMZ14
 iKEe/dsHnGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlZB9QAKCRCLPIo+Aiko
 1TLYB/wMNUqcuM95miGmJRd2Meb24y0lbdlx0Jn45Qx7Kl7ksJBXohtRLphGL/jd9/PhPZG+DPo
 VuOgeFs2LRVKDhPdt1LSO58QO1Ioq10WlDlq8n69Q1t5rLr4LwfleDdvGjcp4Ikn0x4YVq34gGz
 hvINQ1spNTg2/lndjIGVRLaL0UFyBYcn6pPZlqKRQA3QifNDlsZg6TILiMd78NuqAAJ4QXJX0gq
 O68AQR33q0j1lywgS7J1Hgt+KATogqUgCVv67dhou7VO/KUvuuGaqH8Kc7mAGk6JAwMUU7/4c+S
 iaaVsOQ9YY7DSW6o1oy+KFyLpSywyoiIhUbWKPX0WjsxJuG2
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

On IPQ6018 the GCC doesn't provide power domains. Switch it to use new
qcom,gcc-nopd.yaml schema.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,gcc-ipq6018.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-ipq6018.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-ipq6018.yaml
index af5d883cfdc8..4e811698d30b 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc-ipq6018.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-ipq6018.yaml
@@ -20,7 +20,7 @@ description: |
     include/dt-bindings/reset/qcom,gcc-ipq6018.h
 
 allOf:
-  - $ref: qcom,gcc.yaml#
+  - $ref: qcom,gcc-nopd.yaml#
 
 properties:
   compatible:

-- 
2.39.2


