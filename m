Return-Path: <devicetree+bounces-70525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A4F8D39B8
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 16:47:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 750961C235C4
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 14:47:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBBC8180A85;
	Wed, 29 May 2024 14:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p7+wBM/K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E652317BB07
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 14:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716994030; cv=none; b=P1DxLPj9uh36nNlqJ/fEwGZEfPbKI5a9QXO1gYoQep7J6ubgDysr4QqTseOGdhZdWJvb5AM0d+vez8KRg43r9g+de51uhzxZkzbGQIa1nNZdt08HpCM59IVxjawxpj8LAwKkILC8dgS0AuPOrC0MUVU1xkh5ZNMiwHwikLcW0wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716994030; c=relaxed/simple;
	bh=07w4w+wcz+s8WoLWWVideIAadh1jMDKIz4U0xNk1izU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Wv3D6xmX2m+vsYeSd+FBmPBbgiqjBITJt57OsDe0Vbbn3QAJWXoID43vLSo0i2kz1ruSmTsdx/sYglkebQDGqljlvxk0t3nyvrhTa+anCw8qMTy4dskexZh9C72deZBQKRsrfiNCExE/eNwDP+5DrgxMYiX7zqr2ngiYiYbiZ1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p7+wBM/K; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2e9819a6327so25665691fa.1
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 07:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716994026; x=1717598826; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jnc5iU5guGKDIIwBfgQZYLnSXcG7LxADDm3Oopk5kxo=;
        b=p7+wBM/K0YG4ofkXkcut5WmWwkDUrAUq23UrQdLiOSYRwrbSlUdG9Vi4iTMBEt9VdV
         uakAFt2+5lVskYXtlz5x+8dYX32FLrulIPxFMrpp2vTMuC3EWnohF+DglbK5M3EXwyPA
         MW/rrrRHbToSPfep4QRijIE+ogAA2C42KISBLToaNojDHHssPldcuyxq9SU0uo2cH+Wu
         n+t1D4xHcvuqYeUo7hUrg+mJqahVEqvDpoBErC3nC6ijhbCXVit92aR9uK16biCSbQRa
         t4dZejQf/hh5GKbBeiDeUzK6Mz4QohgAZnw1aa8qqVj8UEMRYT2XjfdQhw1foeAj7FbN
         3WIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716994026; x=1717598826;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jnc5iU5guGKDIIwBfgQZYLnSXcG7LxADDm3Oopk5kxo=;
        b=rBsihqCHngeHgpCWrszuwKgMnC1c2BYIOhk0kt9S4UcmWcvLzn9ucB1MRWHqktZnaO
         07gJKBvCJGrae6cgWHS29uDkd2RXjxMe2Vgce6xvJt/VaZIPMfLG1sEg1jlvsAWrNkTn
         YK7XETfETQUntpWcS0DMGo6BuEj1PCo6frWoFqfIXFQ0HXPy/zBRwSUqEvA/BASvTQg5
         sQkDqhC35I7ziAeAzHdPFCzevY+Ss3ROm/sa01O6FtD9xBqvF3u1x+TKNqsQczLNZYz8
         d+aSfRSKJYXvA5sKLcDPJ19AtSJeqKfS7PiQka+8dg5W8/67t+pvrS5oPxbJJNSxvi/0
         c8AQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWSc1GWMQEc5wlbUVlluK+aAyDmHY1V8/ajdSjz5bsr1W/2UEJ9nsH4P4/F353wP38UTrpKTVjW5yYIasjBy1eJTpnBKPsnfrtyA==
X-Gm-Message-State: AOJu0YyIYiyVKwXNyxkaO0O+4WMhjt1fk8BjYQz+EaaI1BKNNhLhOWrJ
	/MVTHoJfGbIlyEkyIK4osy8ywJ4G2Ujfm4DZQeiSq9P5yfKZqaogqAH8JxJ6or8=
X-Google-Smtp-Source: AGHT+IF9klEj3u2d0bxALWZkHF45QG0akrcIFU6EXrt6OznAUUQkCYBFepCVroxYrlosTc5qCbm4sw==
X-Received: by 2002:a2e:3518:0:b0:2e1:7acb:6c40 with SMTP id 38308e7fff4ca-2e95b0c12f8mr86853821fa.29.1716994026263;
        Wed, 29 May 2024 07:47:06 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e98c45df0csm3791951fa.68.2024.05.29.07.47.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 07:47:05 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 29 May 2024 17:47:02 +0300
Subject: [PATCH v2 04/14] ARM: dts: qcom: apq8064: drop #power-domain-cells
 property of GCC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240529-qcom-gdscs-v2-4-69c63d0ae1e7@linaro.org>
References: <20240529-qcom-gdscs-v2-0-69c63d0ae1e7@linaro.org>
In-Reply-To: <20240529-qcom-gdscs-v2-0-69c63d0ae1e7@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Robert Marko <robimarko@gmail.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=816;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=07w4w+wcz+s8WoLWWVideIAadh1jMDKIz4U0xNk1izU=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ1q4/RPvwEXd6yStWu9LTj2UtfzZnm/r1BIeOp8M49eer
 PneSUOjk9GYhYGRi0FWTJHFp6Blasym5LAPO6bWwwxiZQKZwsDFKQATsShg/1/0jS/rya76QG3F
 9997Izhywz/2P69jNZG0qTvpvNcr2tbV8fcO7vv6X+1ttRQDXNNtv5Xskaucu6429GXTzwcFyzn
 8r5es+D5BbmurbSTXqXXL5L1Dn7ieW915M/7Hu1tztNvn/NwpEGr/UNjGxVhKdXPZ1s6TKRoNhk
 xcH2fI3Mnz7mj1OPeg/5FrxiO+ySt7VD/a+WUofUk9qnnZkde2U3y+cevBgkM/JvHw2C90szz+6
 LT0tbxizdcvfS5usap22vhkkeglz3cbfKuuCth5JISbXSlpTvhj22k5O2n2tCqPjU8Fkt43NMjU
 1Hdl8PtsWqigxXF+StzsCYnzr+kFbFCI03Iq/NFg6n4CAA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

On APQ8064 the Global Clock Controller (GCC) doesn't provide power
domains. Drop the #power-domain-cells property from the controller
device node.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index 11e60b74c3c9..178a3b424670 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -684,7 +684,6 @@ gcc: clock-controller@900000 {
 			compatible = "qcom,gcc-apq8064", "syscon";
 			reg = <0x00900000 0x4000>;
 			#clock-cells = <1>;
-			#power-domain-cells = <1>;
 			#reset-cells = <1>;
 			clocks = <&cxo_board>,
 				 <&pxo_board>,

-- 
2.39.2


