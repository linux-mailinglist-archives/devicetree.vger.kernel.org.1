Return-Path: <devicetree+bounces-174820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E6DAAECED
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:22:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8927B9E2565
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:22:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15B2028ECE5;
	Wed,  7 May 2025 20:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RAPPOQR5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536C128ECD1
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649358; cv=none; b=ehQdV/Fayth783yu5shQHuItFizSpz9xRKFF3cf5MqAr0aWQ2XtvIhaEok0i3/xyQFaS2tL72tfH8+qaQKE2dQejk2FyBrMaItry7XohY0fcHQ1kzAkekmr0Qmh7z4HjJCmRjJuyW3NWBQjmnavAZV6Eq0HqbuXBo0iLE00FoIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649358; c=relaxed/simple;
	bh=bHTfZ0+5iSv4Kdxevbh3ZYWMCmAEtkigQQWfvBsIAVo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Uh6Q5f97lT64oIVJ8uzPLj5IkVS07HVXwXTE6/kbpnwvG//I0AV5naG+dN4voaaX5qgd+iqn691E+k3el8XWx6nE9yprpswsLjuXoSbPm+CzJ84vLwSHK0mJaQvycJk4e08FNuBSNq0fJgcCkv3qIfmqBVbLSRwqRKI3WhrTqhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RAPPOQR5; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-730580b0de8so793953a34.1
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649355; x=1747254155; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QHElNaXE3LEW3PDqEvXaDUnvuob14iBVgPt+yqm3W/M=;
        b=RAPPOQR5AAPp2WnCLTirLv5Wxng4Xx+rqw4HNsS3/cpetK1JzSpMnTHe9N4eXMZq9G
         +B9xUkfn3eax/iQWQO/pWx16I1n7MEccZfsmY0GYFi/CoZK5pASQ8Xb6+z1v9zsRH7A4
         wRXl86SnYAZXUdw057yqKqQVOCVZZ3DsR0o6f6q03v2wU/q0WsUcwO1/1H8kCQKJwQsK
         E0UOc2CYByDooZYRorQGeFmIC4k5GOiMj3whyyRPgI3eFOkHReWENnkIsY1NncwbxIsc
         M+kR52haWSoIQXC5T3F8gLhBlg8VQ3ohKl0Del86pVa12FhL2unzbNmGDie7jX5HeIye
         KhbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649355; x=1747254155;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QHElNaXE3LEW3PDqEvXaDUnvuob14iBVgPt+yqm3W/M=;
        b=tObO+8imQvqsdDsjCllVQvePgzWBEIQbgAwQLt4Zmn9gcHuK82Js7FsbxpQaxfDA4p
         mdXeotOY6qhmHydkQzL4tEAvnSjdRtbr1L/PDk2Dq0lXYQ8Z0LjdS5Sb+UM4Q1/0D9mY
         5ANB9Yo4b95ymWR1bHmnjBf2V40NEXUPF3phNlYbriXjL3ow5dOC+QHPxTI2Ryg8Yh0v
         G5UIxjBjwSRjmhM3jWQu4I6UB+yT9jBzIRori59TbNkkIXMCM4fE2jb2kGD+QUJJsqeF
         f8psikxwbtG8KMcEO4cZd7PimgcGbvxhA3NwSk7qO0wOnkqNOJcoBIsBeRs7ULwLvrF+
         L9EQ==
X-Gm-Message-State: AOJu0YyKsTVv7Hd2PN0Qjs+8HFTLlzpkwIkShNwVBiWR1rc2HIbtRaoQ
	ttZh4urgQMb1y/9f0Q4GKPxnfef8FxpVzl/e+bFeHt3CRZdWSasn
X-Gm-Gg: ASbGnctPrvIaEzi0i1XeAyTIKlTf78CmVnvnkIyYdIT6BJfLVbgPYyybirTkk6qOoRv
	Ey6+9seKkqwZJYSJ8Aw/McMAHHe5cikjAjVz0QwTLNgIEYNmFVIUJ34pNFNWC/+JLY8mozW+uqc
	9ftALEgVwI8SIoENtl1HBdFT2lA16mtQNY8bsHA/oybgVnbp3R0HhkvNi7LM0x59ZFMnLeyC0vj
	q16omr6dIH+F3Me2dDFny6lDtflh3cUfU4/03e1Y1dGzc0gCeOwGF+pfFVmlKv77wL4oW5rDu+N
	5JqCXrXcP+Me87Ju53hLluC3WcUvndmyQRC5h7Ah6pN0jKTiIRHikTN4g98o
