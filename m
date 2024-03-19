Return-Path: <devicetree+bounces-51734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BB9880207
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 17:22:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0CA8F1F2230E
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 16:22:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7798112838B;
	Tue, 19 Mar 2024 16:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dDwEOCR7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6930127B6A
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 16:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710864856; cv=none; b=exJxkf7wVzgpfsHZZI1NzkDMX15B/it4FTORSA+MyO590OO01r74kYQhHO3O9CEmD+NQu7elOJ4uO793TEB8+lFQhji/euUHeK7Re2Stv5pRJ+pE4QMSBEFtuV8E+THiGz5zt0ShBtVoOywf25i+paO0aviMVJrH/tzGTaXVM9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710864856; c=relaxed/simple;
	bh=C1WwkTnF4D51zKxLRgtTi7neKO7FUlW1WZehIPRagUM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WQK7RebJExPhUgPyAyjLuf6Qw5uiOtE3MHbQ+7XmygwHRWRdZYTw8LBD6nYNPP2V7+8A+MVlin42MnSYcBuzsxp/oPz2WomSqPxW/cx0NUEYQm3GbLzpQRnxJxUkswOQ2nZazy4ZqskslGUoE7bTUxIjkDCAgLn/H6uiHdjTZr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dDwEOCR7; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-515830dc79cso758158e87.1
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 09:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710864852; x=1711469652; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VE7A1TMqiKAqmFzW6nlWEzBc38jwIdf+oOhpNZjQBgs=;
        b=dDwEOCR7VW56O/7jQOeucTWq+b1EtjyBDgf6+7e3c1VbctQ9BHENidEj2iTC7gOg3L
         lWOqFZmgHH7XbjiMbWY7yaVVpMWUehoL8YlXF8F74AhfLBIcfdFpL8PDL9oXYHCUw6W3
         xXHRwMQmmacqjBaEigAzcRJcHh0lP894W6skbgPRQS9jNir/knY9pVaEVEOIcrDWGgcb
         6D/g2BoQLRxu4eUjnKKTfRdbaj/MFTUSuMLalQorSRzb9aTStT2azoZWPYvFmUVq6j3Z
         p0EeUXeExg6bLbeMHheb1dpQscFE4WDXW921HlbPON6SUUGlhvaluKeRo+D9XDQFUlp3
         93Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710864852; x=1711469652;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VE7A1TMqiKAqmFzW6nlWEzBc38jwIdf+oOhpNZjQBgs=;
        b=R/2GfeYXx7ePS3mKUnU+77rtVNYjCiUwkD+IFew8rlqPEsy/suD0b+daTUsSUaaqjI
         XgjNY6xAppqvClPUJuEH4Vf6FgzBH2+v545zF+8DYaWBgjxQnfa/mopQDaThPBaQftLr
         /Nb7hSf99sNao/VWE3oM9XmZtv+vC1m1tYhFXccQOhucS4YWbWcrSSWGCbU8DRDrly5t
         +RtJMvVSCUluv7/IlXpMuJzw6kIvmr9IB4yXHcR5e4CfoDZmoEgRs9O5YLufyDNqYEh0
         sgxlSHLWF4EDi6RocmbYmR+J48OZb/IOqpjqXIqK2uGB6QqK5C2gxiMCzO362+XdM5hQ
         Z0bw==
X-Forwarded-Encrypted: i=1; AJvYcCXEEAps71jPK5oh1KOpjVGFrcL+DWVZFNt5ssoUmma4+vH3I9cuPUTUaO+H0txBcgrxb4ROzn3FPabU3nmKurSMR6FyltTgcnIvMg==
X-Gm-Message-State: AOJu0YwLguVvDWz6wrxh2Bb98Y/s8TbupqzJriZGsTqWJsfDpBsjr5TS
	nVVedZ09MmgLZAPcZMvCwegGBsWjKWr9VRlmJ4Te4DFN0Jd+V5Oixii2iPWZuB4=
X-Google-Smtp-Source: AGHT+IG9nJYuESJlyiQ7awgWZhAwPnAQNG+SHgHrl9DiIHJkT+cc5Zh1SDoCpiSoJ/eFSy9gFswN4Q==
X-Received: by 2002:ac2:4985:0:b0:513:9f14:8f73 with SMTP id f5-20020ac24985000000b005139f148f73mr10387113lfl.36.1710864852401;
        Tue, 19 Mar 2024 09:14:12 -0700 (PDT)
