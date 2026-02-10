Return-Path: <devicetree+bounces-264188-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OTfKbGTimlzMAAAu9opvQ
	(envelope-from <devicetree+bounces-264188-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:10:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 546F61162BC
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 03:10:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D1A9302615B
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 02:10:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56C212D3A89;
	Tue, 10 Feb 2026 02:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QGsNGt4y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D0A2D0C64
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 02:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770689451; cv=none; b=rj5QB0oFYKNP5XctFvsNTvx81M1uk6nKRgDn+gbCeFGRkeIU/5pa8vhlEKuleiUbO2OkwjwJQskuSSbkHZ6nuRChA3grLXaZipNuhaK7Jrf7l0jkH8Lqy5P9shlpf0ypWlQS/0SWa8ViWA3ljOGPXb2EvcpvkRXm8R4CKYKNI24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770689451; c=relaxed/simple;
	bh=VLMiJ30Zh4FSBl/lJzi0hCV62oZODen57vCk75vfrQc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dHPJ5aMEw9TenRz/SkFwGUS7XJH1UIVb12has59d+vkJJaaSg2hyfanE/nihFhbh4lkWDA44EmK8eugwz3/x1/ZzTLVYPgOaM8dnEZEjEyM8u4XvLbMYcW5ui4C2vVDJU3+QX70oC3e7HBiOgUg6ASz/K+LnPy+3euyzh4ILHLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QGsNGt4y; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-8c6a7638f42so501433185a.2
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 18:10:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770689449; x=1771294249; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bc2eBmVrRFfTIHMv2W/jMPK1Ew70fk81SksbXNihTds=;
        b=QGsNGt4yn1DDNlGXzdIDU8ltBTFs4SB1nHxyH/X5+XGdXZUcQlU8l+j+RfUqbVgVx9
         Gcn+fH13TuSRxzEiXUL0/GWTc/pBZfg4L/UFl5O6i2/8fDDgmqAnN2iXGIUwLlLUwaDU
         Lt15vKPqF/JTbkTRK+xf6aRoigs06q2e4lcLEZkb1vdYpO/mUlSpz1pmOW4vQUmdwNak
         2QwXqPReZ1ZNgQIqk22cZ1hZXsrzsA8vYMhEqi/tOXXTp2cWMaUM6UwVL6U1L31anuS5
         ofUG6AdeXthe0xoXhyQqK/cLJJBJ4s3xoI31Q+3CjcuZT7D7wY/dX6ksp+nBvIc4z1h1
         YJOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770689449; x=1771294249;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bc2eBmVrRFfTIHMv2W/jMPK1Ew70fk81SksbXNihTds=;
        b=Xe9K/p9oe27FxgszpztuSfSF5kKyq73XdCB1kZiUYnwJL7ZEDJEtX0H2MNHrUBm/9h
         Lb1XEg71jN6iUvTzpGbJS8870zNaVge9rQ9knRjFeXSlxECAN8z1WbMPIUnnNUKhWUkK
         ion9UwgUOr2r+gZE/E9vS2a687S/wS6oH8sTjJzrPknti+CVz5f5gBBgjVLgc4EmCWx5
         pRUGVDNlXWALZsOkjTT7FsMmBbBn5qZtsQ4NQM87/s412xu2ibDj0KyChmA5aMj+xCvG
         AmKysqsWcOFrdatnRHQZU+ouXrhM0erwPRIdGbAGYGnhYZcZ5p6eR4OG6np8U0PLwM5g
         YO/Q==
X-Forwarded-Encrypted: i=1; AJvYcCVdyLjwuDzXSLQsV8OZBzJ9gb+Wqg/Awqk1ZU5LPBVLUQsaqOq7Gz9Hn0rP1KGkUMXQJ7q+0i4XDock@vger.kernel.org
X-Gm-Message-State: AOJu0YwzsByLvVuaeI1+abaWhVM7ESRKliTZ/cSPcIMAGIQCBeNJ2ZXb
	d1010aTQfiZhtTvozagIh4Fp+n9Lw0iYSDpodFuCQM5yR8shNPMEbZyo
X-Gm-Gg: AZuq6aIuokvRjpN3SWKdLysNLpWn2A/4CnbiD9McfjS0t7UkGbIDsMVzDok8y57t4yV
	C2C/vdFzGeCK1v+yTuaQ7EvGlsm5+VKuhbOHsIreHmAwrqKUYyOTHceu0Fmtx8Td0lDQ7selLYh
	rEog3aGX+FlYnNkyi8QOl2w8VCYDRLAvj2fq8WfmpCNAKVEj9H2H4sS5WsIWeJBR9pbHtNzLE/s
	tFX+OT2s1UdUgW7xHO80QOZ6ACwM1ktyE7oJAX398KhHOLJBHRknkJ4K/0pHXNEwyLivqwhi5VD
	Ehd7Xw/mj+NvvI6OeTWe/14ZtYn1yuVPpFykCbVcAwpRNJ+PznJp5e7NoLuJd/MDtAZTkb2SkCJ
	Ce1DjRa/vC+ucRPFbyh9xjhsikCc5n81tESnx6tOGtzRCX6hl7CYYklhnt5qw6qFgoTF30Wnz83
	e9QGD5TWWPoM83N41Z7nxFbSvCI9M/TpQaMrSQiJnlvEFKXsozvptwFl2WdKCi/ISeMKe6LiGzC
	gUKu2gxQ445FwQ=
X-Received: by 2002:a05:620a:1992:b0:8ca:1107:1214 with SMTP id af79cd13be357-8caeef2f94fmr1843871385a.7.1770689449025;
        Mon, 09 Feb 2026 18:10:49 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8caf7be4257sm924100685a.19.2026.02.09.18.10.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 18:10:48 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH 3/3] arm64: dts: qcom: sdm670: add lpi pinctrl
