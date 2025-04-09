Return-Path: <devicetree+bounces-165007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F43A83210
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 22:37:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B2DD3174AA2
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 20:37:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 638A3213E85;
	Wed,  9 Apr 2025 20:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CaJX60Vq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9BE20297D
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 20:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231055; cv=none; b=ZlPinZolyNFuAuOanOUlnf0XBLj2Xs8jaGaSEYbAaGMd241eI2TbJN6YAlBKkRuYm67N93tsTcJ9lCGeBKEM15TRi/BUgDhLzHYrSN1fY5mnM+SUa6nZ8yw+ICix4zrkH1XOqtKQ6Idc+WhqLOxVLTwG5guX62uNBQEFmUYjJUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231055; c=relaxed/simple;
	bh=CvZ4fbl95FAJENkF4NbrlkZJArtMF1C5hRtEryeGvps=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fFn0UJbO1Jn92inupueofpOxTjPveD1Lxb4LvLHPZ+LPzorEHwV6QpsqB5byPMJmnhocbjO6tP4nb368ndZhakmQGRpJ2vxmpy7JXSpVeNAmRve+Xim94qKQYtYEBFNIfi+bDQEAftUMDbufAFZNWfVOznntDF4U5FvS6jWYgKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CaJX60Vq; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5e5e0caa151so224182a12.0
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 13:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744231050; x=1744835850; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ReTGoMS2vXkEoQxUG9mhQKtXUX9UxWUCToSWrUrmlXA=;
        b=CaJX60VqANMuDt6gWj1Q28EwTjqjYiWqd01dW8wrO0ppMehSPbWK+u3tbozLFN6pld
         5uoL6vXhA05bcKKAz21fXk2tT1swrqGAuFrNDDwJ4qx2F2Er4Etbe35rk8oPKKZgivVb
         TFkHXV2SJVUTO3tkYS4yrmbaOU3teZWRLFvHfeNlskypyVwL7l3isRs5oyEP8U8ulbr8
         ouwfHBSNqs1yFJmYaF93myVfTMFZLHeBlOAjhb+oOfcyTZleWOa+xqvICYZK0/OqlRt1
         toqCj1L9q7aWagiNSBdqn+LDa0pwoMN/8Ut3Du9UnVsSlLbWJlRN/6TT95FrjwcNyrPd
         RvXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744231050; x=1744835850;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ReTGoMS2vXkEoQxUG9mhQKtXUX9UxWUCToSWrUrmlXA=;
        b=dmNGPbd9G6nTgvHxB6MGOgIewrB/K+rIHF0wKzy1oqcjYmldf6lvpfX0zbmMrrUFcU
         6yh57vZeTwutjTxttHSe101+Fm165FXsZCLKLLDUs35tde3LlgYJlG2YgL2nNZvT9ue3
         4R3UhNnYkUdTsJRKD+alvtRD629tt7EIhXraf/feZov3CZRJLbksZW9zwlaj/wzLBdcS
         +z0kvFkIR1DaQxxavY0z0s838tuoXmFSnXS1o3PR/bqj3a6K2nxrV8kTnDuSzzvAzYnT
         VY0tSymD7SesYDT3hZkWN73/v+j9bXO+XPEIfeJKNjo6L68+RjXGVbOc4w/SY/3webQV
         tiSA==
X-Forwarded-Encrypted: i=1; AJvYcCWY6l6b5Z3tf+2fax0EVDRS4Awg0l/aOhU9O5u5yEssbKyDaz7c0/1fwIoAgDCfZq/LYbrg3+U6SGse@vger.kernel.org
X-Gm-Message-State: AOJu0YxpubKpKWs01Rq+/bWuWYoyWIfyziuyLlbc1EjGv9wV8Plh2sVM
	8XLFa6lfFW85C03xLbSCg0KKuTwfHcog1kDCzf4vTT5Q5Kl0GlgVxdkoz5BzZso=
X-Gm-Gg: ASbGncv7jEunT8DQT8aWsvJeBiiRViq4+ZU7fzG6BN0YJfpHApFzEu//2KpqTKLGVWB
	l4RQMY2WzAPlvAuAJBcPNMtCoEXf0dRjpubhX0hd9sLi3+8SaAsjCgALs206IR5S93d8InvGvLL
	gi073JdKvz/bI8oqJNSNWivo/ydVZrwV3t7OxI6pQ3fkTKt6vlWxEfHoNJ3DDuX6ML9uQ59hVRh
	rLiizFa+RIZrVI6a6V0v0IwP/Nk2cD2vd6uNFoCxgJZ1dHLCz2YiUo4x71WmybBhQbKbuVAOhpJ
	6yflxgJzS93EqKgur55Tph3rB50B/za5ZNBgYXzypZhGjCI28d6b+wiMU3COsJzHmoD/DmAqxvn
	03AhQUjaVRR4gf0KPDPMODCgIxHU=
X-Google-Smtp-Source: AGHT+IEBlNxVh7eTUcIx8bavLvlvqPUje0i7F4RzY9BEv4lu5kBKWoWYEurWTbTU+YYGqwf664Lh9g==
X-Received: by 2002:a17:906:4fd4:b0:aca:9a61:c5cc with SMTP id a640c23a62f3a-acabd3c3b96mr7238466b.43.1744231050538;
        Wed, 09 Apr 2025 13:37:30 -0700 (PDT)
Received: from puffmais.c.googlers.com (40.162.204.35.bc.googleusercontent.com. [35.204.162.40])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc001sm145850366b.126.2025.04.09.13.37.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:37:30 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 09 Apr 2025 21:37:23 +0100
Subject: [PATCH v4 02/32] dt-bindings: clock: samsung,s2mps11: add s2mpg10
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250409-s2mpg10-v4-2-d66d5f39b6bf@linaro.org>
References: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
In-Reply-To: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

The Samsung S2MPG10 clock controller is similar to the existing clock
controllers supported by this binding. Register offsets / layout are
slightly different, so it needs its own compatible.

Acked-by: Stephen Boyd <sboyd@kernel.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml b/Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml
index d5296e6053a1881650b8e8ff2524ea01689b7395..91d455155a606a60ed2006e57709466ae8d72664 100644
--- a/Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml
+++ b/Documentation/devicetree/bindings/clock/samsung,s2mps11.yaml
@@ -25,6 +25,7 @@ description: |
 properties:
   compatible:
     enum:
+      - samsung,s2mpg10-clk
       - samsung,s2mps11-clk
       - samsung,s2mps13-clk # S2MPS13 and S2MPS15
       - samsung,s2mps14-clk

-- 
2.49.0.604.gff1f9ca942-goog


