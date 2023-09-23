Return-Path: <devicetree+bounces-2695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC6C7AC2F6
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 17:01:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C6F02282A08
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 15:01:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E7BB1D68E;
	Sat, 23 Sep 2023 15:01:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 892F11D680
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 15:00:59 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F17651B5
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 08:00:57 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-405361bb94eso37013795e9.0
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 08:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695481256; x=1696086056; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vA79xyD+PI0yTnhfaRji6jl5WeCnlojw8Sdf795ardQ=;
        b=pLAtZWi52lNZyMgkzyD21GM66S2r19aRkyd3N35MDulpauOp/VD0CooNRRub/dad5a
         ePg9+dY43b4gro1G/Y8byDc6KAvgZ/c+CBwF3z4kEKuGtt1ZqAW2qjGO6rLqgKqYEI/M
         f4NkLiG+BWgsVwEKr+dxe8pF7tCi/G5FN2JnqnJysNBzhhxr70Y+up2bb5mGlDOht14v
         lbI1e6J7f4FkvP//mUQ8LdA5Oo4zS7y7NIcGB6IGYmOXxk1UKIfJfzpQIpbHVE9F5MPU
         ru4M4+36osmGtZACLWP3M+vY7x0if0ikvUKdi0Ek+VOOsu8+Fnc5zxb6AahA2XWQQChP
         mYVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695481256; x=1696086056;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vA79xyD+PI0yTnhfaRji6jl5WeCnlojw8Sdf795ardQ=;
        b=aarIqEC8OGm8LfPXOOjSTS+8YMjfet5uCiJeeX0WD8VHJTIp6yvx2SyQFqPHou+gt5
         vOyDhYoiG8dyF1dFMY9CVj/0cnYn6oK+5i9IuFD4PDub9SvgP/tVzDpb9n5rDLlGeVkE
         GV0U4p2TA8os0mSQXVuKkJKgU1sSlGNC0SnNHSDnIdxKhOOoipSKgSM8Khg5/sB1V2GV
         4ZDOXu178D0T399ESH/DTLJY3CEQVjSlAKcsgl3gVGRV6u/eg72oIQEKUr46Hguepee6
         33pKNfxsL40mwq3fCagdsfanDHm1f5Q1oVvpe2iWQdnYMKA5WZJFYKrGSK+ZAF0HcaMR
         1BZg==
X-Gm-Message-State: AOJu0YxT2OKbXZYpkamhbwDH9R5QbEYvWwEwFwnGpmIIwVrrSyEy93kk
	NpIZkZtI8pmbQ8t8WunjT+tR2Q==
X-Google-Smtp-Source: AGHT+IFer9fB1MpYho3IkwkJ6C0+JOEp2GkPhJjHoub4fFsQziH0jcjSVV8tvLVhn0zHn2yAw4294w==
X-Received: by 2002:a05:600c:2183:b0:3f9:b244:c294 with SMTP id e3-20020a05600c218300b003f9b244c294mr1856618wme.35.1695481256422;
        Sat, 23 Sep 2023 08:00:56 -0700 (PDT)
Received: from x13s-linux.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id m28-20020a05600c3b1c00b004053a2138bfsm5787006wms.12.2023.09.23.08.00.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Sep 2023 08:00:56 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: andersson@kernel.org,
	agross@kernel.org,
	konrad.dybcio@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jonathan@marek.ca,
	quic_tdas@quicinc.com,
	vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bryan.odonoghue@linaro.org
Subject: [PATCH 4/4] arm64: boot: dts: qcom: sc8280xp: Add in CAMCC for sc8280xp
Date: Sat, 23 Sep 2023 16:00:45 +0100
Message-Id: <20230923150045.1068556-5-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230923150045.1068556-1-bryan.odonoghue@linaro.org>
References: <20230923150045.1068556-1-bryan.odonoghue@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add in CAMCC for sc8280xp. The sc8280xp Camera Clock Controller looks
similar to most of the sdmX, smX and now scX controllers.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index cad59af7ccef..dad4894f358c 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -3450,6 +3450,21 @@ usb_1_role_switch: endpoint {
 			};
 		};
 
+		camcc: clock-controller@ad00000 {
+			compatible = "qcom,sc8280xp-camcc";
+			reg = <0 0x0ad00000 0 0x20000>;
+			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK_A>,
+				 <&sleep_clk>;
+			clock-names = "iface", "bi_tcxo", "bi_tcxo_ao", "sleep_clk";
+			power-domains = <&rpmhpd SC8280XP_MMCX>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		mdss0: display-subsystem@ae00000 {
 			compatible = "qcom,sc8280xp-mdss";
 			reg = <0 0x0ae00000 0 0x1000>;
-- 
2.40.1


