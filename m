Return-Path: <devicetree+bounces-130277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A66079EE774
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 14:09:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 93C8D1887A66
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 13:09:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A29B21576E;
	Thu, 12 Dec 2024 13:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FBygXNsa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBFCC2144AD
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 13:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734008932; cv=none; b=k355WyPcyR1HYeS7150K3j8fkSwIKIPjAaiRIXbVtuYR0FcW6OVBD+mmBBdcmXLQqKtfPlx9uq2PROjjd5pqG00sO0dLc0YCMpDGZq0LgJPU6M1HOr+L/yDAV4eq5FOKVtvI0cHF3/qp1v+Niw3uRBCWerbrbHyVm+Ej4VDx32k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734008932; c=relaxed/simple;
	bh=uXl2hEmCTQKufHaw3qRwm8b6rrSxvV0DnO8x+QbHetM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mLyoX1ItGKHv89vCQAhuDzXAgX23vb6MW/CdxqpjjfoDOI4hFdjlxUFkd7uIlZvuefp3uGEyYkGoBuCvN2KQSVaeFabS1s6pfFlvPrWkkf0dB6kp/wqLRijbfXsYulJqBdJyWiEsEZB2koUxZqS4e2uF87htaF3eJxiiK0o4yWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FBygXNsa; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-385e2880606so534668f8f.3
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 05:08:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734008927; x=1734613727; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Laarec9Gcg77CSK8knsrpRMAwU44ByomzCcpHvi92jc=;
        b=FBygXNsayRPSRtU8g2upnjxMiyH7vY7IQVm3GFfMVtImtv7do/4mV/DaxwxeGbczid
         BuMVQ2XKVlT6ZRQmb0ED11sQYGt3pi10M26G+RVJpmqX87CGYBIYqGVJSChwVC3MmNX/
         GGh/69V4TduLFfg6AhIcsh33ET+rKS0VqyUJI3ovfv0CJF5HpAq1rmFju12423VQhvBu
         1ERlx9q8k0IjKTr/U327U6BZhXX3Th9HYLaSyy/nYvoY0J3CVGeAjCKDX11QEgnLs3wV
         y6178naeU4eH8gi3ihzRbyWo14xgX72qLF1Dk8E7l6KIdphOUY+csbxCYwRmDoUtlTOp
         GoNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734008927; x=1734613727;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Laarec9Gcg77CSK8knsrpRMAwU44ByomzCcpHvi92jc=;
        b=t4pKAg2knpeSjihRAhbOfcAWbue1+kHYPdIFr6QR97QPSWTzHXkZazhlgWqwjVmiSN
         pewNZv4NJ7BKiyYm04d2SwmCa32WkLGKlh/v82Gcml8EST6NWLHAw247D0s6Uu+W+DnS
         iFu9UO0qMPOnOZGBamuTNAGShC6RZvXETo8XQXV/U6SzqjQsgaHfmHBlhaWZX6uBiROt
         YqFJU20hh5Ji5DAOauCC5BrHMCjGpRTnDLlPB55Yn+1MHPXqw9nd+Ao9lroGtvplvDk3
         rs40uRnwODB/IBhtcxD4FE0EIPkDZ+t9zhDLJDow0H7SdHJ9M4fugC9TVmiCrovV54fD
         PsfA==
X-Forwarded-Encrypted: i=1; AJvYcCW+Ou/qnTtluEJHjGMM6YON7Mucmr+D+N2Liop61pAnFPn35FiGZuQ1DXv5gV7a0X1p+Ci4HjzIr29v@vger.kernel.org
X-Gm-Message-State: AOJu0YzqVRTk2gmACkO9v830Tk6iEVYI8CQABYfzIgAmAotXAafCcIA/
	SwIcorqpChXci5mhZx6lyeHKZv1euVm7+aLY0qlEp9RTh0vwXN9D6o06q94bLgM=
X-Gm-Gg: ASbGnctREW7f0VBaubQq2k7fuTVfQdKE2yo442NkfWyaRCXvpY/g/F1HBdW46LCW77O
	71xFT/2mMMz3uGGvuBjTgW6KG4ovrA17n7x/wIy33ZuRD9meWLjZigldtNj53XE98zriLR/c1m4
	lV3RkKpK4Vys2K2/qe2ALPCW9kdxRtB9rmiSOckdTQIgC1e4Ni1ucsjnWzwE5ozAfV54zdCDQ3z
	+BI1CXo0ukTOMO+4Ey+Ef8trDvS/bOf77b289e975tmw+dAnWRGZjikJSbhawuHMox5FA==
X-Google-Smtp-Source: AGHT+IE278mQiSqfLuj53e2L8BLf2OCaH8QWc+w2KN9nQLaegzE1t3lgp9B26uV3jFUsqIGi89QwRg==
X-Received: by 2002:a5d:59ae:0:b0:385:ee3f:5cbf with SMTP id ffacd0b85a97d-3864ce96d73mr5779300f8f.20.1734008927226;
        Thu, 12 Dec 2024 05:08:47 -0800 (PST)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef40:3c0e:7a2d:e7e3:9cf8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6845ab4absm605843366b.73.2024.12.12.05.08.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 05:08:46 -0800 (PST)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Thu, 12 Dec 2024 14:08:25 +0100
Subject: [PATCH 3/3] arm64: dts: qcom: x1e80100-qcp: Enable external DP
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-x1e80100-qcp-dp-v1-3-37cb362a0dfe@linaro.org>
References: <20241212-x1e80100-qcp-dp-v1-0-37cb362a0dfe@linaro.org>
In-Reply-To: <20241212-x1e80100-qcp-dp-v1-0-37cb362a0dfe@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

Now that the FSUSB42 USB switches are described, enable support for DP on
the three USB-C ports of the X1E80100 QCP. It supports up to 4 lanes, but
for now we need to limit this to 2 lanes due to limitations in the USB/DP
combo PHY driver. The same limitation also exists on other boards upstream.

Co-developed-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index cc0561debdb0b5c89f5d7f298d34f1feaf183b61..f45df1396eae55896a66e140b7db96c6089fbe38 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -711,6 +711,30 @@ &mdss {
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
2.47.0


