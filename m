Return-Path: <devicetree+bounces-191201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F0109AEE675
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 20:06:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A31513A36DA
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 18:06:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 722E42E92DE;
	Mon, 30 Jun 2025 18:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="fkkO373Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 769072E62AB
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 18:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751306723; cv=none; b=cFnMwxUVXSc1mN1S5RpxNigE98IwA5xVS3cTHUJ71IVxS/Y0VC1XqD4qQg12f4rogV+7jz4H0TNpV9L6NS2/ojKekQKwpUqypS0CEJHS+wl8N5NwlmiaGY7tgkYLGd5IjThlPX9jKsDIXOmx1MyYEYXv+jLVTrKt1glEEXsKF8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751306723; c=relaxed/simple;
	bh=eRHXJiHdUnhSH42Mt94bnfq1JmoG01wWP7806wesDT0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=lhxgLxqJV/cmDq79+4ppfQ3PJluhUuxrPEbe4u9WWm5SKESI23NSIprikBh/NWl6CyvXk/Y+qxdCpv4dVzw6GxfD7p8OGFl8YMK8r7zV6v7ktHvaySDSW26JKNaaheOiWprXoWtPOOArlLuWgGjbH6JT+tCphdXWilNq1J/HI44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=fkkO373Q; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-74801bc6dc5so4574028b3a.1
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 11:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1751306721; x=1751911521; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y7HamuIOi93Ir+D7BNI5NjTYA8k3P5m2JucOy/ndy+o=;
        b=fkkO373Q21UxO7jw9EkJXegHtolz7ll+8WuaR9AvyyqlF4Jpn50lGwjR6UPKk3WXn7
         Pha8lXIvDmFjMlXBkdSpzUo4FPDxGXFqUR3G5G+ohcGPq7dmQLFvfh/C9fKzJnq3REx1
         jubjiAGoYCyqZeKBDu+TAYg0CZfARLB1CiiMLqZNiQawkPmHRHghCmPdmYkGZU2tpz/5
         Uflk62nP588NB99YZidtynNULy5PtjOio5TY+X7168CCm4IFY0CR9Wu3a060HtPpOa+p
         UL3TLZxXwTfK4Ubaz3mHPEFlt9Lgvgwx2G6i0bzs2OHhcHaYElwFgNGMlq2ZJE4CFpUn
         j2Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751306721; x=1751911521;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y7HamuIOi93Ir+D7BNI5NjTYA8k3P5m2JucOy/ndy+o=;
        b=CqtHluNsxsSwawvgWojs8tymvQOkmPKa2ym1+W2CqhMZn3qFssKLP+rRNwvfW8F44G
         C7mO0Ya7ahHHJkdnMexsO5r0uEXjpuAlAMd6XpticaQpOib/IeEXKTH7TijSamHj5tue
         q1g8biEwxqL4fwK+3AOEoQ9dLlvAbjaah/1+3mQED7/GOTD/YWLIIj9PFFdoiwhYz7Ey
         kbJcs3UkvIAWHDM3iqkN5jTH0Z/vFF0EmM00YN+f30Ix0YtnXPi2eSZYK586bOnEis3f
         PzblQ9kiJg0ZzGFr7Us39MErA1yz83rKjEKKTomOysFngs3PsM9ROwm4jQFW+0qJDUDn
         CnAA==
X-Forwarded-Encrypted: i=1; AJvYcCU6UyzrrL26sVkr4PjdNQsBm6m1gIxiJmfNK8AAiVSDCZe+NvOXPbm9hEY+n0R59KLQ3Ah2GvXx1K0c@vger.kernel.org
X-Gm-Message-State: AOJu0YxC8GVVxgDFmseWeH759m5L7rXM9KBRZLJwE2i5nSw10DAgWM+N
	NIEs/Bj7cUo3vxec/DhWsO0PNpPcsTQvyz5N8obm5vUuLnVfokJTDfUcbGypb3v85fc=
X-Gm-Gg: ASbGnctqg5nfpDMWuiFTADh7FC8izjv2efN3m3C99IO25ElnMpnnO0SsdCxo3b9cIfW
	Lut3cw2H4CUeWVm6WfsLvMeH7lUfYlNTWiyycZ1c3T0+Hlz+WOXsa+ZESfCkZY7TbTAyOBtu6bC
	5dkBmyUD+UE3fXGmG7Ej/eZ6tNE00xJII15+0nxuv6pXYgC5a+xBaT2LkwYPLBvUTGXQU6b7Mvn
	Qwty3kwj6QGAWUQUsWzjam00HHqeyLgVhdZf9FxRLV6hmpHlrNUjeL6Yx3ZFgWKeAqOPTOObKmd
	/A+Cb5SZuORX5fqZf2AbaYdikDwxyLZno/2SclrGREVjPxfFau4UkeE7OjY9
X-Google-Smtp-Source: AGHT+IEncS/HJPiBmiJZCLKoJU2/w51Fp/NZyo6t579QG+npzr31j+vLXXC/vxt7lYssL2dcF7zMQw==
X-Received: by 2002:a05:6a00:2ea1:b0:736:4e14:8ec5 with SMTP id d2e1a72fcca58-74b3bca995dmr669511b3a.11.1751306720777;
        Mon, 30 Jun 2025 11:05:20 -0700 (PDT)
Received: from localhost ([97.126.182.119])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74af540990bsm9409550b3a.21.2025.06.30.11.05.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jun 2025 11:05:20 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Tony Lindgren <tony@atomide.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Roger Quadros <rogerq@kernel.org>, 
 Russell King <linux@armlinux.org.uk>, 
 Paul Barker <paul.barker@sancloud.com>, 
 Marc Murphy <marc.murphy@sancloud.com>, 
 Kory Maincent <kory.maincent@bootlin.com>
Cc: Jason Kridner <jkridner@gmail.com>, Andrew Davis <afd@ti.com>, 
 Bajjuri Praneeth <praneeth@ti.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-omap@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
 Romain Gantois <romain.gantois@bootlin.com>, 
 Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20250620-bbg-v5-0-84f9b9a2e3a8@bootlin.com>
References: <20250620-bbg-v5-0-84f9b9a2e3a8@bootlin.com>
Subject: Re: [PATCH v5 0/5] Add support for BeagleBone Green Eco board
Message-Id: <175130671963.2621907.636669398639023401.b4-ty@baylibre.com>
Date: Mon, 30 Jun 2025 11:05:19 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3-dev-d7477


On Fri, 20 Jun 2025 10:15:51 +0200, Kory Maincent wrote:
> SeeedStudio BeagleBone Green Eco (BBGE) is a clone of the BeagleBone Green
> (BBG). It has minor differences from the BBG, such as a different PMIC,
> a different Ethernet PHY, and a larger eMMC.
> 
> 

Applied, thanks!

[1/5] arm: dts: omap: am335x-bone-common: Rename tps to generic pmic node
      commit: 297bd457c893966f37fc07b68162862bff3e7c77
[2/5] dt-bindings: omap: Add Seeed BeagleBone Green Eco
      commit: 23c7d1976f52fd8b8031ac0e5f4f60166cdc32b5
[3/5] arm: dts: omap: Add support for BeagleBone Green Eco board
      commit: 6d04ead94d49df8d549122d89999f1faf27b5373
[4/5] arm: omap2plus_defconfig: Enable TPS65219 regulator
      commit: 299c277aa74cb011b00d6aeb5ccece37e9166d91
[5/5] arm: multi_v7_defconfig: Enable TPS65219 regulator
      commit: 536407b5b87d16e048b75439d5f2e1246078d32c

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


