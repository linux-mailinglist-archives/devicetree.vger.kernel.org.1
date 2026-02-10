Return-Path: <devicetree+bounces-264224-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id vn8ABOCsimnpMwAAu9opvQ
	(envelope-from <devicetree+bounces-264224-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 04:58:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E46D116D0A
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 04:58:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 420B9301E99D
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:58:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C97552E7657;
	Tue, 10 Feb 2026 03:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ELRXYuOT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f175.google.com (mail-dy1-f175.google.com [74.125.82.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DD8A29B795
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 03:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770695899; cv=none; b=oJfxIhLHFRBGMxGYs1JX3Mt8XeXgalu7NBc6yEW9sdsn/J00gLRorRUfZ/AHCvUuujqzFLcglPrhvwxa5EIRo5Exx3Wd1hshbxIbA5iVLCUEBBOXGOwjwkH9rX+RRLy6gaqXX9VNYxBgSed+yUbowrager3R5ntZxitv7jGzYrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770695899; c=relaxed/simple;
	bh=BGFbjAQGLZNXddJ7Zbnf+eR42ONlD2v8hRdM+CSNiEE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=foGkku0U5cil74FyqdNJwA0YLW9hXYUdd52AewD/X7LuGo2wRW/EvTzqpkOp/usR4+D1CRJxaEnJqDNEl7apxxECkSsYmza8B9iIdmBF+nfkQ7xYi0XSBoXraKjDHBdNZ1E6GTElNt17OG9EiskT/zl0mwFPwIID0ccf962Gsu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ELRXYuOT; arc=none smtp.client-ip=74.125.82.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f175.google.com with SMTP id 5a478bee46e88-2b740872a01so870072eec.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 19:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770695898; x=1771300698; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q42/v/aKtXIsSN3fGfEiA94YbSmv523XY3uYLKo5rl0=;
        b=ELRXYuOTwWkv1ssjoso3C1ajUgVnGbaBs0EuWpo6YhJ9825htYjMTigCa/I6+G4fRq
         dEs788rFGoqvKLk/6d7p4bdkzUaYqE6dMCHlA7sU9k9YZNBR3CjUfeJgh6+b+ndfQFkc
         tswkBrvVqDxrV6EwPtyg1AI0KZEX3tbkjLS8yx/VKylehURz/8ry6sQw/VSEUri9XW9j
         0Bm6UNNB4fM5RFhKu7Hg+Z7uvCl8GxOlMYgKU9QUR0M0ObhE6u4kZ0IqfpPzxOmDDkFC
         y55JSCoCOtHfjYpa+B6VpyhEzCowa27hsf4qDjRARUQb++DIwEHGpVEZJeRoVReBlufy
         2JsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770695898; x=1771300698;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Q42/v/aKtXIsSN3fGfEiA94YbSmv523XY3uYLKo5rl0=;
        b=lGDYg6G48f74RifcxV+Ih26iV1tCtfWNKPN13tr+jpJ2Yotnzb1N63o5riPABdglJV
         UsRkn1RwjE4F/ih9jT26wsSXE3evZJ/7BCEZvP301FvzBh3Fm8LNRbtRZuTW27sL6kS2
         qLr6LkqQo16oxTnmjpFVDWR/r60ddu2YbKVuN+liqrVYT3RmxN9DM+i87XuOMjFOtIWB
         Xq4HFbbdzXfIYTp5IQVvSV0ZoEpSFmtO33qrBDJ63WWdpI+CGC2EQYPkW3ZE5iue18o7
         Pott0CwbSPke6pX9wUV7NMY+EEoi/oSu62lmJI0bGOkq0+jR0ZvlTUCvFd9FTmhUTQVG
         1fUg==
X-Forwarded-Encrypted: i=1; AJvYcCUjrvJhml8wz+ukm2KO6pnxZhQEZZqfA/qIIig1SiXtPvYJAET/4XVD01bPkBNQ7Z77xWR4U2Kh83lb@vger.kernel.org
X-Gm-Message-State: AOJu0YzlJ3az8TV7bPZe3bJ7GbXwG3BENONkBI5Txax3g3h4MAyy4RsY
	uF/l/qNQzfEXq9XDwARlMp56yYt+a5huEYuFrI7z9kr3PkccieUbqCXcyjjhBw==
X-Gm-Gg: AZuq6aK61Mcty3WR+6luvCU7odTHfaW2jWrmaSf1RDYI32FXLK1sjubU/Gs2JXRhOHY
	dOJeLzFM58kB5sd+G40tWM1W+92FtFCzLLNjWpNAPCr8YJlzfU5Lz6zehD3b4o3ylRX9MlcH8O8
	74DHEfR0TWlm1RiVhknZlgIesoUOdgu+QypvdK28sVXuBWhugGQHFwerqXKJ1WzgfSfOuV/ASYk
	oJYpgfl9leL918+HiTx2+EwhMT9kg87vrdr5IQnEOyRs7uI8dFusV9W2hRsKfAVXQs//K9Cwagw
	5ycMeM3n+/LLqY7KXtg1oA1DGgmNeVAxq6VbZu9ei/XV1/1Wf4TFsO3Iqq/70us9MRS70+mfgFH
	//PcH+ygdQVO/5Yq/81svqjkVhU8jD6Z9MkoZD078qQwcLl5bQ4NKUGHkz8klw9lAla7A9S1GmP
	XEFvawymwhIN11Zvd5uqLk25c47m+HyC2JxEH2AgXYOG1/2ddQJsPVLYSnIjI8jnpwmIlmgTwxQ
	FmYHoAeZkkMU5CDK9L4EvJC6g==
X-Received: by 2002:a05:622a:143:b0:506:1f11:f5ef with SMTP id d75a77b69052e-50639a19051mr189985021cf.73.1770688903651;
        Mon, 09 Feb 2026 18:01:43 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8953c03fca0sm89313956d6.28.2026.02.09.18.01.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 18:01:43 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
	David Heidelberg <david@ixit.cz>,
	phone-devel@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v8 6/7] arm64: dts: qcom: sdm670: add camera mclk pins
Date: Mon,  9 Feb 2026 21:02:05 -0500
Message-ID: <20260210020207.10246-7-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260210020207.10246-1-mailingradian@gmail.com>
References: <20260210020207.10246-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,linaro.org,intel.com,linux.intel.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-264224-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[collabora.com,ixit.cz,vger.kernel.org,gmail.com];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 6E46D116D0A
X-Rspamd-Action: no action

The camera subsystem is added for the SoC common devicetree, but the
mclk pins should also be common across the SoC. Add the mclk pins for
the cameras.

Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Link: https://lore.kernel.org/r/5135823c-f2e4-4873-9e3a-9d190cac0113@oss.qualcomm.com
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
Reviewed-by: David Heidelberg <david@ixit.cz>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 arch/arm64/boot/dts/qcom/sdm670.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm670.dtsi b/arch/arm64/boot/dts/qcom/sdm670.dtsi
index 3eb4eaf7b8d7..f21e60a6a2ef 100644
--- a/arch/arm64/boot/dts/qcom/sdm670.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm670.dtsi
@@ -1196,6 +1196,34 @@ tlmm: pinctrl@3400000 {
 			gpio-ranges = <&tlmm 0 0 151>;
 			wakeup-parent = <&pdc>;
 
+			cam_mclk0_default: cam-mclk0-default-state {
+				pins = "gpio13";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk1_default: cam-mclk1-default-state {
+				pins = "gpio14";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk2_default: cam-mclk2-default-state {
+				pins = "gpio15";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk3_default: cam-mclk3-default-state {
+				pins = "gpio16";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
 			cci0_default: cci0-default-state {
 				pins = "gpio17", "gpio18";
 				function = "cci_i2c";
-- 
2.53.0


