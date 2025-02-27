Return-Path: <devicetree+bounces-151848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4F9A474D7
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 05:46:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37F2B188E945
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 04:43:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D3B72327A7;
	Thu, 27 Feb 2025 04:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aj1Ji3vl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD32622FF24
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 04:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740631088; cv=none; b=B3woAEEk6HWYEPYGNr+WRzHmK+1Nyt2eZGYofRBxa0JIbEyFOCjY0vT6m+8FWh2va1OFNr6NYRGOzUgxLedBAZw4YtnLRLUWaYYCHchVYhWw7cYEFk1+S1HUbmS/Twi+CNI4zkD0rgV5JoEdY4+GDcr4M7E47nRGQuPAQZZG1nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740631088; c=relaxed/simple;
	bh=MSivXoBjhAmFSDzHG8U1LTjK1GNQVhU00y3QUrQPRLA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=KC23Ca5NKGHNJ2vz9A6OuHwafIrBynIh+6pLseBUR5NNb7mhH/Fu7VvKJHnU7Un0Yvp1fF5YXnH7dRggSt25oYCSjkp/15wQYvjZunOQnCX8XWaijOq4DvQRZV0xzcWbTtVC7Eevld4yLIVu1LnuwnUKWsN26nTVxHO1rBBTHtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aj1Ji3vl; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-548878c6a5aso499209e87.3
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 20:38:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740631085; x=1741235885; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s8Qfog7C+RF4zPzBr1L919bNbTJtyOk3Zvza1VKHBAM=;
        b=aj1Ji3vlmD0Kh79LSj1yBEI0FY5ZzjsESPFbk51hH3qDD0DtOB9e1RyCoVmBC31o+h
         ltTthQ75kBWlQKBvZ2h0HblXB6FRtTOL/21u/NYf10ztw5nGC1ze5hQt2RUpektRtkxl
         km5jSWB6j9x1ZI2Nh4JA7qDRzmlbtbKJcwaHQVP7Pa8Ya6dZLWi0MB0gvb1FLeugORoL
         7RzXJg8hsHY1aGXT3TdjHR9nsMxKbfUd9trUhTP0zsA/ZXQ2oGNqTuMG2n1YY0OfpmQH
         DyKwFIyKzucWwG/xkGxXY35RcS0alq83ITdnMVoKCuWmxv7a1V4T32MG4UiuYCThegs5
         siLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740631085; x=1741235885;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s8Qfog7C+RF4zPzBr1L919bNbTJtyOk3Zvza1VKHBAM=;
        b=D/DI7rplXrBb5iP1eGkDkEnkHl1rtRTJTx1BYVw3vT/mxZbYpKAyLuxhb+2DXyMBEm
         GN384jHbftq57kmyUSwXKKy8mAC/r8cqgJh01m9FLEnct3hSeREnEvLlv4wttTdfdw9i
         MT6fCy685AddJ1Ckbrh8wuKN/C1x7yRh5+HwLl//IY9ktjtyTSdqpijLoRVPI2ytvORx
         DwdQoD95DtFxdWukfejTmbc6fDdivYlkXFEk6lcskHudA+g6cRJWVY6Ta3GrRoF1XXoN
         q+X1vyxRvuYqydi3rKfOTd36HXCduOtIBjnj6KsgUhf+MT2v3z6HlLfYaNe3kTzp1W3+
         b+xw==
X-Forwarded-Encrypted: i=1; AJvYcCVsqVZmGqKhnHDRe8hrGOCVWFKEy2vCeKSHZ6fr6zdx21p8wzq7thZBp94RhgGpgVIEB0eX9326FCNY@vger.kernel.org
X-Gm-Message-State: AOJu0YzVIbR6wtpDE15BqGZgLLwRU4qd8/znzN4w2s5DyheHqmJzbgUu
	clAyDhYXRE2PFWFPm8enOJsYgi9bazA4V4K4jQWWPQVvi5YeioXRG0tKYrjZ2/M=
X-Gm-Gg: ASbGncsxVKOiTaCGpc5bad8K9HwiA6F9huUretMpeJfXVxSP5HBJHGS+mTuXW8K2ki/
	nfEk7bQtbe9Z06bxcUFYkbCROs9bBDnmrCNU4OvTXtke6BbsmO6I/RcSbqJ+ezs62WUMNgg/XIg
	ZC9tC9tYo4+8vq7x+x4g3yDKMDvevaVXzuM1e+znI4Aymb8BMradWN+oqaumd73wsqNagFZ63Vi
	xVwP/zilg/HO/JxsPQUyFlLXqLTvC3i0Q0IopN+Mx2X10ZFHzY4BsGa39NgJ6JqLq/J+Iq15of+
	3tdUhhFWubSdcX+zBM4QB89kcAYkPR16/fmXX/Lsjg==
X-Google-Smtp-Source: AGHT+IH6ScpF7u8mldxrlNnCmDDwIVQKTOZg6njtMYsTmsyEuGMk70Dk1+pUhOrMej8BfEuwJN/Jqw==
X-Received: by 2002:a05:6512:3ca5:b0:545:f90:2753 with SMTP id 2adb3069b0e04-54839147f34mr10569238e87.30.1740631084978;
        Wed, 26 Feb 2025 20:38:04 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549443ccf45sm63485e87.229.2025.02.26.20.38.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 20:38:03 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 0/4] dt-bindings: display: qcom,sm8[56]50-mdss: properly document the interconnect paths
Date: Thu, 27 Feb 2025 06:37:33 +0200
Message-Id: <174063096232.3733075.9096699710834268349.b4-ty@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250213-topic-sm8x50-mdss-interconnect-bindings-fix-v4-0-3fa0bc42dd38@linaro.org>
References: <20250213-topic-sm8x50-mdss-interconnect-bindings-fix-v4-0-3fa0bc42dd38@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 13 Feb 2025 17:27:55 +0100, Neil Armstrong wrote:
> The mdp1-mem is not supported on the SM8550 & SM8650 SoCs, so properly document
> the mdp0-mem and cpu-cfg interconnect entries.
> 
> This fixes the following errors:
> display-subsystem@ae00000: interconnects: [[200, 3, 7, 32, 1, 7]] is too short
>         from schema $id: http://devicetree.org/schemas/display/msm/qcom,sm8650-mdss.yaml#
> display-subsystem@ae00000: interconnect-names: ['mdp0-mem'] is too short
>         from schema $id: http://devicetree.org/schemas/display/msm/qcom,sm8650-mdss.yaml#
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: display: qcom,sm8550-mdss: explicitly document mdp0-mem and cpu-cfg interconnect paths
      https://gitlab.freedesktop.org/lumag/msm/-/commit/e05b233ae13b
[2/4] dt-bindings: display: qcom,sm8650-mdss: explicitly document mdp0-mem and cpu-cfg interconnect paths
      https://gitlab.freedesktop.org/lumag/msm/-/commit/162c57b8e7a1

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

