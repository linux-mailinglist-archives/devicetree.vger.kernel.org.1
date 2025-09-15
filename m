Return-Path: <devicetree+bounces-217455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 642BEB57D12
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 15:29:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CFA097AA64C
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 13:28:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05A253191D0;
	Mon, 15 Sep 2025 13:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bTyXsVyN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB9583148A9
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 13:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757942937; cv=none; b=hc8ei4ooka7h4T8nuPxwGzoeyNfj5U9qidzsrAxutlhwCTO53AWd4FHs4zpz0x3zXM6EzxDDxHFa1W04phTqVQeENqenGz3nFAaiZJW73HgMl/C+rMIwCXQjrLX2dtANb/vIQkf3Se9Vd+8RF75KdzfatTNVx8oudiT+94vVI+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757942937; c=relaxed/simple;
	bh=ptDgOt9loL01vjXEcr2EORId3mL6P+tLCbDsLLyXacs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kvrhLeX9X/v3Porr7uw3vfqIwwjzJbkQFFzW4XT9ioTLwfAL5p+Yxazkp5qk9jm1FrMPUNOlpqsIC/HdtyEOpM9lHCtJgclvRzfpMRxc2bxzSFxN0uAwdbADTrj3xKFCHf7cPaeRXnkLsEsqDqfndxqRUDODJb4VAybTiNqsfhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bTyXsVyN; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3ea7af25f8aso437022f8f.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 06:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757942934; x=1758547734; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h4T755BDgP/qpBojCajXbDU09SOREwS+KrCJfs0q/wk=;
        b=bTyXsVyND+oNO9i/ykBq0NBPMxor7uAIIGIt3xuQRmCL0RYsPaW3XMFvqzCUjW++tA
         Sh4drzqeUeW5f7JqBKorZa6FQb8mCvDgyMwKDv3mM5/m68WjNH6wy03lmbAQmNvE3JRy
         1DKSYijOnuhWUcwv4VAuV2gRHlbml/+LvQaOCjAAKHNjA1clMmEexDLlogwsxbhSGlQG
         WsjlWpNo0kDN1pJgiK0DiqlxWLXX/W86RGkg0ppJTedZc/8S1Vn4fmT8Z/DluZLymQ0Y
         F6nxQ+/J/R3J9f3ASxUi4mUK4FL7NCS5Zx0ckUXIdHooXu/p6mII3Q7JJH0AhhSbqX1a
         K/jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757942934; x=1758547734;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h4T755BDgP/qpBojCajXbDU09SOREwS+KrCJfs0q/wk=;
        b=LgAfdXt7C6wZRZ3Df0wjZ1jWjXaMhfdEJI7P9XKtV+3o5lam6Poh+B9uzE/1Ga3PVy
         doE7Y28YLUztEhorZ9u3hVDY759eCneP5j7FKlcvMJWxf0dRtpjqkhv3PYPyXzoy+q/i
         vXATDM4tbAGj3XvOGsjq4/Sje+IvMch1vtPRN0OpNdoQjoyW2ltMyxspykElzf5YKQlr
         laaGgu3BV2riQaGQM+CtrRySAq7TTlTz1Ro02CwV6YPNJXBd0r4mHZzoDgV6PjyHSqZI
         KMiW4RzgeVn4RcPdjneWH7hwsmouiiCLvhWYDGc0O6jUXn6LmZS6K7Z6kIeuXces5hKQ
         Fu/g==
X-Forwarded-Encrypted: i=1; AJvYcCV62KOCV4l/Y/GMtbvsJsNP6m8PZhQ9ygrk63cyf7yhKhiRlPb3QIKqvoj3+SzRK26eqYuRPs8Z73au@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4QfgDHU00O0fz4puNbInGQf/Q1Td3ZufEu71+ssWypb/YHIJ7
	WVtD7UDZ0Iq3t857USippANMVVf/WmF7HyT20AhsClydBOVy2sJtc7vNkcLFQIUFH3M=
