Return-Path: <devicetree+bounces-240514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C1353C72403
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 06:27:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 8962B29FC3
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 05:27:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27665137923;
	Thu, 20 Nov 2025 05:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mvN0rtmv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AE32D97BA
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 05:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763616380; cv=none; b=ka6w0RuKOM4lxNflnbnzu/RNMZCxBckBnOuPE6tiy8sjZ8M82UmvqDvKD5XMvAf9ZlLtA1DLnSmTyS2e5v1t5TMtNggujlwQ0NMQIVa1J6l5qNPurOB4lRIi1RwcNnUl1StNQLXydPsuy1oNc2je2p5oPgAlhlymCeH+qeqRIUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763616380; c=relaxed/simple;
	bh=ttl/th87rXvNyHmcSwWPnJPpHSYTR2HIKjXWUQwTrdM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sB8oZNuI1l+6p2T5DXVesc82HYEWWtlr+rXXgtPIsWIMp/0EF2HJz39FWbJkaBX7mtCDJnM7VjK4FVHJvMd7zmE124uzlsP1FmSUT5oQBsjx8ay+s8nH9l6srkVV6z61/AFWNWh88GKzS1jj9taHylvoGMbDSIjpyEmjcpLJCAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mvN0rtmv; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-298145fe27eso7574805ad.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 21:26:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763616376; x=1764221176; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qF/HQIOynCm0t72RaSXKVxc7uoyjtBGo96ikoMO3RzI=;
        b=mvN0rtmvwCaD15slTGmOWv/FacFp7/m6e98oG+AIKxFRroSOuQZijxSS9JuvCcoHI8
         Ba28szLtb5GXWN/tMKCkkScgFYKjCwzTiZmiF6vs91SxxoRcnNQUYGPQydMxBrlClFbq
         HdV+3iW8uN1RKfhqxwdQzzdcX/GtRP8X86u8S3R9kpnslVoBb7RiFQqlAjnqD3Rb5kgV
         P40viyNgmTT7Zy4+yUG77gW+mfZ9boRDFBJE7p7bNK3NQJxMBcL1SHGBvHiDOy+h6Yhe
         W3WAvJdeNI4fNy+HRNZgnWfef79HgynMQX63x+3N2znh53xg4c34Z7x9Ol1Iw3pVlGxo
         8Sew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763616376; x=1764221176;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qF/HQIOynCm0t72RaSXKVxc7uoyjtBGo96ikoMO3RzI=;
        b=m9c8utaBtnaTPcjzrKaSJFqhJu4F+dfv/oS3bZUAAfZw3/DbX6emF0hoXH+jh9DDDW
         Jfku1p7MwBv3DMFwLOoS2nu9kgV7p5ce2CfNrZ5lAMu7lJu8l2ytzAONGY4fEfNL9EZG
         Avmd/soBM9vbqZvPGDGTynT2XKtFv/l0w2oZ0CK1So9eaILBlsME2qn7KwFDkkigmg/I
         Wi19RRPYPPlD53fzBngZv+9dxVexYj7X8tdITSij0zBzu8LBLjeGlRJF/s8teg6IMtWv
         ZHkD4lKcniH2dO8rde7idS4ipLdXRd9dw2qDfvNMdEkigELhscmWPnoSKEX6libMpMyB
         ff6A==
X-Gm-Message-State: AOJu0YwCBccyuLIO3C4ig66AG4z6lHt264VdqWRl+vYvFew7z2cddqLi
	G6E4rR3xwYTUlNZ1aqLkXr33lGUTmAyzHnze5tDdNqR6RqQUZ1Lnc+GS
X-Gm-Gg: ASbGncuV34tH58FZZ1n7zh+N+M6GlXSDJFx4Xs7ELeo44Bu45GGJu79IRhVbQxKc+Oa
	yJpUo+k61rsN4k4/+9UsfHfNybaZTUVL0Zfhwd5y5lgcQ6Y6+w5I02ojMl8tmoqXNaCxlbNUJLM
	rPRjctH9zyJXZS/uqlgkJ6BIP+B4l3pBqOVIiFvdI37W0d93ZV672klJ3sR/YXVESVyTMpRqL9W
	DPqlcHZZq7WQhW4A00Y5yrQq5FRVWtAQyS5lBnSsypAPbmZv/HOlHQwmq4EVZgYkzOD0NAExOxP
	ngRltfWV+1ZQKCcrWqKR2MscJAGnPY7ij2ddo1vwygUIgSFtTsCpzCYLqRuYaNe0WRAaxURNxIF
	5X0ii9YtP6QVWIdFxbNSd8hA468dxPXjZ9vvGa8msQjtifQ/EgGSqiHvaqbww6HNtilw30C6arX
	RwK00ym0sMdQRNxOxMtguEQqw7YP2hntSX5F/02bAIuzPpbBnDEe3tpMoUVNzoq/DCnXbhlOshJ
	pyMhP6A13HM4IVKJmDytSuVD836SgJDd4Y57sabpVaGdZXB9EZlMKB2yokJdC23vYuCZUjwZMPp
	JzmkqRc7Z9zetFp0pPdr0Q==
X-Google-Smtp-Source: AGHT+IGJp8Cd93sU3s6BBrNTH9o8Scku4SN9E6zIdoS1tC6GjkQGhpnvZ3DbOoHW82d2G+ALkdH5tQ==
X-Received: by 2002:a17:90b:48cd:b0:340:d81d:7874 with SMTP id 98e67ed59e1d1-34727d50e86mr1936462a91.26.1763616376006;
        Wed, 19 Nov 2025 21:26:16 -0800 (PST)
Received: from 2001-b400-e301-38bf-be0d-b72c-6bec-2812.emome-ip6.hinet.net (2001-b400-e301-38bf-be0d-b72c-6bec-2812.emome-ip6.hinet.net. [2001:b400:e301:38bf:be0d:b72c:6bec:2812])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3472692e5d3sm1221342a91.9.2025.11.19.21.26.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 21:26:15 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Thu, 20 Nov 2025 13:26:01 +0800
Subject: [PATCH v2 4/4] ARM: dts: aspeed: yosemite5: Add ipmb node for OCP
 debug card
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251120-yv5_revise_dts-v2-4-4d7de701c5be@gmail.com>
References: <20251120-yv5_revise_dts-v2-0-4d7de701c5be@gmail.com>
In-Reply-To: <20251120-yv5_revise_dts-v2-0-4d7de701c5be@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763616361; l=881;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=ttl/th87rXvNyHmcSwWPnJPpHSYTR2HIKjXWUQwTrdM=;
 b=JEsyeMSA9gIhSSUyjpQLiUtfsCFoU+UZynLjaWaM6x/TjxUQxg8e9xdI1yHXyYRZzvK5xSzVp
 nPAWG1911ZqCjSlQvVZErHuhB5TxTtt6NIApPgyBuhQC3d0mB6JC3RG
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=

Add the device tree node to enable the IPMB interface used by
the OCP debug card.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 060757b7211a6da777c51d9f0c886796cf2450a4..b4ae1628ad5a8f8b5283f88760877846862b3835 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -365,7 +365,14 @@ i2c6mux0ch3: i2c@3 {
 
 /* SCM CPLD I2C */
 &i2c7 {
+	multi-master;
 	status = "okay";
+
+	ipmb@10 {
+		compatible = "ipmb-dev";
+		reg = <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
+		i2c-protocol;
+	};
 };
 
 &i2c8 {

-- 
2.51.2


