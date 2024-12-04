Return-Path: <devicetree+bounces-126900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 964BC9E380E
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 11:57:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5682E285C36
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 10:57:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86D751B4138;
	Wed,  4 Dec 2024 10:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kQ29N9UM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A15661B3929
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 10:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733309823; cv=none; b=rOShrdBp2QxQUMgWcjikVNsrLcTc5ZssfvbUPNZm0Pp2+3i3isGMDh1V5g8csOKLjSKSt3KLO7FJ69KaIb2dRkHnI9DJ/qh1VqqraKmme28QFamSS3kan1DDSmnI+nEsNCuVij6waARai/VYZTeKnhZmbWLeJRk/QQY7hjy0CS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733309823; c=relaxed/simple;
	bh=tzcWHBB3KW5gMiMdPOtnaaHixGAJcGgUEzzwD5Tiy1o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FYMdHBz6huKCXqoQTacKwXMrePXjZwyFogspohDxJM0CNil2eO9Rr0ay1qhDb7TcG4xF9vLAzcT38wtim3gwqAg+VwHGYL/L2ADXKv5lt1EVTO5/u9Rn0Q4jn4EgB656pGNI2RqECG1c9hb5a7Y9nAR0gUVK5x221uvhEcNF52Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kQ29N9UM; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-434a1833367so4429765e9.1
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 02:57:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733309820; x=1733914620; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TIth4v5qz+3RAy7Y7STEoVyaqQwG8s2DWi9NWwm1oag=;
        b=kQ29N9UMljLNisK1TxSWBQ7nnokjbMO3MwpgFrY83TVjo4sMpTLvN6up0msFOaehnL
         HoWyuDyijX8gm6gHeIEctcEKY00S2fH33BBOHxY2jTyV2wrpfkHzfZP9A1rrUF4Rophe
         n1JFOGNoHxR2IRJMT6HboMnNdqiFV14wROt7xfkCU3UtAayn7MFQKZ1zZj/EvNiexPcI
         wpUTdGwDWkIOrNSqz+FmKWW+d5xasE4DWNjbZT5qfdRp18Y62nX9OexFnGgX6wfk+CRa
         6zA9wLYYh4/C280i4YrxYjmvxL0Lj9+OgfeUDWJOS6tZqQisnkBVw9sAITi1cxZuQgqX
         hdYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733309820; x=1733914620;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TIth4v5qz+3RAy7Y7STEoVyaqQwG8s2DWi9NWwm1oag=;
        b=B9R2GuG6M7fM3PpEkWLy+3V2FxZYkr+KlhCs2yz2JpA9OJk5qx+Y44t2gXJw0NZKF1
         Zr4RbOU1BViADWYVH4LiutSeRZmsqDMfbHF3Sh4ljzTDe+7ZhyUHiMmErgASTFDWW/zO
         zkqOJDRj3wB79dNl5O/qf4NLccq64Y6rYvbVVP5P7N4tlVRnaX1kpXHusPoRbCuqaJ9O
         PRplHEHA+EPktxGzrwxwBsCbmDKkfECPSXOPtPhSwfY7WykYkaCG29NgsNCDolO0aode
         lMKtpzCu5tEUGAHPnGqj/h2SsIR7XUIEkhvPaFqnSQ9aK1paP2J3+2qLurBHSrkp+N8j
         nqnA==
X-Forwarded-Encrypted: i=1; AJvYcCXUuoNzEZCEyeNR0uNn92pvauCJOl4XVp4vYWjceALVqwfsAd4ii2CKz4gEkyRikFTcM64Uol/Oe/s9@vger.kernel.org
X-Gm-Message-State: AOJu0YypVX/qmz3pCjNCTtFT5xQZflHwIAmxy81+U9Yj1eCIxDgEcAQf
	J0g+tnIEslR8hLMrcz52Tlgd4i4Jy5f1d874xKl8J0rUXmJGKyh0d7tC4gDnzt4=
X-Gm-Gg: ASbGncsXmZKMhjfgocNZnQ+E1H2wJYTA1RoHo3jDKaGZdP5wObGJD39AG+AiBrOqHOw
	c3x7xl9yWpq/SoiPqwDScr8Wbxjyiv7LmxfVEtsEwEQuJXvYBxPTpoL0LXS3KK9GMmlUJsJhA4F
	x8ROm4Q0pZI85t+rNfpoJftiaS3c1UOz4w8R70wI4OltZ1lesuzJDEdu/2h7tbvQdddKXKkfrTA
	2i9sZubevKcSwudpMIhXYrTg2YlemL73nAi5rH8I11aqXy4KZBawIlDB6jrYmcpnVQanVw=
