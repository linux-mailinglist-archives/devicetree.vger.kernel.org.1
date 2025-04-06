Return-Path: <devicetree+bounces-163480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D47A7D084
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 22:55:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 87990188880D
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 20:55:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13FD91991C9;
	Sun,  6 Apr 2025 20:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lucaweiss.eu header.i=@lucaweiss.eu header.b="SG3AWJGl"
X-Original-To: devicetree@vger.kernel.org
Received: from ahti.lucaweiss.eu (ahti.lucaweiss.eu [128.199.32.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332472A8C1;
	Sun,  6 Apr 2025 20:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=128.199.32.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743972930; cv=none; b=j92a2s7N4IPj5gmoK+kjzUyfWFRjJjJ3ljPL5mtI5Sda9wBlYXitbnLmxzlmXVKBvd3aoNhgtchNAXMQWA1b3czY88kSvjfALla0D6iND6VBSWFh9ge9iG59kIdposlZZnXvYw3WkLzmMtKvq/hOQQDxliCc8G7i10dl5Trmc8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743972930; c=relaxed/simple;
	bh=jWdQxL4tiW+qSHnkQphZb/Zp5cQSwhzY2xtPrVC3GWE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Ltg/+hVboJpX164MDlCWvj0E90t9PKeeap3F2yxGejsITQaQG3SlMZ81h0Fzv6S6rhuZfqlT0VMWL50R0AEzxQBvFgDzYKeAA6wnSKS575zyf6L0ldSDPe9gciHUIep2yhk6ZFPBbs34bbIdv3vIzzA8oAujr8s/koxHwFWj3JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=lucaweiss.eu; spf=pass smtp.mailfrom=lucaweiss.eu; dkim=pass (1024-bit key) header.d=lucaweiss.eu header.i=@lucaweiss.eu header.b=SG3AWJGl; arc=none smtp.client-ip=128.199.32.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=lucaweiss.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lucaweiss.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lucaweiss.eu; s=s1;
	t=1743972926; bh=jWdQxL4tiW+qSHnkQphZb/Zp5cQSwhzY2xtPrVC3GWE=;
	h=From:Subject:Date:To:Cc;
	b=SG3AWJGl4UCZj5poyNEUtGVzmPjS8Z1uAjvISmrjipNFyRUrxiheXaZS2YBGXywek
	 fDwAi242mk0UGaCCJzO5I3kDNd1Wkt7V6AI47kLUdZwQY6Ptnq0vzKCTEkFaq9z35f
	 LfPSFol1Nj0SUTyV5Y6xiqWDMwqJ/U3Zr2D0zybQ=
From: Luca Weiss <luca@lucaweiss.eu>
Subject: [PATCH 0/2] Add interconnect nodes and paths for MSM8953 SoC
Date: Sun, 06 Apr 2025 22:55:02 +0200
Message-Id: <20250406-msm8953-interconnect-v1-0-a23e22e236e0@lucaweiss.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACbq8mcC/x3Myw5AMBBG4VeRWWsyrsGriAX1l1kY0opIxLtrL
 L/FOQ8FeEGgLnnI45Igu0ZkaUJ2HXWBkTmacs4rLrk2W9iatiqM6Alvd1XY08Bxxi0ah2mimB4
 eTu5/2w/v+wGr+7Q9ZgAAAA==
X-Change-ID: 20250406-msm8953-interconnect-ef0109e8febb
To: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Vladimir Lypak <vladimir.lypak@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca@lucaweiss.eu>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=707; i=luca@lucaweiss.eu;
 h=from:subject:message-id; bh=jWdQxL4tiW+qSHnkQphZb/Zp5cQSwhzY2xtPrVC3GWE=;
 b=owEBbQKS/ZANAwAIAXLYQ7idTddWAcsmYgBn8uoq9h70vV5OPX88cyIjjjTYTKq8XihZFUn/x
 YI2zhndcQ6JAjMEAAEIAB0WIQQ5utIvCCzakboVj/py2EO4nU3XVgUCZ/LqKgAKCRBy2EO4nU3X
 Vv9sD/kBgKhGOAV/rOtwBE55cyyss3AFX+12gXgk/vGNsEBtS56Nj9aZF2q7+WOcTC/wEGJZWRE
 2d57t6D1RLgwAbxGncXLLp/xU0yRsNqJ80DrIuygHN/EkTnNwPUz6LDwN2WlQfJ69o5uGm9doxh
 Jgrtyd2c+IzQLi5WqM+pWxvxPnvbt4Qyko6fU9UO4+HloUmReNUgYBb6ET2kQZ4JfRZsTWqLBxA
 O7AP5Hu6W7rqe1eEbg0nQ72OilBBDdLo+gNmFXHLAZTaAoSoccyYZ+pKSYzc8/myWCsk6+qWQCi
 DOAogTHNxphbWAuMjFIn8OZ+W5y97Jq9Ool1/ByGn8obrO3pzPaNovyU5Ne06aYSyIvQRJescZg
 oemCGCAkxTPRwQqrh0u0KZ+5qHiP8nMsXkXxDXyy9gttlKd6/XbJx8Eqq8yKym63m9kCnmYO9fY
 RBV+hz3xe8+M69oPITMOvgMpaZknp3lvTEVpHdBPASYBr1TmpXIfdDpI1hueoyrvC3mvUyLwstw
 vNVkWNrTwVUMAvQPJyiE2AIKoLbfwL7hVVKXj1qu+0QMtaZqmY1XEcAwmvYhfpNpWfcoHOwl1Eh
 3px23JBHzKVnIRUA46sZfMiNoQ72yspWOEWr/NR6vB0pht7+T2q7QCTq7IKaNiwZTeDXrnrKmAB
 Szpw2uC+nQ17smQ==
X-Developer-Key: i=luca@lucaweiss.eu; a=openpgp;
 fpr=BD04DA24C971B8D587B2B8D7FAF69CF6CD2D02CD

Since the interconnect driver for msm8953 is already upstream, let's add
the nodes which are required for it to enable interconnect on MSM8953.

Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
---
Luca Weiss (1):
      dt-bindings: msm: qcom,mdss: Document interconnect paths

Vladimir Lypak (1):
      arm64: dts: qcom: msm8953: Add interconnects

 .../devicetree/bindings/display/msm/qcom,mdss.yaml | 12 +++
 arch/arm64/boot/dts/qcom/msm8953.dtsi              | 96 ++++++++++++++++++++++
 2 files changed, 108 insertions(+)
---
base-commit: 3bcfefea9711deb32db207977d531d720d32a0a5
change-id: 20250406-msm8953-interconnect-ef0109e8febb

Best regards,
-- 
Luca Weiss <luca@lucaweiss.eu>


