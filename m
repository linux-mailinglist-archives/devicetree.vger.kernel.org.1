Return-Path: <devicetree+bounces-275608-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KNQ2O+3JtGnRswAAu9opvQ
	(envelope-from <devicetree+bounces-275608-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 03:37:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9323028B6A0
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 03:37:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D3DC6301DF7E
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 02:37:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 742712C11E2;
	Sat, 14 Mar 2026 02:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LSxMbWao"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6C42BDC16
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 02:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773455852; cv=none; b=btIDP0bmDh5ChmFyrFF8AcseLPCAXYV90DjRfUup57nYOBBMqbvtqWV52L70u2GU7eaDYjg/g11Xm4LbXTSsf/nzk9fvAGGiAETQWOcjZfLG4/l553rleRVR0Q/UHcvqmea2JXsfqbvW16SzhST3W5hlr7ZhtRrPpcTodyf7+j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773455852; c=relaxed/simple;
	bh=s/3t98TVFqAubiFusncL0/U38n25Y0oSS0WYw9+QA3Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bKsC6N7CaKoT0iyIbbYOGQ6XAYVHcxdYAELt4G+z1YbMbo2eaRlotQ3h6luiUb5VY93eKoWOA8O/3htvt2nf/LRLy8yRvfGnEIDBoDdGBWDO8hF9Ph/09gJom9nXSbWASq8DkJGXCRl8m6YqiRiYO3U4C3Hz1pWTWs03oGJIA54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LSxMbWao; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5a132096c08so294109e87.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 19:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773455849; x=1774060649; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7zJSqAoLf8m6YwXwXNsLDaR07GYVsL35nr5h+4nUg0o=;
        b=LSxMbWaoPXVwGYjl8AlIt3crDl+iD17/cH0/IS/ultgxbS7mAeZ4ybsfwjTYSLVyFD
         xAQKt3/sQIk3sXpWRqCJZMukpLWWXfAjOyMJRd7XrYOYsrrU76iNedyB/RdgQyaHkGE2
         BILGjDW1qMprDjUp7GdzPCjOgFpwOhw/RmbnMeNb5HqA0wb5f/iEIY2a+9cebdE/Vp75
         59qUbUtLEp7ijDRepnNfWZ3VlVOw2WDnw4J8gWvv7/L3gqtGab+KyNsjh12F82L7uJsg
         N1KYaIc2JoTOyFUlKwnFA5gdcNnWJpi3NZVp4n3MOXuRrzPtT+yxPJ3mb/7z4l53H7kB
         kibw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773455849; x=1774060649;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7zJSqAoLf8m6YwXwXNsLDaR07GYVsL35nr5h+4nUg0o=;
        b=AigNWVKXEVipF5tCeqvN6FbgQg/PNWcNJ70MCjPnGzXNPvVYqe9bONV2RFn/yt/SQv
         VU750Y/FjfBd+Z2IxeN3Io6Q7edb0FEuphStRM79csc3B61OkquBwoxtSNMKXbYr0R59
         WA/Id6awE4WpBnvs76X46InXL4fwU0fJNUBRXPcvPN7cgJkWattbsJVocjFxqCK7glHU
         wrcLuiIWvopWcjZo12HiTIb+MCFFYyJtvqpe1//izOcvxP8WAWWC/JuZJCj2INuYiSGq
         KLED/QPrU0jwDS7xTVUiMeGioUAJ57ZC93Rk2h+/3Mlqc0Fg7QZ3tlgpioTdw75Jsz1v
         YKIA==
X-Forwarded-Encrypted: i=1; AJvYcCV88j/uRTmkxjLwcQ1vKC3QqWhwyYwZw045Y5k9oVbliW9hdI5sUcTUPFkVbnkP9mVFx5rZg4nyWNi1@vger.kernel.org
X-Gm-Message-State: AOJu0YyxaVbhwpvgubf7cKZXclQeitD31bGDD2sn2JlRdA1OY4NmbV0G
	00C/sfFVBY3IZudrur0Jgp/02XvUfy393ezc24AJRvIC2GyN7VygornpDICbAH4d4TA=
X-Gm-Gg: ATEYQzysfQT1N8hqCikHCSySKSK2CLnuG3kXrJF9/St8JrEuqcxSSwKU1e5Hz1uYQPY
	nkvsnwoHYqsoPSIFXcaeXL2cc6JW/AO4368Ql2ccMTNqTYxg0MQseZ0rGINBinXcpGQvH++C27B
	gBHrwis9iJ1Q1kN63jqmXqeAuvrqkWjXzEC7XHlXoMd/msn9ivonq9S1SRkICAC2viT03eds5Qf
	QzN5w/P+mfG9QGkp4LHj+yy4iUbewgB4MsodKiOxEuSp+ENDdcmnSGH2PoygUX3DG8wU//Le+2c
	otBAz8TErxC7w7m2863mtc6KjdpHifirOWItjWRMyHMPjQ0wJIUu6HFcDouDSjaMvLWapXa7zf+
	/DYdmBT/pgTT2GbAKX6ywtWSFDqFqHZ/8PMOeOANxbHW+Dq+SWb/sQbwznZQ2mINnDreDkCL+Z9
	49ILmB+BQ3qKZx5vIii3NHAFfRHjgGWNS1r5IprVNRiJamju1xEFanTkfsfJSjomDgOw==
X-Received: by 2002:ac2:4f12:0:b0:5a1:f7e:1298 with SMTP id 2adb3069b0e04-5a162b23574mr1116773e87.8.1773455849217;
        Fri, 13 Mar 2026 19:37:29 -0700 (PDT)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15602e692sm1884296e87.30.2026.03.13.19.37.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 19:37:28 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 3/6] arm64: dts: qcom: hamoa: Fix xo clock supply of platform SD host controller
Date: Sat, 14 Mar 2026 04:37:12 +0200
Message-ID: <20260314023715.357512-4-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260314023715.357512-1-vladimir.zapolskiy@linaro.org>
References: <20260314023715.357512-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275608-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vladimir.zapolskiy@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.134.86.160:email,0.134.242.224:email];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,linaro.org:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9323028B6A0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The expected frequency of SD host controller core supply clock is 19.2MHz,
while RPMH_CXO_CLK clock frequency on SM8650 platform is 38.4MHz.

Apparently the overclocked supply clock could be good enough on some
boards and even with the most of SD cards, however some low-end UHS-I
SD cards in SDR104 mode of the host controller produce I/O errors in
runtime, fortunately this problem is gone, if the "xo" clock frequency
matches the expected 19.2MHz clock rate.

Fixes: ffb21c1e19b1 ("arm64: dts: qcom: x1e80100: Describe the SDHC controllers")
Reported-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index a3a045732941..140c8f1237da 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -4714,7 +4714,7 @@ sdhc_2: mmc@8804000 {
 
 			clocks = <&gcc GCC_SDCC2_AHB_CLK>,
 				 <&gcc GCC_SDCC2_APPS_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>;
+				 <&bi_tcxo_div2>;
 			clock-names = "iface", "core", "xo";
 			iommus = <&apps_smmu 0x520 0>;
 			qcom,dll-config = <0x0007642c>;
@@ -4767,7 +4767,7 @@ sdhc_4: mmc@8844000 {
 
 			clocks = <&gcc GCC_SDCC4_AHB_CLK>,
 				 <&gcc GCC_SDCC4_APPS_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>;
+				 <&bi_tcxo_div2>;
 			clock-names = "iface", "core", "xo";
 			iommus = <&apps_smmu 0x160 0>;
 			qcom,dll-config = <0x0007642c>;
-- 
2.49.0


