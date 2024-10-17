Return-Path: <devicetree+bounces-112559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 367839A2B6A
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 19:52:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EE422285323
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 17:52:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B69F1DFE2A;
	Thu, 17 Oct 2024 17:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J6v0DsHr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C231DF978
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 17:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729187568; cv=none; b=X//DBJHOBAom7utE0Yb48xq0bgEvybvcT1uNE9yLaAhEHilhUObQqk0Ae8eWzi//av9RSK2ZOrTlNPvb1lQfuZoh7YomK0rh7cyu9TblITbygf+H5h0LD8t6wylA++RnQP9tJid+BYD1qdTf82/1AH09nsiNPZXxJwWEGSAcpd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729187568; c=relaxed/simple;
	bh=/oO6HM+YNUi2rf9nwpMtXblEKKUSVCep9x2wkci+y+g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YVvI0Hgemdgfaorz6eg9Z8qJTd62OHzM1cWQh8y4eXZGyRzE56OdsnzCYoTvXIR5/NhK5guxpmQRz7AJOOPZ5n8KDV+HWFRhxQ3kR3ZIQ2BoYKHPfEnoN2gvYAKqJuNNVm5a0kGdfryH89SslFxFJB3nGQkpW190MoQL0XTWPDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J6v0DsHr; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539ee1acb86so1650798e87.0
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 10:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729187564; x=1729792364; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Cz/QpxYZj1EV+IH7qrZVL4MflpOswpvln2kSGkCR4mI=;
        b=J6v0DsHr4ofA/yW9iSuBhLrvHBn0rYhNS3lJn+MbdWglMjLr5bDLYL/o+qc64/00Vt
         kEKMpTQoapRKf7XBY3SFE/5+dfCu9/PBBidG+uoCvX3S36aoyDk1V9IfhQURwsurs3x6
         tpwBIehbAHgpaw/CWVzvFzHeVqEpk2mE9j/axc2z2bql2QsEHFjSF6zEjD51nuO0VGy9
         6zaaDDZ2+ojpdO88Kxh9tlEY0ZFVLCDlF0B0ymVcWE8Hob6QfpgSO3djTkjwR6jgA4KH
         pvV+jPArlKJA+nd8bkrHnWFcIUiPOnojD0pZrSYTqPyJKe4ER5fP94W782gmCYXdBke/
         niRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729187564; x=1729792364;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cz/QpxYZj1EV+IH7qrZVL4MflpOswpvln2kSGkCR4mI=;
        b=POhsuPRnMc0DHpQxu/0aWjSd+rUYqeiQFeoq1RoPb/ncO2hVx9cCx6u7i/L8Q3KKBi
         hQOMmH8xhLHExBMwBT50t7rvsuezNFUgI+Mw929jezsp4Uki0DGsVoJ3JpBsGBszlnjW
         qN1+anJ34tEe7/JLmmaJmkRCrYDhHPkOKH6v3onwadvDfW2qBvxfnGubB/JLnovHL8e0
         GI9WO776B4eLrx8JXBhSjLIK8ro/yjZj6JhwhSAABDWQyXCe8Ug/bfjVvh73IdU6JGDz
         HuxO0SsRXHtF3DkPywW0f71/JpZnrd4pWFgRm7uh5+5DTNvheelvs796naIlkyaTg+Cm
         t84w==
X-Forwarded-Encrypted: i=1; AJvYcCWXxjVvfP7KjEwTlzoI1CDSdxF0qDHTiJLx2+X9S/Ep9ZBhbMx2aV1+ZbIombSQO63aP6NecKyIHD4H@vger.kernel.org
X-Gm-Message-State: AOJu0YwrH9XE5NO73DEDfZP599FgSMO/KwKY8g4UspnwScoopxP6M0cN
	NpzAFrtYQyhyjiBnJX25tP+pAktDXfWOkNnCIrab6FFyWydD1CHEPANM/sYZlf0=
X-Google-Smtp-Source: AGHT+IGsqEz513rkATayAG7MXqLRzzVh91w7A8v7f9i1ZQerLp45lBfsd/kbzup9aghNzXXf3qMQmw==
X-Received: by 2002:ac2:4c46:0:b0:536:796b:4d94 with SMTP id 2adb3069b0e04-539e57316a5mr11685093e87.41.1729187564250;
        Thu, 17 Oct 2024 10:52:44 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a00013f8bsm829557e87.286.2024.10.17.10.52.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 10:52:43 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 17 Oct 2024 20:52:35 +0300
Subject: [PATCH 1/2] dt-bindings: power: rpmpd: Add SAR2130P compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241017-sar2130p-rpmhpd-v1-1-f4bf7f6fd12e@linaro.org>
References: <20241017-sar2130p-rpmhpd-v1-0-f4bf7f6fd12e@linaro.org>
In-Reply-To: <20241017-sar2130p-rpmhpd-v1-0-f4bf7f6fd12e@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=879;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=/oO6HM+YNUi2rf9nwpMtXblEKKUSVCep9x2wkci+y+g=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnEU7nGZjSjxM5orVyOR6bUoAFxYVZ3sJyWFSAI
 nC3GB5d3oSJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxFO5wAKCRAU23LtvoBl
 uC72D/9xA7gaR833fW3oK+vY5m3DZm7POuWcucgyKPkKTkA/ck+zPi1WlBoaLGS48J8uJbPGjFZ
 t46z7e/6wK9iiJpl2/1sY1myOy47At0XsCwx4A735OsJTgFf9k5qDCGFrdT2NexXtjbbBPRIzI9
 bPkPdDaF470RfiIhC8UiVIXneCEu3Iu8rB2uMV9WROC6u+UN217fgFwQY9tSZYvYxHz6uKts/yR
 Z0Kq8eVnDcc8BgVcPRCksrfFIfnMmWFcVdM4gZvPsaX4YIj9X4JnnVeVbCLABXVcqiwcMXcaTXN
 me69g1rVERpuwgUfauKH0u4YqgpIima/AjhbuwGTwXZ7kzlYsCMap61GXAY2qQFNW44ad1HOwTL
 Xs/tJ9myjoqGz0Wm+fqJXgFL8Kg6U5fjPNi1+8VIcSyACmrD9GmGzE+V6c2+Kq5iVDZGEe1ofBH
 aHOz77iEy5AaQZKxwpPDRFKFRC3p2iOamc/av3vYy5FrLj5auS9MkGkIJ7F7U7NXsKTm7XqOmJP
 y4Z0sOoYJKcoLunfc+xATKjeDnglAQcSdqhkpq0nMTPCfcyqmxe7oSTIT+BYsaHgcZyejZUFa7f
 ieT/+QYO3O0Ah5+noeQ9hS2yn9tTYhksed9dhLd6HokT0FnlRsuZoQru1ib/2l2agqvLXoF+egu
 vvjdTjhy17JcyEg==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Document compatible for RPMh power domain controller on SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/power/qcom,rpmpd.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
index 17ad46e5552947f08b1be8691e225ed9ddaa736b..31c2ac93f80475a6be6e985a23cebf44fe2ec520 100644
--- a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
+++ b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
@@ -39,6 +39,7 @@ properties:
           - qcom,sa8155p-rpmhpd
           - qcom,sa8540p-rpmhpd
           - qcom,sa8775p-rpmhpd
+          - qcom,sar2130p-rpmhpd
           - qcom,sc7180-rpmhpd
           - qcom,sc7280-rpmhpd
           - qcom,sc8180x-rpmhpd

-- 
2.39.5


