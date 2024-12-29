Return-Path: <devicetree+bounces-134604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 24AF39FE046
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 20:07:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 351C0160F06
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 19:07:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52A25197A8F;
	Sun, 29 Dec 2024 19:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZQIifcAk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E74208AD
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 19:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735499225; cv=none; b=qFrqCgIKt5utERJ4+InLtYuiUD/GBBrLHcDo0O1yX6n6yRDxzoZ1CIiRQeupd3IyxCsqgZ5VcThjjKUrxac4oZzwbwa5vdedsMqprZeG22BCLUQ2dCBFt+aJ72y5XDb1CA0UDJdvRtV9Q3zofmPCWRryziLT9f/bV0U9pj1S7MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735499225; c=relaxed/simple;
	bh=g6inF7f44On/YZUVFYeOmYHex6qxOXPpddZ32JxTI6g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TPI8CAkbbojv2QNSmsD/9TNuLyOQik9duhlqn4Rs2QLL8uIWKHB+VzlelPo9Bx5dj7tdru8i1smE+A/9VCGv+4Bp6b/f9NX66FJY0XP+UwgHXCFjNiaK2M52WOg/dQz+gzqT6C658G57t94hkjiWEkUrDBsmKpiNHU6BDeySjKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZQIifcAk; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43634b570c1so62004265e9.0
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 11:07:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735499222; x=1736104022; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=g6inF7f44On/YZUVFYeOmYHex6qxOXPpddZ32JxTI6g=;
        b=ZQIifcAkdzrjcq30kIBspFeHIaa/gs6MPem+FQ65Dnv2Qu79wGgNOP/b/VT3mD2o6b
         uWqgXWkA/xeKe8DOvhhFUQ2GdZtG+9y/Rj1NQZYVl7aWkBpLXfotRNyuI6nVSwLJWjGY
         XyPBWB4V+WWQeEOxABkdmfjpfSzbi/2BYQq5UnI1niH6c113QTGud/rWN3/pvfcKziLU
         LzDw6e5tdo9cbsmZvV8m11f37VcHagvICnxWrTE5lPfjsi17nuv4YeDNeVpZVsaqWPIo
         SR3plqA2a/WpMUcO058FNCYI3DxCMmMWCIfKz9qHSdjvCioXI+2PTnDyg5/gqh9ANMY1
         Kq8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735499222; x=1736104022;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g6inF7f44On/YZUVFYeOmYHex6qxOXPpddZ32JxTI6g=;
        b=ORNY5ud5+VYYkLCCuNgr6XLmAAfoBwpdTejoRzQVkN8tuM7mmCsDnESO0uU7M0qOqY
         TnLdH9txBHXZiv1SVgATgyDHLHdUKN1fFH59CxQc34CFLMMuwAheeZKLPR+Uz0IgwYG1
         M3fd1CfMq77VeD62eUJxziHo39wH89P9/5lTEDb/AlUkrJ8DdQDgA9dOHh8nSy+gixUu
         gDre06Ynntn5rcO8T/RC00Zngw7UPmB1Y3re3AjImCudjReNQYBfFErTptuVCdsOofVl
         UIRY3UrUqwZUggCwdGmkYrfVuqcYZHEmJPKSDkTusBXscboJQ8opit7kmlLudQSsNKwX
         k2Ng==
X-Forwarded-Encrypted: i=1; AJvYcCU1JdX8Epm8smkz7yRXov1QUtwLrCYR5Txmxn3lSrPY5SZ0DoDpAxC35FjQA73GiBkTqvvpN8zLT+qJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4kcJKJyAiEIzNBD2PgpDtEMwV/9tBj9DWuzn8cn9Gsbw9fK3t
	qYzixWytnErDjsU2DqRywtNidk0CFPUByJI4e/nebNRsB8z0g8eZiHB9AeUK4bKZICmpMvURbPh
	FHZ4OOx3g1t18f0u4YWL6qw78HH11aDfj8Rg=
X-Gm-Gg: ASbGncuy7MA4BdFDlB7n80dgtYIm0/4lIeWA5boZdp1yYqwSEA+eCf5IAyFYgxDWKI4
	RSfY36gaPDW//DNPXSufz4oYuByEDzM/1Guyw38O33gYV9kaq7/GuPAq3kYgJSslK8czP+g==
X-Google-Smtp-Source: AGHT+IFoaSVE4xOPuKcw8tvGDALo/AfZU6mL7LQ8VG4tPxNBzjVjMKo4B3pHiiIS8Yv9lpRKvu4j2gPDjF3ecFYmaDI=
X-Received: by 2002:a05:600c:3b24:b0:436:5165:f206 with SMTP id
 5b1f17b1804b1-43668b78debmr303253755e9.31.1735499221513; Sun, 29 Dec 2024
 11:07:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241229184256.1870-2-honyuenkwun@gmail.com> <20241229184256.1870-10-honyuenkwun@gmail.com>
In-Reply-To: <20241229184256.1870-10-honyuenkwun@gmail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Sun, 29 Dec 2024 13:06:50 -0600
Message-ID: <CALWfF7K0x18sTdQ+Lvyo1-=FiZvRy4jyGgcO-FoJeFWCxKh3HA@mail.gmail.com>
Subject: Re: [RFC 5/7] arm64: dts: rockchip: Add Orange Pi 5 Ultra board
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

The 5 Ultra is an RFC because the board schematics have not been
published yet [1].
So I'm basing the differences so far from the marketing image [2] and
the vendor kernel DTS [3]

This will at least give an example of how the DTS hierarchy is structured.

[1] http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/service-and-support/Orange-Pi-5-Ultra.html
[2] http://www.orangepi.org/img/pi5-ultra/11vs12.png
[3] https://github.com/orangepi-xunlong/linux-orangepi/blob/orange-pi-6.1-rk35xx/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts

