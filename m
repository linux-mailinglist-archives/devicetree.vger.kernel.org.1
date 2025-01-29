Return-Path: <devicetree+bounces-141694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8E4A21FFC
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 16:08:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D33141886575
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 15:08:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D0D11DD0C7;
	Wed, 29 Jan 2025 15:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nwtVijav"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D865F191F95
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 15:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738163301; cv=none; b=iBSQVw41cv1fPMWNgHo5iCkylm6UkeD4Hhk2UC9GTNjq/zOyZPBsteSYf0rgNNOmaHNoviFpqIYqccWKY5FTC++CimGFD6jWH5R/m7hqAW6zopKVfmLkdrf9pGosE+EMQnx/iQwwnuBSq7JCNo4PdQb14WCPwTz9Zr8wurm2w+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738163301; c=relaxed/simple;
	bh=QJk/y35AN758snCIGT5lwTN72HdUsNszcu5pu5zpxCo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=iNPlQ0X9K9gc2kKwHTOSq8gXO925KQI+bNVtemGGRvAlG7AtiTRD6k8JXP2O6spOanVd+7e2NtnAsCDGVQHUlNEOqg0BYyK6DR+Ste56Hv40kcj1nAULalIQ2RYzM652ZcCOBLigCm7hqsJ4zOjwCCc5mE6Q7QockgUPLcYlPes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nwtVijav; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-436a39e4891so47372255e9.1
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 07:08:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738163297; x=1738768097; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2CYRb3v3Cd5U02FZotlhRzeAbSddoQoKFeq32vyUsjI=;
        b=nwtVijavNZkeomO6rziHJKrdhB2CSjhIJN7ANLCAYBBG4E7KetNaIC1dgG/JvAkM6p
         Yl26MmB3xXM9KgL5BRw2K5HFQUTiXCy/8JxJ06c44n+t2uVBjP4eWlKnEI9AL9o2Bgho
         5WiqQu7QhFbj1/7XvOjabAjT7Bd+1puzh22SmxMLL+yr99mk8XAwAa3uaWs7E2FwmX1M
         W5aeq6yPNLk1F/SFFp15m+Tibl/4kC/Nf8ekR3AFIKGGEgt8AWdq/rcoWWDYIFvaFoXm
         PoTxOJHAohL9D8abU1wldp8Hl/IKagw1OqeEE4cWV1/OnmPle6UgGBSaPKRoE1YEvMa2
         yYsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738163297; x=1738768097;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2CYRb3v3Cd5U02FZotlhRzeAbSddoQoKFeq32vyUsjI=;
        b=Uk7RbdWBZcCEYKSWZAEvgi7gl75/bFR0a7YaKcjY9RdK/dayj2342qo39JiA5I8wqT
         f1V4h1ubqwGWhzexcC1yZxsf4PWFYu571pAfSR54tXKpzBEzMhldVc9XGc28dCdtjlHn
         WOMgeplAJOwc/dASG9dNIa4t6ZPLOTfqphAPEOlsRcLp7xBmRPcgItfwQuMeaC2Wk98A
         T1uQnrL0UQw4ec2anG597y4sVVCjq4f+mx3alnCT4u8mmA94TbFKnlXrDlzEK21Y7/Qn
         2FoWZ+8cDWAGVTwc3GwGridp60uw2BAiccIHW0TFizrgpaPWZvGkqJovvD9FRV0wgoBo
         dklQ==
X-Forwarded-Encrypted: i=1; AJvYcCU5L336Qv5fnesyzM9UBk6ng0Jjam568Do0RD4v1Ba4DDfVnaBKIOda1/EsipJYS5sjDBGce0RcUKTI@vger.kernel.org
X-Gm-Message-State: AOJu0Yw67bOKtN0SQcHfqXD5L2TtHDvv3V9YcDXHQIgdG15e4eeofVTz
	zB0dvAC543ZuQmbNYJjIMgB0p1o3r8FnXCH3sDP2QJgnK70hMrcMJnqemmsWvxMje0BCvRIODMW
	u
