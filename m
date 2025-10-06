Return-Path: <devicetree+bounces-223893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA718BBEB0E
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 18:43:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 692713ABBAB
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 16:43:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF1012DE715;
	Mon,  6 Oct 2025 16:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QJQfDCv+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DE822DCF5D
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 16:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759769012; cv=none; b=rNK7QgCWNBl0jQClE8sYaAFA1RoJx/MbizFiMi76PNpEXcZ4ia5FUpGC4YErOVnNB2at6U61mghaySL+uJ0uV7+BZYzFYEOQzTXeGmX9n7CtaCA181ypyqLBA0vLEUrJUykX/ETn3Wlx5phcACr7MYF9QCMU/UGG9XixX2j1cjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759769012; c=relaxed/simple;
	bh=2BU3Or20eOW+8/DchoNoBhvg8meChDG58BOoaEtXI6k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mkvS8vjCM8xz1NDJpchg6QgXKsouBmfZZCJDunXrYkyUjJDrwcvFmEOYP67xejK6iz/IVsNVZ44yOs3WhUyeEIsxum9IQPm2DxH93+b/93/Uxjh03P/2c+ISX0XlGwbzxWDmfWftmKnc6RbjbgrphRR+LWj7jIQA4gO9YjNKmJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QJQfDCv+; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b3e234fcd4bso846656666b.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 09:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759769009; x=1760373809; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZygAzCt4BgJHIzlNAdvVKPmowO3lR1rw3aDJhpq+oRQ=;
        b=QJQfDCv+zXuT7IVL9dr3s2AkwfHatRt23ZMYisoiNIvHAiXkPO+WkMHAk4M7VJW2Xy
         mjcrX7iLoQQZE6C9pLdFl9S9d/ZPCd+t6qEkWVE/KQIuWIfFvX2Jv0Gsctl8uinvyjp/
         QXBCvyqIBXglir0NtOyROSO+uz+4cjy0PwYxc86cHuIVAMsBWbpeRJj+cDXyJjF4YjJx
         Vg/c0dtwwNuzZsQobqqPrKwaWXzm/fybtpzhOJXvgDoJ8p6DErC4YHkK3g/hyXzpc1WD
         G+TQ6lYVhkGE5yyMfVWrCN8fNtQps+8kF3hW5V76FO0aGOlz/wnSyu7rqYZ/9r2xvg8J
         F+7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759769009; x=1760373809;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZygAzCt4BgJHIzlNAdvVKPmowO3lR1rw3aDJhpq+oRQ=;
        b=f13xD5cBcyEzOTmFYUi3j80nxYXaR8y5KeW+8VffUOJLu/JPiivSGZ51SAvAIV1tZL
         tWgR3CFbKmgQH/HIaVikUSiXWLVcNduKLLdsf8Nxl4KYbAMuHB1GuSqyO5nX53AJRSEM
         c9EUSPVrsS4PU2KELRfYqyNM043IKQ2JH/+dNjpn+DzgRsXEIl9j1e6vCEDrc36uT0uu
         MgtvNxBres4HH8EJXZMYUxONCZmlqtQO3IYRAx9QeKPmiSDql2YN/GWI89hrgYZnlLgs
         W44rV+c0v5rWRdsKJ3HlNXfFo+ALd6Z1f7CM5CJudprQIhNP7hmdZFr3bM2xL3zQmXE9
         I6pQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCFdR5eKDvVu+GQM4F6CF6iFa93stSv74DohXBNLahE2gy0BlwGQosL8GVjBGsIvIlX4zUi1OeJeX4@vger.kernel.org
X-Gm-Message-State: AOJu0Ywva55pQyz0IfQX2tVE+ncPdAf1zfFCl1Boa9gQxgbX2EfFnhQy
	JwT6tTHuRJK2eIuqVLokCzlYvlLcj82xe9vT15SVbPd6xFzebDbakcpyrPwOPqoKLSg=
X-Gm-Gg: ASbGncvN2188tTp63RkZ489ooeJOQb1KPE5m4mfK0UEvGZwAQbd5OrzM3J4s4d0jXzp
	0hxEIlM6p5u/vDKz9XyfptqTism0qHY5YwLrhIybShkF4VpRSwcYeEsEnj30E/gqsRwsbMva6sd
	6Popt4lYKwQSx9w2E38h1CBpYw6bQKrgb9m9Hwe5asxDyGmsCPGJs+ivKCXOuemsSBH9WbIZPpB
	qjmHyBVwBgb6667USPp08UfwHydXprDNjU9s/ac1dCxmW8VlK3nUnOXQHsSS620W2oB80nrsfY7
	Hk4qB5BToOyzQJGIvnBiHmkAiDKy+SYLsd7eUPvw+EKXElMZuLAvImF/nADeLYJyzyawnmp6QTp
	+HL2MXrC5W+K4pNJ4c3zV+DJaFQxPTJGtbQlPeM4N8q/Fp6XkIAo+pzOFBpVV4LYJCioXlCbt/K
	bC8E35k0RS7gXkcXavASoT+bW5VPdH7Avc4AjSvdQzPiCRM0wzCuM=
X-Google-Smtp-Source: AGHT+IFKZW5wiQTkUSviOMSQIOsmLTTkBC5m6wYT7o0NG+U9VIzLggcGukVJvrDeFkRocqCcAImACQ==
X-Received: by 2002:a17:907:1b26:b0:b45:1063:fb62 with SMTP id a640c23a62f3a-b49c1d60b06mr1448559466b.24.1759769008797;
        Mon, 06 Oct 2025 09:43:28 -0700 (PDT)
Received: from puffmais2.c.googlers.com (224.138.204.35.bc.googleusercontent.com. [35.204.138.224])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652aa01esm1193841866b.2.2025.10.06.09.43.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 09:43:28 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 06 Oct 2025 17:43:27 +0100
Subject: [PATCH 01/10] dt-bindings: power: samsung: add google,gs101-pd
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251006-gs101-pd-v1-1-f0cb0c01ea7b@linaro.org>
References: <20251006-gs101-pd-v1-0-f0cb0c01ea7b@linaro.org>
In-Reply-To: <20251006-gs101-pd-v1-0-f0cb0c01ea7b@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Add support for the Google gs101 version of the Exynos power domains. A
new compatible is needed because register fields have changed.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/power/pd-samsung.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/power/pd-samsung.yaml b/Documentation/devicetree/bindings/power/pd-samsung.yaml
index 9c2c51133457112ca0098c043e123f0a02fa1291..c35c9cb0115d79e5c36142da2c2a5dd30cd2ad47 100644
--- a/Documentation/devicetree/bindings/power/pd-samsung.yaml
+++ b/Documentation/devicetree/bindings/power/pd-samsung.yaml
@@ -19,6 +19,7 @@ allOf:
 properties:
   compatible:
     enum:
+      - google,gs101-pd
       - samsung,exynos4210-pd
       - samsung,exynos5433-pd
 

-- 
2.51.0.618.g983fd99d29-goog


