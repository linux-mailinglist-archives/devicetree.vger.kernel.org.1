Return-Path: <devicetree+bounces-242579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 79646C8C336
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 23:24:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3C9604E1017
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 22:24:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1802E30BB81;
	Wed, 26 Nov 2025 22:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mksUA67+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9726B1096F
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 22:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764195845; cv=none; b=RbLGxJpwqTpDD/EK5K8CFprJ0uUL5cCjCquk6CK4qNQauifKZ2n5dWjRTAQhoOZjNOVWmJ0+mosqtqR2krLT3JezplZgGv2em8d8r5hhWHJ7Y0Dlnw4LK+dvX9YxdYFE7lidtpT0ObmjOOhRRSZsZwTVpA3PXjhPwcJgUklWHfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764195845; c=relaxed/simple;
	bh=tj2DSsgX/0WGrBP881V3uUX+/SGSqokxbP5df1Yh5lw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S0dfJvXyu2X5fSjjikm591ySKLp2C/a5Q6ed1+pYALcS+IQp9MsR7S2caD/MZIVCirYquD61Mfdp+Nq1cTsoe9I53E5NLc4JG4+emhULjF/qoc6EOt0BW4M7tbGalhnMke3LCZKCf9a4X1GZnrSBZdlJOQTjnWEwF+mEBPJ8HU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mksUA67+; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-297dd95ffe4so2199595ad.3
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 14:24:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764195843; x=1764800643; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BZOu5aEyKENky2c9G/LxIdAHXqDSwAK1EmrizLVcA3A=;
        b=mksUA67+mbZRvlOyS5YRqeMdfu7Sr7s77f33A2PuFhn+6NqKlOCcknxPyNSECMnTNL
         psB8k62yD8KSnp5nO4GJAQC5rDu7IYjfF8RsUtx3HoBf7ibiX0cto9fzJUID89QZ+3Sl
         q/vivxEY6Z0w08fKAxn78fDn9DzXjtLAYDCY3ROuValoQDC1+RD20Y8w0ayjW0+ZVxvS
         /qagt/It80wyIM/zbnUnalpyce8vO7zsXfHS4HLunblRoKpbRIRsFnmHpvoYCXKmO4w2
         HSvFv1j3OVfL3g8PplYeRN92SBaj157ZsWwhRexFFVV6uZWcvF/3N9BukKeO5xwaBI56
         yizA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764195843; x=1764800643;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BZOu5aEyKENky2c9G/LxIdAHXqDSwAK1EmrizLVcA3A=;
        b=GN/Z5POAUQbGTMS3iPBY9Yyw16tZqUZDg9pf/pXu1PtR84OlyRM/ROQWD2KyN0mELc
         0LPk8k4WrwQSD8yHHepMGYCowQFP45TpVBQMEQUFbwJ/DCQsJF4IB4qfQmYac0Kb3kqR
         gJ2IJ9QYFtQuccSCGuwYSGR9fL+mnwLtAvwhHJn1yxoeFofFGoD8+D3HpcwfxUwswl/X
         hhEbaQlaWuME1PWLFZpr/to7L9QoODItWh/KB6n0tLnm5GEA4MxLlgIRRxiw7WzYgKxm
         2LAV1F2YL3Tch+S7yYbcc28RAENR6RpwhuXhYZHTQ1lUS5D2gLwe40+A6g4bt8gxNzmn
         NOJA==
X-Forwarded-Encrypted: i=1; AJvYcCWyn575i6BMMqeM0WR6HpTJx1uACzZQKnZZCyinsvSCWjj+rEySkRMw5aZ9aPedHZRXh6YQwvThzqRd@vger.kernel.org
X-Gm-Message-State: AOJu0YwASrZbsFru8lusddB1lxFBr+ucSEcfSA4JNUfutn2R1LveCEKm
	5qZEmOy16jNvCxl6a5JxU2pyPFTSJS+XZHy/7zg8nejEu2sKKB0sFtO4
