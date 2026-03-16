Return-Path: <devicetree+bounces-275871-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AI/AHhhZt2nQQAEAu9opvQ
	(envelope-from <devicetree+bounces-275871-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:12:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D050C2934D2
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:12:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A9E2300FECD
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 01:12:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A09CC21CFF6;
	Mon, 16 Mar 2026 01:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oKuHhdOo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236131C6FF5
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773623573; cv=none; b=gNZ2VKFxp5iBMHwk1Tie4QItaUqWYK3HPoq6jw/58HMjGGAsnmD4IW7VotN6TnX2Itl+DcESmffKwdLiajH1LUOWA84Kx10H2bIx+pF+f5oUli1NhMS/tupGZ0rcbqte/ZRnrtYbKRnVHSt48APVQNNaWDrGiOaeZsEyarCEgj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773623573; c=relaxed/simple;
	bh=lleP+dZ1M4ikI3wkRvrhCVjSquc05hbvVS1eFDvgTjw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=JipmHJR2KUb07/MEiNaYo4v5+TXr/rOjV+T9Y019OReS3niFfL0S7/egQG4d66JQZ/IxLxPHRAy/toTolji8t64HvmYPMwdnNWWzdaCKY52iQMrvOZBcgNgN3n0a+EV514/T6tyq6LHtl6KnqDzjqNL8w8xw8FkMjsrgpPjxty0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oKuHhdOo; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-48538c5956bso37394625e9.0
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 18:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773623570; x=1774228370; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EChIGu/DeO6fv3NYyMOGMCFtawKChx/oOawWgYiN6CI=;
        b=oKuHhdOohXwtv2eKFeKNwSM6UcW/MX9nKhsLonmrxH9K6HoNYmiIRbCQ4zKchLJ/5j
         uULE6Jb66Up9Zdy2WnfrHFYRc5gTEm7n4Ux+FXoPhC7vkm8x14MZIc6+DZ2V4lYDKUFf
         ozKaz7FzKqrzhZkyGe5a+AukeJPIitmuVP7+1S871x3MEO3E2h3+aBg8szJLTCB17/Eh
         FNaUkGmHwb43B1RxNTzH8OIC2Nzt+0y10hZdSzexvAkaY/sgJvPkyR2VcWJn637q5DGT
         QB9X4DplSuWDZGBKf9AifOqQeKWz0kMc6C1TrRkAEqkJUwnyMuiEiSS4POc/rUMy5/V1
         99yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773623570; x=1774228370;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EChIGu/DeO6fv3NYyMOGMCFtawKChx/oOawWgYiN6CI=;
        b=XD9hmxbmwzyN5xjvOU2iNVH9MaBxO83DzKsO8jlKX2yaii7BPuqCRzGgboJMdhpAI2
         1CsNqloPDVnFJarZcee+C4ruW+nut1UYkXwKQ9R4qOOGF98ZrcR8T6wOyVtZtXUAjXNe
         TYhH9scCAhP9sMIiW3U+QvHwMWmzNCN+xN/NEowweP8CMasK8SabszZjKTpjcP2bOF7T
         edFRA8BHCtUh4PXBUUUlR/qerBCj4vhywIS1uGAsNzVRHlZ4KgdOfW7txjRrzlBQrNSJ
         ZVRxvtRsi/Fz4UHOLTYXysVo/vmJ1d/oVTTRl8yQ/ujjMG1hR/MecYJ7fvBrcmIMUXMg
         tq/A==
X-Forwarded-Encrypted: i=1; AJvYcCUl7SEKWtWnXvIfOrIHZmkJwVEsmfN+oSwgcpHR6A2B7EY9KtBDgLjHFHL63U58Ft7V5p9nYxmxWH+X@vger.kernel.org
X-Gm-Message-State: AOJu0YzJQdv3KP2MXaa0iUou6OuSdOzE5ncT+iuLoqvLlPHzK8Jbm+zZ
	DPDmB6bfXYvnV9dzqdtx+1adu00cqqRXa+58UMW3djGY5jAuKRmFHnmrnaRHxv6RRx5kllnmjGC
	GM0Z5p5E=
X-Gm-Gg: ATEYQzzy+E1qj1NSbTaih5WHhaq/ovi/nEAmpVt4BxgIgSHtXBY5M4KviY+G6GMD0Kv
	r5GN2R/JeiW+uMDljQ4FRx9RvIV2/aTU1wqARHKHk901uGHIzPJblE0W2aE+Ek/OH5JkVRKWOaP
	w8LmdHrho/UxZkQpv1Yg3fmWY2BqoKu9FXNnYJbJHBFpEJcoxwHFsdku7zHilUiHIqrg5aIa4iO
	y84mjZYgut3Nq793pEnpwnQ3pxc41+OJs8j/pEuonugcARkDh9iRCwLa4W/D7oEeC0jBAJcA07s
	8wJp6rV4qYxWpMJRc6197R0kDXu19MUN9n44IeYU8hsqACqHyZ52k9KK2TYHaaLXQLuE7brcVmH
	K6hPTG8Bqa5gxPxgsKGY7hYDUmn/3co1jzn3tdXvqjqaya+efRK/Lv2tBMLIXuXnLIhxVmsK0Aa
	EqwXof6bMUr1eEnZO/MtkaPY++8V5BGiPGJL2ny5+QPIuAtQ==
X-Received: by 2002:a05:600c:6290:b0:485:33b7:573d with SMTP id 5b1f17b1804b1-48555ab0a59mr164645265e9.1.1773623570493;
        Sun, 15 Mar 2026 18:12:50 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.190.215])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541aba60esm560918225e9.5.2026.03.15.18.12.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 18:12:50 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v2 00/11] arm64: dts: qcom: Add x1e/Hamoa camera DTSI
