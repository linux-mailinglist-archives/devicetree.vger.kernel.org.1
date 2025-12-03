Return-Path: <devicetree+bounces-243847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB57C9DB6E
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 05:06:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49E853A1139
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 04:06:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2A7D26FDA8;
	Wed,  3 Dec 2025 04:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YcOM/WNv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAC227381E
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 04:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764734760; cv=none; b=G8la4UoUtCfXe2nO/lmBSAnPoa+kzLwwNWQ1BuORdkuQaL62gWzRX2OYoRUiU6jGGFDsktKKnZPv1B2vCIV3Sc0SNUZlOXdkA1iPMFJr63sbbLyuAns52Ago80hLZNOZ2xmPBopqAp7OulGYOD4D0eXOuU/EcCPKB5sdx0tOKF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764734760; c=relaxed/simple;
	bh=2xaGFWIsUm0cfKA6LAaLgYTTnY+9WHjhg5Sq/qWOVps=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NcWJO1NCllA+JBvSzYp503PK/YQ6VidO46drHFcJEtqzIHsWVeE751Wfst0WyMVBod/kY1TJ39uhAZkzV6+Jfejuvf+yDrAh5HrM38GPykNfIng9H090eZSyoW3ALIqGoWN+Mx3FifL4jmunbYeYfosjb7F1SgYS9WvtRkzLuxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YcOM/WNv; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-37baf2d159bso8748231fa.3
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 20:05:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764734757; x=1765339557; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y7juq+nFojneUyWGV1iiTe0acnQ5/jJnXPDq3Sa5NV0=;
        b=YcOM/WNvSKFlF2NLK9CqpDg1L/E0kmiEnm30PiAj48aQBLBanaQe61hO5DqWZ2fo9R
         fcsgzDcn5u46uIROcjHuWgDtLFjhCJ+5z7YRx/+Jp/djz3ogqpxKMomZdmmsQgVUlOtF
         YPKrTQOMuyItI7+0GH8xH1BQ6u8oiMXqDa2qa6lx4cz6codnNSnxj5yvnyJluLOm36gY
         DBEALMvbUSD0SlRQtqdW2ggGfWHQ+4vt55Azdp1PLUdh54hCQlTrNsxSEoCkrAsgoFOO
         s1L+vypDRFmdAfAVu7QFOCtw3MR0e5ixvC0UEHS2dYRITeGWKUMlKy4fflSEtMY6xa6W
         AQ8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764734757; x=1765339557;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y7juq+nFojneUyWGV1iiTe0acnQ5/jJnXPDq3Sa5NV0=;
        b=YFCTD9+WFZvAIXx/BPTx+xo6kmkyeZ+HbFxgQkQGU7cUj1XZeTYFyYOC+m5lDcPosz
         hjjL04o8fWK7AbWr+c1ULuupyqhbaeN8QhtxvZkPd9xbsouaRxIDF2LzUFqUkUegveW4
         Mw4Ix/rNoR0dWrzZkbXKkvBVMZ2fB0PvCodyJwQjtTr+LgLpSqTusxMk+TztIL7iIWY7
         mWKzRtuxEO8FRjwVKbfcQOiWQnOlaM2+T5hZbokRp0OjbqYvZhjCb5+CmGaZY1Py1KnC
         S6lX1ivcWtwkjhYDrmKszHfs8JyBQO1gCkpXOltNp/DBCeJTB4OF8YyA1CO9oOONkpPz
         UUQA==
X-Forwarded-Encrypted: i=1; AJvYcCXSVmjvXDHLc5koTZpXvLtNv3B/7Gn3DfU/G5KaU/Sy0bGK/2vBQs3j5mKopHAMHl79Qvtvbkn2xUyp@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5rc9l1y+3K2DevdyXIgBavStw266N09BUldHQBwcxB59+WzAP
	E+qyQqXN3kS78ka/NflerJ6HOoMwoWpIjeoLITNr9ZE6r+vFxyyjbP2SV5RktekfXJE=
X-Gm-Gg: ASbGnctCdaOYZ305twxpxP2jCqy5Uz15PQ7l89Sif9UdQ8Bo1QSW57KmIoxwKy8+c9Z
	8O9gdv7bGR2D5ALYPtdqj4KS6bVQn7+6MFZpWYDgLyNV8C4Ubm/lrzf4KEtVLZjoELnQQfdZitb
	3D1SK7ctqej6hCcU5G2hIfcXz+hOEkDAuAarO2J6w+o/wSDRBfNMOJdOlFqzey4OJGAKOJ0vghd
	yfU8Lf+sk3GEF/HtxnrJlfBwMfLjxry+jWS/XUwg7OXXBHI73jeu570Xf/4QpA55heydnf/KwyE
	s8fvPfrkmrwQ0dySa9saBYKTASm8MUwEdLzqLIBuN39Cl1WOGNsHDP1oRkQgUP5ctCqrxG6snDN
	bRsCFWKtD7E6Jd9O7AAQ4+3FCRDJxSjiopLpzzmwv1Ali+7yXyVd2viGBQyQaJm3/kPoLrM3+Yi
	cm7NDDiyKcJ7nSpnw3I0OZteSbOVS09KSeXxhUbgVx6KVy2nJfMR3cjQ==
X-Google-Smtp-Source: AGHT+IHez6UxKEeGqshs+KN8jSKMIEH6G2gfFkdcufoIAuKX6Xj8dObhL1rRLTptedzYzL85xpm1lQ==
X-Received: by 2002:a05:651c:41c8:b0:37a:407d:632f with SMTP id 38308e7fff4ca-37e66d588b5mr169791fa.4.1764734757271;
        Tue, 02 Dec 2025 20:05:57 -0800 (PST)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37d240981cbsm39505631fa.24.2025.12.02.20.05.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 20:05:55 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 6/6] arm64: dts: qcom: sm8550-hdk-rear-camera-card: move camss status property
Date: Wed,  3 Dec 2025 06:05:38 +0200
Message-ID: <20251203040538.71119-7-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251203040538.71119-1-vladimir.zapolskiy@linaro.org>
References: <20251203040538.71119-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Conventionally status property of device tree nodes is the last one in
the list, move it there.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso b/arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso
index 21bfba6a1182..544cec93353a 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso
+++ b/arch/arm64/boot/dts/qcom/sm8550-hdk-rear-camera-card.dtso
@@ -13,10 +13,9 @@
 /plugin/;
 
 &camss {
-	status = "okay";
-
 	vdda-phy-supply = <&vreg_l1e_0p88>;
 	vdda-pll-supply = <&vreg_l3e_1p2>;
+	status = "okay";
 
 	ports {
 		#address-cells = <1>;
-- 
2.49.0


