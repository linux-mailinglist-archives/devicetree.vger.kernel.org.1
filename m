Return-Path: <devicetree+bounces-80764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B728391A5DF
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 13:57:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 53FCAB270E2
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 11:57:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03D71156898;
	Thu, 27 Jun 2024 11:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BjFZt05o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C7A156F43
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 11:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719489368; cv=none; b=mDcCqRmFDKIazU45GNd5R+WB90Cs/dfWglc44PGKJE1zilA9d6v+ENlPDb/gwPg7Y7Kex24ApqlsFFdUa0+HtIG2JX4EYIznLmndd1/PCwKksRiCQQw+CVgTKe1qoGqeKuZ9pws7PgbTWFIJ5KOG2VuZsId/RQEU1495lDuPZ+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719489368; c=relaxed/simple;
	bh=KpBwvqPApgC7BTXtL0cPb5X/4XDGASS/oIMKDjK9Deo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=P4xh5xsGZSnHcqhKJpi3s9ldIeE/VspiHJ0b63yGBxcLPZk9zr4uwzofJrzlK8EaMriao3xvo8V5mVqfKfEhzdqFQ+4+5d0GniSmIEdOm+mv+oQgTeZ+43fsgbhoDcE4MXlKL+kNncDDUyHGcvdJLfF34QQhIhDv7B+2RQH3qtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BjFZt05o; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-421b9068274so66684355e9.1
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 04:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719489365; x=1720094165; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fUAdAcYA0qOL/HQiRFHsxlPcPsEL1Ruth0kB6T0BP2c=;
        b=BjFZt05o0g1URDuMjQ1weZxe+NW3JjXmsxjf4DPkNmTWZdkiVqaafptxFJoNNX6IA8
         3Y0ene3I0pcP+LhiNIy1xYw35nv3b6ISYpFbHSNcGs4VXFFXBRyIUh9Iz2gigQsBPiG2
         /oA5Q8feVKOcsATncHRsEW2bNWDhowY0PV/y3BSfw/Po9y5fSwV9ZioK7ycu6e7/IvH4
         8Z7mn4xmoVEE2MjkUYSFMQ0GhZ1foKLPFYRNmYWn9/fx+Zv0om+x0MQStf5tyfXQzPF9
         RKNPUC5OUi7dfNdAF8VbrF1N311Ep5IbjR0QKkKFJsc4hsX8XilovXUQ/gUM6qo/KySc
         2nkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719489365; x=1720094165;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fUAdAcYA0qOL/HQiRFHsxlPcPsEL1Ruth0kB6T0BP2c=;
        b=jPuaMLCvl/uEhUlDRxC8Jczz8WZh4u7CAAwa8vOYPgq0ko0Rs4s4XxzBwFH5z9zfLw
         BJm7XXFqnygCqiod2k6ePp0yiLBOOo60Z+SVoiB9XDS5zT+QadY31dJLnlmz44OlvbRG
         N9gm6m5OBlLsryhD2oeXImnYqIOdOoo0d77TXOcGtwxkfxVJXRE6CRbZLnzReiy/HneI
         RKqjZ8X9w/SIM7K7aCV8f8IEnyiF8hFNSUunhkzqmQSF6pVo0iBPDRmBwTq8zfzQjXqA
         vAAuQ6UYY72idinFxV5ln+/0vNve6IA5H1O1O+ntAyKAXBeIvh5+bQZvtKlhtmeuoQCd
         3GKQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5yUYKs/m7+tVK82LeOpSIc8x6B4wgZr4OT+OTMzZff8oDhi2EPpYtQ7Y7t9Gfr4sf1zpGGX0ByjyhpJRz+eIyvMLVYo7u+028Qg==
X-Gm-Message-State: AOJu0Yzvh4CehGVcy6GNPl9PHdWsLJ4J2QiitDPJoxiUGwaWhUaxrrjk
	GnHYEbIE4d6C4QHMQlq+fUPkNAV8/DMCT2wJ9d/opmhE5q2Kx7LrygA8H6K/x8pjCifTRx9ffx+
	Jt5s=