X-Google-Smtp-Source: AGHT+IHgcxEy8tsY1Ypj9iUxiqiX62OySGdRJPxQw/k8wiQR3cow5CaFaBcxpOI8ZWYq87qfFwpnBQ==
X-Received: by 2002:a05:600c:350b:b0:434:9ce6:3ec with SMTP id 5b1f17b1804b1-434afb9ecd2mr227211085e9.7.1733309820004;
        Wed, 04 Dec 2024 02:57:00 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385ccd687c3sm18459063f8f.77.2024.12.04.02.56.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 02:56:59 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 04 Dec 2024 11:56:55 +0100
Subject: [PATCH 3/5] arm64: dts: qcom: sc7180-trogdor-quackingstick: add
 missing avee-supply
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241204-topic-misc-dt-fixes-v1-3-6d320b6454e6@linaro.org>
References: <20241204-topic-misc-dt-fixes-v1-0-6d320b6454e6@linaro.org>
In-Reply-To: <20241204-topic-misc-dt-fixes-v1-0-6d320b6454e6@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1148;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=tzcWHBB3KW5gMiMdPOtnaaHixGAJcGgUEzzwD5Tiy1o=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnUDV3Wth/u7ybHIAWpIQVPunGSzmyor6eIgZLqjEW
 jHfZ/sOJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ1A1dwAKCRB33NvayMhJ0fUzEA
 DGvQtwUhw/OShBjL1o733TG7SP7F19Ojw7brH+uiizzxob+LcpPIFPi1cHOCtYE3DJCOb1DieHmimX
 mp+o5uywdfxLagM29J1LRLzFgbSVMYcoOU7y13vjp5EBg46zI0AXmLwODwdZS9ctIr8mLHlbnR+kVT
 AvVofyYBgv9hbSecy5DW0PbHuXun2JPAwkbcmDLsADLjtzCQUbwtm8P4RFmKxvwc6WquqOvF6ozoiX
 qmj3S+sPMEF6ElQp+XwDAx2oCE5dM9d3rTqf5G7P/mU8aEmFnNdgQ0bV5P7NgHdr0DxAG+l9YzpZNh
 aJufVqq3AxqGYHFlASjmVkp0mfePRG6TIqzntywo8NPg76yL7AHakHDrF+SNoLVnB3Y4yW3le3noUc
 z6y8t9mIZ73VVSHZ8Z3xUCEqoJCIxD1OiGxDK18QmwQRwmAreX8bFDFMSn87lsD/+WU5E1RlJkSHY4
 buYuD85/Dt9P94UQ+O7hU8NEAij/nPWFtRLoSCzUK57XQ1mJE/ZRckf4+oqeCCgxHRdwBwHOHVvRdi
 u+JQsZqGPQ7XFlWfk5rJ0u8BWQMZtRlNTlaMreVk5wfUQP+H54T3yGYPF9Xg69SWvAWH9/AfEel22o
 phI800ZU+hFzw6QmK55q+L8s95b98blIdh5OK0nYoMiyQ77RhjPY2aJARQmA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The bindings requires the avee-supply, use the same regulator as
the avdd (positive voltage) which would also provide the negative
voltage by definition.

The fixes:
sc7180-trogdor-quackingstick-r0.dts: panel@0: 'avee-supply' is a required property
	from schema $id: http://devicetree.org/schemas/display/panel/boe,tv101wum-nl6.yaml#

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi
index 00229b1515e60505f15fd58c6e7f16dcbf9c661b..ff8996b4de4e1e66a0f2aac0180233640602caf3 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi
@@ -78,6 +78,7 @@ panel: panel@0 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&lcd_rst>;
 		avdd-supply = <&ppvar_lcd>;
+		avee-supply = <&ppvar_lcd>;
 		pp1800-supply = <&v1p8_disp>;
 		pp3300-supply = <&pp3300_dx_edp>;
 		backlight = <&backlight>;

-- 
2.34.1


