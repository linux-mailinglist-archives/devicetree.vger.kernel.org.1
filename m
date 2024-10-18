Return-Path: <devicetree+bounces-112795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 172419A3897
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 10:33:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7312FB21643
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 08:33:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C47918E756;
	Fri, 18 Oct 2024 08:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O06+/lEy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F8718E742
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 08:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729240414; cv=none; b=HRTD4C8xZFgXWrkL9ENOi24E8bbL/wIsFklRunfGZQSo6V9Ow2s9Vl/zbsnT1PMFQopZe3get1M/gKMSL9bfeprHNLSKA1HQG3LWi1owoFiTBfBjRVoTPJTCaJ3QjL3pKR77jnxmb3EIKPDmHHMfWw+Zu28vp4eRnkcpNzRWbsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729240414; c=relaxed/simple;
	bh=cxeqt4MDJ45QuVxFvg3oaFqW4sJmmJ07okgJCrZ5ePQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Mj0azwZ7uOOIbIRJQxiC6EWRzz+4OdN9TriksTMNC+DBvwfROdAxzDzUR1gTDHsUya+gMqlauzsYeRbCNHj4EL9pNg98qcJuGxf/slu4hgCHDGUsMVYN/G12b02Qma2TFPJ81uBRdj6sX3/7QlrAmuayxW5thfWM7rJGUS0Py7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O06+/lEy; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2fb388e64b0so19118191fa.0
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 01:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729240410; x=1729845210; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aliD7iaG0tNbgm2N4ydw0tz1kBIs+777G56/ABl1sKM=;
        b=O06+/lEyagj7jZj1nJqLGneQVVmKugRMDCgQ+rdIGQBqtz6KCU7xYqpeuV69Jhojr6
         /KW4HmHe1jW0Drqvp6zzh4JLHGsIXigZjxc0h+NpHbb0NwOVrju7etKfhm2OuSutl6jX
         rE1GssX/JEmqrJz1IJ7hNJodklXvgANJuGt1vC2f6aTvwgLdNvitRFZ7j92+bUtrE/FX
         nftIgBTV6smrpW21KfOAu+CN94DTrTTEn2sb70jL9qUN/ebSKlBlQ7F75FZIWV0fSlef
         REXgFiL4wGC92eZjcOE0Yok7mbnXMrjPe2X+LCiMLV+wKe4q1WI4bq7Q+nlNDt0C571q
         obxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729240410; x=1729845210;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aliD7iaG0tNbgm2N4ydw0tz1kBIs+777G56/ABl1sKM=;
        b=Suf9GRPrK5IN/ZjnDsyd//cxZ04fSimDLsY8SnVh4UhBMZBAI8YlFm52DRMHzjP3DA
         MYL/QxAaugGOj8BZmI/tWWJz8rNHi4kUACB/MZl7MBecJIrp0J9ZMJCQTu6C5qfgxyom
         kOlsrfdhqeZ6/lqF/1pFn7aqXh4qSQATqaGz7y1w/OaC5QB5RzzyZf9PKvJLH2Ph/v7z
         5uiPW9RueM9S8T/jfAMfpbL7niShVOWSB1WIrybYvqkJm138oBJyQ+pQZfByIlVsVYbg
         9Yq//huI7J8jaIigX+KhP4He8pgxmMgAECzr6Sl0F2b8eR6OcK1daq6p+uQDijfg6izl
         YFhw==
X-Forwarded-Encrypted: i=1; AJvYcCW5145+ia4q9XasJw3CM5PYYwol9sZ3DYgp7688Z9vWWmEIMq1nrJXHtp0EhYX3pa6JkmDlRUoLQTtJ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywmq9yNImL3pZuX/0GAjrR1QnRStFircbnzWLBIrQ2K0zej77R8
	BHxDQuoogBHekXJfCw7e8Cw4K1hcM5CmtLhQ2q9kMsFAJfU3XG4wmzpmRi+MDZobDxDwh1xXpxW
	JiA0=
