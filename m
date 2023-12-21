Return-Path: <devicetree+bounces-27670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A179681B378
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 11:25:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 420801F24D1C
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 10:25:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3A1E4EB54;
	Thu, 21 Dec 2023 10:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sxk9lvqH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395C351C26
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 10:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-50c0f13ea11so783287e87.3
        for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 02:25:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703154307; x=1703759107; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pYNLBDFWO3LrdFkIMvJ8nxiptH8Derg0mKqbJmtxv8s=;
        b=sxk9lvqHDgX4jMJVz+bxjFQx+PLVIYfq5ZvUxmcLKzJQGJ8qvLEoCBBw96rNIhg3c7
         UPrs2pBcDhGP4hWXmjKIm2SSR0BlkBduUI+Q+8msA2Ze5Fj6p96AlZAmCoCugGjBqRSP
         fwWdA4Qb+AlQq45tpLa6NRgj+OtjSUmUH6Q0hnizLV+AaCjsUQBlfiGgxghBBoPvkB/r
         Nvzg7xpSQh+1KJHMpBDYfTcAjDYo2Sv8m0+JTJVdsCdaen4Bo/suxbKL7Cudjzt2P0y/
         OS5WYWOZRfCP000iuQCUzhtznFVtQO+IlMITqsLe/V1bHaUBTdQmQUhGlW52mAOAJH+D
         nVww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703154307; x=1703759107;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pYNLBDFWO3LrdFkIMvJ8nxiptH8Derg0mKqbJmtxv8s=;
        b=tuaIjd6rfEZNGhtO//X/9+LufbPi+JpHjHvG3OscWQVxv3cu7xX+O2nGe6FraPCgg0
         qEuCOHyr576cSWZKhIPWSaYeEcyBRgCI0+w+Fiv/2ABPwxZgrL1jl3V9j8+YqILIvKCp
         gpLzIVZn6luNKMoEJUwqnoecZj0egA+VfJNaYBNV8+Rt3jC0ZLgO8VhHQ0W7gOPp6Cx0
         CGYxeKZRS1l5lsdplTkPLDuJldObNdRdCgetLAYfdht6R1d2mkN3/TCwKOo+x2jq3Mwy
         EytkjOIHECr1EsyFGQHz80NS0UBXfBUPqQbmbZmQefC8JCIpTi3/JjEww0vanF1z2CTB
         o68g==
X-Gm-Message-State: AOJu0YyTVBqmcvRXrSKlqlJkG32REUPii9TrjeL7Rv9KiZUIUoJ2LGJe
	2XsBsClgQeFMQxkTHpV2zMp7gg==
X-Google-Smtp-Source: AGHT+IH6pMrLYwHqjlp1850CLT8V4kczgmX00VnjUzgg0aKA4yDbM+awaOvHnZsumP3WdOAsyEN9Dg==
X-Received: by 2002:a05:6512:238e:b0:50e:4c33:1266 with SMTP id c14-20020a056512238e00b0050e4c331266mr2146675lfv.72.1703154307282;
        Thu, 21 Dec 2023 02:25:07 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id m26-20020a056512359a00b0050aaae62dbdsm231671lfr.62.2023.12.21.02.25.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Dec 2023 02:25:06 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	Krishna Manikandan <quic_mkrishn@quicinc.com>,
	Jonathan Marek <jonathan@marek.ca>,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH 0/2] dt-bindings: display: msm: correct schema filenames
Date: Thu, 21 Dec 2023 12:25:04 +0200
Message-Id: <20231221102506.18320-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

During the email discussion Aiqun Yu (Maria) pointed out that the file
names for some of the MSM display schema files might not be obvious.
Indeed they do not fully follow the established practice of matching the
file name and one of compat strings.

Move DSI PHY schemas to the PHY subdir (renaming them meanwhile) and
rename remaining schema files.

Note, I have intentinally left dpu-common.yaml and mdss-common.yaml
untouched, they describe common properties for a family of devices.

Also I have left dp-controller.yaml intact. I could not come up with a
good enough file name. Suggestions for this file are appreciated.

Dmitry Baryshkov (2):
  dt-bindings: display: msm: move DSI PHY schema to bindings/phy
  dt-bindings: display: msm: mass-rename files

 .../bindings/display/msm/{gmu.yaml => qcom,adreno-gmu.yaml}   | 2 +-
 .../bindings/display/msm/{gpu.yaml => qcom,adreno.yaml}       | 2 +-
 .../bindings/display/msm/{hdmi.yaml => qcom,hdmi-tx.yaml}     | 2 +-
 .../bindings/display/msm/{mdp4.yaml => qcom,mdp4.yaml}        | 2 +-
 .../msm/{dsi-controller-main.yaml => qcom,mdss-dsi-ctrl.yaml} | 2 +-
 .../msm/dsi-phy-10nm.yaml => phy/qcom,dsi-phy-10nm.yaml}      | 4 ++--
 .../msm/dsi-phy-14nm.yaml => phy/qcom,dsi-phy-14nm.yaml}      | 4 ++--
 .../msm/dsi-phy-20nm.yaml => phy/qcom,dsi-phy-20nm.yaml}      | 4 ++--
 .../msm/dsi-phy-28nm.yaml => phy/qcom,dsi-phy-28nm.yaml}      | 4 ++--
 .../msm/dsi-phy-7nm.yaml => phy/qcom,dsi-phy-7nm.yaml}        | 4 ++--
 .../msm/dsi-phy-common.yaml => phy/qcom,dsi-phy-common.yaml}  | 2 +-
 11 files changed, 16 insertions(+), 16 deletions(-)
 rename Documentation/devicetree/bindings/display/msm/{gmu.yaml => qcom,adreno-gmu.yaml} (99%)
 rename Documentation/devicetree/bindings/display/msm/{gpu.yaml => qcom,adreno.yaml} (99%)
 rename Documentation/devicetree/bindings/display/msm/{hdmi.yaml => qcom,hdmi-tx.yaml} (98%)
 rename Documentation/devicetree/bindings/display/msm/{mdp4.yaml => qcom,mdp4.yaml} (97%)
 rename Documentation/devicetree/bindings/display/msm/{dsi-controller-main.yaml => qcom,mdss-dsi-ctrl.yaml} (99%)
 rename Documentation/devicetree/bindings/{display/msm/dsi-phy-10nm.yaml => phy/qcom,dsi-phy-10nm.yaml} (96%)
 rename Documentation/devicetree/bindings/{display/msm/dsi-phy-14nm.yaml => phy/qcom,dsi-phy-14nm.yaml} (94%)
 rename Documentation/devicetree/bindings/{display/msm/dsi-phy-20nm.yaml => phy/qcom,dsi-phy-20nm.yaml} (93%)
 rename Documentation/devicetree/bindings/{display/msm/dsi-phy-28nm.yaml => phy/qcom,dsi-phy-28nm.yaml} (94%)
 rename Documentation/devicetree/bindings/{display/msm/dsi-phy-7nm.yaml => phy/qcom,dsi-phy-7nm.yaml} (94%)
 rename Documentation/devicetree/bindings/{display/msm/dsi-phy-common.yaml => phy/qcom,dsi-phy-common.yaml} (90%)

-- 
2.39.2