X-Gm-Gg: ASbGnculqGJRJgDZu6hGDl7LmRNr2rlnSjFThcbR4PWiHShArk9VNAdoY0ZdSNrZrgH
	V1johbyn6BSuqJLW7YiMZb5JrFskAwWZpTMyUIQZpfnZtX3BZdnirToF7xo0O5JbaGYl8ZkjfJX
	RKc2pQF3EiAVfcSsj/+UxGrS+zW+laPkuxBKT1nQgifAGsXlpn3XwKJ+/nJOXCgkCIUQsmU937P
	gtWG+lcMsEdmH0TyPOAr19u+qgP9j8zj7xm1f0nkwjv2fqH/rU/mhGIN02bX00a0XA8m/DE3Ibe
	Lijscs9mAaZbbCMUiQvTLjuQho5b1pSNIk+eNfbeRKOXNZEZaaaVV08voXzpD38wu1Mx+pShFKc
	ZIKLa1De4oSaIQpTxl1yCiI6XA5amdPjCI3E=
X-Google-Smtp-Source: AGHT+IF2lZ75yypIgx7ZsKIckhx/rgZnX4SN4Pv/XeHMttF8TsxMtLWww+ac24EzQYJ8nkDOc2rCrg==
X-Received: by 2002:a5d:5886:0:b0:3e7:4fda:fe0c with SMTP id ffacd0b85a97d-3e7657b9f3emr11555829f8f.15.1757942934041;
        Mon, 15 Sep 2025 06:28:54 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:41:eee1:5042:e713:2e9a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e9fd89af70sm5978874f8f.43.2025.09.15.06.28.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 06:28:53 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Mon, 15 Sep 2025 15:28:31 +0200
Subject: [PATCH 2/3] arm64: dts: qcom: msm8939: Add missing MDSS reset
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250915-msm8916-resets-v1-2-a5c705df0c45@linaro.org>
References: <20250915-msm8916-resets-v1-0-a5c705df0c45@linaro.org>
In-Reply-To: <20250915-msm8916-resets-v1-0-a5c705df0c45@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Vincent Knecht <vincent.knecht@mailoo.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2

On most MSM8939 devices, the bootloader already initializes the display to
show the boot splash screen. In this situation, MDSS is already configured
and left running when starting Linux. To avoid side effects from the
bootloader configuration, the MDSS reset can be specified in the device
tree to start again with a clean hardware state.

The reset for MDSS is currently missing in msm8939.dtsi, which causes
errors when the MDSS driver tries to re-initialize the registers:

 dsi_err_worker: status=6
 dsi_err_worker: status=6
 dsi_err_worker: status=6
 ...

It turns out that we have always indirectly worked around this by building
the MDSS driver as a module. Before v6.17, the power domain was temporarily
turned off until the module was loaded, long enough to clear the register
contents. In v6.17, power domains are not turned off during boot until
sync_state() happens, so this is no longer working. Even before v6.17 this
resulted in broken behavior, but notably only when the MDSS driver was
built-in instead of a module.

Cc: stable@vger.kernel.org
Fixes: 61550c6c156c ("arm64: dts: qcom: Add msm8939 SoC")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8939.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8939.dtsi b/arch/arm64/boot/dts/qcom/msm8939.dtsi
index 68b92fdb996c26e7a1aadedf0f52e1afca85c4ab..eb64ec35e7f0e1c63b0b96f68d30006c2e440998 100644
--- a/arch/arm64/boot/dts/qcom/msm8939.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8939.dtsi
@@ -1249,6 +1249,8 @@ mdss: display-subsystem@1a00000 {
 
 			power-domains = <&gcc MDSS_GDSC>;
 
+			resets = <&gcc GCC_MDSS_BCR>;
+
 			#address-cells = <1>;
 			#size-cells = <1>;
 			#interrupt-cells = <1>;

-- 
2.50.1


