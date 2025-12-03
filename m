Return-Path: <devicetree+bounces-243844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A9BC9DB5C
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 05:05:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 221B53A1BC3
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 04:05:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC5D227056D;
	Wed,  3 Dec 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ur3+VYAl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE1BC273D73
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 04:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764734753; cv=none; b=dpgPgtV6ZbOrU83d2V0siqQ18UZAF4veFaDg15JO0IXNISYLK4sMpAN9TbvApW8z/aCU5FBWvwT5+DKy6HJa9IQ/ECt0WyqFcwTiMjczXYJLXGdOuK+42qY6sthhoinVctSSzw8hVeO0k7bsRFt4xbh4dMI5rhxFm++qiVIP4Ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764734753; c=relaxed/simple;
	bh=n917d0FUTWb6oIgJoj4/YwDmqaXHdJMv7QouzHEd0lc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=R225wR/sUIUEVOZ2mp3Fk2kKstZ/nffkHkh1ZRVUphBCDo75xJE1zOLmN/5grqMDZ0OJWdpD/3nNbg9/RdDnmSianJMBdgLYBN5Wq/ZWHbAJoXsp3XvnARC9yo9QlID9F5eDMcbf1izdqq6t3b6uqVggwcNMT+tDDQXMVyGG/n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ur3+VYAl; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-37b960d8aeaso6699181fa.2
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 20:05:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764734750; x=1765339550; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=woXRM0FgmChcnuN85zBbg3XYQxsuUDdnQE/N5irv9ds=;
        b=Ur3+VYAlpSQY15Ne5xKGyl4e3i2HkOTjQNalecuHuaDUoEEunB1YF3fSuatm8Ss8YZ
         DswgH2VzLbLY3q+egPgRz0zf66/DxOtJNyslpEJRpzAJwY8bVb4gSpLmWkVAlQFF3MXw
         pJxWzlCQsQveLSobRRx36akreepvoduJQsHTD6C8I1W9gghlOtKo9e9F0cmwu+VdM67k
         EpzUYwgMdCJmOTC1FshDKeLNY/6pruAjJAuJkfENsWk3kZRr0h677r9CU6USlRrrlkbW
         9yKJPPG9fq+wfTY4Ozr/hWwp1F5ZyzonEsYR3IfObb8FNo7OCjiGsAxjAjCoaSZ3rHnC
         WWVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764734750; x=1765339550;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=woXRM0FgmChcnuN85zBbg3XYQxsuUDdnQE/N5irv9ds=;
        b=jngZAeZt8UbVgdZ9gsZNsyV+pBuUesGCku8vQBR6VVLE4in6Z6Py1ECFr00iMVWEBx
         l+rpb72f6bAET8BQoe5AJY+vUVpAbfj/4UrP9UZg4qRpkzrJ0S2LTd2gwj6jHm5HoMpf
         SQH5DYb9D0X003QfL96VlYKYyYORgjbWLSBqeWHep7tHJd8SjdFZ9tVnQbjt56aAEVSR
         7GteAViVhPs+fFeXlT6jJ+s1CYLYurHFxkYHq38fobvQd2DrzW4dz21Fk+KBC9XbT4SY
         RDJl4eSLkUdIua7UkXeFyxKARGAuLsVX7Dzpe7lSEODEiSioNq0TYOL0+qZYGu1W8/QC
         8mFg==
X-Forwarded-Encrypted: i=1; AJvYcCXGFRGOPbksHPInhLk3qtGBB3vO1VykFgfiBG6CoYDqjt0QODxPzSy0lyTtdyVee++Wlz8nTttbw9hq@vger.kernel.org
X-Gm-Message-State: AOJu0YxvoqjLtkZutkqiY16O3phA9h8J2tkdP1xfqyzj1wljlS2g1xyi
	BPFm8Xb1Sl8Itwah7+ePsV+wU05SXbyqZ4aP2RbZXpPxPCd8rHklL6XZMplQ/5L6lU4=
X-Gm-Gg: ASbGncuoRijZHO4gTEDkZAYv2vpJ+V8ayzK75tYhDjY6un2GHd0Ppz07YrPd7FL8/37
	lWiZ4VxSA3IQ7zfPLZLr5eQc0FLSrq2HEkBd2Ndlo8xXro2MF0IZJ72xuNksrpodGRDgR45YB0L
	hdnq6Rm5wC5ufklOe77aa6tfGl0tToGbQMN1+tkF4LHUAP5I0cm7aJg6NNgnhn0mNNjXF2uBskV
	hhWf6Pqnu8fdJt8pK9q41RoXthIQsj2rE7hEQSirwcv7Jrt96gtGiXCChq+lz6b4nmXXCseoE74
	ENJZQ71wrJ1nUJqix0R01MF5IxKDj1SuTKQV5X2jwbF/7FKR4Qf09gWjMGXiO2Nchdx5wR5Aueb
	jOMpojpsi1AOgPSzi7LzibehQwNpTaBdFIpnuV9EpN/UMyyblK0srR8XzPECwGbWVd4EOl+QhTO
	oVYy56DIMXOmUEBg5R411zSvtTRnHAX5v9JJi+FtWAmC6fvECjTLs6LA==
X-Google-Smtp-Source: AGHT+IGiJ2EiwArngokAluzWqRTKeDdBq6s4FR0P9zPxFKj1p97CfRqTvXszSlTJqv87E2/MYygMgA==
X-Received: by 2002:a05:651c:210b:b0:37a:42ac:fb8c with SMTP id 38308e7fff4ca-37e66cad9bbmr232221fa.4.1764734750071;
        Tue, 02 Dec 2025 20:05:50 -0800 (PST)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37d240981cbsm39505631fa.24.2025.12.02.20.05.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 20:05:48 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 3/6] arm64: dts: qcom: sm8550-qrd: move camss status property to the end
Date: Wed,  3 Dec 2025 06:05:35 +0200
Message-ID: <20251203040538.71119-4-vladimir.zapolskiy@linaro.org>
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

Conventionally status property is the last one in the list, move it there.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index 48af6d114161..b3eb0836c408 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -717,10 +717,9 @@ vreg_l7n_2p96: ldo7 {
 };
 
 &camss {
-	status = "okay";
-
 	vdda-phy-supply = <&vreg_l1e_0p88>;
 	vdda-pll-supply = <&vreg_l3e_1p2>;
+	status = "okay";
 
 	ports {
 		port@3 {
-- 
2.49.0


