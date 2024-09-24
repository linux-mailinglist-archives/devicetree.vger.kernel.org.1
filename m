Return-Path: <devicetree+bounces-104807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 54105984313
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 12:07:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 83FE31C21B0C
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 10:07:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE66416F0D0;
	Tue, 24 Sep 2024 10:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M5Yolc8d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD7680BFC
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 10:06:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727172389; cv=none; b=uLijYwpHF7zUhC7KhYK7GEiqC7taftTlhPigAIsoOsUUdq8Q5Mfkpsmei9DLE0b0rntwtMy/vZcoYZ28zKrwTA5zaFm4mY7anWXds/BwJWnsBQGE4nYhs7yIePiWecudS6VvXe5gswR25rw8xC5cvvKG5Bl8yJqnL+go/uNEK7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727172389; c=relaxed/simple;
	bh=FelF0BlrAomhptuojX7mKtsehjTjjUP7bVwzo/Z4yGs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ujGoMVKNGowxwtSFJx1Q76CUbdrMacIAlpwt+ZREJD6C2XdDWY2VZ2rvrcmeneGqGkia711SmTqxfPxXc/PAlqUfME52XD2L4JYET6wlx2cpLr1gng7vn94NAHFEDKDvI0+PBeAZa/NsuwMiOqKiMYkR0kbVMMQWX1d9my4YEY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M5Yolc8d; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53654d716d1so647729e87.2
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 03:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727172386; x=1727777186; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LxsVR579g6PfU5n1DCcV3zfGnweAUpswK8KEPTBCKQ8=;
        b=M5Yolc8d/k8AI8nRcL74kphGp+gc13nJAmbEqtff/Ql/U5SLySj4ddBYOwiQkixuY4
         6KXMeK+lSwzTCfvomoKb4HUXg2SYgHzcl3fipEiUTdTrWhNfFT5oi70CU4bpZMU+Tim8
         MQ94CICHQsKEb+rm3SYS4MRHh98FCGtjwmeWkhF9k0qjRomUvV+yg9ioN2uY24GXd3pW
         wpS8MfZhY8gBGPVB3RBpNTiftXpD3yb1sJr+oBfAtnIihhD1a2oH/l9+5LdTIRJfJHkC
         j1omOSzYWk6ZDtc9zvINb0JFic6cOaRa+0iaNQPTh3snTGwFNg4pqK3CmbrGkeoyTUtR
         Edpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727172386; x=1727777186;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LxsVR579g6PfU5n1DCcV3zfGnweAUpswK8KEPTBCKQ8=;
        b=nOyOV9j/s7vGyoWXqTM3qorbMMCfOVAuXMzmzQ6SI3XRw2V2ikimD5gtnjBVFph853
         FemMyUXq/Jd8nSRqhxde1bZ3zCflD2TyfXXUbyviOMcYgYByge1cCHtU780hL0eXf/i6
         AGTtCtwUy6qH1HZbEersDLSUNrNbUwsIa5+OgrvBPPXRziLj37x9uKU98kt7ge/FoBTv
         wcirY9BE5FonN6kWZPbIt1hgfnRmLGro0ZlZjQE+TFtHaAoYTJ57WaCwlkn/Fc9MjsOM
         aapahSw304BpdHXyolNnRVPmYi8Bp3AKyzN6z0t8NwbjlUVXu+On6KqpcdZMvr55960v
         M4Ng==
X-Forwarded-Encrypted: i=1; AJvYcCXtRQk0UmQoIiie3QMUIHwKjql/Q95XjpPbSS6qfTr97pazDOoNLAA2El/9qBzGC/Gc9cCBBHl7R1i5@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/4Jn0Gem2dAwCI1fsWw3odZ6+1RLV01yUQwj7stuqHf3hwp6j
	Bjd0PjBF6QgMM5g4kWo1iF7G+pQf1qyURRK2hg8UdQYPNLGtHfs+xX9zoUYkODc29rVcIlrNRnH
	q9iU=
X-Google-Smtp-Source: AGHT+IHBle5v6k3PHQe43h2EvLgn5jobBnId82rcpsBc+/47zix02oWq1yt2KgTl6Ua404teiyOVFQ==
X-Received: by 2002:a05:6512:ac1:b0:535:3dfb:a51a with SMTP id 2adb3069b0e04-537a77eb8admr373866e87.5.1727172386014;
        Tue, 24 Sep 2024 03:06:26 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-537a864d937sm156713e87.273.2024.09.24.03.06.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 03:06:24 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 6/9] arm64: dts: qcom: sm8650: don't disable dispcc by default
Date: Tue, 24 Sep 2024 13:05:59 +0300
Message-ID: <20240924100602.3813725-7-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240924100602.3813725-1-vladimir.zapolskiy@linaro.org>
References: <20240924100602.3813725-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable display clock controller for all Qualcomm SM8650 powered boards
by default.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 01ac3769ffa6..173e092b15e2 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -3841,8 +3841,6 @@ dispcc: clock-controller@af00000 {
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;
-
-			status = "disabled";
 		};
 
 		usb_1_hsphy: phy@88e3000 {
-- 
2.45.2


