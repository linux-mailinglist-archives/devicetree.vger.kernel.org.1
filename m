Return-Path: <devicetree+bounces-79886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C68191736D
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 23:28:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 90A161F2269E
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 21:28:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3253C17D8B4;
	Tue, 25 Jun 2024 21:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="gtKcLZeU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD64517B430
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 21:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719350888; cv=none; b=ri4YqZS7Pb8aAA3+L3c9v+UMyY5LYw9TYfRGo9UGTVXUNmLXcBocorUlbfaOxBmgbI5vS+nfYBquoho6AEDuJ/x/p6ooa7yimCBVPkDxdcFOFY7q39FHZQgWFuxs+GcxAMERFmtB1m5z2xb4B2lwYq6lyTaAXkzG2C8ub+eE3Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719350888; c=relaxed/simple;
	bh=fhWbbRqVrnj+qpz+GsVSDzLJ00bTfxbyw2UpkOUyBmg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LoG0zvRLEJXK0Yb0j8TX4lxNaca22QlcrhXxFYivnk1DZn0ueJBm6wtJ9A3ngF9mztRvLb93GP8+074ePLFTLEVoodjv1sVpDjOgZc1/qjvNPCPRu69FUOeZPkEh76WCwQX4FcyrkyAJkU22SEYKrZG2h62kywDLs9chs/QB/V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=gtKcLZeU; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-6e7b121be30so4482060a12.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 14:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1719350885; x=1719955685; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=A1r4l6HFUMlYZBK3ASo/iXUshrc4QotCCtzj0pg5kTM=;
        b=gtKcLZeUBYMOnyN2Vm40yHzJRy8rog5ki1eqYI496b8Dlw8PbfkrusRICi6K7xsvx6
         jApmqzd+HY/T0X2GquntPX9pyGYm3UVHrQandR1rs+rDnvIacEWd6KwCgE6hMylrR3U2
         w6lHisD2mBi+Ft90NAq6G3/foGihfp1OVvazjMG8as1Z47RVLoXGzlRpHLL4V0iW5w3y
         kVZTCjKABDIMQ8VQ65jYk2LSCkPTvN8Gs23W/vfto1sSxKeHJNNDLnbPWk/WgWbmiNos
         fd9PwZrdiLIGLXPHDllUFzF29/hp04+DoEYhat/OrQIgkCnrzWlsScAnbnhtiMcBjBUn
         vwUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719350885; x=1719955685;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A1r4l6HFUMlYZBK3ASo/iXUshrc4QotCCtzj0pg5kTM=;
        b=I7ySnVvUy4L5NqSrj9FhIKkLNC3FXIZ4HyoVrGzLthqYRA1y35njEOLTu0/TuvaxnB
         9yRLefG0QefOOKxPBz7yf73hRKWJYlN5LmSosm+jqZwrOH2gV3xJErnOH7kw6+b4/PIe
         rIEj1EWiQ8JTlKp0fWIZHp0rjlA/FkWeI4MthQ6r2dfRK2uQ+j/LCGd/EKn7rChjnu0a
         EJEYDzWN5X3Wrs1LO0bAfi1S4nPS5aOdnYExpbq5ZD2WFIIdh4ktKhokUM8XsDaFjEeI
         42AC1TQe3KQwckG21eL+KSdtQufm2gpmhYJQFReoXusqA4r7/7DZ5hTZxxg+akwrbcgo
         c7Ww==
X-Forwarded-Encrypted: i=1; AJvYcCV7bHKLG28XwJQD2dqXwNOQdyA0DuvIIlZVP8KfisUu3CQyv+KXshpLNekw2BYUdDItXKmhVLjneuBzSzysOETva9R0sH5zZMoQHA==
X-Gm-Message-State: AOJu0YzjKJQ2a6OTasQC05afI7S1Vrw/5/4DGd+QRKit5AIO8G8dZipW
	Wd9nfeZLvwxYFYuT3yBweuGzsmPVlTp544hQ+YwvMGIUkwOaU/a8DTQGX+OkqSs=
X-Google-Smtp-Source: AGHT+IF1wPRNUvfKSqic46io4hJ6cPQM9dwgCJOIjywzyzTc2kNb5CLHDE30NmfEbYtFgADVGgR2MQ==
X-Received: by 2002:a05:6a20:6a1a:b0:1b8:7df1:595b with SMTP id adf61e73a8af0-1bcf7e7ee37mr9295656637.21.1719350885039;
        Tue, 25 Jun 2024 14:28:05 -0700 (PDT)
