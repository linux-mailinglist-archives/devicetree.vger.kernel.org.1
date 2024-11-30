Return-Path: <devicetree+bounces-125658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A3A9DEE13
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 02:45:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 314A5163AB6
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:45:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 126B414C5AE;
	Sat, 30 Nov 2024 01:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Muai7xoY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DA414B94B
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 01:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732931085; cv=none; b=XcjzO7fuKuKpSGd5ceSQ6kz5zmy7b2WJO7LKetNNt8jch5FKHVW0RfDWMYQEsBJyjD9JrIgnQWFMUUYf5xt5THnwMi5sVqmWnAXP7oL579qAK2H1MyhNabRvuKSwnF56hadYNtXyncre8vc9iAE3L/u7g/HGzGgfK6IXdiwFsHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732931085; c=relaxed/simple;
	bh=Hw/hyP5k8e4mrPZ2Xq4xWEV8pyteJA9D67U7usPU5R4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LC1g1y2CwFMRsHJbFk3xxFTOcMH3rX3Z0iqBoplL1tL3z3jRlm6p1KWfPygA+0CRvArB6DqNxpdZoe58DVZtEZ2+sBbx06MwDDUMpFCbCvMGzEacKjT+8jWCTFy+UL0lHPviOojN/3hOQvhvxwudIKvZywPJNeep4a97iqqbGVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Muai7xoY; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53df6322ea7so4449910e87.0
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 17:44:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732931081; x=1733535881; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5n8O27+6FwtaHVPzRSxUX+gZj9rmBVfvJfhu3dGKwOE=;
        b=Muai7xoY6MBuxdlbGBnPZiUkigRYteCsypU1dJiVZ7UD2QgOtkDziIfpQ42FsNap1Y
         5MJbPKLDklnPBCu8KI10cTx4cG5VTp++ms4T7M+x1w1HSpLeZW2zopgg4xCOWHEmtdBT
         gEaZe/yFcOawIcYTABFAfr013GPhTKKjolH6qlmpjnuxZT7r7y+Ijw7EPoUs6yo9rA3X
         mkgilkle/rU+TgTnEwA6oyDUqYZ0qMV/LuyAzB3tJ6V98rf1xmE9TFvEDj2oPaGVwSxu
         xm2K0Tg5T50hQ7Pt6BVPxpYfU0XYWYWvgqfecAo7XyDJfnMX7tYdR0hWVO/mu0fwyt90
         m/Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732931081; x=1733535881;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5n8O27+6FwtaHVPzRSxUX+gZj9rmBVfvJfhu3dGKwOE=;
        b=CadNzJRUKDlkACIURfUuorcP3I4bJOMhoBl/Ioxzz0saHg7ozQXpJtxS4PKnxiaHIU
         qfwX0kCtQpcYjkCs2g0U+LBBnofplNfYeYA9h3Et0ty8c72f5MnTqgqQ2bzmLfjXEJ2F
         BAAfl/WyicfAsR/rxiUZcQ7JxvwJ5faPo6wXryMTB8vJc52Sh3Gmc+hkS/NOSxpe5+tW
         QAiX6rXaUUTJ5cwk9pUrOZGvS7/Y4QTBdRM0JlEdcv2RrKRiSWC4zIYbtcV2qhGwgS9l
         WWZUqzcSeqEiqrqXZfLtW1Y0NlA4EKTsTU2bcNENUcmFj8gYSujvNGJMgafSYHAb4y1P
         gmcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUlMGRCT7xUl2FwfqoxmoIjF5nSkLdhYCbRfD8Wkxk2oL1Jqxe1biLjKHMdMemMQVbWPVSJBPTLwB0X@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1HaVo7e7qktMRM7bqxJGvR9443Unap3EE3XT+lclEQopNT9mZ
	U6lXPaIF4bhqJlCSv/SF20ojPPd0/pfRxPboVzAfYK4SPzIzp8mIE8aiQlkSGZo=
X-Gm-Gg: ASbGncvB7fY/rdjhI1q2/9z8htOwv8i3WsTlFlRtf5svhIhX2TDl9FTe9L/nrDH1/19
	grBWEKRh9oGm84AY4TVXvEmYr2dS0M/o4Q49KhmLSa0gaktjkwWnBYlGfBM13A6Kfx6OoQtmfcj
	9TpvMfUDHl76F6YKm2DzIgHgmfVZFan4BUjeMVrb86NAgB0htvfMNG9GF9Nwda9G4rVqvNpYMhp
	p3Sa9AQr4hefGHHXP1rSM+R78+QvWMj4qSkfXPKcdRwsY4yR5aHIkCGRg==
