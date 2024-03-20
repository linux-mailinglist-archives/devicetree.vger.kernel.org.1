Return-Path: <devicetree+bounces-51806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3327088086D
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 01:13:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C608A1F212A4
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 00:13:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8189328F0;
	Wed, 20 Mar 2024 00:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=emailprofi.seznam.cz header.i=@emailprofi.seznam.cz header.b="acGidNzO"
X-Original-To: devicetree@vger.kernel.org
Received: from mxb.seznam.cz (mxb.seznam.cz [77.75.78.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEDBD28EF
	for <devicetree@vger.kernel.org>; Wed, 20 Mar 2024 00:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=77.75.78.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710893621; cv=none; b=m1sWMg4lTBCPCfIbBP2gR0zmXUU5TV22C6OtXH5eNXP6F1X1Us/6u+NntaBvNkRUrfYfLjnfZYDbAK5pHuBHeZC94BLGSeI2Eqyjtbcn0eetQzR6unyNs6Yw7tNWPv4HAylpng3HpHc82Tzsm9lz7EuamS7Tf0gmvt79t5tCYjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710893621; c=relaxed/simple;
	bh=nedqs4w/9ur1aszQyeOHv/gtbZA2QeV6qIeEjREIQA4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ujWcL5vf0R8Ru+sT7WwVxLfVq3mKycpqPnwrNURuOd+YFYP7v0fkWFLxkRBD2Yp0P85QiHF/pcwMwcVTmNwiCXfBkFkrgJH+F5VxvOmdImNVkpD3zYx85uF8RzQhMOLriLo1bhfaI73hRl9nTDwjrp/LMTT6oVurJWFCGHcfQh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loebl.cz; spf=none smtp.mailfrom=loebl.cz; dkim=pass (2048-bit key) header.d=emailprofi.seznam.cz header.i=@emailprofi.seznam.cz header.b=acGidNzO; arc=none smtp.client-ip=77.75.78.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loebl.cz
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=loebl.cz
Received: from email.seznam.cz
	by smtpc-mxb-f995f5b8f-2qczm
	(smtpc-mxb-f995f5b8f-2qczm [2a02:598:64:8a00::1000:3ac])
	id 15700c8b0ee2815f1195b509;
	Wed, 20 Mar 2024 01:12:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=emailprofi.seznam.cz; s=szn20221014; t=1710893573;
	bh=qdq2mRXcc07Dpv85bxaww+O1dLqKS+YoPsuK6kJVisg=;
	h=Received:From:To:Cc:Subject:Date:Message-ID:X-Mailer:MIME-Version:
	 Content-Type:Content-Transfer-Encoding;
	b=acGidNzO+3BXSKXG5l2oy/hFMINqWvReTmhvXskIyS4mn8fuykiO+OknRo9ZkJdp8
	 0usWwQkwWgylzs8xDiVSCACx5Mzyp+z2p90NMKMCbGtXUrLONgqGw/iY1Sp6Oti4oM
	 CoS/v5Zajgi5Im9yX6/vIFEbKncPlEmCHl8YyLaLH0g6bnX3E4+5qkVDZQZdInAp9C
	 6w+f5vrAKC7dbN0gGvxwg8GO8Hih+17U6J+kvDE1DlZ95XOMzDpeBz8LQiyh8FI6ZO
	 hdrr4PfnZW6yDeNO8KYvFc2UpKacYAmQnwZttQzGNMnR9kgyvRRvd/pwWgqTWRDksd
	 f65d/5Lh9hCiQ==
Received: from localhost ([2a03:a900:1020:47::f71])
	by smtpd-relay-78cd484798-ks49d (szn-email-smtpd/2.0.18) with ESMTPA
	id f5a8b17d-82f2-473a-936d-e8bcf3d95238;
	Wed, 20 Mar 2024 01:12:50 +0100
From: =?UTF-8?q?Pavel=20L=C3=B6bl?= <pavel@loebl.cz>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: =?UTF-8?q?Pavel=20L=C3=B6bl?= <pavel@loebl.cz>,
	devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev
Subject: [PATCH v2 0/3] dt-bindings: arm: sunxi: Add Banana Pi P2 Zero v1.1
Date: Wed, 20 Mar 2024 01:11:45 +0100
Message-ID: <20240320001152.4077150-1-pavel@loebl.cz>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Adding support for Add Banana Pi P2 Zero v1.1 from Sinovoip.

V2: Added Fixes: tag to 1/3 to reference the commit which introduced
    the duplication.

    Fixed all issues found by dtbs_check, except "cpu-hot-limit" regexp
    which is there for all H2/H3 boards.

    Switched back to "usb0_id_det-gpios" for role detection. In one submission
    Rob suggested this should be replaced with usb connector node. But as
    I understand the code, connector node approach is currently not supported
    by the sunxi phy driver.

Signed-off-by: Pavel Löbl <pavel@loebl.cz>
---
Pavel Löbl (3):
  ARM: dts: sunxi: remove duplicated entries in makefile
  dt-bindings: arm: sunxi: Add Banana Pi P2 Zero v1.1
  ARM: dts: sun8i: h2+: add support for Banana Pi P2 Zero board

 .../devicetree/bindings/arm/sunxi.yaml        |   6 +
 arch/arm/boot/dts/allwinner/Makefile          |  63 +---
 .../sun8i-h2-plus-bananapi-p2-zero-v1.1.dts   | 287 ++++++++++++++++++
 3 files changed, 294 insertions(+), 62 deletions(-)
 create mode 100644 arch/arm/boot/dts/allwinner/sun8i-h2-plus-bananapi-p2-zero-v1.1.dts

-- 
2.39.2


