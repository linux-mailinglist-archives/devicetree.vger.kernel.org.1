Return-Path: <devicetree+bounces-40833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EEF851794
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 16:06:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F072E1C2194E
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 15:06:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACD4D3BB35;
	Mon, 12 Feb 2024 15:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p7m+9gvy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB0C13BB46
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 15:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707750364; cv=none; b=g9jYTgaJb+FwQs91iVRmq77uE4TRfAdh8vo+5BWp0btue6okTMrImJp07oRkj/7+6+cDw7PuYed6C37P91rHQhpSb9sgQcOnCUVd3QnQGQ/yOANJzjBWj+fqQbdvoJhXaRmJI5sM15bz8zhqp3t5esPm3GUBr/aPD4yQEoEVkbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707750364; c=relaxed/simple;
	bh=jPajhqOmFKfyYBx4nGkBrnnNp9aW0JQUFwS8L+jDgWs=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=X4+TG8xSCYUFwBwph2GKOrfUZrw7q2IYgU/OdycwGyFtobFLAbQa4nz17gghPUynvoUq2XRDUu/pW+r8qlAFaDqy7CuoBz+kMk/kwkeh31dUvl7Iien8NRK5E7uIEIlxC13xrsEw7yVSvlmSgqZY638mZL/F3tUd7YqQtFFU5mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p7m+9gvy; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-40fd2f7ef55so24490675e9.0
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 07:06:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707750361; x=1708355161; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YHJkvFek5nskp8YFkfahH/rV0FpJ+iXEjjaNhn1yFHI=;
        b=p7m+9gvybtZoNME7Bw015BmjZ/krijqJu9zSec2RufQTfD/9o2wWeGfMl4Y+aEwgUs
         zlfc2xQGXnNksF/D4UEiF5LqQX5E9uGXeurBNBPbPvqR7KPhD9wo1rXIomqpSiaMraRS
         6fs3NHl8LCZtbd38ns2T1mQFk5XqoJYRrU6z3NlvuYM0JdUWky2SueGx4BhvOUAeRzD7
         KxHf/mq+ZF8nKH1imOBm0SMJ7HbZMhdgd77DjOKfIq7kp4yoCuF8WwX5ruRc6ovhyIUr
         pyWZAFes8f9Lp3bJ2jHy1zvQHpygCsrMz6eMYGHNLgopOfEgmXbCS7khuqap2W6TO/9F
         wEsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707750361; x=1708355161;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YHJkvFek5nskp8YFkfahH/rV0FpJ+iXEjjaNhn1yFHI=;
        b=EqohLYLTMraoiMCFtLobRLfb4E2RMWNf9AizgdqbP6V41X7K6pIfXiWNICBMH0RQmn
         +6a6hqBu4RRfzhHaeFJBNquhfk1EaPORlLI2ys2EWdvrhTRJRPoJOKzU8y3N/rgscAPl
         1l7j1wL15H2O/4K75Gqr9Z44ey66hYcGQMPYzp8cQsD0vPlbUFyjVd8xAgWhVABFc03V
         ydqzlFvoDMPS5rryPRpkX+xQKLPW+IQdtSq5QGSFERqEM0NXfuDwZQTD/V0gXbNZuzV3
         wQ5HlIMacLWqdFIhdOaZCLTSFdfZNrXBCXWFnJLvVMJ3ph2W71l2Iub8B2SB4I6ITF4B
         VyCA==
X-Gm-Message-State: AOJu0YyfduJmgQ19xlMHBTmzOWzF1omZgwjm9mZkckNvFVNtQSxk3rQk
	aV9AA2NXzLtcMBpoJ7JCaaJMKCfwJA7rAYsAfmUCq2LXOwAdvihZkPMzSG4tQ/l6meA2Jsy4ejT
	d
X-Google-Smtp-Source: AGHT+IF7rSSg95nQoo2b+8KCj6TBkuLX3+NRVXSWaWYHqrguy3TZPywsPWzP+6EAAdZlO6egxgo/5w==
X-Received: by 2002:a05:600c:1c85:b0:410:ebdf:73af with SMTP id k5-20020a05600c1c8500b00410ebdf73afmr1547417wms.7.1707750361294;
        Mon, 12 Feb 2024 07:06:01 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUACKApFvJJVxUQMCHD0+UnXJmj9tUOuCj/KyGj7SBipKo5FtkdZOS7UUbfB1SWPJXybQ6L2ULyxmRopRfojiO1pK0egJLqd4SxdQurb3S5fUZFoXvmYvrXte4Q2m7ehvMjExg94fTQ+G3y6C1gMn7o8YCAbzmFUeExVVRU6r7jy+JRy1dr+U/9RTPoPpmbi5OwfIWQwDA1oeJMb2+RMVDdQxGdaOSZj0VTUourLhIrtE55ue+9eShli1qBKQlws0xzm0kZA00B
Received: from krzk-bin.. ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id cl3-20020a5d5f03000000b0033b7ce8b496sm4437959wrb.108.2024.02.12.07.05.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 07:06:00 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: ssm7125-xiaomi: drop incorrect UFS phy max current
Date: Mon, 12 Feb 2024 16:05:58 +0100
Message-Id: <20240212150558.81896-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Neither bindings nor UFS phy driver use properties like
'vdda-phy-max-microamp' and 'vdda-pll-max-microamp':

  sm7125-xiaomi-curtana.dtb: phy@1d87000: 'vdda-phy-max-microamp', 'vdda-pll-max-microamp' do not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi b/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi
index 0dfd1e3730e9..29289fa41b13 100644
--- a/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi
@@ -421,8 +421,6 @@ &ufs_mem_hc {
 &ufs_mem_phy {
 	vdda-phy-supply = <&vreg_l4a_0p88>;
 	vdda-pll-supply = <&vreg_l3c_1p23>;
-	vdda-phy-max-microamp = <62900>;
-	vdda-pll-max-microamp = <18300>;
 	status = "okay";
 };
 
-- 
2.34.1


