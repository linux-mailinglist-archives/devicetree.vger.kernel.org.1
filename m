Return-Path: <devicetree+bounces-149069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0A3A3E2C5
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 18:43:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4BDF918902D5
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 17:43:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E530213E80;
	Thu, 20 Feb 2025 17:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dd6dWjLd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CAE02135B9
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 17:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740073376; cv=none; b=FFuPnert3tuwqIuMlq5Z75sL9hp3dEPeTsgJZvAIuzyUqJpflngNbA0EpwFwsX++gorXUjpNIDRnfxB1SPevbOtHv9TKKGIRoLVWA15pNwF84fOaIUf2f0ZQbtSYXnipiwR/4xuLxf0xSuUfzEL8WS7//aO9kDX80VcSkXlpyeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740073376; c=relaxed/simple;
	bh=gVJH9Gtcl03xa1Qz66YDMAwNgxABAgavGDD5XlqUJoc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BF21IfUMlNhkTfJi4vWbXeDhm0vUFLPtwn4a+WID+oEupoWwt3M6vkR0ac3Y4mvhhDAp6Scm6m/edJQdXl2ZGfyMHjuA9QIMF8a5KwR/a1bXJqiG+O0r9KqvC5C6G0O9p7I3JgjXGCDlSwlCNXQnJ06e+SkOP6JcHiCT3dTP5FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dd6dWjLd; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ab7483b9bf7so198347666b.3
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 09:42:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740073373; x=1740678173; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FFct8uQIitChE7GTd5g7k6V18TU1ChsY3SUn47qNwJk=;
        b=dd6dWjLdZRAUhP4ag4z4fIGfM3jWqgWtjVT5dbzVMqwijyEU8oQ4gS4ScUCJFINZxe
         pXe/N2MxTO3y8UM1eDoPVoFCiMPFPcWqG7XvzMMcYxpPbsngCUoUq/MGJzRIm78+Z0Lw
         6UEr4Zy4CgmUc/i4v7GPGoYV8QYWjbvc258EOaJ7H3tUpjpGLJYQggNo8u+NLSYr48bw
         k8Z2jJC5xBByTFNfmqUWT34RMQCc8hE6tXvPrmgMaovy0zk5+IWq3A5JPUJOjgdEynee
         AOb11sKzI41I44p5RxcQJYQ+Fdrnrlzbd952gV3yxR9pqBYUiHu8g7yNoH9eBQthX67D
         JCcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740073373; x=1740678173;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FFct8uQIitChE7GTd5g7k6V18TU1ChsY3SUn47qNwJk=;
        b=N2Lp+GPJyrP80R1WAuak9d0jrQVA115CtMA/u6TFvcCV2+RmNXYGO2uE/pu2807QtO
         jP/EqM7xX5NjB/UQ1lG8DU9E3Xz1dChJvYekC2DB5vflq1BnK5La0rVBdBJmecUvvEoS
         wu0oIIULmMWEwnA17PVhH8Scc/noRa8qmPBZTFhY5R3nvV/IMkvOLB1rHFHRpv74FZlX
         9nHq8DmPS6sZOcMdnW0fTWi3mKA+d+OnjMhgD7Y+8QSHytxg2tfFkY1TB3meUu0OJLpw
         2dkR2dskkbk78GJv21RzcmmPbJhwB+QHwmrdb1L29SbQ0EhbH5IzlY8VhpeJ31iMF0bT
         xlQw==
X-Forwarded-Encrypted: i=1; AJvYcCUgQeGSaSk6/lS4seLZSFCgOrvrvEJTxQm/uWshROPntIRluuDysF/oonvLU3epRFY0Hju9vU5xixu/@vger.kernel.org
X-Gm-Message-State: AOJu0YxvVNZhxRuR8EDj9P/9WzbUzktRdpsHh3sTD1+kMeDPqBqqIgoj
	/4rRJVM3LGkcB+dab/v0pBUndfiq68xnjzJkEHG7SVWuGGmV3gubcKCLdjGzf+U=
X-Gm-Gg: ASbGncsWa/WCjb+hqaT5xvhXjyoueX+F3w8hKBfDbSSV1yCgH/o2wcsoPw21vAdMxU/
	Kf+NHPFE4w1NEUQH7k8Moyxw3TcJj95dVjpAR3DYivYin12G7ecFQfNgnkGSaHedv0o4I/R+7aR
	KnCRxwyY8fgbEWTdzAYZoEsNtcQTg9tPjV8cm2X7+MZIkO6VX3CF8LZD9XmX6ENM4wz4rocpFR+
	FZaShnqGU5b0gJTJ8DTeZiOLeO18TStcKafTThC8aPwQxt8JErTp5G49tNefK2azxZ3mycZZ3mc
	/hmBvW9R6hdyEg==