X-Google-Smtp-Source: AGHT+IE6odboNkW58fCeUX14Z/mIvgc1rzNqO9suS76MYTky2niUs9LOJQzjbW6M5IVh5uu++8EYIQ==
X-Received: by 2002:a9d:7995:0:b0:72a:48d1:7fca with SMTP id 46e09a7af769-7321b395cf5mr517632a34.4.1746649355188;
        Wed, 07 May 2025 13:22:35 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:34 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ryan@testtoast.com,
	macromorgan@hotmail.com,
	p.zabel@pengutronix.de,
	tzimmermann@suse.de,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	mripard@kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org
Subject: [PATCH V9 10/24] clk: sunxi-ng: ccu: add Display Engine 3.3 (DE33) support
Date: Wed,  7 May 2025 15:19:29 -0500
Message-ID: <20250507201943.330111-11-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250507201943.330111-1-macroalpha82@gmail.com>
References: <20250507201943.330111-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The DE33 is a newer version of the Allwinner Display Engine IP block,
found in the H616, H618, H700 and T507 SoCs. DE2 and DE3 are already
supported by the mainline driver.

The DE33 in the H616 has mixer0 and writeback units. The clocks
and resets required are identical to the H3 and H5 respectively, so use
those existing structs for the H616 description.

There are two additional 32-bit registers (at offsets 0x24 and 0x28)
which require clearing and setting respectively to bring up the
hardware. The function of these registers is currently unknown, and the
values are taken from the out-of-tree driver.

Add the required clock description struct and compatible string to the
DE2 driver.

Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
Changelog v2..v3:
- Lowercase hex value

Changelog v2..v3:
- Correct #include for writel()

Changelog v4..v5:
- Whitespace fix
---
 drivers/clk/sunxi-ng/ccu-sun8i-de2.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
index f2aa71206bc2..a6cd0f988859 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
@@ -5,6 +5,7 @@
 
 #include <linux/clk.h>
 #include <linux/clk-provider.h>
+#include <linux/io.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
@@ -239,6 +240,16 @@ static const struct sunxi_ccu_desc sun50i_h5_de2_clk_desc = {
 	.num_resets	= ARRAY_SIZE(sun50i_h5_de2_resets),
 };
 
+static const struct sunxi_ccu_desc sun50i_h616_de33_clk_desc = {
+	.ccu_clks	= sun8i_de2_ccu_clks,
+	.num_ccu_clks	= ARRAY_SIZE(sun8i_de2_ccu_clks),
+
+	.hw_clks	= &sun8i_h3_de2_hw_clks,
+
+	.resets		= sun50i_h5_de2_resets,
+	.num_resets	= ARRAY_SIZE(sun50i_h5_de2_resets),
+};
+
 static int sunxi_de2_clk_probe(struct platform_device *pdev)
 {
 	struct clk *bus_clk, *mod_clk;
@@ -291,6 +302,16 @@ static int sunxi_de2_clk_probe(struct platform_device *pdev)
 		goto err_disable_mod_clk;
 	}
 
+	/*
+	 * The DE33 requires these additional (unknown) registers set
+	 * during initialisation.
+	 */
+	if (of_device_is_compatible(pdev->dev.of_node,
+				    "allwinner,sun50i-h616-de33-clk")) {
+		writel(0, reg + 0x24);
+		writel(0x0000a980, reg + 0x28);
+	}
+
 	ret = devm_sunxi_ccu_probe(&pdev->dev, reg, ccu_desc);
 	if (ret)
 		goto err_assert_reset;
@@ -335,6 +356,10 @@ static const struct of_device_id sunxi_de2_clk_ids[] = {
 		.compatible = "allwinner,sun50i-h6-de3-clk",
 		.data = &sun50i_h5_de2_clk_desc,
 	},
+	{
+		.compatible = "allwinner,sun50i-h616-de33-clk",
+		.data = &sun50i_h616_de33_clk_desc,
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, sunxi_de2_clk_ids);
-- 
2.43.0


