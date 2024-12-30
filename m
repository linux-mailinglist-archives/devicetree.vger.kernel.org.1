Return-Path: <devicetree+bounces-134722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 738FA9FE5EB
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 13:45:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B85B188268B
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 12:45:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A60BF1A9B34;
	Mon, 30 Dec 2024 12:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i9pTC4oL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEDD11A83FC
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735562695; cv=none; b=O1Vvpn4Jc2QITJZPTiLCxg5GcEZFHHttWweih8s9i3wtHfL6F/0Yc/gfwz6pSinIeaXM8xPM8AgjoDgJddnN2COgTAh71hPxRvzpXHGWMKe0q5DHBcBU15EGL+k9qR35ROfPz9NUnSW5c40N28HeJI9Y2VNbKlm9cSl3Wy1IkWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735562695; c=relaxed/simple;
	bh=xNgp6TiJ0FeSJlamI0es9pE1KyaNL83wlO/q3q23SEk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AOfqHlZbiwUQGSP0NzI6gUYiaia+gekCJvhA2vFfUZkhqKFJ1wr2odFs3a8+5CrwHOqkNrCmeVF2uE48XLL/DNllct4ganKk2mixMdIw0+IOzRrBUiDlQUBHZEqcvpb/iVuVBR4ZFnSpHgXlu+eKWkhZS3eoQlo7zCjoED5nbx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i9pTC4oL; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-436326dcb1cso59596565e9.0
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 04:44:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735562692; x=1736167492; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c6XcwNZjAF5yMT6VAjG9hAZ73d3JBM4pTGdtgQ0bw5Y=;
        b=i9pTC4oLCV36WaA7jxhiiPiX+SIThBeqa0EApV/1feIyAFaNHUauXDyMupgBgcHGXz
         CIUULlSWwq65HtIzJmjjGLwARRX+bcEYfWJTbQG7gRVRWTEMb5oAkrAIFgabSl4U3qAA
         w7XNlQcd7li7BdC7kZmlmZnxX9oFLK50DssIl52+1qJ5gDzxVNwDtgryJJ9LSYGNuTTT
         kQHG6OEMt+NMIYdJNUxP+f6DTOgb/6PP5R1ecqjbmyTfLzWVLsDvpP9dmHzo35wBOb+u
         pvPPlZ+l466J64LAKYZK9uM1cNw++gXopB2abFiwYZWK0+nYXVO0deonprR6kOeuPBBI
         V+nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735562692; x=1736167492;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c6XcwNZjAF5yMT6VAjG9hAZ73d3JBM4pTGdtgQ0bw5Y=;
        b=MRMsuwWfs7DX3YHqq1QZiEPVSudvgjigr3OZJPPoqQhtwBd6Zue1t6l6CIAJBbGM4T
         hBT6FFEYYkqYn3VlBtnJznCEpSw42BhFvHXhOQQhlBeQJkn63lFFhekIWIMAK9AN7toi
         SxPCPfQ4NdVBbeDUTH2+vFCUKLi85fOaESRDPXjJ+eU4UwzvyETCGWc+pKnw//EzVQ5Y
         wZS72Rd6kOgNDBJvVdoPE/dTBIInIr1Ltcg+cSq9zNiE12ZIAu5i/2L+Nw1gr6APPvaA
         QXAbNLLtwvnzmuJjGuSDJ2OZG45R2PslbjLEfL3MS2d74NQ+vpYfzfxk/5F63snZr8/E
         Sdlw==
X-Forwarded-Encrypted: i=1; AJvYcCWNND+XFqjqGxjjTc4Ib8MNOwxrswNmHr/CaFUsBuS0MpgVgvvGcP+j8GVx0nidZnFW4hgTS+j2nPmN@vger.kernel.org
X-Gm-Message-State: AOJu0YxtSAGkkLgNBf3W5spthsxEnMj5A7uRFPVY7sfrlLhSIyOKhvEx
	FRILN2bmWp/a/v48srXaI2cPsfIWFwxqOcF38anPqdKuNLRu08NDwxlPHvOlcaY=
