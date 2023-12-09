Return-Path: <devicetree+bounces-23505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C85D680B76B
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 00:21:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E86561C2048A
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 23:21:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 215651E52E;
	Sat,  9 Dec 2023 23:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ibkzo2NF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBF84121
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 15:21:35 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-50be24167efso3794535e87.3
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 15:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702164093; x=1702768893; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WmjCJiespktfDpoHlO6IxPKfMmv43AjbntGQXxXslGE=;
        b=ibkzo2NFGjUb5JZp8ibWsXazxD4VmVjeMEJmx7augH99KVKo1T4dJ6oB8bqK8kA9zV
         TKDhtgqiq9EX1RmEGHB0Btexw/N8Cznf1yRPMmxiw3co4VlUt28yRwAAzAfkNKB4CQfN
         byzGEE4XPIa3nbbbuzR7X/UJuSRW7Yu3HTTrqp8TNaUHjPCxW3uhwuG9M7pgt84cPJ00
         yKcGHUil3p+fiKSms+pcJh06IS1dqaE/aE0LPtA/2u5aoed5BjWJjeXmi78Ay+Qr5TAX
         Nlv61k8a2DTdWxcg4cnKuYdqAB5LJiBdDxDnX55ZDrGmN4SN//cZQxUQhCkVt4KOlQIC
         ZsMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702164093; x=1702768893;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WmjCJiespktfDpoHlO6IxPKfMmv43AjbntGQXxXslGE=;
        b=pwk3r8NhUJzvQJPWMY/DfmMmTJBML/E2BT4gR6bfkrpN60YMrkNh/FgqWEU2DaOg7V
         tMlDzOAnXyxR2ClwALsTzBYEs4hGAWXHB+2O+FQrGsq6gyxiWbMdFv6o5inQ6ARHwwyN
         ZVg5G45B7GT9nSiChE6WC2po2I5Sc1KXMjphntTEg6rPxFJ9OtnAoGmjKgwkByd5T7g6
         rePtAmcyoAS0DtKSTzlcbZNht/XqBPOJJvXkGhRnMPz1N4lFw4u2//DYYBza/vEaRVYZ
         BZxTvOkJ4J5PzqoIbwjLVIPO7uReYSDdPW+T9fu2LuuSMnQ0HOmck4DOkIyCweaCKKhK
         TMQQ==
X-Gm-Message-State: AOJu0YxR3UTty5L+1t+GMPryljU8n3XHqt40hhbUtxbF348ZG6NyctEl
	0Vu/V23cQw+GAt3jftCzM8ipoA==
X-Google-Smtp-Source: AGHT+IGGq2lLBGaUklgidwDghWHWXSX4KmawDyQTinlUpnhVtTR24EqdEW5gXak3WOlH/CMagOvxjA==
X-Received: by 2002:a2e:9012:0:b0:2c9:f427:9e52 with SMTP id h18-20020a2e9012000000b002c9f4279e52mr351296ljg.134.1702164093633;
        Sat, 09 Dec 2023 15:21:33 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z18-20020a2ebe12000000b002c9f59f1748sm685258ljq.7.2023.12.09.15.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 15:21:33 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org
Subject: [PATCH 0/9] arm64: dts: qcom: sm8150-hdk: enable display output
Date: Sun, 10 Dec 2023 02:21:23 +0300
Message-Id: <20231209232132.3580045-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable display output on the SM8150 HDK device. This includes HDMI
output through the onboard DSI-HDMI bridge and DP output on the USB-C
port.

Dmitry Baryshkov (9):
  dt-bindings: display: msm: dp: declare compatible string for sm8150
  arm64: dts: qcom: sm8150: use SoC-specific compat for RPMh stats
  arm64: dts: qcom: sm8150: make dispcc cast minimal vote on MMCX
  arm64: dts: qcom: sm8150-hdk: enable HDMI output
  arm64: dts: qcom: sm8150-hdk: fix SS USB regulators
  arm64: dts: qcom: sm8150: add DisplayPort controller
  arm64: dts: qcom: sm8150: add USB-C ports to the USB+DP QMP PHY
  arm64: dts: qcom: sm8150: add USB-C ports to the OTG USB host
  arm64: dts: qcom: sm8150-hdk: enable DisplayPort and USB-C altmode

 .../bindings/display/msm/dp-controller.yaml   |   1 +
 arch/arm64/boot/dts/qcom/sm8150-hdk.dts       | 264 +++++++++++++++++-
 arch/arm64/boot/dts/qcom/sm8150.dtsi          | 132 ++++++++-
 3 files changed, 386 insertions(+), 11 deletions(-)

-- 
2.39.2


