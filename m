Return-Path: <devicetree+bounces-125663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAED9DEE22
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 02:46:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F813163F22
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:46:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACCB215D5C5;
	Sat, 30 Nov 2024 01:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hcUIaqcw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5651170A3D
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 01:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732931097; cv=none; b=peikkF0JLLxAxxsHTrHjfXIpRXB/jDMNsFJHxgVmdJ+0ZXGy0I8sDqq4dxaYjNexiWgGLj/D4L2UYGCBXqaalgloFVtSW6AFqSqXQN+nnFITZ2NvxNfqJ1suC/fGVppvK+clUSoivgEn5rKS9CI6hNEBfjAETdt9n2HfDhXu+ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732931097; c=relaxed/simple;
	bh=q3UE0E2mDZCC929aI9do16YaC9c3UMVZhi0tXk/GPcs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=o5TBNhJE6Quyn+o1UxfWm9rOZrE61dI2QTGuk9dCY+cHxEREK2TFGwXCxUzV/H+j57Yq/lCpCsZ9ugelaylZrDFKUF97WCykJOq+Fr/kHn62FrcYmPykJ+YQ1TCuPEDA8ccpjJEHJFRevYxJAXPMLkiQChhTQuIpkjTOaVd56fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hcUIaqcw; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53de7321675so2544837e87.2
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 17:44:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732931094; x=1733535894; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R4ChnpSI8rQpGaKLPT4prgKqYz0wE7uQJXmY4boADvg=;
        b=hcUIaqcw/04zbRBjSZ8a1MB9sH6t02B0m5n00h19+bTHxEJ4YkUAJyQ1sVXKdikR3O
         aeLmDoztP8RiVgUI2AvPymTCdk2MdsFtf3cXrDxpPegjbJATv4TkySM4ZSK55eGTc4v9
         +2gKteIGkG7X9k391cwmv8ka/1403VKncEaIOXaI4SrKsYTVug2iGdJRU47maBh9Zsf+
         WfWa7/NQIQtODnAqxDImkYTd0b1hjLZldDo8OQ4Nwz8TMQsopRrNd8qmZGf4Bbd6M5IQ
         BmR3jP0yG1BouDiTzKBm+9dntn4yKMRdF9jntPTCidBrAvjzK3VidvatiI7D3YyOOTSs
         bXnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732931094; x=1733535894;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R4ChnpSI8rQpGaKLPT4prgKqYz0wE7uQJXmY4boADvg=;
        b=Cxc/yXW/DXMDq6X7M2TqzUeHpLkuHNvxmZERzeuFecAHChf0NZIc9u9Tx+w2OfXBC/
         vycfBeGicsxRnMPv30rDefuEC8IgBpUuOPT4MXcwpd8DZU8gd+JB8E7fypXSUdLYWdHC
         oglLMBZzQoOuTamKcZZXlNB9tel/WaYYQPD8UGhlguJYxi378dd3c02yL+rMaj1kZfF7
         6x3x8cPt9FFjAErkgp+SJlrepOvH1uoMecAbkBFDllq4es4YpFSUDxg6IH8qZNN5iRv5
         4hIvXP4ab2fFWp4sc965yx5q9BuN/dFiRLO3IK5TOnfVYYadgN47tmmLWuYp8IvAT8eL
         wx2w==
X-Forwarded-Encrypted: i=1; AJvYcCWyf6CnohLMqoBkg8NMMzMZMVH4wgCZGn+TSgP0T4wBKssvSI664MPhN4IfE36dd8tuu5nuujjCWSLG@vger.kernel.org
X-Gm-Message-State: AOJu0YxVF73UR9DSrMjTsADJy1ggR3IwmO7YRPik4Hwol+YjeZizAke/
	cZlQ3nr5PZhpROLF5RRCXWszenGMy7gOyQK9X9M1bTW/i4yDKbxGJirVcH/9pIG1mmXHK8Y1x9k
	X
X-Gm-Gg: ASbGncvEM3J83bIWtyosd1Dzun+iC6dk8Zu8xLFd/xqX7q/SX+7jtjpmhfY3QcRbjAc
	UIIDCymadDHiJIReRBSs7ru2Xld8hxLaQQ5/sBMdB9XedeE0xlIkj7O2rxHeXYN78L8hGQa9MWh
	zLSJRO/Rpjy047c6Y6AFRE0S5dUQGgMFjYLOwgYYlhLchWAlM2cyTpajeyB1JH0GNhRSZJfCd+x
	tjK8k+sCY9NlfUwOiEmwBBV9rBkEzCxvYhfsQf/XYeBgEhIAMqM/nBxtw==
X-Google-Smtp-Source: AGHT+IEFf1xsL12jwu28gmLmBmw8ROzxlpNzpCXVOjJeUtDWpNYIS6/wo9wBUy929SPhr5gXTTkJDQ==
X-Received: by 2002:a05:6512:ac7:b0:53d:e50a:7032 with SMTP id 2adb3069b0e04-53df00ff78amr8025047e87.44.1732931094137;
        Fri, 29 Nov 2024 17:44:54 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64a0742sm631946e87.261.2024.11.29.17.44.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Nov 2024 17:44:52 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 30 Nov 2024 03:44:23 +0200
Subject: [PATCH v2 11/31] arm64: dts: qcom: sm6125: correct sleep clock
 frequency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241130-fix-board-clocks-v2-11-b9a35858657e@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=928;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=q3UE0E2mDZCC929aI9do16YaC9c3UMVZhi0tXk/GPcs=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnSm30wZw1UBZsPTjf9xNdqvcaOd9XA8j7YB7bR
 oxw1NHD9lKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ0pt9AAKCRCLPIo+Aiko
 1TV6B/kB8sg3FuiJJxDK8ulc0P4XwZf6YfrWFQfF2PkODvBX5FwGdrS/It0JBMHAbbbhWYSo8lS
 ya5FFkeQ2ixl/GZLih1jNIilAwUOy4HKdkAdJVyBSoa2YFzgDQ6o+ugPdf1am+IxAoya4PYAVme
 NHEQ6hSOsun3Xz6vD1tBRTUhPYT+yvgFdHxexqM/ncm2dLe66LhiePOxav49zyI7I3hgI7i8D2S
 hCqudhtGq/dr+Aco20746ZDK9zy2hshwcMFfynXf8zmjaaa/Hc8fswHtKvgZBLLQVdnsXQpJTC5
 BxWIqP9VSdcBMtAcxTPgP/q6LNFiOUluVJy/8SRlC7z6Neor
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The SM6125 platform uses PM6125 to provide sleep clock. According to the
documentation, that clock has 32.7645 kHz frequency. Correct the sleep
clock definition.

Fixes: cff4bbaf2a2d ("arm64: dts: qcom: Add support for SM6125")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6125.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
index 17d528d639343b9d649167d231aad3aa63474435..f3f207dcac84fa2f72fa9222c26ab3d7fe8813b2 100644
--- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
@@ -28,7 +28,7 @@ xo_board: xo-board {
 		sleep_clk: sleep-clk {
 			compatible = "fixed-clock";
 			#clock-cells = <0>;
-			clock-frequency = <32000>;
+			clock-frequency = <32764>;
 			clock-output-names = "sleep_clk";
 		};
 	};

-- 
2.39.5


