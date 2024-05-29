Return-Path: <devicetree+bounces-70533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2D08D39D8
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 16:49:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 30238B25DA2
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 14:49:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3B87184129;
	Wed, 29 May 2024 14:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M4I3SoFL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7D317DE0F
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 14:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716994036; cv=none; b=u3LgNNQUemhcKh4duXrWA9kO3jgRiW3Ld4FMC96m/Z7y3KRWOFjcOQTgHnITdjgIjfwPxg3W2RMo5kBCwWB24HeX43/B2ojjJLypCkQDAQng+IAO3xUdYFPEKeKtEV0C1AuKZBK7Mt2I8C7eRpYd3EkJx+yqcu2GTmTf9XwctBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716994036; c=relaxed/simple;
	bh=l9/pjpwSgGhOfTvCCVgGXrF5ytqftHSPNCBAeSrsRJw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uCEU9CrwddqIM4pHA92KS8fvsXSFgRn0ICFMqdQOHwjYQ57iADGjkFUWwiaLBhR7jMZfi28DizUhg+wrucdX49pADOtYR+d7g/Fk/7SRdEl3W57Jgxe2xUYLNlBpCuAFF5p+OleVY8mknLJ0N5j+uou+lynHbbr67CDDFMKecCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M4I3SoFL; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2e964acff1aso21379741fa.0
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 07:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716994032; x=1717598832; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SXcvY1jOYhnCeevZe7OhPJYUBPKIydMSkpTjBw5jQgY=;
        b=M4I3SoFLerneh1T1DflsIYxB9dgqvmAOb2FykecUV8UitvvMY263ChbRZF3PVBCht2
         HQOElqHrZxSUhNib3ZWbgZr0WUDy0hPXMbR2q2N4Jb3RhFFu7zV7S/94dsAHjyviIVxO
         95cQ6wSFIuNe2QqZCrnlQAvvhcncTsj1vbql41tvuomfebJu89ACYcHD8+7OiDXvccaR
         ALysLKpo7za4Slrmy9PtLlES7KTtFDVMGKPM7dTILcIAqhpCQydy0KfgYlNPH/b0IKNx
         4o9MXE8K9JwCDXpxMNMc2UBKnu5PQ2JEh/SQM9UiwiaGVEjgWLHeDZLORjwcsuV8zRBK
         ZqNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716994032; x=1717598832;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SXcvY1jOYhnCeevZe7OhPJYUBPKIydMSkpTjBw5jQgY=;
        b=wvNwKu90FTFK28YeeMFZmHzKk0IpK6WUHDrfv5zQ9f+rUfpCnvDf2MJm3DHSu0hUnp
         OjTcRk+Syo/2N4yidtCbvNkEPPEIUKaKGCNIcIqAIteAWaTU8Wv1UeFIDk0Xyuqmz/0d
         /S26HsL9a4UpJl0w/2urhJzHqpJNwok+hDoWyIjDVouu6DAS64tZ/J/5GnD+T1uRlJbq
         KsXzJrzQ4KDrSTT04pKUF49n4XHy0S1uZlmQ/W+yNZeKMXePeJLutjm67m5NkF/13Pkl
         WEHGMmRVIYqTrIwymOJhJWtSdQ2ptGfAv1d2XTTwNP9FFvu32W/E/i0BFjk/FzErGFnq
         pjKw==
X-Forwarded-Encrypted: i=1; AJvYcCX+lE1F10mki1dsC4i3dUtEVkqZwsXpvSM8YcB9GOg16gVtfq3np54FO7INpBaqlndXTKPRsT7QPjD+ExrRq16Df/ohs3rK5UoEPQ==
X-Gm-Message-State: AOJu0Yxgxdhf1FnZl1tXVmiMo4jToSiA59PvW/J8yTjJp6fPH8kpJzzY
	PrZN5uaeh1FiMSn4c2bExLTUpTRGWj1SNbCTSqF2jf4lCser5vGkwx1MkBnBltE=
X-Google-Smtp-Source: AGHT+IFkVWagX2TNC4OD24kgper9KH6wdfsVLhaow8/gIpBF2+i6D/J8eTq/gbWNz5BNwq/b+cxWYQ==
X-Received: by 2002:a2e:9c8f:0:b0:2e6:f59e:226f with SMTP id 38308e7fff4ca-2e95b0bce90mr101796171fa.5.1716994032550;
        Wed, 29 May 2024 07:47:12 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e98c45df0csm3791951fa.68.2024.05.29.07.47.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 07:47:11 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 29 May 2024 17:47:10 +0300
Subject: [PATCH v2 12/14] arm64: dts: qcom: ipq9574: drop
 #power-domain-cells property of GCC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240529-qcom-gdscs-v2-12-69c63d0ae1e7@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=728;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=l9/pjpwSgGhOfTvCCVgGXrF5ytqftHSPNCBAeSrsRJw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmVz/m9fbxT42WuFyPW7QGWT4BDkthauaUC8Z3R
 X5pimtbeN+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlc/5gAKCRCLPIo+Aiko
 1WfzB/wPvAM008paf09rL8lePXHSYRgKJvSjQqQvncraTGjSQsxci13/FCxjyllgAykgRnMV4Th
 9vKco4HLAfKtMq6uREBPmLUsBXzFauxGLjVaJgYFjAsD6RmJACkJBOqlRmXqd4Tz/eEPJYzbtj4
 xDk+ybYUPlRyNRh03lETGWOiD/uLTwfR5oYVu9NZ496Kt/NxnlBkWkznwbaB662sexiP6fXv5wK
 mnDKZaI3DGJmoTiQ8sz4EwVVPBjkMqWkI/UyOyz+ASy2r4tta8qn7tUqAc+00gdusac667mDwii
 z0SBeTy9dzN+9YoMkSlI00cxJKrdRmFupNgaCB5Vg/WnhP/1
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

On IPQ9574 the Global Clock Controller (GCC) doesn't provide power
domains. Drop the #power-domain-cells property from the controller
device node.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq9574.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
index ded02bc39275..d21937b09b4b 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
@@ -315,7 +315,6 @@ gcc: clock-controller@1800000 {
 				 <0>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
-			#power-domain-cells = <1>;
 		};
 
 		tcsr_mutex: hwlock@1905000 {

-- 
2.39.2