X-Gm-Gg: ASbGnctubzSlUQHUySE/Fn+mVhY5BG/zPhYpM5x1SPADDSDhSQyAXz+b70udbyJ+LgA
	6wDy+d0SSEOOiYq8ZKIPkQPirsRcG0bkDO/Ze7sNyZ7yXmufDF/Cvykb4qIR/3bUxC4g+co7ilo
	Zu/KDEumVMIZHnmRGKP3r74H8M1Ih/Ev5f9F689FXrCY7/xGAvOPpHhl5dZEz46RORXn7XfW010
	RJ2oAlgDJ6GUeS4jw13ltkeE0/BIRuMewfwyFGUa9++tPMG67yunr5cBsaHplogzrS1AgZ+gii5
	IQYrtI5q+ATMLbP61e8R37XuAF2EAuk02EOR
X-Google-Smtp-Source: AGHT+IE7tnyp1BSUltFDXXRCRiqoj51wxvf9f6x8qK5ob4tr7y38tljmGCcys/yA6u7yk0W8JQZNrw==
X-Received: by 2002:a05:6000:d43:b0:386:2aba:a7f6 with SMTP id ffacd0b85a97d-38c520b9643mr2343166f8f.49.1738163296975;
        Wed, 29 Jan 2025 07:08:16 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a1c3994sm17011531f8f.81.2025.01.29.07.08.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 07:08:16 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 29 Jan 2025 16:08:15 +0100
Subject: [PATCH v2] arm64: dts: qcom: sm8650: add all 8 coresight ETE nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250129-topic-sm8650-upstream-add-all-coresight-cpus-v2-1-c62549307e01@linaro.org>
X-B4-Tracking: v=1; b=H4sIAF5EmmcC/53NQQ6DIBCF4asY1p0GUKl21Xs0LiiMOokKATRtj
 Hcv9Qhd/m/xvp1FDISR3YudBdwokltyyEvBzKiXAYFsbia5rLmQLSTnyUCcG1VzWH1MAfUM2lr
 Q0wTGBYw0jAmMXyPoshKN4upV1hXLlz5gT++Te3a5R4rJhc+pb+K3/gltAgS0qm2VLW+2b/Ax0
 aKDu7owsO44ji9SXFDO6QAAAA==
X-Change-ID: 20250129-topic-sm8650-upstream-add-all-coresight-cpus-a3418606b354
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Yuanfang Zhang <quic_yuanfang@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4302;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=QJk/y35AN758snCIGT5lwTN72HdUsNszcu5pu5zpxCo=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnmkRfk/CLYC29WNARvYq24dlh+YrvybckuSrD2woD
 htVCi5GJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ5pEXwAKCRB33NvayMhJ0VibEA
 CmcW3qfqDRfZgnngVTM6jSGaSTMA7bkLj1GUAYueTfpwWA90xLz4S4OgMBLGZKAO7PJJKLvJe8vtTh
 IPG0lsrVMBFOY8hNUzGx8o603lhAUa4kewCOp7WIXUCe2RjPB22fvS0MuyD/3Z3aZFyMGYmd2jIaMC
 PdztpNZIeVpKDazzDZT8skZxRL9czQ+Ol6EdOOsffcI5BB4EHeVwC/fOAjmFxtfveAODFxRfyRViB8
 xQysMH38dcl4FBxuq+y26Mc3nOK6IRxOv/YkOwP5B9NfczbTNNygGGG7/I5CmceE1ukIkWi/DB9dMZ
 w9aChnLn1kgbwQ/CyCAxYTohc8QHS+0yGbdV4Ri0PSO2C5L2zxXHVI0px3NjqVSAKvwM8Dp54U3yWY
 B5tblVVq1c2euLIJFgouUmtZMlRSjhKUTVrnYzo57oHKmYTBKITEw63hq71ew0xfZA9hbhaGT1VDTZ
 IBxJGb6zz+jedmPyCFBHxm+5Eb/iMzB6J9i+9GE6MVuJUmoGKv0lR5YqwmUZ6hsEZHxiwBp4Dc1Qo+
 4ByKUuoGEvaQOOyVF7HPwb3x5oLZzesiltkaQSSxvmvqBBpv6Max9zgq3nGgX876Ce3CgjDXgI5TZD
 GOJ/IjInYSraNF5Fq0lk3eVSEkgdQIUhm6RCeMoqUQJwGQr3V4ZvsfXZRzcg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Only CPU0 Embedded Trace Extension (ETE) was added, but there's one
for all 8 CPUs, so add the missing ones.