Date: Mon, 16 Mar 2026 01:12:42 +0000
Message-Id: <20260316-x1e-camss-csi2-phy-dtsi-v2-0-859f3fa55790@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAtZt2kC/4WNTQ6CMBBGr0Jm7ZgyAqIr72FY1P7AJEpJhxAI6
 d2tXMDle8n3vh3ERXYC92KH6BYWDmMGOhVgBj32DtlmBlLUKKIG19Kh0R8RNMKE07ChnYWxJtP
 WRtnK6hbyeorO83qUn13mgWUOcTuOlvJn/zeXEhX6i79a61++rW6PN486hnOIPXQppS+I5B8qv
 wAAAA==
X-Change-ID: 20260226-x1e-camss-csi2-phy-dtsi-52c85c0d4da8
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2169;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=lleP+dZ1M4ikI3wkRvrhCVjSquc05hbvVS1eFDvgTjw=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpt1kYDZ6WAnxPpBqK4qVACaucAJejpSL3IzsIs
 s6oTaU0zfyJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCabdZGAAKCRAicTuzoY3I
 Om2fEACDnVnD3Zl+/vXNgwlXz8Ot9/EL3ecL/oupZkpkWsQPVqXye9HDe9lkbv2sAQdq1HaWNNd
 SAvhph0ymH5xBE3lSVBh8CJP5JCvTGHAYKy7sTNFG79dgX6PGHQdtaVEzpg0JTXZL7gQTWH2EuM
 3kxYjxgIkSq8YaV32veawrOb1sKTvzEwmEkWrE0E/6fzwZFo/Yy3MxJ6FYF5RwjF5BVA5BZ1LAb
 qmwx1leujUw2qr6gWABUuYacBPW5EhepX8Y/tXy7LEX2brl+O6SS+/k2EJspbUzbignfZ58ekdE
 mZepGNl5G1nzPTTd7UBy5M+rU87EkkUD3o6AWdy8IqbxyQxetK+bG4IAf+zMZCgIf5IHdYlIV8o
 qbp4ZEM28k4+ZOBG/UTdR1IE4vrluVO3KAfrt7jIY31aBFcOmCbRzo+fqToTKVwJLZH5AUwshGP
 af5+FqtiUQVAf7cVR8I19qrGBplyWmVMUfQPETSrsTn5WpFLWaZhBTLL1636TZrg8ba0qCWOqJx
 SLKEcYgYNC0Se1TrBZVL1Q18uvP9FrMNBcndqOnvyle4cnHpqwkR6G8yfgZQgYIO7klum/LsW3x
 5h+JqBtf7UDL0+gy39x28iDN6Zlz/k51K+640WTPp8ClMFbPQZQ1Z4i+qjkZTbacYLaspmJW3qE
 NGXWeGbfIB3cpKg==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,linaro.org,oss.qualcomm.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-275871-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:email,linaro.org:mid]
X-Rspamd-Queue-Id: D050C2934D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

v2:
- Defines CSIPHY as sub-nodes of CAMSS
- Includes updated OPP tables for those PHYs
- Fixes supply names for RGB sensor on slim7x

- Depends-on: https://lore.kernel.org/r/20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org
- Depends-on: https://lore.kernel.org/r/20260316-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v10-0-fdfe984fe941@linaro.org
- Link to v1: https://lore.kernel.org/r/20260226-x1e-camss-csi2-phy-dtsi-v1-0-f3f7ddfbf849@linaro.org

v1:
Add the dtsi for 
- CAMSS
- CAMCC
- CSIPHY
- CCI

Add dts for RGB sensors on
- x1 crd
- Lenovo t14s
- Lenovo Slim7x
- Dell Inspiron 14p

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
Bryan O'Donoghue (11):
      arm64: dts: qcom: x1e80100: Add CAMCC block definition
      arm64: dts: qcom: x1e80100: Add CCI definitions
      arm64: dts: qcom: x1e80100: Add CAMSS block definition
      arm64: dts: qcom: x1e80100-crd: Add pm8010 CRD pmic,id=m regulators
      arm64: dts: qcom: x1e80100-crd: Add ov08x40 RGB sensor on CSIPHY4
      arm64: dts: qcom: x1e80100-t14s: Add pm8010 camera PMIC with voltage levels for IR and RGB camera
      arm64: dts: qcom: x1e80100-t14s: Add on ov02c10 RGB sensor on CSIPHY4
      arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Add pm8010 camera PMIC with voltage levels for IR and RGB camera
      arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Add l7b_2p8 voltage regulator for RGB camera
      arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Add ov02c10 RGB sensor on CSIPHY4
      arm64: dts: qcom: x1e80100-dell-inspiron14-7441: Switch on CAMSS RGB sensor

 arch/arm64/boot/dts/qcom/hamoa.dtsi                | 534 +++++++++++++++++++++
 arch/arm64/boot/dts/qcom/x1-crd.dtsi               | 106 ++++
 arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi        |  61 +++
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 136 ++++++
 .../boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts  | 135 ++++++
 5 files changed, 972 insertions(+)
---
base-commit: a35d7301e99cac05f09cf70edf731f544461b2d2
change-id: 20260226-x1e-camss-csi2-phy-dtsi-52c85c0d4da8

Best regards,
-- 
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


