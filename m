Return-Path: <devicetree+bounces-256263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E3ED38821
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 22:05:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1395E3007C2B
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 21:05:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96AA02EBDFA;
	Fri, 16 Jan 2026 21:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Itymi9QL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146092E11D2
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 21:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768597529; cv=none; b=eJVO5Sg2ECjDa9cXNEcs9EWxaJYkuzFHuljPFM+d0WDVszdUOcEIoDF1h8DCCJK7/JesJcN0HPrxh9i7A9RETtS76yovTrHmC50KevgxU6V5d9mPcmoScRyENdkbxiRPOYyOAZmlqmOBJpiu3AYEkqgdplMYPSr+SOuLeFsblsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768597529; c=relaxed/simple;
	bh=XLrvIbMrVJXRnzqBUjuW8gGF+n7Uudw+BNS8Si1mISM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=mue/PieUbDV8pUEluRcqOk5OqT/3Fe4JTbBreSDCLXQSgFSx+KdFrsOvr6XOPFIu96Fn1RSSh9duhDbaJiBWkXxRyi/ZOVdTHyZ8eeFQbBz6kRAdQpo3Q7MS3FvTgAgtfQKgUId+WLhWc3xrMmYpNt6gIVgk8rkdTEQX5lfC9SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Itymi9QL; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b8715908e58so44866066b.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768597526; x=1769202326; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g1isH0tUnm2oT2WHcWd/StM+CJam3RvoJ3PEdManM9k=;
        b=Itymi9QLa4+TfMr+OIwyXYZLTlCg1uUus4lxTOnxxMIbgnzWy9a3o/8gLfTp19CI+q
         mgk2h7MmIf2FOWevKxNYiFuTmytj5YHxkATGlRbNHVv5xmB6GgUGJk22HcCnmbG2JXG6
         YXS3lvz7kRk4V2PFmdyl/M5Xcf6kSB6FsEDIDpvsCWL21+y0gnyZDBmD6SpwBNAfqxSI
         76E53OH4lMcuwGBxlljWnurnRR5gGmhagvMzFdAOtfh8VeaoQTdGFuWCvoU5gOAa0y3h
         uQAWQAOLWCB7zd0uyplz1AlHjFXY58HzNZHcWz1SyOmVz+smjcz3Wazs59aIuvFRl4Jv
         er5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768597526; x=1769202326;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g1isH0tUnm2oT2WHcWd/StM+CJam3RvoJ3PEdManM9k=;
        b=p+H7eRgjig00qVxE9qGSDBTNySfXsav8Sv7a9oEhSUpDwJcFNzpzQEgxJvGLwwzKPF
         pxpD3OBC4yJtEvru6jiB3hOgIq6S2ABNE/wmZXhJ+89sJqf3n3Q4Nc0kQD4JvUvLLu8f
         h4Tj2K5cxiph/fNya41z6bYp32fdc6yhYANhoaBLIXQt/sEKujFMvx5AtfxKNv6WjwDP
         tuCs80WMqfeRLCt5ZP7DI3Q1yJ1wmpsYFylBZrhLp+gpvKWYAl2qdlhX5vAspeVwzA7H
         fGt/wAZqSSBB4IE0PbrdnjC+O47z5jYbq4iL6aNzBWeolc9hWaRb9kpoENnbv0eSvNZC
         XdLA==
X-Forwarded-Encrypted: i=1; AJvYcCXyv9t/cqd2rvcFimF1ajMQ/EnJLfSgxqu8THaI3iKqqSN0r74scRrKgTeo9tB+BvtMEnjURkzRk76Z@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2tIrf48ToqIVjGcDn5kd7Lkiy5oQhByP04dmEN3CW9ifkInbD
	cXMiIMTjB+MyNWqI5Sh1H9Oxtvz/hv7E1aOtg9ElgREzpBebtODmqrX5
X-Gm-Gg: AY/fxX4x9d77xo4zWa6RMq3FQuk3AjPUrd1WcXcKrMefb6L7pimVCI7ViSe7HA8YaSv
	iinn6+zK8VsVvj00CLXgwp9JzCdt66TmhKuBqkSuMrYBPDh7kc+jKXApLVBCWIWjvFZ/Sy+yJ0V
	J5cex1HhhqWrRL1ugPSp3wCzV8FIAsCq1eYK5BkfPf2uJulP6tnaglZ3YlHZybPjDpLVxAdrLJ4
	wKMUnjflU1ADqXTbojZShDmCVTyhz2Fxp9f3zKB0lq7dfacOaV3p5wVr3+7yH7NZdjl3h2LYOm1
	63wbib5JkHKrF17JXUR9DuJ99P498VkGdqLyr+ZyE0mvszPstCGkSCOGqTbMSfoOV1RZlBzA9oX
	zJv5N32Viy9jdiZdXW34BQiwCuU8KMWPqLb1N/b+auHQEYDaFecg2mLAcW3bZgzPdhhIbNcKeJu
	SU7Z9GCRCjlDJhGsDTaLCnbrdA7RbR134/ioYsEXgMk7C//f0mYg==
X-Received: by 2002:a17:907:db02:b0:b83:95ca:22e1 with SMTP id a640c23a62f3a-b8792e0edbemr223364666b.1.1768597526191;
        Fri, 16 Jan 2026 13:05:26 -0800 (PST)
Received: from ?IPV6:2a02:a449:4071:0:32d0:42ff:fe10:6983? ([2a02:a449:4071:0:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959fbefdsm328674466b.55.2026.01.16.13.05.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 13:05:25 -0800 (PST)
Message-ID: <c6feab79-5b73-413b-a94f-9d1b2fa6df43@gmail.com>
Date: Fri, 16 Jan 2026 22:05:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] ARM: dts: rockchip: rk3036: remove mshc aliases
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

The use of mshc aliases is deprecated for some while,
so remove them from the rk3036.dtsi file.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3036.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
index fca21ebb224b..78afae42f8b2 100644
--- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
@@ -23,9 +23,6 @@ aliases {
 		i2c0 = &i2c0;
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;
-		mshc0 = &emmc;
-		mshc1 = &sdmmc;
-		mshc2 = &sdio;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
--
2.39.5


