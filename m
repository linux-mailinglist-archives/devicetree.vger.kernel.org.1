Return-Path: <devicetree+bounces-159713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 79807A6BD86
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 15:49:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A61903B0408
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 14:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 517A91E22FA;
	Fri, 21 Mar 2025 14:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="WDvwZhNp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A271D5177
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 14:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742568355; cv=none; b=FUlDN4RYtUhy0e/j7GZay4pw3sgnlX+DxfnEyb5cyYerIiDccT3oEuKvmjJl34amztAmzvU+XlgE/BiaXy6b2d1h9SkwRJcSY4seykiI/2VOgvnGTIP9yFlQTXdh7yMovWJ3iD5U/cdswHYTHwrvPpJW6VgUj6LZknywKJHprP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742568355; c=relaxed/simple;
	bh=fBxL88tfFgu4vPWkBQ8cd2kEnZv6myN9L9eGEfufx8o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n9dwAdIud8iDwdqXi6S14TY/q1iAOOlnYnZIyojUjHlltKs/5It7iSRTAe1j7Kzmxr+Fn4rpEHEkSOv7QdQIZA1/8o37gFuh4xrvYhQEOi4c3ClEQeuSh/jC5VyZH3gntEQJ074YfeOUo/aQGajFHqcL93YB3xaenVPdpbwE7i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=WDvwZhNp; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ac2aeada833so384740666b.0
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 07:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1742568350; x=1743173150; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vhNOdkQVVIt/vsEdwwj+oY1HmQH9nhKvG0mvmibQd4s=;
        b=WDvwZhNpsJb6BbvFCAM8o5mO/cHO1kPWkTMYi6YWlhOrReYiI106WddcOwvB32k+p7
         cRoSsHCHgpXbrIElznEMSHUNzn9skdzxuSvSYlpqZFYZmIi+lL26OZXYCK008sRiFaaI
         dcigaJFLuRHbGVGHXKXRd2gP4x4xFDP0o27qo15SFRMsBEi/Ey43J6R+ezzN3dd23xrW
         6gu1OT7MUx5CeRcN8UWuuUKax7UmNpa4TmFac+NemSAi+Oi8oupIoqxI0uRF93rb15fq
         tVNekQHdkEjNV0VfEnpHCFJRRc8tE7eoQD0m3Q1OeiPzNaK+DULdIWstjBf4FqLxylib
         nTsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742568350; x=1743173150;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vhNOdkQVVIt/vsEdwwj+oY1HmQH9nhKvG0mvmibQd4s=;
        b=rmUupUEjVjpnaURSEH8hpuvFTOpWlF5jSlFFxUcsmhgh/LYlqs6K4BdAUm8Jqo7H55
         D0K0+gIdipwwRoot078AvsQReyrKN+c0xIJLaIeaL+rTSvkfoDewdUTxDln4z8QEWI0J
         W4aQT/wdfu9PqyaUE9fD4ff5eZqFjCXspZ7ryj9efL+nzYai9lMF2iii3c739JWYc6aJ
         IDzbq1oDKVJXohigOoKZzBBgQEUw8NHx15trhdb7UfctGaIiGpjV36dwh7aJVRIQZwM0
         xPl/11i6VSbmJpt/+ojT8r3yctwtRrPxyq9D2cSh5110G+6hrL/Ky0CqZYgBm4JVrcvX
         vXCA==
X-Forwarded-Encrypted: i=1; AJvYcCVyQKnhkZV2xieX86DXeo4pJQmzLsSDMUlXcPcEeexbf5OHsOsUFhRlERJiDvCFfi7Z1EOHDSTctb3J@vger.kernel.org
X-Gm-Message-State: AOJu0YzJfepLGT3J3ebWrNB3LNrw9hXQ5rT+qAGKPtVgdZ1lkrWV5Uib
	7rllU4KKsr2ZcNgu8JLS8NMCeCrxXtUhNndSd1jzuqCSktF0bGSulMUp9VYzRsQ=
X-Gm-Gg: ASbGnctZiUoqH1fqRmYooAGd2UmJVdcFJS9s376vAk9eArS5g58oqmduvKLM2I/9FYX
	3YikUcbcLJ3R9Z4sk9O4SlWMg0q8eeMCwR55INwzjx1lonZ41h0JVOJK6WFBqnGI/nKucGqVuiZ
	KSCMdDmZRiLp+TkYCDzUXxmFYxbtqDVWapJxXEiaqovXpX7pWyvIGhds1sjoFt3UVLKQUYXWIFp
	g9z+2fUOGDcpGeO3+4Q0yvnB16u3k4ztjjzjshByPGWW8pTCz2k9pJ7Nm3trIU5JxjxHURYkooP
	eLLurNAEbTWsvpgIoB3q+dIu23hIt1vNGYCxGlopfi7E0+CJau77FSw5Rp8RtB9Dotdda8QtU0M
	HmMfZ4+h5i/dfQ21+4Q==
X-Google-Smtp-Source: AGHT+IFrUo+XVApUPF24P18d3jsX7lNPxWfJoO0tS8bgXcfA90A6ILqy0CEkprg7D7hHpF5FLLZltg==
X-Received: by 2002:a17:907:d84d:b0:ac3:4228:6e00 with SMTP id a640c23a62f3a-ac3f00b2ef4mr438441866b.6.1742568350254;
        Fri, 21 Mar 2025 07:45:50 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3efb648acsm168092466b.98.2025.03.21.07.45.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 07:45:49 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 21 Mar 2025 15:45:01 +0100
Subject: [PATCH 3/3] arm64: dts: qcom: sm6350: Add video clock controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250321-sm6350-videocc-v1-3-c5ce1f1483ee@fairphone.com>
References: <20250321-sm6350-videocc-v1-0-c5ce1f1483ee@fairphone.com>
In-Reply-To: <20250321-sm6350-videocc-v1-0-c5ce1f1483ee@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Add a node for the videocc found on the SM6350 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 00ad1d09a19558d9e2bc61f1a81a36d466adc88e..ab7118b4f8f8cea56a3957e9df67ee1cd74820a6 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1952,6 +1952,20 @@ usb_1_dwc3_ss_out: endpoint {
 			};
 		};
 
+		videocc: clock-controller@aaf0000 {
+			compatible = "qcom,sm6350-videocc";
+			reg = <0 0x0aaf0000 0 0x10000>;
+			clocks = <&gcc GCC_VIDEO_AHB_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&sleep_clk>;
+			clock-names = "iface",
+				      "bi_tcxo",
+				      "sleep_clk";
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		cci0: cci@ac4a000 {
 			compatible = "qcom,sm6350-cci", "qcom,msm8996-cci";
 			reg = <0 0x0ac4a000 0 0x1000>;

-- 
2.49.0