X-Gm-Gg: ASbGncsiupFOIro1awcr/R9kt9Y1yXU5DFfmP2s1dOTyyv53G8xreJDHgnq4mjQP6NF
	PUzgVkrofYg0DMaHdVfoZpoA5Lxa06YVPATKpjSmOn0n7bA+ZcYYYJrJqFbQ+XZfPUeHVVvPmqH
	VAdSlzYW0LMIRXwfT/ECbYdrMsLw/nXsWbKTQeddurnrVwPsInfq3yxl9X+9uLeHgbQBQnGEe+y
	aUiqATOKn2GvkUpIYfM725H4Zkse3/yleyed+Zzw7VZhyuVRDIDatd+OFC8y6wpLnUHOpYtAEAW
	m3OnGYTm/Oh7fgfE8znOVfwY4tItdous+zoKhloIr6iYzzlLuiSOrUKSVmigGu3MUEsgKV7cdhk
	ZqxmFs4L4j/LtiRQZiqMNOvsMMiErGSdXlsOwSy5AxVQcZTYYzj3obK1AnBFFMQWmrUlQKjjzmW
	9jgJcj/G6H5Q==
X-Google-Smtp-Source: AGHT+IGsvWka9Dm9jnaO3xye2c/MAvR38kBdVohFIuX1a8i2UEEMWVrspUwb2b/Cg5A4pKC1TEkD5w==
X-Received: by 2002:a05:7022:ec85:b0:11a:61df:252a with SMTP id a92af1059eb24-11cb3ecc587mr5507782c88.6.1764195842702;
        Wed, 26 Nov 2025 14:24:02 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11c93e5674csm99352914c88.8.2025.11.26.14.24.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 14:24:02 -0800 (PST)
Date: Thu, 27 Nov 2025 06:23:22 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: "Anton D. Stavinskii" <stavinsky@gmail.com>, inochiama@gmail.com
Cc: alex@ghiti.fr, alexander.sverdlin@gmail.com, aou@eecs.berkeley.edu, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, dlan@gentoo.org, huangze@whut.edu.cn, 
	krzk+dt@kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	looong.bin@gmail.com, palmer@dabbelt.com, paul.walmsley@sifive.com, robh@kernel.org, 
	sophgo@lists.linux.dev, thomas.bonnefille@bootlin.com, unicorn_wang@outlook.com, 
	yu.yuan@sjtu.edu.cn
Subject: Re: [PATCH] riscv: dts: sophgo: cv180x: fix USB dwc2 FIFO sizes
Message-ID: <iwp4jewumabd2niwhsvml4p7kfouptirdk6wxv37ejuqyipmr2@p24wd3pv7iub>
References: <20250611082452.1218817-4-inochiama@gmail.com>
 <20251126172115.1894190-2-stavinsky@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251126172115.1894190-2-stavinsky@gmail.com>

On Wed, Nov 26, 2025 at 09:21:16PM +0400, Anton D. Stavinskii wrote:
> I've tested the current dwc2 FIFO configuration and found that USB
> device mode breaks in ECM mode when transmitting frames larger than
> 128 bytes. For example, large ICMP packets or iperf3 traffic cause
> the USB link to hang and eventually disconnect without any messages in
> dmesg.
> 
> After switching to more conservative FIFO sizes, ECM becomes stable
> and no longer drops the connection. iperf3 now shows ~130 Mbit/s RX
> and ~100 Mbit/s TX on SG2002 (MilkV Duo 256M).
> 
> Fix the FIFO sizes accordingly.
> 
> Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
> ---
>  arch/riscv/boot/dts/sophgo/cv180x.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/riscv/boot/dts/sophgo/cv180x.dtsi b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
> index 1b2b1969a648..06b0ce5a2db7 100644
> --- a/arch/riscv/boot/dts/sophgo/cv180x.dtsi
> +++ b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
> @@ -438,8 +438,8 @@ usb: usb@4340000 {
>  			clocks = <&clk CLK_AXI4_USB>, <&clk CLK_APB_USB>;
>  			clock-names = "otg", "utmi";
>  			g-np-tx-fifo-size = <32>;
> -			g-rx-fifo-size = <536>;
> -			g-tx-fifo-size = <768 512 512 384 128 128>;
> +			g-rx-fifo-size = <1536>;
> +			g-tx-fifo-size = <128 128 64 64 64 64 32 32>;
>  			interrupts = <SOC_PERIPHERAL_IRQ(14) IRQ_TYPE_LEVEL_HIGH>;
>  			phys = <&usbphy>;
>  			phy-names = "usb2-phy";
> -- 
> 2.43.0
> 

Please add a fix tag next time, I will add it by myself this time,
otherwise LGTM.

Reviewed-by: Inochi Amaoto <inochiama@gmail.com>
Fixes: e307248a3c2d ("riscv: dts: sophgo: Add USB support for cv18xx")

Regards,
Inochi

