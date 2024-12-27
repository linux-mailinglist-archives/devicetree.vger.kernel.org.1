Return-Path: <devicetree+bounces-134345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B49479FD45D
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 14:02:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 558A2160A97
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 13:02:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AA991F37DD;
	Fri, 27 Dec 2024 13:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="F3xXgcoX"
X-Original-To: devicetree@vger.kernel.org
Received: from omta038.useast.a.cloudfilter.net (omta038.useast.a.cloudfilter.net [44.202.169.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044431F3D38
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 13:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735304505; cv=none; b=Y1Mdv+MNm8xoTAHyDxwOuuJsTu/KZr7OK5bGHboNp38Hfd+BO+XurZU9oO1ArGfduumQsRCyFtL5YnWqUmPESjipLNnNHFSZbglMenQ1QZ17TiBy4hFM8zl/r+Z1JEdoXDwSsUE8gIG7ou3amLRFHpP0pM/CLcEoOCfi4KQukHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735304505; c=relaxed/simple;
	bh=oZlIUbxg1cWJwuwv38BcMjpxkWeQ5cHkxaRh0Lf8Dn0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hXwEbG8tYXc4aM183Ke0dqzeZeWvKBQ3JHEmLkgjipTlpzj8Q3q17BO9ZHDqH7tnbzmufWvwKq2hbMnBo+C41fov9h9vb092eOOK5QlMQ99dalU+yUoq7hi/EIbBc75MzQBj6NR35+9i7r6yEbMht1JyriDUu5cQdDDHkq5/+Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=F3xXgcoX; arc=none smtp.client-ip=44.202.169.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5009a.ext.cloudfilter.net ([10.0.29.176])
	by cmsmtp with ESMTPS
	id QziNtwVmPjMK7R9yJtMDZS; Fri, 27 Dec 2024 13:01:43 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R9yHt7oLdlDL5R9yItTVwS; Fri, 27 Dec 2024 13:01:43 +0000
X-Authority-Analysis: v=2.4 cv=LLtgQoW9 c=1 sm=1 tr=0 ts=676ea537
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=RZcAm9yDv7YA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=6Yv2FhbjKrII3ob1PCcA:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=6cTQ7dIuLzDTMKdT4MZZitwWUZLarutprzerK3v04Kw=; b=F3xXgcoX9ktxnTnZTRr1CL67xf
	6UmNwHnPb6nZAVix18evDOrLL7zE+MejmiDeuKW28QLVftVdZq2h+tSEoEWXxCz7e9fKJxHHom2In
	vbu/S12M5FyluLBj0t/sQDecjEYq0uTGo3NlmPoE9xHjlTJcbUb6XQ0W0wA1u6OgJoFCVGyjnavYo
	jEI65DKXh+AwrNzoI4MNi75iI3lCj9g09d3Vu7reN3KJk4lt99kPkDnkNlmyx5gOLIxBFAihvoT99
	mkHwVlhXV+FT8qLPW/rhzsOAszlQrd/mHXnC9jj5Rt5Rwm2CK7cN5uq/+LG8JPENVC3gZ/ToGdqjs
	IErK2ZQw==;
Received: from [122.165.245.213] (port=58270 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR9yD-002EaQ-2A;
	Fri, 27 Dec 2024 18:31:37 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 18:30:53 +0530
Subject: [PATCH RESEND 04/22] dt-bindings: clock: sun8i de2 clock: Add
 a100/a133 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241227-a133-display-support-v1-4-abad35b3579c@linumiz.com>
References: <20241227-a133-display-support-v1-0-abad35b3579c@linumiz.com>
In-Reply-To: <20241227-a133-display-support-v1-0-abad35b3579c@linumiz.com>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Linus Walleij <linus.walleij@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: iommu@lists.linux.dev, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Parthiban Nallathambi <parthiban@linumiz.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735304469; l=1302;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=oZlIUbxg1cWJwuwv38BcMjpxkWeQ5cHkxaRh0Lf8Dn0=;
 b=swo9HdKJsdunmD/nPYdYttUtU1l2mhY5S9vLJNNbt3Lk+EGVKMvX4bRB8pzSp26tMKsBHMmfC
 oVkIg2F3xAfBT8IoZ1oUqcCkAc/sniyc05IBs93ll6afKn9ntw5uWAF
X-Developer-Key: i=parthiban@linumiz.com; a=ed25519;
 pk=PrcMZ/nwnHbeXNFUFUS833wF3DAX4hziDHEbBp1eNb8=
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1tR9yD-002EaQ-2A
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:58270
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 142
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfHz2QAzHP8xnL+NfZiiPCJSiK+nyMltA01vyZdqFT7GpwCpz7WqEtGFUocNP1im9FUs6DuZzBWZS+f5MeYATfJC9zE+GpeG9ywhwsmbAjlEPZX5jdkrj
 5OwOBbmd34/Ow3gJw5ZyZaGk9nj79KtB09fS6BaSKSAIcpSyG9o9shh/vvaK5ACcwHRc7m8crTIOG2tgkBjTr0bg+LUTTmgPCgk=

A100/A133 uses one mixer without rotation support, which is same
as sun8i v3s. Add it with fallback to v3s compatible.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 .../devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml       | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml
index 3e00905b66ca..ed038967929b 100644
--- a/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun8i-a83t-de2-clk.yaml
@@ -23,6 +23,7 @@ properties:
       - const: allwinner,sun8i-h3-de2-clk
       - const: allwinner,sun8i-v3s-de2-clk
       - const: allwinner,sun50i-a64-de2-clk
+      - const: allwinner,sun50i-a100-de2-clk
       - const: allwinner,sun50i-h5-de2-clk
       - const: allwinner,sun50i-h6-de3-clk
       - items:
@@ -31,6 +32,9 @@ properties:
       - items:
           - const: allwinner,sun20i-d1-de2-clk
           - const: allwinner,sun50i-h5-de2-clk
+      - items:
+          - const: allwinner,sun50i-a100-de2-clk
+          - const: allwinner,sun8i-v3s-de2-clk
 
   reg:
     maxItems: 1

-- 
2.39.5


