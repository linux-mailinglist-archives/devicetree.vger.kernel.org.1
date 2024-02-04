Return-Path: <devicetree+bounces-38419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED3E848F75
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 17:56:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7BD4D1F21E41
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 16:56:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FA54249F0;
	Sun,  4 Feb 2024 16:56:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g/1nShbv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A2142375F
	for <devicetree@vger.kernel.org>; Sun,  4 Feb 2024 16:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707065800; cv=none; b=L6mkmltww3fcxtPlQ7++6hdpbwarba1Aw1iNH2JrwiPd4dvggmgTvLZ1chIoBVSnkzC/4ugIWE1VzQLXDibiEN9AER3TkPEHmb3fsPs+NImzJngmGd2VVhQwUd69FtnbDI1MfZMtIpaof8v+6/zVcCqpGkI5DQy920KTyMPjf9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707065800; c=relaxed/simple;
	bh=/naVz0yogTrAGGrLDcPYQNkmDO6KhHPaYIn8ugEJCtY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=H8y9NuxkLqPrlmWe+a/X4sDa+B54VFMpsXsSBGQ8H80RfrpcGVYu4AB/VlpMDroAIu+jRJES70kubpTTjgeigF/a+TgiJbgrEypV9uwU4k6awW1MAfkti6x1naaLeZ/SmfEzs0WKv5FK7FLwot6xsr9oW8YbLOxKxBEyZx6Yi7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g/1nShbv; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5114b2b3b73so548686e87.0
        for <devicetree@vger.kernel.org>; Sun, 04 Feb 2024 08:56:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707065796; x=1707670596; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wa9WkUM08vxQljPPw+aDlDsFQkr1vS2kut5JZm66AZI=;
        b=g/1nShbvzLTOLiurm0+TFEuNEf+hR655N8YAMdSKjPwngmfrqBvBQXsYAzTqBp8IuT
         hYEohmZULdXtPZdC/CpG3PrWhDNbllF5HO8DaH204/RKmo8wTNb0dlXu1IXtYZmtqrCG
         rfxIWrcJv9K0w2hBjY0kbSTxSxCCRyOy18GcoqwVAKWliXTZ4VCvwVxz2a0Mw04SOMmz
         6PtkyD6ZG7n1R8wqVrbSGDlz9MD4704/ZkZMc3cswhXu4aT7ePo0u143r1b/YvG3m4dd
         yjFov5aoAj7UnTpI6WWlvgBciSmRz8+f5bm3tZtj0c2IucXNM3h+w9+/fxN0gtbWQYz9
         FvCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707065796; x=1707670596;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wa9WkUM08vxQljPPw+aDlDsFQkr1vS2kut5JZm66AZI=;
        b=gtEEYerQuQC4Ri/I1hThQggxHlH9ZtVdLPoTnalpqgWhiYEn2FMvYpcW9LbIkxt5QP
         lU0iSR1kjXPM5qD/IB/bo4VAdqIMxFazutU4t+ROPoVU0De2fpQGRab+5IIGAztYgnD2
         oPpgNoZAaWPvp796VoLpF4xpEd/b1id2DnupVrfP6SPrXIPx1/eJvdAD5UQ16BxbDkFj
         Fonzwnu3t4HpqBLUu7WqKgoDvM/PNxlP/G1OFGRZvMWrVBZG9rhCuD3KMEPqCC/Xv7wo
         UQn7pZiPWOCLNkRIkfY5/vEY0CuyoazwlGdKwY+H8UxuicrK/rTTa6+zOSnWQ0lWWMDc
         CRKA==
X-Gm-Message-State: AOJu0Yw9MelpRphmk5SqlKQ9i0z9Ctj/WsN7nvVaBPZtNI3DTcoKWicn
	NWNeI/1myf6GoNM1euBz1eVgLpmFhf5X5W2aZaWuYg0vnUcAHNZjTfkopJvWXHU=
X-Google-Smtp-Source: AGHT+IGy22zr4BwSxp7w5EK4AqOBgOA7A4SiX8h9URT6Utr8E+g/C80ojnzM7eSTXJQgkRWpP6U45g==
X-Received: by 2002:a05:6512:4011:b0:511:4995:c196 with SMTP id br17-20020a056512401100b005114995c196mr2659121lfb.59.1707065796428;
        Sun, 04 Feb 2024 08:56:36 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCX2qBH0w+34afAelcxhz6ixlYnrgnl8tULEvhz3PzSD0UHG+6SeAkKfIYXjWya8uC2ZoQF3Q1iv1nqIFjvhNdtkiQywHH3GIPlY9imk5DkNR5btZH2Q8GTDhRRsxMioihvS6oN4DtD+ne2nW9wv92GKpgaUGpRyrrMEZHHGX3ZeZFZABg926vfbdQ6f+VRhysVElG831KpcffeA3RW1zhigq2rXA7g8h3mlxP08IWwXkQa21z7qvqnB/KIT4+B8GA==
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id o24-20020ac24e98000000b005114808c659sm456550lfr.41.2024.02.04.08.56.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Feb 2024 08:56:35 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 04 Feb 2024 18:56:35 +0200
Subject: [PATCH] dt-bindings: arm: qcom: drop the superfluous device
 compatibility schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240204-qcom-drop-compat-v1-1-69d6cd92aa0e@linaro.org>