Received: from [127.0.1.1] (netpanel-87-246-222-29.pol.akademiki.lublin.pl. [87.246.222.29])
        by smtp.gmail.com with ESMTPSA id dx9-20020a0565122c0900b00513ee207982sm607686lfb.198.2024.03.19.09.14.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 09:14:12 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 19 Mar 2024 17:14:01 +0100
Subject: [PATCH 31/31] arm64: dts: qcom: sm8650-*: Remove thermal zone
 polling delays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240319-topic-msm-polling-cleanup-v1-31-e0aee1dbcd78@linaro.org>
References: <20240319-topic-msm-polling-cleanup-v1-0-e0aee1dbcd78@linaro.org>
In-Reply-To: <20240319-topic-msm-polling-cleanup-v1-0-e0aee1dbcd78@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.13-dev-0438c

All of the thermal zone suppliers are interrupt-driven, remove the
bogus and unnecessary polling that only wastes CPU time.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 88 ------------------------------------
 1 file changed, 88 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index ba72d8f38420..f7707c155696 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -5091,8 +5091,6 @@ compute-cb@8 {
 
 	thermal-zones {
 		aoss0-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 0>;
 
 			trips {
@@ -5111,8 +5109,6 @@ aoss0-critical {
 		};
 
 		cpuss0-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 1>;
 
 			trips {
@@ -5131,8 +5127,6 @@ cpuss0-critical {
 		};
 
 		cpuss1-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 2>;
 
 			trips {
@@ -5151,8 +5145,6 @@ cpuss1-critical {
 		};
 
 		cpuss2-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 3>;
 
 			trips {
@@ -5171,8 +5163,6 @@ cpuss2-critical {
 		};
 
 		cpuss3-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 4>;
 
 			trips {
@@ -5191,8 +5181,6 @@ cpuss3-critical {
 		};
 
 		cpu2-top-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 5>;
 
 			trips {
@@ -5217,8 +5205,6 @@ cpu2-critical {
 		};
 
 		cpu2-bottom-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 6>;
 
 			trips {
@@ -5243,8 +5229,6 @@ cpu2-critical {
 		};
 
 		cpu3-top-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 7>;
 
 			trips {
@@ -5269,8 +5253,6 @@ cpu3-critical {
 		};
 
 		cpu3-bottom-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 8>;
 
 			trips {
@@ -5295,8 +5277,6 @@ cpu3-critical {
 		};
 
 		cpu4-top-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 9>;
 
 			trips {
@@ -5321,8 +5301,6 @@ cpu4-critical {
 		};
 
 		cpu4-bottom-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 10>;
 
 			trips {
@@ -5347,8 +5325,6 @@ cpu4-critical {
 		};
 
 		cpu5-top-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 11>;
 
 			trips {
@@ -5373,8 +5349,6 @@ cpu5-critical {
 		};
 
 		cpu5-bottom-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 12>;
 
 			trips {
@@ -5399,8 +5373,6 @@ cpu5-critical {
 		};
 
 		cpu6-top-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 13>;
 
 			trips {
@@ -5425,8 +5397,6 @@ cpu6-critical {
 		};
 
 		cpu6-bottom-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens0 14>;
 
 			trips {
@@ -5451,8 +5421,6 @@ cpu6-critical {
 		};
 
 		aoss1-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 0>;
 
 			trips {
@@ -5471,8 +5439,6 @@ aoss1-critical {
 		};
 
 		cpu7-top-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 1>;
 
 			trips {
@@ -5497,8 +5463,6 @@ cpu7-critical {
 		};
 
 		cpu7-middle-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 2>;
 
 			trips {
@@ -5523,8 +5487,6 @@ cpu7-critical {
 		};
 
 		cpu7-bottom-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 3>;
 
 			trips {
@@ -5549,8 +5511,6 @@ cpu7-critical {
 		};
 
 		cpu0-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 4>;
 
 			trips {
@@ -5575,8 +5535,6 @@ cpu0-critical {
 		};
 
 		cpu1-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 5>;
 
 			trips {
@@ -5601,8 +5559,6 @@ cpu1-critical {
 		};
 
 		nsphvx0-thermal {
-			polling-delay-passive = <10>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens2 6>;
 
 			trips {
@@ -5621,8 +5577,6 @@ nsphvx1-critical {
 		};
 
 		nsphvx1-thermal {
-			polling-delay-passive = <10>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens2 7>;
 
 			trips {
@@ -5641,8 +5595,6 @@ nsphvx1-critical {
 		};
 
 		nsphmx0-thermal {
-			polling-delay-passive = <10>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens2 8>;
 
 			trips {
@@ -5661,8 +5613,6 @@ nsphmx0-critical {
 		};
 
 		nsphmx1-thermal {
-			polling-delay-passive = <10>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens2 9>;
 
 			trips {
@@ -5681,8 +5631,6 @@ nsphmx1-critical {
 		};
 
 		nsphmx2-thermal {
-			polling-delay-passive = <10>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens2 10>;
 
 			trips {
@@ -5701,8 +5649,6 @@ nsphmx2-critical {
 		};
 
 		nsphmx3-thermal {
-			polling-delay-passive = <10>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens2 11>;
 
 			trips {
@@ -5721,8 +5667,6 @@ nsphmx3-critical {
 		};
 
 		video-thermal {
-			polling-delay-passive = <10>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 12>;
 
 			trips {
@@ -5741,8 +5685,6 @@ video-critical {
 		};
 
 		ddr-thermal {
-			polling-delay-passive = <10>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 13>;
 
 			trips {
@@ -5761,8 +5703,6 @@ ddr-critical {
 		};
 
 		camera0-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 14>;
 
 			trips {
@@ -5781,8 +5721,6 @@ camera0-critical {
 		};
 
 		camera1-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens1 15>;
 
 			trips {
@@ -5801,8 +5739,6 @@ camera1-critical {
 		};
 
 		aoss2-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens2 0>;
 
 			trips {
@@ -5821,8 +5757,6 @@ aoss2-critical {
 		};
 
 		gpuss0-thermal {
-			polling-delay-passive = <10>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens2 1>;
 
 			trips {
@@ -5841,8 +5775,6 @@ gpuss0-critical {
 		};
 
 		gpuss1-thermal {
-			polling-delay-passive = <10>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens2 2>;
 
 			trips {
@@ -5861,8 +5793,6 @@ gpuss1-critical {
 		};
 
 		gpuss2-thermal {
-			polling-delay-passive = <10>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens2 3>;
 
 			trips {
@@ -5881,8 +5811,6 @@ gpuss2-critical {
 		};
 
 		gpuss3-thermal {
-			polling-delay-passive = <10>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens2 4>;
 
 			trips {
@@ -5901,8 +5829,6 @@ gpuss3-critical {
 		};
 
 		gpuss4-thermal {
-			polling-delay-passive = <10>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens2 5>;
 
 			trips {
@@ -5921,8 +5847,6 @@ gpuss4-critical {
 		};
 
 		gpuss5-thermal {
-			polling-delay-passive = <10>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens2 6>;
 
 			trips {
@@ -5941,8 +5865,6 @@ gpuss5-critical {
 		};
 
 		gpuss6-thermal {
-			polling-delay-passive = <10>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens2 7>;
 
 			trips {
@@ -5961,8 +5883,6 @@ gpuss6-critical {
 		};
 
 		gpuss7-thermal {
-			polling-delay-passive = <10>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens2 8>;
 
 			trips {
@@ -5981,8 +5901,6 @@ gpuss7-critical {
 		};
 
 		modem0-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens2 9>;
 
 			trips {
@@ -6001,8 +5919,6 @@ modem0-critical {
 		};
 
 		modem1-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens2 10>;
 
 			trips {
@@ -6021,8 +5937,6 @@ modem1-critical {
 		};
 
 		modem2-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens2 11>;
 
 			trips {
@@ -6041,8 +5955,6 @@ modem2-critical {
 		};
 
 		modem3-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&tsens2 12>;
 
 			trips {

-- 
2.40.1


