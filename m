Return-Path: <devicetree+bounces-207971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E01B31414
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:50:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1D2943A88CA
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:43:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A8F32F3617;
	Fri, 22 Aug 2025 09:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XigP8NIN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E402EE608
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:39:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755855572; cv=none; b=RxBdG/xdcFeA2hNbcuMCVYU//CzLfWaUHFizCf3RyR0jbXRLJMWIq908fv3m4/Cq2u/X6YMwDU31/3nO9r3Q0OajG7ipURTRbIeibUHsCeqK/AZuR6UJipq/BCCRBHSRMT7IY4Ubo0agBRRoOPPRsScY06UUhIWDeW0mgaeqyyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755855572; c=relaxed/simple;
	bh=CBHmMHHtxlm10+qeAMc8aYam3qMzlCk22/bbwKvrU/Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=byms+/ALf+ldHN73B2BwDagKckVKtFaq1otPbA/VTEBxeu71j8us/z8iE2+2GBxy/fRF/bsfJ/mpZKjbQjhAQ++MqjuO5mt2hPxux3Hgn+FB8v8nvw4bDHq3q+dwBFFJMFm6bJwdPxrddr2+iIHSN6FomfiGUlnhW1TlOZVa28c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XigP8NIN; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3c64123398cso127354f8f.2
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755855566; x=1756460366; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9wtFtCOZAL2gp20b+62S3Bdf9VL3D2oi1QDgtuJyRDc=;
        b=XigP8NINASaqHgNsw3dtxpbAVJkDNZs7ZmiehaG8edaR8m782XlcQCIa8BlNMGDMMt
         OanH1lSxa8gjZBmLfmlIH3ta8XBGf5nYyDdXSCUkTxiZg6ADzHhUeO1QJ1WncLtgogTz
         ZRNGBcZ+Xt0fBG85qftHcr4xM5btpEpOuIxvuTtjHLPdSKT+Noy8sU0E/Kk01kWnzGCS
         ZMFk7Mrxwr2HEekKqliBjspKQriF7/qtTF8dfXPjQGdYgZR2tQyXrpSWReL50aJST5MM
         ZzBOs55Cn7wF14hpgdWVN5iYJcgltLRmsTGkTrMOUDGWXuKUvpShCpI8sjs+WvYNNmdc
         0yjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755855566; x=1756460366;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9wtFtCOZAL2gp20b+62S3Bdf9VL3D2oi1QDgtuJyRDc=;
        b=rNhFDpwM+1pRZgWGKtz/NIzM4c+aLT9u/sTCSk8+pzhoglLEuIvKOWV6iTHJEQT94I
         xuK8Kfm3ZRH+SVE9tgh4tYRqWdqlyx2K0jm9JQCdZJBFdN9fKKYXo9VWEqJXjkxP2//G
         YMNUMOYHsBtAWEZxM39rZelKAnTl7lYiqmw3ay2i6yugIliUPjzqicwkATEBYdj2PdjC
         /81SRj2Le8dszMtN3HFjcwilRXTMsxROivHP6ZfrY7n1ZRUcXWIKKHq9mIXyyXQ8PcMX
         GhvZqZz09M25c9HNe4tSjJG3iukP/nQntJgzBBl3zTOPYWHPiEd5dvz1RK9/2dPHBhE4
         Z7EA==
X-Forwarded-Encrypted: i=1; AJvYcCXXoGYQy0thjzsCAB32dDLfl7ER7guoDe9VwL698Coj+NFgNeEuzx/fclShzteweeWCRbUccJ5EPqt2@vger.kernel.org
X-Gm-Message-State: AOJu0YxwspTkoGUiOuVl92IBzuH1hyeqIiSDb33cK+zNtQp6PZ5D3v3f
	HRHBbDHL0C0fELJn4mzpY8p70B7b+RrsbCAdADxYbBOOK56/7+zHdNX9s8Jxn29QNJE=