X-Google-Smtp-Source: AGHT+IHoChXESAm3tHDmhie5FqCPsgIwPTlgGc289J1TFc1ErRRThHBbDjyQRb7arj3Byi6qzDjzag==
X-Received: by 2002:a17:907:6ea5:b0:abb:e6e1:22c1 with SMTP id a640c23a62f3a-abc09bf55bfmr27929866b.35.1740073372836;
        Thu, 20 Feb 2025 09:42:52 -0800 (PST)
Received: from [127.0.1.1] ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb8190d1b6sm1014496166b.36.2025.02.20.09.42.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 09:42:52 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 20 Feb 2025 19:42:31 +0200
Subject: [PATCH RESEND v5 2/4] arm64: dts: qcom: x1e80100-crd: Enable
 external DisplayPort support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250220-x1e80100-dts-crd-t14s-enable-typec-retimers-v5-2-380a3e0e7edc@linaro.org>
References: <20250220-x1e80100-dts-crd-t14s-enable-typec-retimers-v5-0-380a3e0e7edc@linaro.org>
In-Reply-To: <20250220-x1e80100-dts-crd-t14s-enable-typec-retimers-v5-0-380a3e0e7edc@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, 
 Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1260; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=gVJH9Gtcl03xa1Qz66YDMAwNgxABAgavGDD5XlqUJoc=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnt2mRQlgK0Nwdy1hpVYUCtz4zecXroyxVXe3e9
 mvJBNH4dZiJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ7dpkQAKCRAbX0TJAJUV
 Vv5fD/4gz3+kQ8opOvrXNlEchSEGhjzpFIQtvOe4K/aLiLhaMn4rxcC4wp+ZLzS0JC8ArrcLYai
 b/j74yFlKow5jPkrXDzVwj7cNz1CGr1AVycy2iuYk8oiHtu+dBk2cvuojQ6hJ9fd1hS0nfuO+jY
 OxpJlDAa84G2NJJlBa5H5Uivlq6SOnT4pesOltomxU20wFV/CP1sA8kUJhKfWhun3V9uhHO9orj
 kp6di3cfVat09qkL19wnj+oaE0uyzyFf7AdcZeegITWCvunbcQrQbWUx/iw/7xm4zT+WZkqIddp
 ot51PiT+zJWJQqbCULnFVRlzv0OAttUTf1NFMjQFovQ3C4IUhKfFB/4TQJEcx7cO3izi5UER+QO
 3TQcl1N0dj87yb4t+uAAxIUk+81tBkKrKCgpeN5+gx8jMYUJ+8IYK6PgXe01aJf+ti/cesLYvkr
 aHtyP4Wmb+iKoE6BMSU9dJzPszHhLOB4DLHRmygn3MU0UvrH/frfwbJ5mLNbswDfjwHRsXp0Q8E
 030xXI8JySkvOr5uOHCXsSDnbowl4GaXsosCaUcfjNmme2MJpRwHvXbFu/OLGsLU8h/cJ8Z7dwm
 DnyqKrvyPBvrrqyDSbzLGlhlPHcloaHQEwFrwNX8MzvlheVpFzNlB154LzvA/ys0Gr3yk8Cz+sE
 mzPAgxjOOfY8dgg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The X Elite CRD provides external DisplayPort on all 3 USB Type-C ports.
Each one of this ports is connected to a dedicated DisplayPort
controller.

Due to support missing in the USB/DisplayPort combo PHY driver,
the external DisplayPort is limited to 2 lanes.

So enable all 3 remaining DisplayPort controllers and limit their data
lanes number to 2.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
index 1b29082788a366c63474b74e7dc916176a57546d..9f9b1197963e2a278f66d5dde563930ebcc3d9d9 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
@@ -1125,6 +1125,30 @@ &mdss {
 	status = "okay";
 };
 
+&mdss_dp0 {
+	status = "okay";
+};
+
+&mdss_dp0_out {
+	data-lanes = <0 1>;
+};
+
+&mdss_dp1 {
+	status = "okay";
+};
+
+&mdss_dp1_out {
+	data-lanes = <0 1>;
+};
+
+&mdss_dp2 {
+	status = "okay";
+};
+
+&mdss_dp2_out {
+	data-lanes = <0 1>;
+};
+
 &mdss_dp3 {
 	compatible = "qcom,x1e80100-dp";
 	/delete-property/ #sound-dai-cells;

-- 
2.34.1