Received: from x1 ([2601:1c2:1802:170:efe7:d185:104e:b7b])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f9eb2f0353sm86167555ad.23.2024.06.25.14.28.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 14:28:04 -0700 (PDT)
Date: Tue, 25 Jun 2024 14:28:02 -0700
From: Drew Fustini <dfustini@tenstorrent.com>
To: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Conor Dooley <conor@kernel.org>,
	Jarkko Nikula <jarkko.nikula@linux.intel.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	=?iso-8859-1?Q?Miqu=E8l?= Raynal <miquel.raynal@bootlin.com>,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3 0/3] Add I2C support on TH1520
Message-ID: <Zns2YnLSDZfGgrIP@x1>
References: <20240618-i2c-th1520-v3-0-3042590a16b1@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240618-i2c-th1520-v3-0-3042590a16b1@bootlin.com>

On Tue, Jun 18, 2024 at 09:42:37AM +0200, Thomas Bonnefille wrote:
> This adds I2C support in the device tree of the T-Head TH1520 RISCV-SoC
> and a default configuration for the BeagleV-Ahead. It appears that the
> TH1520 I2C is already supported in the upstream kernel through the
> Synopsis Designware I2C adapter driver.
> 
> This patch depends on the clock patch from Drew Fustini
> Link: https://lore.kernel.org/linux-riscv/20240615-th1520-clk-v1-0-3ba4978c4d6b@tenstorrent.com
> and the pinctrl patch from Emil Renner Berthing
> Link: https://lore.kernel.org/linux-riscv/20240103132852.298964-1-emil.renner.berthing@canonical.com
> 
> Changed from v1:
> 1. Remove redundant example for Synopsis DesignWare-I2C bindings
> 2. Remove Node Ordering commit as it has already been taken
> 3. Remove EEPROM label
> 4. Rebase on pinctrl and clock driver patches
> 5. Add pinctrl configuration
> 6. Replaced the fixed-clock with a correct configuration
> 
> Changed from v2:
> 1. Reorder nodes to conserve ascending register node ordering
> 2. Add support for I2C2 as it probably use the same controller
> 3. Format comments to match kernel coding style
> 4. Reorder nodes to conserve alphabetical node ordering
> 6. Declare I2C2
> 6. Set pinctrl pull-up resistor to the highest value
> 
> Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
> ---
> Thomas Bonnefille (3):
>       dt-bindings: i2c: dw: Document compatible thead,th1520-i2c
>       riscv: dts: thead: Add TH1520 I2C nodes
>       riscv: dts: thead: Enable I2C on the BeagleV-Ahead
> 
>  .../bindings/i2c/snps,designware-i2c.yaml          |  4 ++
>  arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 84 ++++++++++++++++++++++
>  arch/riscv/boot/dts/thead/th1520.dtsi              | 60 ++++++++++++++++
>  3 files changed, 148 insertions(+)

The I2C controllers and the EEPROM probe okay on the BeagleV Ahead:

[    3.834654] i2c_dev: i2c /dev entries driver
[    4.037875] at24 0-0050: supply vcc not found, using dummy regulator
[    4.050303] at24 0-0050: 4096 byte 24c32 EEPROM, writable, 1 bytes/write

The EEPROM on I2C0 is working correctly:

# hexdump -C /sys/class/i2c-dev/i2c-0/device/0-0050/eeprom
[  196.438252] random: crng init done
00000000  42 45 41 47 4c 45 56 2d  41 48 45 41 44 2d 41 30  |BEAGLEV-AHEAD-A0|
00000010  0a ff ff ff ff ff ff ff  ff ff ff ff ff ff ff ff  |................|
00000020  ff ff ff ff ff ff ff ff  ff ff ff ff ff ff ff ff  |................|
*
00001000

I did have to modify the .config to enable the necessary drivers.

Could you add patch that includes these in arch/riscv/configs/defconfig?

CONFIG_I2C_DESIGNWARE_CORE
CONFIG_I2C_DESIGNWARE_PLATFORM 
CONFIG_EEPROM_AT24

Thanks,
Drew

