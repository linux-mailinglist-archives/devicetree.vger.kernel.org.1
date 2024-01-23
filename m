Return-Path: <devicetree+bounces-34139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 133FA838CC8
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 12:03:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C02E1289C44
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 11:03:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2A1E5C91D;
	Tue, 23 Jan 2024 11:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xqN4FL+j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B125DF2D
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 11:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706007723; cv=none; b=pL7yHDD2iY+MmKDcqV8RvCH0ZCvGvJtQgNsk3CB1VouDRC4QQ+6xveDeRwLjw8KoCz4atf1y96346BQxLD80ek7uU0opWB32OONymOwnWtf2DL15UgiY6EyrHMSuYES4oJ6LUJXCVga6SPKsDgZZWAur3IxYaVRKYoXqdy++tAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706007723; c=relaxed/simple;
	bh=HYLSQEPjLTHsLCOtnQWyK+73kxtr4D0UNDKvnORfl+E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Dpk/wpymmR3VWewr/Uje/sibJr//+Qb5W3YfL9jmIQY8HOfULrqUFccVWOK/xD4fYgn+jfUH0asBBJ2lSPYRovFdhu81bXuB8EXPkyZH1fwNrn25Ulj9y6YfP8A+xSN9b6winPzU5UvamuU6W9IVz9iRnFMxCHI69xLMGTl069g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xqN4FL+j; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2cddf596321so44292201fa.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 03:02:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706007719; x=1706612519; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o5WaaYgxPRIpa+cm/eww9pybjfHe8k/X9h+aDZZrfgU=;
        b=xqN4FL+jMpBccicp9Zrckl8XvKDzeuQ+ITxk8cfPsBdCSbDsC8LTBPs3yKIEcjIxH7
         uAcN00lKvmxAOj1nopAOchWCHeJ3uP8nStJRlb9MPinEPL8cqOFTH9Jei63RlctONThP
         HHunZ4SzPuqS4Xc9svj49B9DCMjyHUyD5tGFfVb5tvhxw13MPWPZ2jrQkI4XF7aaB8N2
         w/uYMwkmey6+mi4+Tj/2Z/T6U7C9r3/FCwR67GDB6rcLRsGn6ss/ysGUCaUq49BX2PsD
         8ktbMotXrhGn6HFWhUDQsa+izjVLbxJOypNowLEEKvYrkbna2KBjUqNtXxPoVMCI7OWC
         MeGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706007719; x=1706612519;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o5WaaYgxPRIpa+cm/eww9pybjfHe8k/X9h+aDZZrfgU=;
        b=pwkqzlVV1eadnp/0RZDXBgLkQi+FVmSwTRJb0EhUbEIuT57LXJKDfQH+gX3NAMRjjK
         UaFfnxxuTnx138KNaUK1hn2MGHlp8wfTCTHuQ0ayyaCf/9OIAgwfQqYxWpz+Q/LG8zm1
         OkPzCZxHWwCVtwQLFN1mRPEU6Eigif62f4pgtW6EqKMsCSu4uRBIQIVXqWKpUC9R85cB
         gqMuqMKKAjceyF4RVklj8Zyq2ps4ZKnsztE4L7gV4bdZ3h4lEaOUsDh5CUSC9kfz4li+
         hSuolXoQ7gnM44Kx1OvwwzTDFAaBzNgs3V7rBj67K7R+33SOwQkZE4AXpeMfYe9yps+V
         BXMg==
X-Gm-Message-State: AOJu0YxAmRDFjeMb/MqLmXUQxWk7n0qCYJbqFxG+ywaXhHzlAG1eTI1Q
	LXI96CHEL4z+D7Kqv6pjD/zU4GN83U/PByDdjVOh1VSPLRX3BtOCPIN0/wViPJ6O5rCnp+kF7Kj
	L
X-Google-Smtp-Source: AGHT+IHKtsCaNsXkr0/tQMWsX/YIjmclB/2S7p4pxJCHCYv0uC6mvmDekFPR/rTwXEy/d0NP9HW0zA==
X-Received: by 2002:a05:651c:1037:b0:2cf:15ec:b68b with SMTP id w23-20020a05651c103700b002cf15ecb68bmr280112ljm.95.1706007718751;
        Tue, 23 Jan 2024 03:01:58 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id fg7-20020a056402548700b005593c83bdafsm11430074edb.45.2024.01.23.03.01.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 03:01:58 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 23 Jan 2024 13:01:19 +0200
Subject: [PATCH v4 05/11] arm64: dts: qcom: x1e80100: Add TCSR node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240123-x1e80100-dts-missing-nodes-v4-5-072dc2f5c153@linaro.org>
References: <20240123-x1e80100-dts-missing-nodes-v4-0-072dc2f5c153@linaro.org>
In-Reply-To: <20240123-x1e80100-dts-missing-nodes-v4-0-072dc2f5c153@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=878; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=HYLSQEPjLTHsLCOtnQWyK+73kxtr4D0UNDKvnORfl+E=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlr5yWIFLURlTkCS0NDMhAha55dDELUlApp8GSv
 UzFxRaGvTOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZa+clgAKCRAbX0TJAJUV
 VpnLD/sHE0/psYj/Qs8B/z+9sUSjEoh3aTgjIhEhyYs6ZxYiKmdmB+5uK2LNRgtElLfJEWLYBR/
 RfuDwVDlrO9yseXDzp1JKY3eHoSSq9A5U/tiaDHu0OH9FzmPqAX2SAY9fe+IYLGTg3RBrhi3HjN
 hGavqjuNWzwR9oAdJCPlCRJ4kFXMZJcQTJJ/EJWy5sTYk60kDplCCvHzeI/Q4aHBg9w3HLLlU7z
 QvWE41uVIRPwmZCEhgPDlIGBruUS67qaAqSo0gIYpCTuu5ysV2FoIdXvHocPdFd64Kmf+cWIdn6
 VD+hsFZrBzYHDfc6r/PF8csIdfDz3Tgmaw7YyckZqy+66qxtwCjmDbcSMdB+CUMcEjBb5OJIwVi
 aVOqtUUObMJMLitEOLTeY7Rwj4NozAXqQ+nmKWGQiJJlok8TQTOakdfnQjJNz60HOi+CUQjHla0
 jRj/eNftZj5A9HsPT6Zm5kMxTVKiVxGlSTYHI70O8FicHhm/26OIBZmoBY/baFvLKDOkhgnmi5k
 WXai4pBx1iC4DDBCXyGSAbmGd5Op1lhZtZkJNA6jXyK5Vrm5C0f4yJE7JkNFTtFua1wAxMBiD1h
 O1k1m6pUKrVD31sJOj9KTZvTjZ9zSz3Fk6tiHm9ue15Foi9CidlUZygWfcRCxdktprTHEFHQVLI
 3ZXy5CUIASnTc9g==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add the TCSR clock controller and halt register space node.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index be69e71b7f53..2b6c55a486b2 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -2606,6 +2606,14 @@ tcsr_mutex: hwlock@1f40000 {
 			#hwlock-cells = <1>;
 		};
 
+		tcsr: clock-controller@1fc0000 {
+			compatible = "qcom,x1e80100-tcsr", "syscon";
+			reg = <0 0x01fc0000 0 0x30000>;
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+		};
+
 		gem_noc: interconnect@26400000 {
 			compatible = "qcom,x1e80100-gem-noc";
 			reg = <0 0x26400000 0 0x311200>;

-- 
2.34.1


