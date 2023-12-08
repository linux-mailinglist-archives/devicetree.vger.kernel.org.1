Return-Path: <devicetree+bounces-22933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 826EC80989D
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 02:25:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D6F4281290
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 01:25:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A23E5110A;
	Fri,  8 Dec 2023 01:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CnltOroD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F2CC171E
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 17:25:23 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2c9bd3ec4f6so18369561fa.2
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 17:25:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701998721; x=1702603521; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/z8ttjuthA9TvzbZIjtwgrrvCWpxqoAfEEPAXm+j5bk=;
        b=CnltOroDgJbdxJrIbtpO8VIY3iNY3BRG4niewFN/JOgGGQD45HnB9xOR/LBIiAGqhB
         kca/A169opJrx4uDR4k4kTuKIbCufI2NnBbGekM8O5bNDvAJz1WI0/b1KTJ9b6ETerqT
         h4RqMNL0SSlXIJxe3D4h+gGJ9Y2HLqgi9i936SLcr+pCwGJgRfaSLQZwRnsckL3I0mT3
         xy0GEopU9vfR13JlUIABMWTXECyndINzP948Gcs8iH2joCh8LiBaSTbj6sM5z18+VQic
         SSLVtNcQiQyZC911vLvnRQWcHvu//kzxptHGvpgR85YEeYtTmPhBm4GNk1eL2s3hnYIj
         y+rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701998721; x=1702603521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/z8ttjuthA9TvzbZIjtwgrrvCWpxqoAfEEPAXm+j5bk=;
        b=Jbja03bDD59Hu1orswtFZ5ONvY0yguMXOvRiIz+4Bgryrp9jkLhc7v0z8Jhno9IXZL
         +hAcYSG2vgXEGlL78WaBRhxbSrVdObR83mjJiS4IU82ENHDXnNgC2z1M2p+1y8cOdQB+
         2NCM2+n+2CtXxTudVe1Nbs3a/C4vflxm1jYU9y4/HyCzchWzdmw7QqurX2Dz1n5smjuQ
         ysFu4vozkH8SnxbyBgIrYYsXiALRDKU41uPhGHmiFhCCISAm7HVsxk6OPb8Os3TTWnjh
         EeUccJGhGRQGsDEHTw9DVVoZDpEIjHpOW7P27oFIVwgDJSKEKysXbY2KRQNDtfb6oSgD
         xO8A==
X-Gm-Message-State: AOJu0Ywgh+V6BjhVcQdtJqUGpExgCPSobE7fos1GDMToaa6GxUqZ6jDQ
	oZvhEI48ZwtqFcIWBJeyvUovRA==
X-Google-Smtp-Source: AGHT+IED1aYK3F3bcWEyFFjhG4PnuYCSof6Qej8fBdgpS3Q3VImntL1MaQ3H87zPoqDDxO/1vki0ng==
X-Received: by 2002:a2e:a407:0:b0:2c9:feda:3923 with SMTP id p7-20020a2ea407000000b002c9feda3923mr1320753ljn.77.1701998721804;
        Thu, 07 Dec 2023 17:25:21 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id g26-20020a2ea4ba000000b002c9f58169a8sm88639ljm.120.2023.12.07.17.25.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 17:25:21 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 0/3] arm64: qcom: sm8650: add support for DisplayPort Controller
Date: Fri,  8 Dec 2023 04:25:19 +0300
Message-Id: <170199868358.3399536.1110149612486448094.b4-ty@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231207-topic-sm8650-upstream-dp-v1-0-b762c06965bb@linaro.org>
References: <20231207-topic-sm8650-upstream-dp-v1-0-b762c06965bb@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 07 Dec 2023 17:37:16 +0100, Neil Armstrong wrote:
> This adds support for the DisplayPort Controller found in the SM8650
> SoC, but it requires a specific compatible because the registers offsets
> has changed since SM8550.
> 
> This also updates the SM8650 MDSS bindings to allow a displayport subnode,
> and adds the necessary changes in the SM8650 DTSI to declare the DisplayPort
> Controller.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: display: msm: dp-controller: document SM8650 compatible
      https://gitlab.freedesktop.org/lumag/msm/-/commit/157fd368561e
[2/3] drm/msm/dp: Add DisplayPort controller for SM8650
      https://gitlab.freedesktop.org/lumag/msm/-/commit/1b2d98bdd7b7

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

