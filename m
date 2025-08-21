Return-Path: <devicetree+bounces-207492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A4DB2FB24
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 15:49:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C222188FFA3
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 13:44:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56BFE2F6181;
	Thu, 21 Aug 2025 13:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B0fZrwTA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16951350834
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 13:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755783467; cv=none; b=NlQWushhVbio8zMuuk8owZO80hckRP7QvpPLHFI7Ban4i7FCFmT1dliD9jCFajWDQA3LUIiN4XGS6liii6aqR/mHZVANWfpWCFQWoVOZVNuv9YHe5P6GXp3tSFBRvtlH1XIEFvQcMzPA5bmSllit+1EaD/CJZKDT2onHXYrjMTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755783467; c=relaxed/simple;
	bh=MDumoLPRgnG21ddAMdGM7mX8aev/cn1X2NDxfYOafS8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ru5pAukvTy/WfQLL7iDBPACjdyMAw1SnkSYFhUrrF5h28EgCGfm7kgzzoIrDoU8vpDEwZTVD51E1S1S2LYZh3HtpKr8OwGy3XNmViRFnrA5mdgVPF0yfWQeGSQud9FSkcgqpLnkpXXFqI1l0k5Qj4kevHuEKqX8yXoofdyh4Of0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B0fZrwTA; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3c51f0158d8so398562f8f.1
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 06:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755783462; x=1756388262; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nIfb8GDKSVhuere/D9IHS19GORsd7FWNJn8vZfvPhkU=;
        b=B0fZrwTAAYmpuyH68oF+4ekapBj2TdlC15v8m5Fy+T4hDq+5bQUcva6ggO+oh4A4/G
         fLC1lKjfmSDfrlh+KVl0QdNQ946XgC2/s3ikQ31/uwQRRPuqUtH8f4qANLlEeS45c1KQ
         8xnqEBgKo6c/YTZKYx+Ff5BtWL+bFWWtdvg+4rogdYQgNCYW6kWNNRbYvoXfuQs3T6u6
         98v9g4sU1b07jjpEQJBSkvmGJ5YSb4fhkMWaLrGms8HhS2y5T5/Mlj4k2i3CK6dYHJOD
         8w3qyRm7AUTFjC43tdWkM3PogM6csdL8ouDWXRUc60lto4pd0+IPFWOBOpDsetOudNq+
         yO1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755783462; x=1756388262;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nIfb8GDKSVhuere/D9IHS19GORsd7FWNJn8vZfvPhkU=;
        b=BGOpFfeito/xp6DcBwzrLWULbhp092RSd0DzJ9s4EKkeey3CXJJNqgN17vgjn/hWeD
         u35Zi3Yhil+VvZW1nDMCPMCBw4JaTBOFPl37cqTr7O+1PKP9xgc1Xj9DN3CN3WUkzM2P
         FiowMpxCHAmECSOuXgiSQW9H07FfFWkA3yzE7tTJG2cEfGZt4xZvGpI17H8satv2Mgt5
         HVZPzWZXy846VopIGIEo77E1qknvDoWYDzvTGjy2vufe2/ZAycth4UsBswPwrtEsQbUu
         Ibnhi8DvJZmXOk+c7EKKoRudg0rDM/5Z6Cm2hj2ovjLPToWbFf+ZMUIdwgIX2mcTXZ0Q
         ubjw==
X-Forwarded-Encrypted: i=1; AJvYcCXsrT94hth7wn1JGqbpXSK/rRDUrWkWOVs8dPNBWbEREOFAjutYugEoLdW1NUbSOeQGzmd77XICPkOp@vger.kernel.org
X-Gm-Message-State: AOJu0YxKyDSmRId2J8KF2FKTmcgtflViiZpO1S/SXiMFIIYN0SH8zgMW
	igM+6Eoz0q8jzQSwEwDjjVkjOL4D/Kg4T6LFX4FVaHbBgEBeDKehNgMGkVQ9OmZi7IY=