X-B4-Tracking: v=1; b=H4sIAMLBv2UC/x2MQQqAIBAAvxJ7bkFFCvtKdIhtrT2UphFB+Pek2
 8xh5oXMSTjD0LyQ+JYs4aii2wZom4+VUZbqYJSxyiiLJ4UdlxQiVojzhR0ZTY61d6qHmsXEXp5
 /OU6lfLfho7ZiAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3458;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=/naVz0yogTrAGGrLDcPYQNkmDO6KhHPaYIn8ugEJCtY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlv8HD5vaz0YuS24rsw6R8TYihvwl8ym3O884kw
 IoQaCDSbq2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZb/BwwAKCRCLPIo+Aiko
 1ZgXB/0RdtHykjPWyR4uE+ZVhlX5EAT1n/OSUoSajw39/zi9zM2Eb9Aum6EZBC+RlFDHhibCrxx
 hbWSK1ncF/dqvGQMv2ncSWshABiS6mgKvzNRA+TSpZicRQNl8lsk+2b2Uo8tel/vyISe1uql7dN
 DzJUcA/Cb8y0koQqALN8diJbrBqD+hZ44JMQSM8aVBiJlOMN5TnXGA4DM914/uB1DzZyZP77BY0
 polhL0QYZhWeIwYhqPLSDc1+17SBF0cTTt8KBpDxN6LsJVfCBfBn2L8gkP81o8D3lUqdtq1Mco5
 o5cTbrBoDm4tsKbo3oUUymgvPGYBNsDFKyVpJLEvjp2IdgWn
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The idea impressed in the commit b32e592d3c28 ("devicetree: bindings:
Document qcom board compatible format") never got actually adopted. As
can be seen from the existing board DT files, no device actually used
the PMIC / foundry / version parts of the compatible string. Drop this
compatibility string description to avoid possible confusion and keep
just the generic terms and the SoC list.

Fixes: b32e592d3c28 ("devicetree: bindings: Document qcom board compatible format")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 51 +++----------------------
 1 file changed, 5 insertions(+), 46 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 1999a5f2f254..2b993b4c51dc 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -10,17 +10,10 @@ maintainers:
   - Bjorn Andersson <bjorn.andersson@linaro.org>
 
 description: |
-  Some qcom based bootloaders identify the dtb blob based on a set of
-  device properties like SoC and platform and revisions of those components.
-  To support this scheme, we encode this information into the board compatible
-  string.
-
-  Each board must specify a top-level board compatible string with the following
-  format:
-
-  	compatible = "qcom,<SoC>[-<soc_version>][-<foundry_id>]-<board>[/<subtype>][-<board_version>]"
-
-  The 'SoC' and 'board' elements are required. All other elements are optional.
+  For devices using the Qualcomm SoC the "compatible" properties consists of
+  one or several "manufacturer,model" strings, describing the device itself,
+  followed by one or several "qcom,<SoC>" strings, describing the SoC used in
+  the device.
 
   The 'SoC' element must be one of the following strings:
 
@@ -90,43 +83,9 @@ description: |
         sm8650
         x1e80100
 
-  The 'board' element must be one of the following strings:
-
-        adp
-        cdp
-        dragonboard
-        idp
-        liquid
-        mtp
-        qcp
-        qrd
-        rb2
-        ride
-        sbc
-        x100
-
-  The 'soc_version' and 'board_version' elements take the form of v<Major>.<Minor>
-  where the minor number may be omitted when it's zero, i.e.  v1.0 is the same
-  as v1. If all versions of the 'board_version' elements match, then a
-  wildcard '*' should be used, e.g. 'v*'.
-
-  The 'foundry_id' and 'subtype' elements are one or more digits from 0 to 9.
-
-  Examples:
-
-  	"qcom,msm8916-v1-cdp-pm8916-v2.1"
-
-  A CDP board with an msm8916 SoC, version 1 paired with a pm8916 PMIC of version
-  2.1.
-
-  	"qcom,apq8074-v2.0-2-dragonboard/1-v0.1"
-
-  A dragonboard board v0.1 of subtype 1 with an apq8074 SoC version 2, made in
-  foundry 2.
-
   There are many devices in the list below that run the standard ChromeOS
   bootloader setup and use the open source depthcharge bootloader to boot the
-  OS. These devices do not use the scheme described above. For details, see:
+  OS. These devices use the bootflow explained at
   https://docs.kernel.org/arch/arm/google/chromebook-boot-flow.html
 
 properties:

---
base-commit: 076d56d74f17e625b3d63cf4743b3d7d02180379
change-id: 20240204-qcom-drop-compat-6c21c9e1f907

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