X-Gm-Gg: ASbGncvze1jSDHLVUhh0ERaAB0S/ixvx9z1uHoA+rneqcqKmZfZjjAbs/Vb244xqsP4
	J2teciYRMpZTiBibmP1Zv61S5vVu98uZhUl2WrqOc5CMPKsDW7eVwLT8r3oS1psyjpGCfZBH2Jz
	2TYVdedPa47e7FCFMq9EtReH2glcaZBTz0tclfTag3oZ/0yyMLo7HoI/2Xa+sLV/CGPUf73FPCE
	XLpkf1sQxfatmXBg28s8/ZV76mSR9I54wJ4qaxBSSBvpl7dbjTgWWnM8m+kYd08PY5nlkGrsMIr
	rA==
X-Google-Smtp-Source: AGHT+IF0qXXL9RTFrz0rDOJHIQ+iXeOIa6KWm+sY8xwwyZQIOg9WUAmEvqJF/J6HBeWc4OKLr7VcIA==
X-Received: by 2002:a05:600c:3ba1:b0:434:a315:19c with SMTP id 5b1f17b1804b1-436685488bfmr315295065e9.3.1735562692091;
        Mon, 30 Dec 2024 04:44:52 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4366121955fsm359913215e9.21.2024.12.30.04.44.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:44:51 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Dec 2024 13:44:46 +0100
Subject: [PATCH v4 3/6] arm64: dts: qcom: sc7180-trogdor-quackingstick: add
 missing avee-supply
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241230-topic-misc-dt-fixes-v4-3-1e6880e9dda3@linaro.org>
References: <20241230-topic-misc-dt-fixes-v4-0-1e6880e9dda3@linaro.org>
In-Reply-To: <20241230-topic-misc-dt-fixes-v4-0-1e6880e9dda3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
 Felipe Balbi <felipe.balbi@microsoft.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Douglas Anderson <dianders@chromium.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1203;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=xNgp6TiJ0FeSJlamI0es9pE1KyaNL83wlO/q3q23SEk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBncpW+gl7WbByE2suSuV/BZqC76D7ijzucdylZHlIG
 XqpC5t2JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ3KVvgAKCRB33NvayMhJ0SvsD/
 90sF6Oy3fVxQCRwvi2JLwGQniV0XbaQMUmEij727jD+g+BBZoxwWBPyGpLIZHhvvsLJ26wVVOBVCi7
 w8ywNNWP4Zgk2OKewppAZPRAgL0rNPzZE1WjG6Hs6oG+Cnbniy4mxxdWckZB+cBS3f/c3hmq2U8SPM
 D2H5lTNdbW0qSiPFkh5vWfzT47RORdoUcGOGhp5FF08tbMe8ZZ4JRbGSAOx4ncnfZdZK2QwOUDVEwD
 lFl8bpvsmbS1wky97Uh1PV5YtXyR0CcGxOcw2gFTME0VltMMXPOssdTNXZOhLK6aw6dx9xonWghkWi
 xoO/qIMWmg22hVIv8c/q7hp024oAV8vWAW4RfsnheQSm8N6luWL4ZHCqpJ4CUSeOt0AGpxXmLeBBum
 1X9DSwJO6paXkG2hGk6forywtUFLokvE281MXtbYu3uTdUEJs8DW4sYrtZ+qoJrupeq9xfA5Fqc/Xc
 nP7YdZ0sZOvgwQLH5qSwK99OlAEc1xwJGtuPSa+Dbu+3+9KP6flhRNMQTy2j5mWMlyxvppuZ7bUs+1
 7y4q9wqKFPVwpYEiTF595kGzJK6MsGQNH66VjMmoJ8IJDUMUd2z/91yDGOV4POXYtV+lU10tOarpT9
 x1MWlbE2qXV3iNvrbBXAKhHz1p2bOc+/HLvXdASHhYgDZbFhyccw6wP3Xx3g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The bindings requires the avee-supply, use the same regulator as
the avdd (positive voltage) which would also provide the negative
voltage by definition.

The fixes:
sc7180-trogdor-quackingstick-r0.dts: panel@0: 'avee-supply' is a required property
	from schema $id: http://devicetree.org/schemas/display/panel/boe,tv101wum-nl6.yaml#

Reviewed-by: Douglas Anderson <dianders@chromium.org>
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


