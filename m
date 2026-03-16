Return-Path: <devicetree+bounces-275876-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBxQN5lZt2nwQAEAu9opvQ
	(envelope-from <devicetree+bounces-275876-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:15:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 482BD29357C
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:15:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9CAA13040765
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 01:13:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE5FC23507C;
	Mon, 16 Mar 2026 01:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H7MfF2sM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FEC624A078
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:12:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773623583; cv=none; b=uAC/adK7FVRsrwlxqvC2byrASa1beJRLafDq9qEiCSYCWq6MskErWIZWPNneliQL9rOqcyBL1HXhMOBH6YA4kBrUS73Do3ecSVvXjVHjy1F4U0Jxdj+16fRegu04I8HzWAuyv6cc7uXMBo3zvWU7XBuGgEYHcP3u/xh503ksujc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773623583; c=relaxed/simple;
	bh=BLleNWxonxV9tOc0LMwQUQMx91HyaoyTOdZPoCkkiUo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sXB82MqRzKW2UUC+sIlwuGMaHa58AZNDatv97OrU7bJ+KwC/Ijvka651KhP3hROX3ebsNtGV4GTGlynQ8l0F2boelpx9fuPvXkgHeK5WGtxTD5sQ7Frf/2YTH2EV+0eYVrKYzUFtBTfugBcsEWzvFzNS7/K3mWb7XXrona3Lw9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H7MfF2sM; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-48534b59cf3so35490465e9.2
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 18:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773623577; x=1774228377; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qhZXtN5FXNWuWH7Q+3Ir4ViwJXN59VSLO5iJaxwXVMc=;
        b=H7MfF2sMAEM8woKeoH+/FVvDzl0Coalc1auurxNw9DITr2IoSW53tyCj+n9mRkIcg3
         KTxtvP5kwDIozEh6t4q141ZB+eKFK60xPN5z5xlnbvOjD86A1ZIbRTS0CgqmYqQ4rF4+
         dANTwm/zSa241HmxO6GOmilOgtwprx/5BjyuiNF8OS73yZtak9CAWJ/KVzLj0Rr7sMue
         +GELPdiak8/ijO11zSl/NwEcgO08gVNwkhdCmgIYtmYeyMWmr9HJH+TIdP5Wffgj1eG/
         zpKa/Dk4F8L5Lzjhpb1KcVG19Crzrr8A+2bAffyBnAxuWLweCWSZXXZIRisAZqP1fsW3
         wVWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773623577; x=1774228377;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qhZXtN5FXNWuWH7Q+3Ir4ViwJXN59VSLO5iJaxwXVMc=;
        b=DO6BxElZ3BPE0RKB8Fpq7kKCCvlngxGp7D9kDfgoksS57A4g7dKh7B4RlEw9J/Nslo
         zgREx4w6un4jTBX6pty8+uDEfN6EuZ9AOfmsO/53Gp+T53vzXcEIQbU4K/kGok+bYui0
         AXzo6/2iSzjvYpWOpx9JUcFkGR3eeAQ8cgVAkAQGWnrWrWRn0HGpzkrWh+ouRNxLeZTB
         GoGBcDS+I8IVqls2SyiKoKGOhPBcpeJj5RhxOeKPIFmAjHwTCyrTZmtZZIZkNJud8vua
         kGg7asKDLdgrwgHyNiA6CqQ+xfwjyYEwQn9tYXtDvhjAaSszbrXBnvcgbbLh92v5c0JS
         h3zg==
X-Forwarded-Encrypted: i=1; AJvYcCWPFWEy3zG9Awlb3Lq3on4CzUBAx6yjYpEqOcDm6fL7B4r9pv92l2FE9LDe99UVwm79bm4Ccn1aIkwX@vger.kernel.org
X-Gm-Message-State: AOJu0YxeYuT9/MfK3O9diVJaIxoatYiKRJ805+SV2Rsl1UvXc2RWotPT
	EGkrqZnjXll4dgL97TyyNU6QdZJbSHEzGh7VxOM15hlezqOLg3agpA+QxPb8fR4xxcMYpiioy8x
	KY4idk28=
X-Gm-Gg: ATEYQzzhfoTDbryQiYn0AF/3LODnOiOoZXsODMnrKbihaFbb2LRH4PFw0RLMfgcHep/
	W74RiMSA0qlymALvXT/zaRAq5huaGmSTqHZw1tNMdiT4hwqXe8LxwYlwc4XXfmErG+fbo7tpFCo
	++rc8dTgbp0RaH8yrNS3sRP8R/z/KRZQOkaim9woOO9Ci9/ni7TlRHvF/4cAtD5jf+BkAC3O18l
	IwwUz7n9nmxI5LgNhqFWrGWAahvaRDvX7PF6zXXkWQsCnqwD89oAlySRnPcFIjaZXd6wYPPSMHu
	7gn42KwXLWheAVZsiflB9aIh2sxNwqsSHAHIw5f6rKuNt88hMFWqCS0BmheyakZwzTcXjY4aW2t
	hmLykx/+2zGNEMDFGoYrGx2vNba7YYrB13pFwxd+Wzkwg9IvqxRqkeC4awneJn+oE3i/fxgOuK4
	K16db0RPIvcbvGwO/bRRLwxbPOisPPyPkfYE4=
X-Received: by 2002:a05:600c:8b45:b0:485:30d4:6b9e with SMTP id 5b1f17b1804b1-48556702853mr183555525e9.21.1773623576702;
        Sun, 15 Mar 2026 18:12:56 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.190.215])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541aba60esm560918225e9.5.2026.03.15.18.12.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 18:12:56 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Mon, 16 Mar 2026 01:12:48 +0000
