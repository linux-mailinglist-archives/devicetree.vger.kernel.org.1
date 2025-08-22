Return-Path: <devicetree+bounces-208312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E02B32008
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 18:05:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EED92AE1DFE
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:58:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB6F4281525;
	Fri, 22 Aug 2025 15:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jJVQXo8h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606FE265CCB
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 15:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755878227; cv=none; b=f6l89FsLgEAl0V50Z2CRCENY/wqVEFBwqbHeqsxwnQoyCDppV/o8QRAOaIw8Su683LqsS5CZpAOacS2RVWotmW0xGt0AlAB4quzR0OARJYdUxqNTuEruzYrSFYWC3EZmZBoXKw0vCNL/70s4JvYV16zov1Gc50W/JlF7mo/DBYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755878227; c=relaxed/simple;
	bh=quyoTWXMJq4SAIIuQ/zPxBOXos1Wl4prMHn5bauYakI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tu/B8LUgm1TjTpBaCc63JXQZWPxhvD59/hdiKUN2ZRB/1oyt+XTwgKP0nb91xyFYbqx6Hv2iHUIb+ewPvInVakbDQhJyvEl++3+Ju31Dr6PVRuIoN20TLS3ToSNmsjns64vgIn/5n6kJelYSeypBJBk3KA6CsXi6w7LoG1PZ7ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jJVQXo8h; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3c607029266so519800f8f.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 08:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755878223; x=1756483023; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g6jdMWURfXmqCMMuAAH4M/bkSa9q1PREoL2AFoQJXag=;
        b=jJVQXo8hnPQxTRoe/woeN1D3hR1nWo45eu+tHppe8b0INa47owGQOYVj3CxBABOLSf
         PeP05WJc/9vwd1ZvxTEDSig6OTiRq1FgpqU2x/qK1klNRe3YT91U3wrl8S0jTG1/lkGD
         JTWukGHAR0dkg4EcJO6BAg2FEFDh+lijko07H5cGCwtcluay6C8F7DkWhwVkH2k+deqx
         0aNr+kGX+3kzwtFOqJ25wRrIBej2rOXno4stubZoJtk03cwU+LvGSn7VPOpbsaXBnobZ
         /SbNOOYDmby7tiDbQEvDv3eoUsZNWhINcafpglwILFHbYn26oFcmL/jKb7tumN8BgmnV
         SyzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755878223; x=1756483023;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g6jdMWURfXmqCMMuAAH4M/bkSa9q1PREoL2AFoQJXag=;
        b=n3W568EZj62xDvXv82Os69eWbNCB1FINkIkb91IGtVvDnAYp/r7BzIbMvFlDi/zSYS
         T8ZttWZs2rTyF6ilnBmidqKKQV6FsowtZ7S6Vbt4NGyONqYBIFoX/PrkV7yAaFbG4e7R
         5BJ5FK7pR8FpVOTc35ebg9Ex+bWCWu817z1bUAcQy/KpoH4NWskXmyuHIQPOaf7Yd5Fd
         HzhETEKQQpOBKxdjar0yn2Ku1tVAmHLP2C91+oanA4SaxE1hvOvr+9oXudJ8/986gv7g
         xxya4Pyz6QWP4oQWRBsv+WXdNFGQA11HKwVYp3TN3nIseaDcY4asiVBFK9HzQr7JzkbA
         b5Qg==
X-Forwarded-Encrypted: i=1; AJvYcCV/yUJ49/DK5HZKTlhNqO/X1+fdP3sMFCdQHEh8LyKfwyhQAXwK2G5Tc5jxfAslv068Byv15oT0aOhZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyIdBVLSeS4hnw74gS4QY4d0NyBI6Z+JVXjMaUo35anh9IQXpTw
	M0G9OkF6c5K5MFVPFwSPE1sTiF5pxaFObpPcVvizvXubjcD5W1Bo6+rLEtYbJnf5apI=
X-Gm-Gg: ASbGnctJyGcoZAwwjKcnNDuyOo7AXQPdjIMeOk0n9lotZAN84RQd4sUdhLX8hbc1EPP
	Hvrslz9h4yl9oXq9Jdxw0HBPFurIgc4nY816E/ONut1uPTQ5/FwQNN1SjyKk4w/LCSopTpL23/s
	KKdDJXTz7AJS6qz8Jzdct1Qq4NuYD+A707LN2mawZe/ha/pwTJ/GcYidfttD0lyRFKnE46iaGnj
	z7ORcAVEXJwiIbhFJqc3aGBiH203W8CXetvVSuFIz3P7WdcO7XBiV2bHYIhDRq1f5chQ0tGi4KG
	PaTWHft027N5FRu2V6tLlwMDP4e1jQmgz+1ilk74gqp0jt6RWgmSdGN1g0YsdR512Fw4bu482tj
	/lOKtJFNytGcfSkugaoM+DRVH8EdunUSnub0pHwzQDkjaqkUbgyYffw==
