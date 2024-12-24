Return-Path: <devicetree+bounces-133801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 174E39FBC2E
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:25:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D10661883066
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:19:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E06F11D6DA3;
	Tue, 24 Dec 2024 10:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UslUU4cC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176FE1D5CDB
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 10:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735035447; cv=none; b=BFzMjdU5cUEpj6un0O6PC9xU3nHhVQ2Loq49l+ZUSajkok6llfopCk3k+UpiVmQp41Xd2UaIlIM0fuYj86RYoe/vZHnn2Ssjv/Vy8PMzrIhOJSOykyPwyq++gT7izMLJijYKlRvLgW5ilQmDDNzKOVPD9LKb/uzwvWG+Tm6bOuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735035447; c=relaxed/simple;
	bh=Hw/hyP5k8e4mrPZ2Xq4xWEV8pyteJA9D67U7usPU5R4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gu0j/X7L6ENFga8Z3TXt4nl6WXoEAsORK0tOSQeWpJcujTBADPibP6yGT5qGaY7zIG2M2P6nNziAS5EeF614KLWWKKLpZTRYmLEdNuphCZbh7Sih8hrs5LcofsqpzglK+9YsqxItY/na8YXowqD8FWQviayhVVSl4jPPjRI+REo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UslUU4cC; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53e384e3481so4629784e87.2
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 02:17:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735035444; x=1735640244; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5n8O27+6FwtaHVPzRSxUX+gZj9rmBVfvJfhu3dGKwOE=;
        b=UslUU4cCjYmCL0hwaHv4mLtGlKU6Qc7m3+GGp5jMenXObfTX/kKl9O7nQBBcZb2ioD
         VOIzK23iFb7bNdPwJrI71ZuYyvLlsb5ku0e3u2vqkGtF30PhthE2CFqvbHj3adTXBA68
         olndMixnDshTQwGf9UFmPoHZpcvJVPF/DHXJQ0lfx9Fig6LFWbGyttXfVaYNj6UNfVUr
         TaMs4mLCLvCsmATusLth1meSXo+Bz118WkGai40//kWMmmE6B5Y1aW5zHzFn+ex/bT6T
         vgUiNC6UIiTDIxSa2KiHbSjCzPWizg5uWqvayt4Io/RNFwtibfIK+pgFnFidCIdvQUlA
         opZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735035444; x=1735640244;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5n8O27+6FwtaHVPzRSxUX+gZj9rmBVfvJfhu3dGKwOE=;
        b=pL8WzEsU71AUxv92mt6JaYEBTan5ESsTlrGwGmixTqOhEhuh8yPLqt5cbonjwXWsVH
         CxjuY8Fxy3H111DYIr0Bu/1yhcOKVT0BKcU+y1RE7TI3OAZWgSpjtoWcBm0xdIbyEa2B
         gb1cGuZahDaKWJywbjvy4NTb38qCpvK+4W4yIkybA3l7BAmpyTm6va53yhrrP8jToYPW
         k6+1u5/en5apl1cP1rgX/TrJQYpvJ8gElXa85iVsKb8tGeeLbOvpvJQFbanLyCBB0Oms
         2YSQN0kKOLkZ9fWMnx99xJ95kI+CQMiRBt8v2ssSrxWKGwbekHEe2B/JdCqzkb25z3sI
         sa8g==
X-Forwarded-Encrypted: i=1; AJvYcCVuSAr1NhryCgI2PxJo4Y0iDeFGO9ZL7eqF8fxhFsScdGOkJClUFyryfwOqXhmaHAqDa5xzOCd+W23t@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8sjk3dqPGc4X8zhLo3US/YSw3YvplQ0cH6t+yxSijrR8jsB/S
	Gkfo9jtFjZ4lMC36BC2sTEtvZCpMOhMgmjCk4762I5zOlECW2llv+yd4aL8L3jg=
X-Gm-Gg: ASbGncu5hZZvFWmn8VLIYuhNe/hVoD/CJfqsZqPIZ9JWEADN5+rYa8EDNiT7qeLCWQ0
	35k6K2Bc1BfShkDF5zr7U6qTYXAbNqEogtwCY57GXQs173FcRoAjcUbaZirMJGua8FjsC3L4xum
	MDjpqDwmlMd8/qHfywuv9xkQUG+sO/oo3MZIyhgcPCChAueDQYN98LR976cRbLuoqTHUeyjB/DB
	ibewgF87xyu2LO+JG2W6bp1LfGsN/GSYP/3GApOrnr1k/HkrukZhlmli1L+o1I7
X-Google-Smtp-Source: AGHT+IHzEV+knAgyrvR9K/HoIjuplHC9dlUlh5I5jn64vGhIK77nG6DFiyAy4Kop52Ibc3aPKzHxyg==
X-Received: by 2002:a05:6512:2308:b0:540:3530:5a83 with SMTP id 2adb3069b0e04-54229561aa3mr5391564e87.36.1735035444187;
        Tue, 24 Dec 2024 02:17:24 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223600596sm1576865e87.92.2024.12.24.02.17.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 02:17:22 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Dec 2024 12:17:05 +0200
Subject: [PATCH v3 06/21] arm64: dts: qcom: qrb4210-rb2: correct sleep
 clock frequency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241224-fix-board-clocks-v3-6-e9b08fbeadd3@linaro.org>
References: <20241224-fix-board-clocks-v3-0-e9b08fbeadd3@linaro.org>
In-Reply-To: <20241224-fix-board-clocks-v3-0-e9b08fbeadd3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Leo Yan <leo.yan@linux.dev>, Georgi Djakov <djakov@kernel.org>, 
 Shawn Guo <shawn.guo@linaro.org>, Stephan Gerhold <stephan@gerhold.net>, 
 Zac Crosby <zac@squareup.com>, 
 =?utf-8?q?Bastian_K=C3=B6cher?= <git@kchr.de>, 
 Jeremy McNicoll <jeremymc@redhat.com>, 
 Rohit Agarwal <quic_rohiagar@quicinc.com>, 
 Melody Olvera <quic_molvera@quicinc.com>, 
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
 Max Chen <mchen@squareup.com>, Vincent Knecht <vincent.knecht@mailoo.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=844;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Hw/hyP5k8e4mrPZ2Xq4xWEV8pyteJA9D67U7usPU5R4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnaoohF+0EqyXF3XrhnjC42zcri0uUzMBsBO5sq
 GxLB0QYNu6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ2qKIQAKCRCLPIo+Aiko
 1aR+B/9VlaHjXy4L5c+3nik4nOoAAPnAGzM9GaWZnNQGQa0ejWTnISl7NVmGyyhH430xSs+NyTy
 3RfMQRBtLC5N87YxR2hLOs5zPLc/1uv8uFa3AFrsD5lvpGo5vrrDxCStYaMbvSu4/68PrRdVOHf
 3KZ/bs6S3/nZQl6rEqvREOWdjCG1ywNzIjdbVLVX4XdYQ7Qe/7FPbwme1xm7zXYfIoC6dgkLP/s
 h0V2DLESNRlxyZheBrMJtCLahrunk2ch9FGse/CW3XRgH1zPhzVwNnZ/tpGmTc5ZsvWtMALCG6p
 L4oMYMXK/jatz7Oo+NR0qBmBViRuXjIU47UKduQwWRBbxbi/
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


