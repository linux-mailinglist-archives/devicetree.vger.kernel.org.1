Return-Path: <devicetree+bounces-153530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DA64BA4CEDA
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 23:56:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A2323A75E2
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 22:55:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D50123C8C4;
	Mon,  3 Mar 2025 22:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LNcaZywe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8621523BFBC
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 22:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741042540; cv=none; b=O2MLUMEIAWTJTqO4NJ6/6eAeaR67YoFplLk1hH15lT52+/jDDupzvTKs4UlqSUtbSV46W2+AO4bsit2LYmDG/kk3e/nf0Yf/Ekd74pFZ6Mn37RpqCVTqi7FufcGhMn/Izp0ETXoapfbLk6RLn1QW3/AnTbLo/7bK7D0BDa2DLBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741042540; c=relaxed/simple;
	bh=j9JOgzmcmvDWHrhUDefHzjBfMqmkn65YnVmg+X/UHck=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ghi9KTG3IwDVpNPgjYNmd6XcQEsckIJqk2hNCigPPaxsFQY7eiTTrStNOXkIR+glALdb2kQKDKSF5q/qHrKrmCEwB4Tv2EiT5Q0n0UmQQrolnONDCvuK+NUGhef6HzOTtavk3hARVWaJgZjdBpC5SweV3YQ6Hf3+CMBqaCmS7TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LNcaZywe; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-54958d611afso284084e87.2
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 14:55:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741042537; x=1741647337; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bvxvtp/PgMA+KOB5zPz/+gF3wZdvPxrXXnP8gY1icsI=;
        b=LNcaZyweoqme/xlGnNO+1hGw9phHQZmJpbsGABYj8/EXBay54/emWwFkCmAwUioOni
         Yt7m1xSHjXL9nQFz3197eq2beCjLgY60g8NJC1BGwTkdLwBTc14ISiVpz4evTHAdPVtz
         gREv9RXyH2isBHurXT75c5sD3dQw8yfk1uzT6RYe1kc1Umzhy3xDOj4Pgo7+EFE1lTEq
         6RPDTOe28O1TSSqEfM4wlyE142VpMCT45Vs752Ykw8NBy63vwtrXQmm9dp/a3Qzc/jMN
         2AxLFg8FZMkdLdgm6biJQ34VL6vpcXpNPCVOit3XmL7e+E1oq9kabC9to+F7j+CmxFb9
         7FDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741042537; x=1741647337;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bvxvtp/PgMA+KOB5zPz/+gF3wZdvPxrXXnP8gY1icsI=;
        b=pwraPosfyIa2knyPzHj7Nmb2QT0IddMSZthdMPzl8VxgLAgW+hq7ENFPPzQHuGjU00
         D1/dFp3PBD9U4OPovj9wwotOPzPhnye8c+Hfh7eOw/G80E55t0fhib0NK1bJSzr0IYh2
         0wbWuPWQllQL4EzaUrf0H9oK5/d95DpdEVOY672Rr24/KuFVlnZvub9JIqP+Pfhgi58I
         xEiud8j6shgXyogz7GRxI4P15A1ZDLAhn97JyeAmh2abaSvY+axpfiifI8t1fl7y31OK
         iQt3eDOPNUAnIffszJAlsTBY6+kL4TcxNnrPk0sO3ayqLu1Qlwc9RiTDYeQgGbROg55u
         qgaA==
X-Forwarded-Encrypted: i=1; AJvYcCURdYCHSWjI7bqRBnTEqlXhz5SGZizvpSCDfMKah/YgCo4V6w/sq7WJCa7rXkdhy5u3bMQ3PxMj1jba@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1ijUCHuV54+ah9xQrlRn3M1zdu/PeyyQgxelMpv+Jv64deB/m
	rTR8bNA/17CLI857WEmnwSy+Z4Amu2BaGz+Vx2z9IpXPIqrETFBZZkQfDnUBwu+TwNDb9uHiN5b
	GT1c=
X-Gm-Gg: ASbGnctLUMJK8ds8HqLDZlraNztbsWRMIG7/xP5xJaTEDddBNS9De6PSQ2pl9dCPSri
	1x2DkB3/yzFX6OLUWzvAqOK03rJZKTPZEcKT+F1pIt1w+ldLd8jSHj3GxRKuReQueemYSkGsJ9l
	l7UKGObhBlycemjqvnNgF+hCIdYiZg0y710HgU/Eu80GVygq5lZVJs/ise2kzWdNg2X1wfb2ARe
	biEHAzuUcEmmb66JsMTp6W7yBtoEMUcgvFGLMYER/O60x+ReL/g3pxTzIEOaUmdHCQyDSxispng
	KKXP8U1PvFGjKjwFNxfJXUTYMa9kC2juDABSMuE0px61U1YgwmLh4l1gpUqH1FMtXURWEiH6jyv
	j9MfjO96a1C4J4HEB8aUKTHie6oKgPp1jMg==
X-Google-Smtp-Source: AGHT+IHzrwEy7B1YWBxSPh2b/rjqFRLEHa6zuKP4h6nXsDizpRThpZqROcTmTjkAlkgT4Q8oWxRx6w==
X-Received: by 2002:a05:6512:2810:b0:545:6f8:232a with SMTP id 2adb3069b0e04-5494c3682d2mr2008050e87.13.1741042536678;
        Mon, 03 Mar 2025 14:55:36 -0800 (PST)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5495f630cb5sm662059e87.212.2025.03.03.14.55.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Mar 2025 14:55:36 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Taniya Das <quic_tdas@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: qcom: sm8550: Additionally manage MXC power domain in camcc
Date: Tue,  4 Mar 2025 00:55:21 +0200
Message-ID: <20250303225521.1780611-3-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250303225521.1780611-1-vladimir.zapolskiy@linaro.org>
References: <20250303225521.1780611-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

SM8550 Camera Clock Controller shall enable both MXC and MMCX power
domains.

Fixes: e271b59e39a6f ("arm64: dts: qcom: sm8550: Add camera clock controller")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index d02d80d731b9..d22b1753d521 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -3329,7 +3329,8 @@ camcc: clock-controller@ade0000 {
 				 <&bi_tcxo_div2>,
 				 <&bi_tcxo_ao_div2>,
 				 <&sleep_clk>;
-			power-domains = <&rpmhpd SM8550_MMCX>;
+			power-domains = <&rpmhpd SM8550_MXC>,
+					<&rpmhpd SM8550_MMCX>;
 			required-opps = <&rpmhpd_opp_low_svs>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
-- 
2.43.0