Subject: [PATCH v2 06/11] arm64: dts: qcom: x1e80100-t14s: Add pm8010
 camera PMIC with voltage levels for IR and RGB camera
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-x1e-camss-csi2-phy-dtsi-v2-6-859f3fa55790@linaro.org>
References: <20260316-x1e-camss-csi2-phy-dtsi-v2-0-859f3fa55790@linaro.org>
In-Reply-To: <20260316-x1e-camss-csi2-phy-dtsi-v2-0-859f3fa55790@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2810;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=BLleNWxonxV9tOc0LMwQUQMx91HyaoyTOdZPoCkkiUo=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpt1kZNAUyjRd3SoPjfAtodDugVbMKtBCifPdiH
 2CM4UlnTMGJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCabdZGQAKCRAicTuzoY3I
 Oj+uD/9+lp3U1xE5Ezx+z8a3WEKuGq6JxqhMBVaJ74CwVDGRZO956jAIr/UYe1OunTeU5vbsmsL
 ip1YNRHeELffWySdooat+nA1oG5kojaU3cwflL65at6hOfQUMC3B5V43ZXaXTVpWNO6sACbWgEA
 W75ssUzATksNhVOyWeBCD1fHfdqwGGuculpXMsfIhKmhnoScdL8rcJfbAliD6YpoLZzE/y7Rogi
 kVZ/JNcTtUcZxmpKFGeWMkil6J+CkHf3Fwq/58VUEx/DM0Qr8STsiSTftvWstNObIYvf1CeHLcs
 pr9YqPcWAlLX9VE57FOkovOsez+gOu8fcAwMnUCQcCGkhJ+FpUXxZ4R+aoHy1ENCFK54CsUUrIS
 sfjy9II8+tnE05+N6nFpHn4Z+I19R3SNBSlNoQIzFrX2vDRa9FhXMjQWmDjhq0yFO3JQS3qqHA/
 VfpZQKAtjHYpIfBVMalz0sTxKkt2RrGjf/BSsY+hjx2wpWb7YWX8bwpkrWi9QppzzMHt2UpCJUN
 KY9HTC72iRUlDbeNUb1XpMYuR5K5oL4wmDmIeWtQpnfWyOasY5LhwtM8xL7vgLNcUaVEiXaSlbU
 wY9Hb2hvkCF18rmwase27MwvDee6CKRwCaHAa7Zvuligm4rVD6oI0XW93kAxKWMByxdYhe+ZAWW
 bY6YX7eob1PLHDw==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275876-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:email,linaro.org:mid]
X-Rspamd-Queue-Id: 482BD29357C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the PM8010 PMIC providing the following voltage rails:

vreg_l1m_r @ 1v2 IR sensor
vreg_l2m_r @ 1v2 RGB sensor
vreg_l3m_r @ 1v8 IR sensor
vreg_l4m_r @ 1v8 RGB sensor
vreg_l5m_r @ 2v8 IR sensor
vreg_l7m_r @ 2v8 RGB sensor

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 59 ++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index 4d7fd51f370b7..ee49785c9d005 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
@@ -562,6 +562,13 @@ vreg_l6b_1p8: ldo6 {
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
+		vreg_l7b_2p8: ldo7 {
+			regulator-name = "vreg_l7b_2p8";
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <2800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
 		vreg_l8b_3p0: ldo8 {
 			regulator-name = "vreg_l8b_3p0";
 			regulator-min-microvolt = <3072000>;
@@ -805,6 +812,58 @@ vreg_l3j_0p8: ldo3 {
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 	};
+
+	regulators-8 {
+		compatible = "qcom,pm8010-rpmh-regulators";
+		qcom,pmic-id = "m";
+
+		vdd-l1-l2-supply = <&vreg_s5j_1p2>;
+		vdd-l3-l4-supply = <&vreg_s4c_1p8>;
+		vdd-l7-supply = <&vreg_bob1>;
+
+		vreg_l1m_1p2: ldo1 {
+			regulator-name = "vreg_l1m_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1260000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l2m_1p2: ldo2 {
+			regulator-name = "vreg_l2m_1p2";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1260000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l3m_1p8: ldo3 {
+			regulator-name = "vreg_l3m_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1900000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l4m_1p8: ldo4 {
+			regulator-name = "vreg_l4m_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1900000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l5m_2p8: ldo5 {
+			regulator-name = "vreg_l5m_2p8";
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <3072000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
+		vreg_l7m_2p8: ldo7 {
+			regulator-name = "vreg_l7m_2p8";
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <3072000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+
 };
 
 &gpu {

-- 
2.52.0


