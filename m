Return-Path: <devicetree+bounces-14278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 375D67E3636
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 09:04:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 661571C20AA4
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 08:04:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E13B0D301;
	Tue,  7 Nov 2023 08:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QWY6apEL"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAFCD51C
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 08:04:25 +0000 (UTC)
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E214A11F
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 00:04:23 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-540c54944c4so10650814a12.1
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 00:04:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699344262; x=1699949062; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Np5GiWxnhnJTIZmvQ42ZbLK3zb8qYqvzz1ywPLj5Fog=;
        b=QWY6apEL0iQsHJcGG64hBAJO3Oxo08r1ByNohT6zUW3ZH/OvvlKokal8FgoJsNm+cH
         yDraLGwI02O6OuZNYSzj6QV/+VVtbfAV/WkBFdFMbOkU899WtdTT84ffu1WkW/uRpyuI
         lrZF/bucgfSnTrGvFXxrZzhD3oisxdjsp6r8vR5386xw4/EoaGGQE7e3GJ/BjOBarhEP
         05ZG/UL9rJNnBfk971JME+6cUbNqJsFJmHWHBdhFIoxk2BmV/enrUqT3PmlvQ3GMqhI0
         qd0hh9hb+z8OoLg1MBrCza+hPZvZfw3jhj+56JHW1mmPMyz/r11DrDfYeV0Ia9sIZwIU
         QG0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699344262; x=1699949062;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Np5GiWxnhnJTIZmvQ42ZbLK3zb8qYqvzz1ywPLj5Fog=;
        b=qrlsFDyEnerWvfNO2EaJB/qKeKYmE9TILsxUvkHE8tamgTzcb+30tdZUbdHXOsPg8d
         xF34N+/G7OgHOcZ/eDtSdtDbm87HmphbFj1rl4giiejOTsZOQXAWWcmZb71olJO0vgqi
         863UYF6vAtYXUUJJmn8dI6xBPoba2Cav3sYe0sfL9K0hgNTMmzISrXanF0BN8guZgDTL
         1g1FSMKz+lQWgzyed1+mM8qW6tqV9LXVt8+9RNuVaitwTMYDh7JPdRohOr27DhHqUuTu
         eLtyivH54qWMMaLLvE4B+Ksa9zHwE3PQFCWZMcdjzNQEDhWfY7uvrIra7tmGagbvdQE6
         HpqA==
X-Gm-Message-State: AOJu0Yx5bVQLYVuCYgL5VPzfKc94titlO5aJyyux6vs10mfXFVxqXg7V
	Rsl/d0+JACu71rDOHu7OaMZdrA==
X-Google-Smtp-Source: AGHT+IESPzRu8d3bmRhFVHYtA270mHLRaGxGZUe/OXqIPmru/RxNuH764q2aVss8Ii+r/uaIQ6HgCw==
X-Received: by 2002:a50:8701:0:b0:544:978f:bdd9 with SMTP id i1-20020a508701000000b00544978fbdd9mr1598889edb.12.1699344262487;
        Tue, 07 Nov 2023 00:04:22 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id r15-20020a50aacf000000b00544f8271b5fsm83449edc.8.2023.11.07.00.04.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 00:04:22 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: qcom: qdu1000-idp: drop unused LLCC multi-ch-bit-off
Date: Tue,  7 Nov 2023 09:04:17 +0100
Message-Id: <20231107080417.16700-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231107080417.16700-1-krzysztof.kozlowski@linaro.org>
References: <20231107080417.16700-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is no "multi-ch-bit-off" property in LLCC, according to bindings
and Linux driver:

  qdu1000-idp.dtb: system-cache-controller@19200000: 'multi-ch-bit-off' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/qdu1000.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qdu1000.dtsi b/arch/arm64/boot/dts/qcom/qdu1000.dtsi
index 618a101eb53a..89eff977d40e 100644
--- a/arch/arm64/boot/dts/qcom/qdu1000.dtsi
+++ b/arch/arm64/boot/dts/qcom/qdu1000.dtsi
@@ -1450,7 +1450,6 @@ system-cache-controller@19200000 {
 			reg-names = "llcc0_base",
 				    "llcc_broadcast_base";
 			interrupts = <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>;
-			multi-ch-bit-off = <24 2>;
 		};
 	};
 
-- 
2.34.1


