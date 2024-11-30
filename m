Return-Path: <devicetree+bounces-125661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFB19DEE1C
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 02:46:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B644280E7F
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:46:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FD7315887C;
	Sat, 30 Nov 2024 01:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mprBmLmw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0C4B157490
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 01:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732931092; cv=none; b=AS6jTLOD2qd6K2Ss4pt9GmoZdJ6fVBJWZxYRlGB2EtOFpN+LfPbWgeXF2E4vDkKguT45X76h8Ap3rnm5bj4lsx1fAM2we0Kkch+MMrc6sIJNfvdWww9Dyjfhv4QN+gX1WOxIAeZJHBQaxJHE7h143lHqEEu8C9TbdmLe+f1hpIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732931092; c=relaxed/simple;
	bh=uDWgj6B6z6pMSFBL1pDRW22fgNDuN+DRFtZx84ZsB8Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HSPoLKc69x3wZuqffLbqkkS3adX8h2xULQPQ+S7+gnzVCONBh3L7lyFItYxWq9rwUn+jyKCFbF8M4CCOZPn8iCgxZc8odfefgN8Vx2jaBu+1uNhGBVjWOEfJ4gy1EbjXUpkfY3i8tWouIBU1aOE40VvLlbXSsb1WPLXoVp+cfP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mprBmLmw; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-53df1d1b6e8so2452246e87.1
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 17:44:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732931089; x=1733535889; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dxVAhSI1dX8Y6W0tSBQjxOhCXgzeLbOBHuH9XXWIbIA=;
        b=mprBmLmwygGwcwmVnIJPvtKWxII1b41Jt2KUgj6KHBcVQf3LrxYGeS5gnye/+xz63b
         bcMQqvSySsTWvCaI9KEgB019U4zgaxKy0Bg++S5UrlFvCSMTWsItx/Vsys0mC7FBVgA5
         IDPElHBUCz8YT/KQzM29IWi0imnAoPypVplgMxSxHQjq1+64XDS4i1AyISIsVqSxH2ZT
         gkuqstW/q/yjMZlU88FAVvA6tfQZOGVva1eRzjFWu4+h8u9osCYxMvcZGNtckurPZ8fm
         3hnqzCjep1Rnh+sctEH2YUSv1epzHwIsZGIX4rv7TuYFhquZ/SJpzbCQV4kOs9S8fsix
         UIFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732931089; x=1733535889;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dxVAhSI1dX8Y6W0tSBQjxOhCXgzeLbOBHuH9XXWIbIA=;
        b=dDP6zdN7eXppHZ276O2PMojHo/AqCyoj2x091U6aUtYKFMZuEeD9VZIOPTUwP0bsqK
         khVupTiRCLKLGN35IkB0G91uhugv4W2H+qSj/NiH2cGPkKhzuJN0bgZkhobnpUpk/G+8
         VboUDHa7/uRqqvtyFg3ERPAwGNzciZ42uBCVylK+sinCazc5Q2IwweXB3hv0DEbECGXN
         E8CiztXIXNFrjulLHEBaUDgNBJBYQnPmyyH4z9qNIxwGsSqFFBhybiEUq+aq2/zEt38q
         s86W8gdUqVBRZcDeR5JcJY+EmUK164LJOUQ8Rd73O/ELJ66pgNTP/+JRyIU3Eo3ZhnNq
         t3ng==
X-Forwarded-Encrypted: i=1; AJvYcCV3LxHuE6fr0jXDKUi62zPeQ8LpPFkloOZmAaUryJ/+O2RpagobWfDJ9f7q78j49eRdO3vFTr9cImaz@vger.kernel.org
X-Gm-Message-State: AOJu0YyzEHb6db36BUKDQAuTKfDfoVQaSAClmpIZtOS+Q/4HZyBf7rzZ
	/UWQHkPRerTsoL2kxO2Dy4OwfmPs3PNCMuewQ4lPiaiMT4I8HJgDw0H/DnhssOo=
X-Gm-Gg: ASbGncsCNAdfQ1nhAzJcDsCDsBwjlTbWcGkYOmT5WJiE/YGVaQUrv8F0Q4eqbqqIn6e
	uiVE1347atHl4dC+vMOjk7lqG0QtUtsNabbVQesbLxzCT1oxj9f4C2uwalbyAiiwi6n3Er/k4MO
	9el4x4Hvm36o2v0BYY0iex5oWvsRq5o2HsBHXAK6bHQiwAXlO01tiPHcSPnsqmEMVYCEN7rzchf
	FU0w0hKCmvSbFiFmvK3QoDGScgSJ4pg0kyIFhK92pvsBz+8OrGY6KJL7w==
X-Google-Smtp-Source: AGHT+IEfAv+OxJ5F+rk8pJ2fdKiUIKZ6HHJmKvN/RxdnT6/q17bTo/vkFVlNg/kpiRSSg3RkJmVTXQ==
X-Received: by 2002:a05:6512:693:b0:53d:a553:82d7 with SMTP id 2adb3069b0e04-53df0111fc1mr5096348e87.50.1732931088926;
        Fri, 29 Nov 2024 17:44:48 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64a0742sm631946e87.261.2024.11.29.17.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Nov 2024 17:44:47 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 30 Nov 2024 03:44:21 +0200
Subject: [PATCH v2 09/31] arm64: dts: qcom: sdx75: correct sleep clock
 frequency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241130-fix-board-clocks-v2-9-b9a35858657e@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=905;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=uDWgj6B6z6pMSFBL1pDRW22fgNDuN+DRFtZx84ZsB8Q=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnSm30pfJMn8PDDLs925WYOn/LCHvSzJP4zGYkY
 KKGceA+neeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ0pt9AAKCRCLPIo+Aiko
 1VPGCACCKSMVPp1sa9k9ikCTg6c8wgTiucncPgose2E2WhjKjVKGIYWNTuT8TtGHLwu6fkJsFzY
 zx7Vcidqf0sBvJ0YcZv9Xp7xSMLkLCW9MZHuxRSgEMll0MlM5Eu1sb0nD+MY4hoQcwy40eWBxH8
 UNjd6DTHEKJNQAfUQ8gnNxTNBvouhJ2t+I7DqloaaHmopzj6A2n6u2B8LB0N98RtiLW6C4H2Mm9
 bbsU0sC5lKF+Wd2wK49Xac4oXaKCaKt4mmta8TyTMCwzfpHfqVTJZ4TyHDe2s7fn5o2h0QDpuLL
 qgsHdn4E80tqCOVNBldGp9Le7iAsO0ivi/jzgA6zabS+aVwJ
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The SDX75 platform uses PMK8550 to provide sleep clock. According to the
documentation, that clock has 32.7645 kHz frequency. Correct the sleep
clock definition.

Fixes: 9181bb939984 ("arm64: dts: qcom: Add SDX75 platform and IDP board support")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdx75.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdx75.dtsi b/arch/arm64/boot/dts/qcom/sdx75.dtsi
index 5f7e59ecf1ca6298cb252ee0654bc7eaeefbd303..68d7dbe037b6ac49c746171e8dabd416c8813a38 100644
--- a/arch/arm64/boot/dts/qcom/sdx75.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdx75.dtsi
@@ -34,7 +34,7 @@ xo_board: xo-board {
 
 		sleep_clk: sleep-clk {
 			compatible = "fixed-clock";
-			clock-frequency = <32000>;
+			clock-frequency = <32764>;
 			#clock-cells = <0>;
 		};
 	};

-- 
2.39.5