Fixes: 256e6937e48a ("arm64: dts: qcom: sm8650: Add coresight nodes")
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- fixed the 7/8 cpu wording
- added the sm8650 prefix
- add review tag
- Link to v1: https://lore.kernel.org/r/20250129-topic-sm8650-upstream-add-all-coresight-cpus-v1-1-96996d37df8e@linaro.org
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 163 ++++++++++++++++++++++++++++++++++-
 1 file changed, 161 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 86684cb9a9325618ddb74458621cf4bbdc1cc0d1..d925d5e2c8182d522dd5b8e1fa0e253f5de2f7a7 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -365,7 +365,7 @@ cluster_sleep_1: cluster-sleep-1 {
 		};
 	};
 
-	ete0 {
+	ete-0 {
 		compatible = "arm,embedded-trace-extension";
 
 		cpu = <&cpu0>;
@@ -379,15 +379,174 @@ ete0_out_funnel_ete: endpoint {
 		};
 	};
 
+	ete-1 {
+		compatible = "arm,embedded-trace-extension";
+
+		cpu = <&cpu1>;
+
+		out-ports {
+			port {
+				ete1_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete1>;
+				};
+			};
+		};
+	};
+
+	ete-2 {
+		compatible = "arm,embedded-trace-extension";
+
+		cpu = <&cpu2>;
+
+		out-ports {
+			port {
+				ete2_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete2>;
+				};
+			};
+		};
+	};
+
+	ete-3 {
+		compatible = "arm,embedded-trace-extension";
+
+		cpu = <&cpu3>;
+
+		out-ports {
+			port {
+				ete3_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete3>;
+				};
+			};
+		};
+	};
+
+	ete-4 {
+		compatible = "arm,embedded-trace-extension";
+
+		cpu = <&cpu4>;
+
+		out-ports {
+			port {
+				ete4_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete4>;
+				};
+			};
+		};
+	};
+
+	ete-5 {
+		compatible = "arm,embedded-trace-extension";
+
+		cpu = <&cpu5>;
+
+		out-ports {
+			port {
+				ete5_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete5>;
+				};
+			};
+		};
+	};
+
+	ete-6 {
+		compatible = "arm,embedded-trace-extension";
+
+		cpu = <&cpu6>;
+
+		out-ports {
+			port {
+				ete6_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete6>;
+				};
+			};
+		};
+	};
+
+	ete-7 {
+		compatible = "arm,embedded-trace-extension";
+
+		cpu = <&cpu7>;
+
+		out-ports {
+			port {
+				ete7_out_funnel_ete: endpoint {
+					remote-endpoint = <&funnel_ete_in_ete7>;
+				};
+			};
+		};
+	};
+
 	funnel-ete {
 		compatible = "arm,coresight-static-funnel";
 
 		in-ports {
-			port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
 				funnel_ete_in_ete0: endpoint {
 					remote-endpoint = <&ete0_out_funnel_ete>;
 				};
 			};
+
+			port@1 {
+				reg = <1>;
+
+				funnel_ete_in_ete1: endpoint {
+					remote-endpoint = <&ete1_out_funnel_ete>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+
+				funnel_ete_in_ete2: endpoint {
+					remote-endpoint = <&ete2_out_funnel_ete>;
+				};
+			};
+
+			port@3 {
+				reg = <3>;
+
+				funnel_ete_in_ete3: endpoint {
+					remote-endpoint = <&ete3_out_funnel_ete>;
+				};
+			};
+
+			port@4 {
+				reg = <4>;
+
+				funnel_ete_in_ete4: endpoint {
+					remote-endpoint = <&ete4_out_funnel_ete>;
+				};
+			};
+
+			port@5 {
+				reg = <5>;
+
+				funnel_ete_in_ete5: endpoint {
+					remote-endpoint = <&ete5_out_funnel_ete>;
+				};
+			};
+
+			port@6 {
+				reg = <6>;
+
+				funnel_ete_in_ete6: endpoint {
+					remote-endpoint = <&ete6_out_funnel_ete>;
+				};
+			};
+
+			port@7 {
+				reg = <7>;
+
+				funnel_ete_in_ete7: endpoint {
+					remote-endpoint = <&ete7_out_funnel_ete>;
+				};
+			};
 		};
 
 		out-ports {

---
base-commit: da7e6047a6264af16d2cb82bed9b6caa33eaf56a
change-id: 20250129-topic-sm8650-upstream-add-all-coresight-cpus-a3418606b354

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


