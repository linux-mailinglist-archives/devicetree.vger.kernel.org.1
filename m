Return-Path: <devicetree+bounces-275878-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +D12EkNZt2nQQAEAu9opvQ
	(envelope-from <devicetree+bounces-275878-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:13:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B885529352B
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:13:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0CBBE3016485
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 01:13:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 714CE24E4C3;
	Mon, 16 Mar 2026 01:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zS5p3nHM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A6CB226CFE
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773623584; cv=none; b=Xjq0sjDFJHFPJ2p3AFiSAOnCOaPtTNq4nUTAoUwHc9IZG2tMMhOB3Et7wS6egveD59bQd7guv0eVEY8dKpbxucpO5aSqLfWxjbPk3fN7GkKJGFIw8AccUiyYdYJDuvXL4mfsxYJlHR8Ey00W6MGNokRmfuK31d2g+9hhLjTVFv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773623584; c=relaxed/simple;
	bh=OBKmCOYcz8QE5U8irX1KuYqE9atpmhfMPSWfgjZ3RMc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Iye8hi82qW8KZzcsiYroVQPauMuFnL8tFTf9L8U2sviAAQNEmBaS9qOYzrA5aBGMtkQQSA+5itSeKNYGWp3jpk7o3fh8gyHchpWJAIVB59tFYkCt/VAygISaqDvRmTV2Ous1HWZAa9nlzM+12HcYhVKZmHWZiWFdConBDBvM+Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zS5p3nHM; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4852b81c73aso35555355e9.3
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 18:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773623578; x=1774228378; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z2U9ZfzOl8dAf+aGpiM3Kfe8faOSXgQyyYf9gqfmYXo=;
        b=zS5p3nHMMnqx+OKvJIIWwgpZ8fH1MCCL2e2DYgd7BVxSwRk6hOU7mWReVYEufUjlqi
         7CrCkcA4bViz6ABIBTtfiSMUD5pV4lAzvmy6X9D7ghDFT4AEBCnjT9f+rgW9nPbjWD7V
         OCcMTGfhNR3TJNhZoRUYySifXDKfyp7xq29uWfTFt9XYgOrEZWo9H7Mli3Q50wcsaZi9
         jA4KRl/+VJBJF3xd7lpTpMxvhBS/egt6dWdOriJCCLFtUSAfVDg42uApg8ep66OeqlTi
         gXuAjcB7t9wOAgy4aPs/axymYMmTyTtLRxkVnFuWdPWTLoaQ9XkWXGtXVS0Hhcc/v4Bl
         WtdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773623578; x=1774228378;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Z2U9ZfzOl8dAf+aGpiM3Kfe8faOSXgQyyYf9gqfmYXo=;
        b=nagurqLv/w/8sIoyFHcrU96iaZxN/isLsryJbe13dbLpQF8emUMXC2Pr6VPEx2BJNQ
         B/26eSocxbeqG4mN6fEkBodpsPktUt9QXpWa7CpP5YRtjOu0/4SSEhRHuqOlYZIi3Bts
         y7WzpoXXWgnkpmcHwcLM67hljs2rqkA7pfdxlyoTEd8Yk67qSotzFjbq2rS0P9KJOizn
         IgABhJXktCOhuk3rumSUTQUHfWLxIdZ2oj7jpOkGbvKYQXemjYEgStRzv7s+h+pOUxAc
         UFNLpDah9laLoI8/welLeuPRsdJ1CXH+OJuMqXvMPiEJDs1smq0IP8yhQAIBIblSA55g
         GZ8g==
X-Forwarded-Encrypted: i=1; AJvYcCUJgt3o6Sk8ErYNKETLHqHOubtbhBTzOnn9umSWlfn5PGfrdxcwQatgrmX0CbfPWusgitoFSPptQfWn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1CB7JyXTGeSqepowVYqROdIVcrx8x24D5viIwLcYURxdq4zak
	wrBTmiAJFTsakNIGcr1notR+dc8rvKepL+dc9gdZ0BRPKgCjiTnhDnBKPLGO9TZOV34YxRL3l/r
	xNXISnLQ=
X-Gm-Gg: ATEYQzz33D9dav+tFLmlPNLre1El5+VvJrJrIUO2vAGp60pDSqCOnXywqe7JrNrSBIT
	Z5r1++a8ksSZnF7zpgDyEEgzt/5CKLNXY+fGA6ZLxW10tgHi6RRZY6os/uGg9lkkg056F/q4IIp
	crukMf0F7hfkEZq0dR+1k7JDGrH941o9fohBIVv9waz8JTdrKEr4xFHuN62yzD4CWD4GCc+HfWI
	qenxyN+DvSHf/J7ScyvXn/VS9Hle5t5WPv26GMfx7eEmjBU9CdWgF4WCyiS0sU06jHnCwwfgBDh
	lNneIPx1UCUhGJ4n+iGDsQSHQT7iB4ZU5uQXRmB9Kx8qfO/9wqOmvAaMu4ucfM4zP57gnp2lLTk
	o2vp4OZywbw2PWWenQA1dbf6KJygkxn8F+1wVGq45j/sviMrel6aeEW3FKLcL2CyWwHH9Negl89
	VuRgccRAVP5soYUaafF9HSGhfyxponxPhe44Ss97XoK+aQ9Q==
X-Received: by 2002:a05:600c:4fd6:b0:485:39d1:b4ca with SMTP id 5b1f17b1804b1-485566d6e27mr195854155e9.9.1773623578562;
        Sun, 15 Mar 2026 18:12:58 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.190.215])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541aba60esm560918225e9.5.2026.03.15.18.12.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 18:12:58 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Mon, 16 Mar 2026 01:12:50 +0000