X-Gm-Gg: ASbGnct5+5rr+vO6U8YcTfSUBcZwNdPWeNboYVolgMVkj2HdUtcWklvp1SzEUzjHE+a
	TxvpEOszKTbOyy+C+xj2rQT0AIuGjzylLbQ4N0wpxXkKbjgv949eO5vPR6JjqUkHunph//nZ3lE
	+bn0mDPWrXj12F5njY0CvxZe3ZGznOeustmG8bzGJru+8Qa6SwrB4BYEIkF1WI6QvU7Nkkxadhl
	L4WSGOqFkxJsu5OZxaX6ON+9PyFpgAdao/p05gNSAMxDsC5nf8AKt/plcTq05egbhu/YVxKBodE
	FqPoywHL7mHSJjDeS2LL9xFzxBD2jwbNpYm8aG54rGOZ+kaL9BBj0pQayqTtvDgPwPfK5xGHhmH
	XE3ELUEMcM6tsBPDv8lr8zf8++/babcuaD3+Ngik7ElU=
X-Google-Smtp-Source: AGHT+IFMdA+UlvnzSqoAYaRrz+fdGKmnqVvOLzoeU7ARbgBeCxxvgVNrDp5jiLZizY/hep4XyZWS5A==
X-Received: by 2002:a05:6000:2c09:b0:3b7:7cb3:1124 with SMTP id ffacd0b85a97d-3c5daa27b55mr1725445f8f.11.1755855565645;
        Fri, 22 Aug 2025 02:39:25 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c684524163sm609890f8f.61.2025.08.22.02.39.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:39:25 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Aug 2025 11:39:18 +0200
Subject: [PATCH v2 06/16] arm64: dts: qcom: sm8650-hdk: Set up 4-lane DP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-topic-x1e80100-4lanes-v2-6-4b21372b1901@linaro.org>
References: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
In-Reply-To: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=732;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=CBHmMHHtxlm10+qeAMc8aYam3qMzlCk22/bbwKvrU/Y=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoqDrEp46lbfw6kjGVKRoadQShNqvJcC4YMvIC9NT8
 T86DSTKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKg6xAAKCRB33NvayMhJ0UR8D/
 9kVxmdTHcMl5itvIRUfmySrfSw7cByYBjfAmF5+AH4bjrJMYQu3dtWKPTsfmJew4O7qA7RuiZx3dny
 eo8nd1ChmR6fdf/m+2c6wPG5QlYlWGES3Xff5mMWH7DPSTipemTKy0kHk2mXuKFQW7l8CIKlKfBnxS
 /ZomTCfhZmuTbMwY2dEqR5pjg7mWos01jST2YzNNSOQW2cp2zLOJGZAD9IM1mr2nliR81TfSrsFvfk
 WaZ0K3MZHq6FllncAx39qVOynKNEGHpFHGzLbEKvjetLDuhfKiPtxKfRLHUKWhQSwneU/fx3e236Fy
 cbvTZ33PckX59dWlIO2ary17EpT2XVrYIwrussncwBRaxdBuI6QvsSAPRlvwGaI8E0zrLOOCIDmLqF
 ZQEq0lXTnLeYrIGmwJTU0hJnqAxwz11jhibPQwrWZNoPKh8/P6hNIbRjYYWMD7qfqgcfj9qkxwzr6Z
 FGuqwMdnDe91rD6VzaQJiohx2Ym+7LvZMesO7ZvC0ppIoyfHY1FbyB4fH15zv9XjXmltJji+94dDx/
 5QJf5SI+jN2v7Hh96EFvK4vUHmvh/zEs4ff8UQJSP6K/Tug5dbV2MtjGLLOg+hnzKNmhgLkhvj4br4
 Hra5Vy8wyuXSwJSaj1txFr9txxYoEigxiJpk0ubGWHMxu7r04szg0lDYGQYQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Allow up to 4 lanes for the DisplayPort link from the PHYs to the
controllers now the mode-switch events can reach the QMP Combo PHYs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-hdk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
index a00da76a60620b998973cab189f12eeaa0a448fa..5029c8bfec5921074ae6e1171bc3685ed9407278 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
@@ -942,7 +942,7 @@ &mdss_dp0 {
 };
 
 &mdss_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 };
 
 &pcie0 {

-- 
2.34.1


