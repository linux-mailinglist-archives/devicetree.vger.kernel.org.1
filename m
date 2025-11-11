Return-Path: <devicetree+bounces-237348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A51C4FB11
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 21:23:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D657189C858
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 20:23:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F6C133D6F5;
	Tue, 11 Nov 2025 20:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="BjwEg+HX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE97833D6DD
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 20:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762892585; cv=none; b=FIILwATmgO+wRis+GEmMTEoLMmou5hVdj9MoafC6GG6qoyJ8ZgPUH5d9FwEYzg4cqzckQe6lBanQ9Xpo+ODlOjye3Og28Isjt7IBvpgoQfO+exPJsRVFB9Lw3BL6iHFi66t+YcFr6VyAH4qWz1k6wh0n95tHaVO06QZo/idAB58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762892585; c=relaxed/simple;
	bh=uiEd6c08P9ZtzVlM6nVCfOwB8OhbrgYkhuf6sMbmKQo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=lP7rF5PSuM7qlMQ2KYh64jlPxFsumTHDbs5z7u1qKcuVgLLU+QOR9QBbVpnlXipR96VLuZIPhCDEcM1Msjx8I6okRzHUONHA6B8EelF1GpaAj+2Sv+qdla98rD9CrYULnXFahhNQ+jRXGSO486M1E/xIeAoggPa+Blu3IEageU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=BjwEg+HX; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7aad4823079so122729b3a.0
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:23:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1762892581; x=1763497381; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ikDAnvDIDssJ4+W8IdyzEDxE5I172hkPwGOVsrFDDvA=;
        b=BjwEg+HX0Q+3HLtjvKcxzE3JF2W941ZmR/zhgqey2e4kkZU5PPHmgC5mogln/y+u4V
         qEXOYn/CUHsVnWG2sfpjlWhPr0xLoFIFfz6smB1BhfosMIX0q54V8McWTOX09V0j6sWn
         5/IUvvEIFc13AWHnPGGIafB002pIF6lxElow378M4zd/p/clVRFOHscOsBCUkKnujzdU
         wKy/ElggMDDoHaRz3L9IDjShxAVJMpcBBf/QR1e5DipN6fMRPM9YQhlQ2FK3cD7bfspo
         p38tLmQR+/mt4PJOnqmfkMG3Zklg7RfaeVl04bvC7coK2ugyIJCgkTzj4h4KPmju6XyY
         vGHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762892581; x=1763497381;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ikDAnvDIDssJ4+W8IdyzEDxE5I172hkPwGOVsrFDDvA=;
        b=FkICocFjvnOkzpqdmfX8B9O3ukMBSO+z5Nm+1Gt/DDVrpHzjvcM87BcyMV7xx7O1ll
         IsoBO2Gkdn4lHOEPO+D+D1bg9KMLRquGYDuPIOcewC2e900EapC33YAjGkFKkQhfAtxU
         AAOyW1WiO89QFyKpT3AUoqGAeZlPyA/ILO5dMkhcbrOnDppA0Wu2sZAp5qW09rX9lYfG
         26x2R/vWNpH81EE839k8pPxo+L1GPzxzbe9fp5tr/tc1g/+G10+yqX5FK+2/i7zQMwgz
         1q3gEHX2Ii2fVfEOLCDpfZKJIDUhtVzFe5xNB4NdLdIUMFiSKTiYtr1VZRyjgqUuaSgt
         WpWw==
X-Forwarded-Encrypted: i=1; AJvYcCVYxlOjwp0Owcvxoks0SKRBgL5SR7O8RSEk/bDxeoBrDqnLIzTTkHNVRs8h48pcAxeIMuJiN6S6qf08@vger.kernel.org
X-Gm-Message-State: AOJu0Yyndu1A9fUmVWm2O5d0zmD8dOPJ1drgqVQkd7k2hOkS3Gmhv/V8
	6Yjuk99C9YsR0TQAYFfzLXNybh3KkBCOGOxJ5if6Pc6krAMvmfiNmUXted55mypZ4cQ=
X-Gm-Gg: ASbGnctSdqnxvVIz1E2zybiCWootZbMkqloa3rNYupbYTzk6qDmxRVWcRqLs7V3ancw
	kbmYp230n9dN6SR1CImTlvXomwYOiOKsPYe1e2xgASb1ZZVA2L/Z7+jS+EoH0JLWck9uaJ66bde
	dx9iHzdn/Yufgl68jcQB2WRXWILa6VwoHhKEiQCpb+pGKqosR2yzlnnS9K+7R1ndlSH93A5qhp3
	M5Xmn7hfbfRzTNxC2jEcGEoj3eVfgR39fPzG9bUy3UYzzj0kBevMPhIxb/JUTHK2BpOxNf4Jqx1
	83r+pL8UkpyBtA3SnfO0EV3dJ6dg+Ka6BXFro88FvtS++brZAXWZv4Q5A6rS5J+77691PZZTspt
	unOp9GT6ljU14GPGRWo+hK2eWIwKv1IwDxeHTt+llP+8fksyJYwVOggDz/Rc0/e30Q5vOMaCi4g
	==
X-Google-Smtp-Source: AGHT+IEcxltjr7ssXEmkIc5rphIAJmzjiRfaTOjm03RlC84h4y2Zqz/YKQc1p5nLLTJ1DDR9m4m42Q==
X-Received: by 2002:a05:6a00:b8b:b0:7ab:88:e397 with SMTP id d2e1a72fcca58-7b7a4fd9098mr310228b3a.24.1762892581246;
        Tue, 11 Nov 2025 12:23:01 -0800 (PST)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b0cc17784bsm16428895b3a.47.2025.11.11.12.23.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 12:23:00 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Tony Lindgren <tony@atomide.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 George Kelly <george.kelly1097@gmail.com>
Cc: linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20251108102741.47628-1-george.kelly1097@gmail.com>
References: <20251108102741.47628-1-george.kelly1097@gmail.com>
Subject: Re: [PATCH] ARM: dts: ti/omap: fix incorrect compatible string in
 internal eeprom node
Message-Id: <176289258052.3622788.10472289186351721450.b4-ty@baylibre.com>
Date: Tue, 11 Nov 2025 12:23:00 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-56183


On Sat, 08 Nov 2025 05:27:41 -0500, George Kelly wrote:
> While the Beaglebone capes have the Atmel AT24C256 chip (256kbit or 32kB),
> the internal Beaglebone eeprom chip (i2c bus 0, addr 0x50), is an AT24C32
> (32kbit or 4kB). Yet the device tree lists AT24C256 as the compatible chip
> prior to this patch. You can confirm this by running
> `sudo hexdump -C /sys/bus/nvmem/devices/0-00500/nvmem`. You can see the
> factory data is repeated every 0x1000 addresses (every 4096 bytes or 32768
> bits). This is because the read command wraps around to reading 0x0000 when
> a user requests address 0x1000.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: ti/omap: fix incorrect compatible string in internal eeprom node
      commit: 73f0769ebfc6473be084f0c52db25d2973097dd4

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