X-Gm-Gg: ASbGncvcq1S39cIFZAPDQOVNqFfIQixwXfr/P4DmITwmaaVcWMt9fjt1SDZGygkz3tF
	+qGRwy+MHmTszz63aD87UhNP2nrekJ/3x57vj2OrH4Gab6uAsgFqsOLp6SiGgp9D1qS7Zssx+F7
	mqwN2yrDcCdBFCaPyUku9fcObU9sUzCDiQ68FLpHZIFWaN8tWmA42hnt0TRYNxRwOthoX1d4/Zm
	1aHKIffpaBs0ExsbINcNQ62AQW1JzT5QkjbwjbglqMuPU8BHmEtTKInV32Ibjy5yJ8Rvz5fm+em
	lVll9uu5XrrtIIZE1y45otVBjBOs/Pp9TS4vZ7RhA8rD2A6bb9qFe7yEdDMX243XkIaapud2bUM
	lnYhXtSV0sCRyqjX+nwfTGksCBC0c6IXOEGdh7VCmUvsAJe3qUnEkug==
X-Google-Smtp-Source: AGHT+IGAMxNVcohXYAJ5GbmACwvE2pScMCmZryhp/E04ikJzamohgi8RLRLJ8BAPRWOyVizEN3ZqmA==
X-Received: by 2002:a05:6000:1a8d:b0:3c0:7e02:67ba with SMTP id ffacd0b85a97d-3c497741fc5mr2094220f8f.62.1755783462167;
        Thu, 21 Aug 2025 06:37:42 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4db2ab4asm28937605e9.8.2025.08.21.06.37.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 06:37:41 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 21 Aug 2025 15:37:33 +0200
Subject: [PATCH 14/14] arm64: dts: qcom: x1e80100-qcp: Set up 4-lane DP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-topic-x1e80100-4lanes-v1-14-0b1a0d093cd5@linaro.org>
References: <20250821-topic-x1e80100-4lanes-v1-0-0b1a0d093cd5@linaro.org>
In-Reply-To: <20250821-topic-x1e80100-4lanes-v1-0-0b1a0d093cd5@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1208;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=MDumoLPRgnG21ddAMdGM7mX8aev/cn1X2NDxfYOafS8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBopyEbIXU5KNA9DhqLwLBPoUJ/pOBh8ygbgYUt3OJ5
 /2JsGZCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKchGwAKCRB33NvayMhJ0ToXD/
 4ntYvIo6UwxTZAIkUZU/uW2zyJPCEinfL8vLzDwo295QzedMn5P8OKH3GV5u0eUK5tatO5mND03fIN
 VxRAp6z8P+IJrrldOuuuiiQDl0abWYsdRkDlWggWsUgK75ilUAS7Ymp8JEKN8+QDhLV/0EYe1KqUTj
 wN/w3pfYq4SeaDMqGUQVc1pAVSjVzdSJg0q9SZaQGbgNPT7QAvWoXZ9dhcWSFqtiJrv/z3MA5ksOgF
 uG7sDo6kEab1NEsP+TQ9YTjRW+JYketvIKHxT6hdZzQfCD64WqmusbMHxthi9RutKjguhl4j+VEJAO
 2Vn+jNogYuerK5o7/RxI7cEPSOawRGr3safyDdnfbVhixdDXbFW0T/CayAkaPwAw+uyDqUk18+MSN2
 E+D5bM/UbBSLXqDTgJr4qEPXkjbHeKepdLYb5XDM0M3G1+hfy/dRozk4fnF5kQa2jvE3u2j60a+dVd
 PxtU3NIfRRWjU3GwNIwuTARs62/siM+ONW0MbvifONag2Tp+AmSyIJ9QAxv1iWO7myCcoc5fZdzaJv
 veF0NZ1LWsXxp9T04aNYTlQGzoEwWS939oC9QBNo2BTqGmJpmt6HyvYqf4odz7MBwbvQsmEQbI8zJ5
 rEcjrzsc0/xDgHpXroTtP0/4x5LHRh0vp4wZM6HWOdJm4iWh+AnYgUn7ysCA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Allow up to 4 lanes for the DisplayPort link from the PHYs to the
controllers now the mode-switch events can reach the QMP Combo PHYs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index 9369b76c668b5c008fefd85d5ca18e87ab9ce93f..60a0318b696abd8748f42f1e53597fa710df6f7c 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -890,7 +890,7 @@ &mdss_dp0 {
 };
 
 &mdss_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 
@@ -899,7 +899,7 @@ &mdss_dp1 {
 };
 
 &mdss_dp1_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 
@@ -908,7 +908,7 @@ &mdss_dp2 {
 };
 
 &mdss_dp2_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 

-- 
2.34.1