X-Google-Smtp-Source: AGHT+IGT+RSysnbWqnvieDrR+OErr+Dloo+3x4IRYvKlblcTDt2ISpbj0gjggySvOtTRIlidHg6mtg==
X-Received: by 2002:a2e:5149:0:b0:2fb:5014:c939 with SMTP id 38308e7fff4ca-2fb83230da0mr5514201fa.41.1729240410077;
        Fri, 18 Oct 2024 01:33:30 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb809f9b62sm1628761fa.96.2024.10.18.01.33.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 01:33:28 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v2 0/2] interconnect: qcom: add support for SAR2130P
Date: Fri, 18 Oct 2024 11:33:23 +0300
Message-Id: <20241018-sar2130p-icc-v2-0-c58c73dcd19d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFMdEmcC/3XMywrCMBCF4VcpszaSm2hd9T2ki2k6bQekKRMJS
 sm7G7t3+R843w6JhCnBvdlBKHPiuNawpwbCgutMisfaYLX1RpurSijWOL0pDkGRNr4lSw7bC9T
 LJjTx++Aefe2F0yvK59Cz+a1/oGyUVsPo8DbQhB6xe/KKEs9RZuhLKV8kABLPqQAAAA==
X-Change-ID: 20241017-sar2130p-icc-e0149e2e3a95
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Odelu Kukatla <quic_okukatla@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=982;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=cxeqt4MDJ45QuVxFvg3oaFqW4sJmmJ07okgJCrZ5ePQ=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnEh1WfpZ4IimRlNtOIwUcpq58Gl8eMDVz0BNw1
 kyU79MzSK2JAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxIdVgAKCRAU23LtvoBl
 uLhND/4teM0lfYLZXT8GchgWA3nQgEIZiw7xkUKZa9/ZDYu1KsauPGpyLKcgyvieT6j2m5yY1Cb
 Nt3MW7nmNjplEWm/mLl2IHK1xzmmDlkMa0fL6BCr/yHSdO5BETuaiee0oT/sB5fuSzX72tufWG5
 yoay7naUyzDRabl6bqgxgln3oy3VqeANnmH8QRpIoyalAIVQjhzo7nN80ZZ95W3Z8LXQ9ocWFOP
 wblwTx9U4iNQ0LQBc9/Xr7gUKB2IAfxWwiqL1XnEGHhL4+5vQ+aWfondB7mYBUJqwEQDeWDFtZr
 fWHj24pF7HUm8J/wJ0S7u06L2QOiLh4V9Mit3s14cq1k6+n7AqtNnXwpiNWDywrtkRH+YGovdVs
 SzpbeqCp8ieJAFl/A3ocKWvTaN8X3XqHCgir5b6A75Wwz9qAZ7NlnlKl9gQbtfHHXLKFb8dmMIL
 +lb4xeqN9i2vrSK5/5Zx/i6VqMm22RdqjeW560/xxRumQG5NAsIlCTdXZGRaSEULQJtakZJlSGg
 d/WZ5yjRahn/yryrBqhNlWJIqNNL93iR+yrF4OETkdfKSidVoFxopjNqefzcr5EDW4poQaNYhnJ
 g1jSdSphnhlqAHbarOo1aTWOcdr3CuHzNpKNEwb3Y+D1IJnUu1ozztvfQ2TiU25nB30YO+jZQtu
 1RRTR8Y18ZFpcVg==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Add driver for the network of connects present on the SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v2:
- Used BIT(n) for enable_mask (Neil)
- Link to v1: https://lore.kernel.org/r/20241017-sar2130p-icc-v1-0-bd3a8befa4aa@linaro.org

---
Dmitry Baryshkov (2):
      dt-bindings: interconnect: qcom: document SAR2130P NoC
      interconnect: qcom: add support for SAR2130P

 .../bindings/interconnect/qcom,sar2130p-rpmh.yaml  |  117 ++
 drivers/interconnect/qcom/Kconfig                  |    9 +
 drivers/interconnect/qcom/Makefile                 |    2 +
 drivers/interconnect/qcom/sar2130p.c               | 1930 ++++++++++++++++++++
 .../dt-bindings/interconnect/qcom,sar2130p-rpmh.h  |  137 ++
 5 files changed, 2195 insertions(+)
---
base-commit: 7df1e7189cecb6965ce672e820a5ec6cf499b65b
change-id: 20241017-sar2130p-icc-e0149e2e3a95

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