Date: Mon,  9 Feb 2026 21:11:09 -0500
Message-ID: <20260210021109.11906-4-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260210021109.11906-1-mailingradian@gmail.com>
References: <20260210021109.11906-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-264188-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,62b40000:email,17d43000:email]
X-Rspamd-Queue-Id: 546F61162BC
X-Rspamd-Action: no action

The Snapdragon 670 has a separate TLMM for audio pins. Add the device
node for it.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 arch/arm64/boot/dts/qcom/sdm670.dtsi | 74 ++++++++++++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm670.dtsi b/arch/arm64/boot/dts/qcom/sdm670.dtsi
index b8a8dcbdfbe3..0da3e22ce402 100644
--- a/arch/arm64/boot/dts/qcom/sdm670.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm670.dtsi
@@ -2273,5 +2273,79 @@ cpufreq_hw: cpufreq@17d43000 {
 
 			#freq-domain-cells = <1>;
 		};
+
+		lpi_tlmm: pinctrl@62b40000 {
+			compatible = "qcom,sdm670-lpass-lpi-pinctrl";
+			reg = <0 0x62b40000 0 0x20000>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&lpi_tlmm 0 0 32>;
+			status = "disabled";
+
+			cdc_pdm_default: cdc-pdm-default-state {
+				clk-pins {
+					pins = "gpio18";
+					function = "pdm_clk";
+					drive-strength = <4>;
+					output-low;
+				};
+
+				sync-pins {
+					pins = "gpio19";
+					function = "pdm_sync";
+					drive-strength = <4>;
+					output-low;
+				};
+
+				tx-pins {
+					pins = "gpio20";
+					function = "pdm_tx";
+					drive-strength = <8>;
+				};
+
+				rx-pins {
+					pins = "gpio21", "gpio23", "gpio25";
+					function = "pdm_rx";
+					drive-strength = <4>;
+					output-low;
+				};
+			};
+
+			cdc_comp_default: cdc-comp-default-state {
+				pins = "gpio22", "gpio24";
+				function = "comp_rx";
+				drive-strength = <4>;
+			};
+
+			cdc_dmic_default: cdc-dmic-default-state {
+				clk1-pins {
+					pins = "gpio26";
+					function = "dmic1_clk";
+					drive-strength = <8>;
+					output-high;
+				};
+
+				clk2-pins {
+					pins = "gpio28";
+					function = "dmic2_clk";
+					drive-strength = <8>;
+					output-high;
+				};
+
+				data1-pins {
+					pins = "gpio27";
+					function = "dmic1_data";
+					drive-strength = <8>;
+					input-enable;
+				};
+
+				data2-pins {
+					pins = "gpio29";
+					function = "dmic2_data";
+					drive-strength = <8>;
+					input-enable;
+				};
+			};
+		};
 	};
 };
-- 
2.53.0