X-Google-Smtp-Source: AGHT+IEcQqU+fRINwT/0cl4nxjKjERySqIRFkBtmD1H6WQPaU/FwbDVYMmhCUuuCTaNlmYtK2S9g8w==
X-Received: by 2002:a05:6512:3d86:b0:53d:a3a7:fe84 with SMTP id 2adb3069b0e04-53df00a96e8mr13447142e87.8.1732931081219;
        Fri, 29 Nov 2024 17:44:41 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64a0742sm631946e87.261.2024.11.29.17.44.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Nov 2024 17:44:39 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 30 Nov 2024 03:44:18 +0200
Subject: [PATCH v2 06/31] arm64: dts: qcom: qrb4210-rb2: correct sleep
 clock frequency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241130-fix-board-clocks-v2-6-b9a35858657e@linaro.org>
References: <20241130-fix-board-clocks-v2-0-b9a35858657e@linaro.org>
In-Reply-To: <20241130-fix-board-clocks-v2-0-b9a35858657e@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Leo Yan <leo.yan@linux.dev>, Joseph Gates <jgates@squareup.com>, 
 Georgi Djakov <djakov@kernel.org>, Shawn Guo <shawn.guo@linaro.org>, 
 Stephan Gerhold <stephan@gerhold.net>, Zac Crosby <zac@squareup.com>, 
 =?utf-8?q?Bastian_K=C3=B6cher?= <git@kchr.de>, 
 Andy Gross <andy.gross@linaro.org>, Jeremy McNicoll <jeremymc@redhat.com>, 
 Rohit Agarwal <quic_rohiagar@quicinc.com>, 
 Melody Olvera <quic_molvera@quicinc.com>, 
 Bhupesh Sharma <bhupesh.sharma@linaro.org>, 
 cros-qcom-dts-watchers@chromium.org, Stephen Boyd <swboyd@chromium.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Martin Botka <martin.botka@somainline.org>, 
 Jonathan Marek <jonathan@marek.ca>, Vinod Koul <vkoul@kernel.org>, 
 Tengfei Fan <quic_tengfan@quicinc.com>, 
 Fenglin Wu <quic_fenglinw@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Alexandru Marc Serdeliuc <serdeliuk@yahoo.com>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Jun Nie <jun.nie@linaro.org>, 
 James Willcox <jwillcox@squareup.com>, Max Chen <mchen@squareup.com>, 
 Vincent Knecht <vincent.knecht@mailoo.org>, Benjamin Li <benl@squareup.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=844;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Hw/hyP5k8e4mrPZ2Xq4xWEV8pyteJA9D67U7usPU5R4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnSm3z0aH5MHMf2dYty9WKiYyDzF4pWI5O9Wf18
 dfEKdqrOkKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ0pt8wAKCRCLPIo+Aiko
 1foACACUUWqTouCfHxP5WGemewoFWQwGeF6/iAMEXGy2HPgcqw4JjAlfC6KXkhWeSFjiWxnLDSs
 GsJocutQLttSycnZJHGe4DlqKirCuVxlgy6ig0ztCT1tVBsaxmL6+dIn0VWPwewqyieLtenfjlE
 NJeDMW+CG7rfltYPc0j3aYNcWoErr257Cu1XpfFsChTsYLqsMZfoNnnmCCGYM5sSwoqx3VuR7Kz
 /jwbYYL+mvb2no+NLPweKxgJ+p3+oUxPKTePo0LZ5xGSuHxAV2A3pBGl/XHpnictm/p4JIB4dN+
 89JdoeJ3ltk6DFF4kzgLX7q1kBpsXDJZ7RJX4km9yShTXChO
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Qualcomm RB2 board uses PM6125 to provide sleep clock. According to the
documentation, that clock has 32.7645 kHz frequency. Correct the sleep
clock definition.

Fixes: 8d58a8c0d930 ("arm64: dts: qcom: Add base qrb4210-rb2 board dts")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index a9540e92d3e6fc314fa91d4f055325680233f6c4..d8d4cff7d5abed405d1b4cdf9ab8264aab076830 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -545,7 +545,7 @@ can@0 {
 };
 
 &sleep_clk {
-	clock-frequency = <32000>;
+	clock-frequency = <32764>;
 };
 
 &tlmm {

-- 
2.39.5


