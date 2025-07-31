Return-Path: <devicetree+bounces-201113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B360B1776A
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 22:52:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 397431C80925
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 20:52:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0428026D4D9;
	Thu, 31 Jul 2025 20:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AZnL/onf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A884262FF1
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 20:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753995102; cv=none; b=J9AoaY4BjaCKC2SeG0e8bY1S5nqnZRVzwRxHIPJH6P+64j81bJLG8vQGti195fdV614Md2aEQuyd8v6drEj2Gs7GnBfllg5QVXhSTLQ/voH2G0KbJXZmMWbCAHG1IXp+B583v5cVoD93FzLi8ckaxedNXfQ18Gv5hPEk9XNfCoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753995102; c=relaxed/simple;
	bh=2IIOOJv4YbwpvL/BVb0O1hrl3nXkJFZe7UmfdKaEDFw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PCYNZcjgWA20EIhnj/Wn32NJCRLP2hPTRHlhmPySHAI6g8kkpZhyGa51tE1NnYFZ+JJXN6Mj9Olo/mRjB2CwgkQ3ne9q2BZ2/sIkoDFuzQQ9MW3zFo70mPJzFX6jQMDFQGsJe+9MEbUINA3waleBgr0/t8ZWlzLL827lj0ZzVBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AZnL/onf; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3b77673fd78so582306f8f.0
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 13:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753995097; x=1754599897; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ei9qPm0AghIdMsWdkzn3tm12w3Iv4T6xpOfxLvDOo54=;
        b=AZnL/onfPR/NpkDqi3F/6fs/hgr6J/Z3Nzfy3AlsqUEhsXmbgzU9+reLzI1EOVNvvE
         rxGkNYkkAcp6HGQeq8Q1YaPUXf+jCAeWdNfNFsAvit0JDNZmSP5XHn64Ms0hfFKHXqgV
         OaghPi5octHzhIRVBqqgCD0OoqyBs4ntirA+DS9QCUcy55khBcp4q+WzR0/fsceHa9kU
         NkbVK2riB3W61yS6RV57VKfwG9V8Ir7bMDqoH4jUEFp0Vgp7tMcSOM/snhvI0b1Zc6jI
         FgMT7JB01NDpoz3axCMAYkIe577tJH9MS+vbqJh2anvloTvUZkyiWwYAW9kb7ue5nH4v
         z2tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753995097; x=1754599897;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ei9qPm0AghIdMsWdkzn3tm12w3Iv4T6xpOfxLvDOo54=;
        b=mgCH3i0aUlHX7ANffVjhXecvGe6mcbE3fc8LgUv1fyB/mQve01pEyOIDR9R7FnKkdW
         tg5d+7ekJmKtUiV1+EpGT5Uctx9nT6aeHHz3j3cd/olWw1TS+87/K/UNMSgMh53TPYSM
         Oz4fMwBLAABq30b84bBelTjAUf57O+U//OvzuAxw7a8ehdVCf3svBZSWGyeEugNEK3c4
         kMunLqsIpLVa6prn9KH82599+nLkkd90AuNd1eiaIL+6cPdmdrNwt1nx4hWFfUXp3tXo
         EAAN6/Xlwp74uggeeOEmjfueYiOJWp4LZOAmoVBA5inY2sfJQWZCyJLO3pfp2xZJgimG
         GThw==
X-Forwarded-Encrypted: i=1; AJvYcCX7NNVvP7Z/Keo0XLSs+MpAty5c0RTuLwwhonhcSX06P0AKqaPXdRIKnFRFkyKfmEvvMGJRs05Tg1ZA@vger.kernel.org
X-Gm-Message-State: AOJu0YyTfzS1W+RHx+ZJs+zd9askIp5gkSy+RNx4l0xZVvs/0VsKje4k
	AFxD38lNsmEJX7XIUHovS1G569JJZr3yU240tmiiqAjqUd/KdSbG//LxohRrQxuB6xY=
X-Gm-Gg: ASbGnct32SxJMZHFllnuIrfH3SE4kTb3wTH9cyqZAz9Bnp7lu0hUH7PNvzg2ehLTscE
	+Py9rlgKb4GqwSWtujbdh8bxdw+R0E0WpRsidJtryE8LXSC29f4POImfo5Hfq9IzvgbLjlOuenc
	lo0cg29v8AZe3rnQlwBQ6p4VLEl8nkZjaKUgwfhxmMeEHtOhbAto+i+OzlwlBNjLl9KbYPAaxRT
	paVTs3VSB7yTmtek1jRzRHa77sCS7jimfE54mKJbef5DZiQ9lM1Phw05wrnGYLiUi0HntcfY/4v
	9clpIv2pimSHhriYQJRU7JZbNovloNXG+/96feKDFQjDb8D39QsZ45wqETb7FTd3sAs7GtMQkRK
	Oap1yapLJtjqDr/1AXlbVadq5GfZmRfZtnl6CBN/awp0kuaC7qXQqAfIZcDHrdGwX
