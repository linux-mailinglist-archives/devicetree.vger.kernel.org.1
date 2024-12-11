Return-Path: <devicetree+bounces-129635-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB739EC673
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 09:04:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CC290188AA34
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 08:04:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DB181DC98C;
	Wed, 11 Dec 2024 08:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dL2b2Vu+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013161D2B0E
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 08:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733904207; cv=none; b=OfJ2hGXcAhpYrtLx5tRPc0FjGCgbAL3WmOUD26zpWZ+Phs8mypWbUB/65ZBOq/rsaQ7vl2/QbNEbwuqsVTGa6qX8JCNPPhw2hgP//QiQxy9DOTWLR6GwXH6dngrYWx0P+roE8htTVBh0J0lRahBCmtKoy4alm4HWTCdsPxsd/DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733904207; c=relaxed/simple;
	bh=xNgp6TiJ0FeSJlamI0es9pE1KyaNL83wlO/q3q23SEk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IUcWdpeWW9kePl85MEIcSzKJBLT/oIwS7auyBLb0dBHBAsuLIzYqx9QHrTCbN3hIjZKNrJmdp1jzF2XaCsYLN/bQDzHBVp2j1WrUHdxMFBcN9uuxIoXTTp7OxymKM+i6MbroKi/GHBBbDFgwH36e2WeSSxgsYP2YQk80zxBXUb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dL2b2Vu+; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-434a852bb6eso61348515e9.3
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 00:03:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733904202; x=1734509002; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c6XcwNZjAF5yMT6VAjG9hAZ73d3JBM4pTGdtgQ0bw5Y=;
        b=dL2b2Vu+43crvNVrTCR8XXMXOVc1KURAem8iH1mFgqd7007z5bsmATwA+N0CovOmFA
         G2IuwA0nPiM+8jM3iVNVdgKKp8+12Q1H1ojjHs6jNExyHl0agjxj8xBgfD8YD3RK08vs
         dFp0tw1a4KXAkhKGEbjs0ZPfua6nJNBhkc27NCip3NzOU+SKLbC+LmC47KWISyKBJvnq
         X6v+MuWT5IHFwY7jSUvoKCdZY766IRmWbx7xyektXosX/MOs08A5rsPHcm2ALBetM+Ct
         j8npt0B8pz0tNcFys8DE4+EY+eVGfvF+B2jW1xOooqBg3lIswfcaXbDFne3Z+0U95tQQ
         lb3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733904202; x=1734509002;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c6XcwNZjAF5yMT6VAjG9hAZ73d3JBM4pTGdtgQ0bw5Y=;
        b=c6RSlERjeO5+CQsgz+f6nr1j80xhiOhVFqZ7NWZDGx0SBWbO9KISxDpwJTZNJQ41jC
         j72GTkzwrfR/bKuNBrBko078DxRJAASXsZ292FFSdntuLTa1qNC3z/CxbKWKmhVpa1Li
         EYyNuMMsRZDafmjqnxgWhIKMzTo/0vpAf0K7w4gV/cnSXSZBV/sRuZjLAy1uUf2uGfWs
         8qvw1bfXnCEX7dBrS2QAULWDJXbbGAGnUs+iykv8sGE7I8Sap9qT67besmAg6jjKu4Er
         hqlwrfpFrlfi/2Jprh4sOmuKWDY2KmtN7p0iysBFpElshohCZ4rK1EpF3FYZwHiJ6+p3
         BKyQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZMk8UKW1nI1q1j6KkzbPKy7DgIzOb2pzVmAV7Wvm2eF1GBljDJaoTaS9SDywSCjDlNQIjEzkxw5IS@vger.kernel.org
X-Gm-Message-State: AOJu0YzaJHolk66CjjLdQB48bgUjM/Uwtn3cL9q81NROR8P0mcNyE/K1
	w/aun+VGFk9Vna4rlgZDmne/PROBEf3Uau5q/vGmukSs7xHjnxLeCX90v7D1R5g=
X-Gm-Gg: ASbGncvHgEfWtZ3WLoaXP5zaxSVOI/HAnlfAdZqGeLRzLrkY6nbfDwEXDyqCzLXHIWM
	nUjcoPc1PQD16SS0OCkS4j5oe+BssO45K9MdbrsB0wgQWKVxNJcYZ/7M9G9yBf+ZQo6+DrS9lDh
	pYwpyADYw5V7NQlLmXa45IxVztUGHjIaMgWy5iV+yiIJYwXoKp5jZGm96ftRPI32maa5E3+sHXn
	+zjyt8mpzob7RNrKmRMSfc4/9O44aVrChfbd3PCInMXZ+fSIfWfA0YrEUxkD7Ias+MUpBD8s6s=
X-Google-Smtp-Source: AGHT+IEl0pmYaBjZWdMJv+HfY5SrfUbtxZi4Kqb+1i/s79onu04KhdgEYue6tnBszMprTRPPoG5mLQ==
X-Received: by 2002:a05:600c:4450:b0:434:f871:1bbc with SMTP id 5b1f17b1804b1-4361c35e4famr14808095e9.10.1733904202348;
        Wed, 11 Dec 2024 00:03:22 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4361b09fec0sm24205795e9.4.2024.12.11.00.03.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 00:03:21 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 11 Dec 2024 09:03:11 +0100
Subject: [PATCH v3 3/6] arm64: dts: qcom: sc7180-trogdor-quackingstick: add
 missing avee-supply
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241211-topic-misc-dt-fixes-v3-3-010ac10529b1@linaro.org>
References: <20241211-topic-misc-dt-fixes-v3-0-010ac10529b1@linaro.org>
In-Reply-To: <20241211-topic-misc-dt-fixes-v3-0-010ac10529b1@linaro.org>
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
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnWUdDEO0FeMPsgcYg9FYMhI5BrrT9Ozg/5hqypiku
 hUe1L/mJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ1lHQwAKCRB33NvayMhJ0aLlEA
 C/GfzMfG4/xtx8G6tjmfw2fXfqv1tyQV2lRloHaz3dKboAGjEKJ/EiTQpoB7uwddUzy+mRlDTlNqBm
 uOzvYw2ZOY4qvT4WCOMMHMoG9RI4tLQhOPvTUfhEDviqMwgx8F57qbhq9Ni98dai4idhwMC6IMbFDJ
 nUNhWPHDerBX5lwArLsV9kMLLezuVNd4Ezjm7oYmYCGCwbn2pXGcvCkV1dRzAZPQQ8DHsqjvkN2ZF6
 lqLiTABrPzeFwXr2qVB0CXMuwelGk0zrFkqck8MsdL0f0/WhV49L7duRN2up9ETlpLSsG5uHYlkAZn
 Pyrgo4TrZPGOzaENqOnv3zyuiMGigyQKcC/X55rauY5rOxdHsx4zSJCF36hs74VBA/eaI1+2BQoJ4d
 9h4R7+SQvH2SU09ZLO5DLUkWgnIfzVM1fSw+jXgxua2hnfBDBFhCC2NS5J8OenEqV9VzFGpp+UJDVI
 +nbZWHnRnlpKVVo/UqJr/T3UKh0dCg7zmjcRGLlFAg1mjlyo/v5oDzirlsN1Et49VRlr6QGa6sVYUp
 P1W+g126hLnJAJYgBeHVs9VXP84aO14RiXjfgWa+LTOY3vLxTlYRPD3F4+Tl0yuCWqrqN6zfeM1Xf+
 dC/mZWbrGNqMzJ8St+AK+UO8O2GPSyoCTys7vd9+KOal1B2nh5CNohQbfGCg==
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


