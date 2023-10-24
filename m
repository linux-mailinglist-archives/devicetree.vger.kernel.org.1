Return-Path: <devicetree+bounces-11449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2747D5CC5
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 22:58:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1AA73B20FBC
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 20:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20DAB3CCE4;
	Tue, 24 Oct 2023 20:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=z3ntu.xyz header.i=@z3ntu.xyz header.b="TUFQXnVz"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F19A1427A
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 20:58:34 +0000 (UTC)
Received: from mail.z3ntu.xyz (mail.z3ntu.xyz [128.199.32.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE0CB10E4;
	Tue, 24 Oct 2023 13:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=z3ntu.xyz; s=z3ntu;
	t=1698181080; bh=N0PLZ2NjQzjfPEsssiVQ2t7E5m+w3JYFmXuWa41WrYY=;
	h=From:Subject:Date:To:Cc;
	b=TUFQXnVzD6Dni3IP7Pf15z+o0ZYyI1I1G0dxOoj7D4uNuw3nB/4C6Ss/Gh/KURqBn
	 R6cRbJFQYczrLnT3HEO6D7bO3zqver1o4GUJR/R/RKHaRc++yUfwuiEHLke1V0WrNR
	 XgkgGI02oQcnX7V6k8GyyVhAvZtATSOBdQzus54Y=
From: Luca Weiss <luca@z3ntu.xyz>
Subject: [PATCH v2 0/3] Add support for HTC One Mini 2 smartphone
Date: Tue, 24 Oct 2023 22:57:48 +0200
Message-Id: <20231024-htc-memul-v2-0-8912940b6f95@z3ntu.xyz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMwvOGUC/3XMyw6CMBCF4VchXVsz04KlrnwPwwLLIE3kkhYIl
 /DuFuKCjct/MudbmSdnybN7tDJHo/W2bUKIS8RMlTdv4rYIzQQIiQCCV73hNdXDh6tY5GmCqhD
 xi4X/zlFpp8N6ZqEr6/vWzQc94n79KYgnZUQOXCsjNUKZQq4fi2z64TrNy47+W6gbJSpVEjWY0
 yLbtu0LVHyjltQAAAA=
To: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca@z3ntu.xyz>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1541; i=luca@z3ntu.xyz;
 h=from:subject:message-id; bh=N0PLZ2NjQzjfPEsssiVQ2t7E5m+w3JYFmXuWa41WrYY=;
 b=owEBbQKS/ZANAwAIAXLYQ7idTddWAcsmYgBlOC/NyjsDx1WKALpi6WpjAKQmizfieMow4aOhj
 7QB4qGINBOJAjMEAAEIAB0WIQQ5utIvCCzakboVj/py2EO4nU3XVgUCZTgvzQAKCRBy2EO4nU3X
 Vn0gD/9Rlb1cX26i5VZcC+j8G/B8ejbBrquzxcmivLe8iiCxR2QddAGYvOqacR+vtDG4jhHafdU
 ZCnFUMmbnfVD2SVqkQvSZ8Fx7KQZpnv/4bR1o91X6vyXSXm06ozymmxuVPIVXAEtBwMU2Ulb8a3
 +U8DgnN5EcnOollP0joawfHAd/GXeX6MKmB12VnetdqVKTqsremGyLcJ4KYHawGis+RRafTSWlT
 oJ+WLqnzLhhnriLbzi2q3AabTmz0SwNFn49Yibo+VZK20dKXplA+sF4Ojfq7U4t6eaCWFVCm6+Z
 EoG4z9A1R682yccs4YnRIcQuxP+RLEYc0VkP5bXH9zYu/bWJK1LcmYMAu6eLa80J1CHdi6JqbCn
 Kh9k4mwlyRo/osTE0T+Yiqu5nU2MxK4tnHwM/jFTMJjvR5k//o6gfzf2/aXN8a/5oNegbxZG3q1
 R181LFlXYQd0+nJ5n/BOEY8ub6kwbVzl3pbCFAmOFHLmxamesYnT8TwpSFoZ8FVQkDKpGC26J+Q
 3RJ6ctKRgN/WLpUt2aNKZeyuOl2NGot170+mlAOoL5VW6Lk7y6bfmo1x0BEpQOCzo6ddEyFmdiv
 H2FxXKyuVBCsMI/JrXKxFn872lNde4ngqoXKPSuIFQ8p64fwfoWw6UUKvydqcAguU10hD+ciFtx
 7D9GGKSkliXtUMw==
X-Developer-Key: i=luca@z3ntu.xyz; a=openpgp;
 fpr=BD04DA24C971B8D587B2B8D7FAF69CF6CD2D02CD

Add support for this smartphone from HTC which is based on the MSM8926
SoC and codenamed "memul".

Depends on, runtime-only, bootloader enables watchdog so we need to pet
it to stay alive:
https://lore.kernel.org/linux-arm-msm/20231011-msm8226-msm8974-watchdog-v1-0-2c472818fbce@z3ntu.xyz/T/

Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
---
Changes in v2:
- Pick up tags
- Add spaces around regulator nodes
- Set firmware-name for adsp
- Expand reserved memory regions to cover everything somehow reserved
  downstream, leave no gaps. Seems to finally fix also nbd randomly
  failing
- Remove internal storage since somehow it has killed itself on my
  device since last time, maybe by my random memory testing writing some
  not-so-great commands to it. So let's be safe and remove it.
- Link to v1: https://lore.kernel.org/r/20231011-htc-memul-v1-0-76e57873190c@z3ntu.xyz

---
Luca Weiss (3):
      dt-bindings: vendor-prefixes: document HTC Corporation
      dt-bindings: arm: qcom: Add HTC One Mini 2
      ARM: dts: qcom: Add support for HTC One Mini 2

 Documentation/devicetree/bindings/arm/qcom.yaml    |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm/boot/dts/qcom/Makefile                    |   1 +
 arch/arm/boot/dts/qcom/qcom-msm8926-htc-memul.dts  | 369 +++++++++++++++++++++
 4 files changed, 373 insertions(+)
---
base-commit: 9b969874004ff05d05e4340bacc1699f72f58686
change-id: 20231002-htc-memul-742a8517d24b

Best regards,
-- 
Luca Weiss <luca@z3ntu.xyz>