X-Google-Smtp-Source: AGHT+IH+KHeZWb8a1D1rLbJA4G+v1vrxTCGhfDWrNtvL4qaj8u5TYdnSOR5Qo8hrL6uX7yBxutp8wg==
X-Received: by 2002:a05:6000:1786:b0:3a0:b84d:60cc with SMTP id ffacd0b85a97d-3b8d343b05dmr196772f8f.2.1753995096563;
        Thu, 31 Jul 2025 13:51:36 -0700 (PDT)
Received: from localhost (dsl-217-155-193-229.zen.co.uk. [217.155.193.229])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3b79c3b9160sm3534633f8f.21.2025.07.31.13.51.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Jul 2025 13:51:36 -0700 (PDT)
From: Christopher Obbard <christopher.obbard@linaro.org>
Date: Thu, 31 Jul 2025 21:51:26 +0100
Subject: [PATCH v6 1/2] arm64: dts: qcom: x1e78100-t14s: add hpd gpio to dp
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250731-wip-obbardc-qcom-t14s-oled-panel-v6-1-4782074104d1@linaro.org>
References: <20250731-wip-obbardc-qcom-t14s-oled-panel-v6-0-4782074104d1@linaro.org>
In-Reply-To: <20250731-wip-obbardc-qcom-t14s-oled-panel-v6-0-4782074104d1@linaro.org>
To: Douglas Anderson <dianders@chromium.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
 Rui Miguel Silva <rui.silva@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, 
 devicetree@vger.kernel.org, 
 Christopher Obbard <christopher.obbard@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1628;
 i=christopher.obbard@linaro.org; h=from:subject:message-id;
 bh=2IIOOJv4YbwpvL/BVb0O1hrl3nXkJFZe7UmfdKaEDFw=;
 b=owEBbQKS/ZANAwAKAWNNxPBocEb4AcsmYgBoi9dWQLp6O5DslUOJC1AF4eOEKb3goQXj3m2jH
 al5BjwpQGeJAjMEAAEKAB0WIQTxi9yLbCX5CqI9UXRjTcTwaHBG+AUCaIvXVgAKCRBjTcTwaHBG
 +NbDD/9jkYDOd15vrbb49+K+c8aKuJACyRfHhbGIGM40ARYVhOG9I8RPGsIegUMP0UbubhRmVgM
 eecrT62ywMcqveEqnK6faWVwyUUt3UIsa3t3kmdLACP++xo2RcG54vZK/Kqj2v/V1CHAyqXom+w
 abNJOlMFpZwpKLrOHdnMjDXz4UCpU6RjD8dkZ/4dil25UVFhst1oZcBeq3d/vq6zrSAWQ7x0vPF
 MiiqVMgHv5RPZifkYHXtNqThKhyDQmWA+kTli//acCH0iQl+IMz34PnTKqxgeWr2FmceuDmSvwo
 6SsJ8s0HjcpcQVxiRz2RPvew4pUmMPr8HGZpBaAZa4z6jn7N6wLZpYflIj+Mwj6ZcDLtPZopSJc
 vRhTv8rmbW1d8CayCldqITHONoXUSkwHjIHxrIWu7LKFnAlKR/BT5MYNPDiREOgG2Kkgv51GrIl
 IGCbQXOcA3jfX+OzsdT8a4lJU5KM8hlwn4nyKZN+k0dKW3Wm5C6GD2rv6J+SL5np1STH9SBrxKa
 sWzCV9P/Cf+g92czF9+CeiA2GTfRh9g31p9DFilpWHG6ehCM5atmtmhGcR+39t51sLYZafYUyoV
 CS8XGOdpAERq8xf3k3dP6pfBoI8173tNt6G7dx7zVvG3zWIzwXMX6/XlsL+Z3tIBbRFJ0T6iNaf
 cn7FU3+Z+iFkkfg==
X-Developer-Key: i=christopher.obbard@linaro.org; a=openpgp;
 fpr=F18BDC8B6C25F90AA23D5174634DC4F0687046F8

The eDP controller has an HPD GPIO. Describe it in the device tree
for the generic T14s model, as the HPD GPIO is used in both the
OLED and LCD models which inherit this device tree.

Signed-off-by: Christopher Obbard <christopher.obbard@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 3 +++
 arch/arm64/boot/dts/qcom/x1e80100.dtsi                      | 5 +++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index ac1dddf27da30e6a9f7e1d1ecbd5192bf2d0671e..c33dce6fec6746cc7fe2f7a1ab5e9f99feea5535 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
@@ -1008,6 +1008,9 @@ &mdss_dp1_out {
 &mdss_dp3 {
 	/delete-property/ #sound-dai-cells;
 
+	pinctrl-names = "default";
+	pinctrl-0 = <&edp_hpd_active>;
+
 	status = "okay";
 
 	aux-bus {
diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 5e9a8fa3cf96468b12775f91192cbd779d5ce946..8efd045af778beb30831f3af5ad2b901a72d87d7 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5779,6 +5779,11 @@ tlmm: pinctrl@f100000 {
 			gpio-ranges = <&tlmm 0 0 239>;
 			wakeup-parent = <&pdc>;
 
+			edp_hpd_active: edp-hpd-active-state {
+				pins = "gpio119";
+				function = "edp0_hot";
+			};
+
 			qup_i2c0_data_clk: qup-i2c0-data-clk-state {
 				/* SDA, SCL */
 				pins = "gpio0", "gpio1";

-- 
2.50.1


