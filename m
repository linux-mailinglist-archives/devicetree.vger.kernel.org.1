Return-Path: <devicetree+bounces-21060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1EE8022DF
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 12:27:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F85A280EE0
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 11:27:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFA8BC140;
	Sun,  3 Dec 2023 11:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JauP0zVe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8404A116
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 03:26:42 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2c9fe0b5b28so2319301fa.1
        for <devicetree@vger.kernel.org>; Sun, 03 Dec 2023 03:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701602801; x=1702207601; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sbKwG3bsiy6N+N1DD1CLsj/Q/q+O1WSIDYwjhlWFEhk=;
        b=JauP0zVecpmeZ+z3RHcYpN1DjW9X4kafDK7mSEZVT1zhnTgQ2C1Ckq8OgAUJyKVpgd
         2zgCVkWnnBHURo535WjBhsVlhCgRzLWGyGg+IxtEt0NJDF2oEc3j4X1kBUgcBdzYlYA1
         tgU/f0A/rS8WHargiY2biCD4fPtP5LivyCGr0R9YvVcxIZo5RV0uCAuQZfY/lHaoxhLH
         CxFv7qfr9KYJ7bObd6nDAuAgQXr+aw7vQkKcZLnwO2w1gaRwAsOevKdImrf6wFR4x6CY
         HCffs+pEi1FEDGyzWAz7XA0/ajHjFB26lsBIVhpIKb+iZANt6YuMF6vd8GHTkPsH+avs
         YJWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701602801; x=1702207601;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sbKwG3bsiy6N+N1DD1CLsj/Q/q+O1WSIDYwjhlWFEhk=;
        b=mcxswmGS9O0I7JWg7sZ2M1b/9z6rTFAICNjeValZlWYzIdC+svFAairDRMBIE6zdmn
         UAvoSQTS6we2zvyWXtNPsqBpiMD6Q3dL4rUn0oVNAXEpllDuzDyn1lj1jSqhxuOEcFwI
         N9szN0NVaqK+MEkA45PcgtVgwCWxgbUouT5uNVcqe8A5EY4CcDjl4OQsRi0GSGIEVGLo
         8Ecc4Szp522hmlYjDTUc2HEMoWAVvaf+U0gy15HO+EIFifoRqJxKylWV64SBQfxLZdjF
         ZLlrLjb440Amawl2TyN1qT9eO3RkHJgmNMblKAhD4IZgsFygQmVV2qaoio0rbH3gLHsp
         qohA==
X-Gm-Message-State: AOJu0Yy+4XyaIM0H7DLSCTAl0+8AwkONI+uBkzVlddlfrHb5O/jxf3H0
	HrVqpvdyS/UN7Eflirv8ZVdWXQ==
X-Google-Smtp-Source: AGHT+IHXObFn5iWeVaQxMjM8NCWQ1Rahby/WyhApUWMTJIT7Qf7SFVR14cwLp/UcG7bQecH6ZqyZlg==
X-Received: by 2002:a19:8c48:0:b0:50b:d764:9691 with SMTP id i8-20020a198c48000000b0050bd7649691mr1631354lfj.117.1701602800856;
        Sun, 03 Dec 2023 03:26:40 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id b9-20020ac25629000000b0050bf01760a1sm241224lff.295.2023.12.03.03.26.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Dec 2023 03:26:40 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: display/msm: qcom,sm8250-mdss: add DisplayPort controller node
Date: Sun,  3 Dec 2023 14:26:25 +0300
Message-Id: <170160265545.1305159.1208126196892932328.b4-ty@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231107103600.27424-1-krzysztof.kozlowski@linaro.org>
References: <20231107103600.27424-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 07 Nov 2023 11:36:00 +0100, Krzysztof Kozlowski wrote:
> Document the DisplayPort controller node in MDSS binding, already used
> in DTS:
> 
>   sm8250-xiaomi-elish-boe.dtb: display-subsystem@ae00000: Unevaluated properties are not allowed ('displayport-controller@ae90000' was unexpected)
> 
> 

Applied, thanks!

[1/1] dt-bindings: display/msm: qcom,sm8250-mdss: add DisplayPort controller node
      https://gitlab.freedesktop.org/lumag/msm/-/commit/52e36770b174

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