Subject: [PATCH v2 08/11] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x:
 Add pm8010 camera PMIC with voltage levels for IR and RGB camera
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-x1e-camss-csi2-phy-dtsi-v2-8-859f3fa55790@linaro.org>
References: <20260316-x1e-camss-csi2-phy-dtsi-v2-0-859f3fa55790@linaro.org>
In-Reply-To: <20260316-x1e-camss-csi2-phy-dtsi-v2-0-859f3fa55790@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2225;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=OBKmCOYcz8QE5U8irX1KuYqE9atpmhfMPSWfgjZ3RMc=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpt1ka8odOiGxMnxmkCwK8ZMz0jHBEW+qOJr9gb
 nHGpLCgIdaJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCabdZGgAKCRAicTuzoY3I
 Op4GD/0cNAJL8DQgqj9wI4aNfjzgYMmC9NB+q62rn0eqCGl2vpvFnbEy3X8h1DLJ40K0gLPW8FJ
 R/maCC0P9mmukzoSA8WemUlX1a4FteTrs2gLzD9nB6hIxGxEuKoCLyzov29vtpOJqAC7vYXUC3V
 gX0vaE5LhIJ0uTaIXloskf/I1dL9PMYjDKT2yTGIhAzvtJkfst9dBIw6C950UjJXKOw/RL1MrQh
 mz/pTJSLich01ph1BllTq3vKw4upLXuICYtgJXCh0wijnIErK+wCoF6FueIichuwccm1hBWoTg9
 9sH9ZBK8L8ky5HLnBJsvP7QeOdl8Yhf3KZ+copJ++ArE68MiwimHPozjDBcXpgeCBvesCgSfNgv
 iOnqTZW5f//dbODK7qkc005kwV73iJCsK0KHRTTQ8lwweaOOH+whNtOjdRf8EDsTJNzKPlbIweo
 5GTxU8BkG8Y0M/Ab9DOnCvXvHOqUT6j6UgI/tAg0sbscug3kscxfrQZojedetTkqDtBRolxJiPP
 vioVV4lalPzI/MF+Awg+TEMyrrBj2C9LH5X1mak/BUVH1xIhWv8xm1QtwRDZcfKZ4sOfNS1XxRM
 Aq2yD2OLDRLTnHkzFy0ohty2Zg8cyQd/kuuY7CKGi4L6epidchgU2v/lRg69cfMv4knnpCAlYfB
 VVL4nOUKYLT6OKQ==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275878-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,linaro.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B885529352B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add voltage regulators-8 for Camera on slim7x including:

- vreg_l1m_1p2
- vreg_l3m_1p8

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts  | 51 ++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
index d6472e5a3f9fa..f10dff1da7f8e 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
@@ -795,6 +795,57 @@ vreg_l3j_0p8: ldo3 {
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
 };
 
 &gpu {

-- 
2.52.0