X-Google-Smtp-Source: AGHT+IHCA+vdKk+oJngupi9kTG7Y9pvU/20bANIzIC1dV7kMrfjT8qJKfIYWtKNQnzpIEY8rOtWmuA==
X-Received: by 2002:a05:6000:12c1:b0:3c6:af40:a7a6 with SMTP id ffacd0b85a97d-3c6af40ac59mr1099661f8f.36.1755878223497;
        Fri, 22 Aug 2025 08:57:03 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c3c89cd4d4sm10095765f8f.42.2025.08.22.08.57.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 08:57:03 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Aug 2025 17:56:57 +0200
Subject: [PATCH v3 9/9] arm64: dts: qcom: x1e80100: Set up 4-lane DP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-topic-x1e80100-4lanes-v3-9-5363acad9e32@linaro.org>
References: <20250822-topic-x1e80100-4lanes-v3-0-5363acad9e32@linaro.org>
In-Reply-To: <20250822-topic-x1e80100-4lanes-v3-0-5363acad9e32@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1277;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=quyoTWXMJq4SAIIuQ/zPxBOXos1Wl4prMHn5bauYakI=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoqJNHMBwx+LntH0OsO/CD8U2MijACHnsdorkJIp23
 8Tyq1IyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKiTRwAKCRB33NvayMhJ0QegEA
 C6O1/X9Leh4Tk1BXmMlb1fPCs6P3vry4UPSY0TdnZl48Hc93oTBd19kiVT9uzrAvil1+Gmi7ZGyiSi
 BpTXd//9ZwdRCtyTnHIxS5UVlo9CJ2F+JTSqvbHHQIH6zHyA3iG6MCgR81kBiBBlX/32wRt9Mb3Ghn
 pG3NtNAMNVVU1YKRhYWyzAn3i8/+/OalTxe8gjVFsBhi00keg3LTBlL762+/6oEmudCTRnMBthfPp8
 xtQltQXcmkeHL5v2374F11kZ0MeLAMhk/iWsY78SksNcXxcZKRnOU4nAuUW/v8db0NzPQ9l4Z5Y7vH
 QuQRH4vDjeg+qOZvj8fTlXzOVNSPq4y0PEAfHNVUXl2dC0UbBqtJDAJSDJAlLOqm51QQZAoL+AiM3K
 hKDJ1sXA3bKa9dOZwyXhF3I/4yykeH0tH/LBDxL86t8cDl05unkIxiFz7n9WeHv4t5uEFIy1XXJgxG
 /5BG6+CLIUsDqZfvRsfo49OXOtd9uQSjDs+IomdpuhMNRC6slK1fKBrklXn4H1EeMO/+aTZdBq6xzK
 XYClHxyqHQCpVbZSuH9btLZ9vLLUMUTGeMx552jt0e77Mext11+UfREolqvBb3jDYI0XRjZMtZsYrv
 XPR6j/LSSL+xOD4BcYYz/QHNSR2qe7MMIzDJR1HSqxoxDnDN05P7nqDmrIdw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Allow up to 4 lanes for the DisplayPort link from the PHYs to the
controllers now the mode-switch events can reach the QMP Combo PHYs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index be1c2152fcd66aabe275527ca756f2598887e34b..0adb0968d64681f607f781b80373c51cb1969f49 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5380,7 +5380,7 @@ port@1 {
 						reg = <1>;
 
 						mdss_dp0_out: endpoint {
-							data-lanes = <0 1>;
+							data-lanes = <0 1 2 3>;
 							remote-endpoint = <&usb_1_ss0_qmpphy_dp_in>;
 						};
 					};
@@ -5464,7 +5464,7 @@ port@1 {
 						reg = <1>;
 
 						mdss_dp1_out: endpoint {
-							data-lanes = <0 1>;
+							data-lanes = <0 1 2 3>;
 							remote-endpoint = <&usb_1_ss1_qmpphy_dp_in>;
 						};
 					};
@@ -5547,7 +5547,7 @@ port@1 {
 						reg = <1>;
 
 						mdss_dp2_out: endpoint {
-							data-lanes = <0 1>;
+							data-lanes = <0 1 2 3>;
 							remote-endpoint = <&usb_1_ss2_qmpphy_dp_in>;
 						};
 					};

-- 
2.34.1


