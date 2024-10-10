Return-Path: <devicetree+bounces-110113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2909994E4
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 00:07:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 03F082854EE
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 22:07:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F12521E47A3;
	Thu, 10 Oct 2024 22:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dSaN0agz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1A91E1C15
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 22:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728598025; cv=none; b=mSDr+OFp2UfUhmo/z1o8SbK79yQuMO9yrv8N5CjrNmGANm0Byf94H1DQ1ugHGyYi4I6A0npBD2IvPDJVliO2hvzNk3lLlVx2CSfGQsLic1oStXwF5N/93pEbRSUltu8fpUYxlY7aStJuSl/B5j0SRSEHZLhKOVbOQzFS4DSNH9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728598025; c=relaxed/simple;
	bh=XwSSROr04qTLp4umxCF5Vmf6ekWykDAwmfRbacMwStU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n6SfzIea8mCwlxJATbTEUyUrXThjfgpeYbGrZE0hKL4iSSh3tDLGSvyZtJOQGK6qhRABdJPoxRFRuJRpQLlPdm/ZwXSY5kM6FGljNo3JmQ00sWs2jYZ+VzOSg+Bz2+e0beCH53Aj7EIFRpCS3cOW4wg2Ah9aJLjfbdNIKW0II5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dSaN0agz; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a999521d0c3so236211566b.1
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 15:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728598022; x=1729202822; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cjbHjLEu2DAWDOzM41sPKMqBv2WP+F41P/bIbauuyPY=;
        b=dSaN0agzh/C6p9biZnOGOaysQqk7x6Hd1J+IVj8HX09DJWoqBKq8yr2nDvRrw2dOUI
         GPzVXGZLAdkWWGS3OSxnG1tk8TtQrLhAztKKR6WFN8wSzqw1Ij0M6MVRAYz5SjU/OELQ
         ELgr556lUmb1YlkuRU4L72J1cADPhHoEbRRg4CHVBotLdA+nI1r0Ybm5+KMyB7chYDLW
         Az7PAfVM08S8RAuog/Jk58sosnB+16780mloAcK6+rEohjtBD1ssmtkMOgcGSpcz8wMx
         fWnhol6buZKoOM2fnZlms48wEEsm4awMh8pFd2TQdpgATWEb2GmAXXsvEh6Um88iSE/R
         6hrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728598022; x=1729202822;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cjbHjLEu2DAWDOzM41sPKMqBv2WP+F41P/bIbauuyPY=;
        b=xSejGoE8Ox/oS5dPW2LnqbN4yFhKk6hL7paO197Ah3aQ7k+qHmOAgsBM++YFr0ej+1
         d6QsWSR2A2aNJJ3SKA+aYDfC3zdYmAEZkLM6Stbuy92m5aTpBAXqVUZmDnUrLKPotNeH
         lkIW8fLlNWf1/Ed0gxYJ+WkIzEpvGHpRK9Xr0oBQGNskw8tdQ8STdH7PZ5xjPC/aKahE
         rEDwTJbgQjx5znyzJUmXRNWFC0ez1MYfuDHjWsPqCmvK1z0F+/QadRXG4KqdXIHq5hhW
         U7dFZJkKoE6TjDv4wFgx3qdVITduICg1bmaWx1K2oiWT7k9/eEcYGQoyRSPXnBe2gU6w
         bSGQ==
X-Gm-Message-State: AOJu0YyKOQtAIuiyUVdWPujELszC9zqOuaX+26pA1QVP44cY7z4ihzFJ
	OZrc7BIgjNda5ADzmET3SrUOvn/O0L9s5I/9BtMTrdng+b/L5NOKUUpdz2LpppI8/nTdC5ne0vo
	+
X-Google-Smtp-Source: AGHT+IHYz6MOVLADDcStR8uECjw63XJjS8hLPuaUrw1S6zsYGesan2YlWqJ6hHoEFx4gXVl5ZV7mMg==
X-Received: by 2002:a17:907:9806:b0:a99:44d1:5bba with SMTP id a640c23a62f3a-a99b95a7e72mr35111766b.45.1728598022524;
        Thu, 10 Oct 2024 15:07:02 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a7f27e5esm140825466b.80.2024.10.10.15.07.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 15:07:01 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 11 Oct 2024 00:06:59 +0200
Subject: [PATCH 1/8] ARM: dts: bcm6846: Add iproc rng
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241011-genexis-xg6846b-base-v1-1-f04d6f6f93ce@linaro.org>
References: <20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org>
In-Reply-To: <20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

The bcm6846 has a standard iproc 200 RNG which is already
fully supported by bindings, so just add it to the DTS file.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm6846.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm6846.dtsi b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
index ee361cb00b7c..c2a8deef150a 100644
--- a/arch/arm/boot/dts/broadcom/bcm6846.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
@@ -108,6 +108,11 @@ uart0: serial@640 {
 			status = "disabled";
 		};
 
+		rng@b80 {
+			compatible = "brcm,iproc-rng200";
+			reg = <0xb80 0x28>;
+		};
+
 		hsspi: spi@1000 {
 			#address-cells = <1>;
 			#size-cells = <0>;

-- 
2.46.2