X-Google-Smtp-Source: AGHT+IGvW0hLop2OsW0c2VyEig+um838vsjHyARjdNe3qlkvb9DzxMySU8m1ZOUZmWWhoDlWsmLqOg==
X-Received: by 2002:a05:600c:2e87:b0:425:5e8b:af9a with SMTP id 5b1f17b1804b1-4255e8bb07fmr34042215e9.36.1719489365279;
        Thu, 27 Jun 2024 04:56:05 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3674369980asm1597552f8f.80.2024.06.27.04.56.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 04:56:04 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Date: Thu, 27 Jun 2024 12:55:21 +0100
Subject: [PATCH 5/6] arm64: dts: x1e80100-crd: fix wsa soundwire port
 mapping
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240626-port-map-v1-5-bd8987d2b332@linaro.org>
References: <20240626-port-map-v1-0-bd8987d2b332@linaro.org>
In-Reply-To: <20240626-port-map-v1-0-bd8987d2b332@linaro.org>
To: Banajit Goswami <bgoswami@quicinc.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, alsa-devel@alsa-project.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1686;
 i=srinivas.kandagatla@linaro.org; h=from:subject:message-id;
 bh=KpBwvqPApgC7BTXtL0cPb5X/4XDGASS/oIMKDjK9Deo=;
 b=owEBbQGS/pANAwAKAXqh/VnHNFU3AcsmYgBmfVNNox7RstRcA2AkFGvJ//D8Zj2mIdxz2mpOt
 uopA1QtYqyJATMEAAEKAB0WIQQi509axvzi9vce3Y16of1ZxzRVNwUCZn1TTQAKCRB6of1ZxzRV
 NzgOCACELIeGXVxIgRLBFFIwuTonBWhLIu1LrdDFExawQnHithYxq1bKfsqNY1UvNMceN0rcYLu
 6wS3R71OJihguEyOapPmykZIMgALSxPlCubv950d1NzP84IPnA41tkPdwHG+TpgWumqB5c0R1Nc
 0FXd78PXpT0zKRR6NBDC07Z308LDhTQDdSdnjXvugSNB3Rg+BgRHBcPOnqZlYxSOrJiXTw6VXQv
 nltrD93hCYSFZC81tjTrnTL/2iPU9n5mKxlghnA7plMb8+8bame8wqi0/scr7n597+ORxkyPi4I
 Zt94VxrT90adygGvfkCpY3Mg/YloHJzUSSCi7mf8RfFrorjA
X-Developer-Key: i=srinivas.kandagatla@linaro.org; a=openpgp;
 fpr=ED6472765AB36EC43B3EF97AD77E3FC0562560D6

Existing way of allocating ports dynamically is linear starting from 1 to
MAX_PORTS. This will not work for x1e80100 as the master ports are
are not mapped in the same order.

Without this fix only one speaker in a pair of speakers will function.

After this fix along with WSA codec changes both the speakers starts
working.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
index ce80119d798d..67c5cd89b925 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
@@ -841,6 +841,7 @@ left_woofer: speaker@0,0 {
 		sound-name-prefix = "WooferLeft";
 		vdd-1p8-supply = <&vreg_l15b_1p8>;
 		vdd-io-supply = <&vreg_l12b_1p2>;
+		qcom,port-mapping = <1 2 3 7 10 13>;
 	};
 
 	/* WSA8845, Left Tweeter */
@@ -852,6 +853,7 @@ left_tweeter: speaker@0,1 {
 		sound-name-prefix = "TwitterLeft";
 		vdd-1p8-supply = <&vreg_l15b_1p8>;
 		vdd-io-supply = <&vreg_l12b_1p2>;
+		qcom,port-mapping = <4 5 6 7 11 13>;
 	};
 };
 
@@ -892,6 +894,7 @@ right_woofer: speaker@0,0 {
 		sound-name-prefix = "WooferRight";
 		vdd-1p8-supply = <&vreg_l15b_1p8>;
 		vdd-io-supply = <&vreg_l12b_1p2>;
+		qcom,port-mapping = <1 2 3 7 10 13>;
 	};
 
 	/* WSA8845, Right Tweeter */
@@ -903,6 +906,7 @@ right_tweeter: speaker@0,1 {
 		sound-name-prefix = "TwitterRight";
 		vdd-1p8-supply = <&vreg_l15b_1p8>;
 		vdd-io-supply = <&vreg_l12b_1p2>;
+		qcom,port-mapping = <4 5 6 7 11 13>;
 	};
 };
 

-- 
2.25.1


