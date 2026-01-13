Return-Path: <devicetree+bounces-254343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F1247D176E7
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:58:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6907A304BB45
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 08:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2398637B3F9;
	Tue, 13 Jan 2026 08:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="uFydRBhT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C24C3806D0
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768294663; cv=none; b=OJz/khnY6RenewpE892l2N4c704jtGebLcYiy2AGcBIhhrz+YUZp34xDj0K/oHxRijC2JBeDqMze2HaJbXzy6G7bYvrlN3iSiS/xXVszbO7b1GmyBqdi1d7+1MKiNKVClQtFKoLYF15pos70cM2GZWTb7C3HYfx+hQk4riHuy14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768294663; c=relaxed/simple;
	bh=6kxD2UG6kAiT9t38q54b6IeYiTUM8ShWv8UwzjMSauw=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=X5vICRlHkm+sP8QR9ED5uquYGcYSPt0bHaytFOgvfMk/wGfbm6oqHeCy4rlUZpYI+JR+/fqLLfJeQ6atXwhOKCgaLPGAZR9VN6aVCpYsqU+TZ7xIYt8ULK12pcI8SrG4auzIRxy55xrk7VDWGMqd+1QBwmSMlBEXDPCDNoKvWnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=uFydRBhT; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-42fbc305552so5372987f8f.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 00:57:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768294656; x=1768899456; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZMKyGWxNAwt+GdnajQbomOj6BjeEvvPWy5yBEpV57ns=;
        b=uFydRBhTJtNfW+tAKCQIhWMFoiR2Jy58RR7PkIJecqcEmsKMpXd0sQyeUAn9jIhhHq
         mJnxJKNta+IS4sUw83XNQ0sbq7UEFK8csSvu9MGBxqJd6uMQdra46oDUvA1C0MgPpiob
         /IZR6DA7LT0cpFZLX9YHeBXog4SDml0vMiCboiVZI1EFG535Ilw+fyOM0X6Sv75rIbTq
         Jt4YRYEqO9k55d7ps4pwXvrk99rvUtx85A1e+ixemrB+rNeU1e7lkb3wL0hT7uacHhPt
         9NQsUpbllHJmSXMUlo+Gg1PD5C/ArVg4eBbcmCBbc1zF4Kcdi4KO2RpgciV5y7yKNkdG
         8ZcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768294656; x=1768899456;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZMKyGWxNAwt+GdnajQbomOj6BjeEvvPWy5yBEpV57ns=;
        b=qbee5mG/UOrVvSonoUrevwC7KUz/4f2coB4lTtpNJXctKWnQjnPASN1yv4hcon5PVC
         pnZeh5TayRmL1DV6Du/ivJYIKDGQj+lWCvxmleeyIleBZHB+FIp0IOat1STQDcS+Z58R
         csvyWoNaLw3hwoHuzYR8P2hm7O1v+ukFimRj4T3pPbHl+m43YnLqy+TgcYI6nBugtIm8
         cwSaWqOZQOxvMt2D/yIGJW5mC9y685QmGeIa1xfabbNiWOwhLPeeO+LDOn9Ur4dRZ2v5
         rHlJwF4+Bk5zTgoUTbg8KpkgOj7cz/SL2HOyhrvfY8uasUsWiGPamUorvPPZvB5+SESA
         4l/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWkSFP+kJWW/AZYHN8kjSA468E/loGqTIxUt1gnkrmHk4e4mTL4Hd2vSNefbGL+ZB7W3HCWCe3g348X@vger.kernel.org
X-Gm-Message-State: AOJu0Yyrxhe2rL3fQ6Ugupy3N5sWm6lVh3uUEWbpnoM2wM/YkVsidbjb
	NwbptkZPbWcPfpTjcnj35vkhSCoUAqKS962lp1YyCbO4TM51GEySSP+adNK62BsEhOw=
X-Gm-Gg: AY/fxX6xju4xbD45SIJPadBKZTdhrCH/9KSkn6PY+hsfk/Im4zMfxxW9oMpuMxD3ngm
	f37qwkPyRqUCDGEDoxYo3avc2FAppEepqSDQTY+bOBRTrZqIdoQZ1lB3DUbY67X64kPVVH4Z0/q
	dbug9ApZP2MHjD9Ms6SYp0G30E7M2ZzlC09M6DL1jLb9hTNucBCNCoN83E6Vt8iGOHV3QH38z74
	6RJ70yjxRjNPp3nEdc/7xZ4dPhshZSQdn6l1Ay68pauiXlDbKqvEiirKEI1ErAR2BXt+v0T9YZW
	rLOHtc/CGnDCUall3WdxGGVUFSJgrlQkEhmAhx4aRSv8xNHS/Ss3v3h+BwD4QyaOMACO2oLTmpq
	i1msmMJAXOT5oVNz2HAOVXUxRFCJ+sSEcpfs0NNnJNS1nN+X+WW9ru3jBfLXqjf75FP34V2Tg4b
	2Qwd1X0HrJdO5dnKA41Rs=
X-Google-Smtp-Source: AGHT+IGwcIbZu7Reu6gEUybQVWJyifVkO6dMnAxR2TOj6PLpVKDznQPy9IHHIvvCvTuBaNu+Iuy9RA==
X-Received: by 2002:a05:6000:2f82:b0:431:8f8:7f2f with SMTP id ffacd0b85a97d-432c3795323mr23143317f8f.34.1768294656128;
        Tue, 13 Jan 2026 00:57:36 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:982f:38af:1a7a:b10])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-432bd5fe67csm42950056f8f.40.2026.01.13.00.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 00:57:35 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Nick Xie <xieqinick@gmail.com>
Cc: neil.armstrong@linaro.org,  khilman@baylibre.com,
  martin.blumenstingl@googlemail.com,  xianwei.zhao@amlogic.com,
  devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
  linux-amlogic@lists.infradead.org,  linux-kernel@vger.kernel.org,
  krzk+dt@kernel.org,  conor+dt@kernel.org,  robh@kernel.org,
  nick@khadas.com
Subject: Re: [PATCH] arm64: dts: amlogic: S4: fix SD card initialization
 failure
In-Reply-To: <20260113011931.40424-1-nick@khadas.com> (Nick Xie's message of
	"Tue, 13 Jan 2026 09:19:31 +0800")
References: <20260113011931.40424-1-nick@khadas.com>
User-Agent: mu4e 1.12.9; emacs 30.1
Date: Tue, 13 Jan 2026 09:57:34 +0100
Message-ID: <1jsec9ritd.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On mar. 13 janv. 2026 at 09:19, Nick Xie <xieqinick@gmail.com> wrote:

> The SD controller (sd@fe08a000) requires a clock source capable of
> generating a 400kHz frequency for the identification phase.
>
> Currently, the sd node uses CLKID_SD_EMMC_B as clkin0 and CLKID_FCLK_DIV2
> as clkin1. Both of these are high-frequency clocks (e.g., ~1GHz).

The reason you are having this problem is because CLKID_SD_EMMC_B does
not provide 400kHz by default on this platform. We have been operating
with this (weak) assumption so far ... and it was OK until now.

> The internal divider of the SD controller is limited to a maximum value
> of 64 (2^6). With input frequencies significantly higher than 25.6MHz
> (400kHz * 64), the driver is unable to generate the required 400kHz
> clock, causing the probe to fail with -EINVAL.
>
> Fix this by reparenting clkin0 to the 24MHz XTAL clock, consistent with
> the configuration of the sdio and emmc nodes. This allows the divider
> to successfully generate 400kHz (24MHz / 60).
>

DT generally describe what the HW is, not how you wish to configure it.

What you are doing here does not reparent anything. You are actually
mis-representing the clock tree, making the MMC device believe it has
24MHz on its clkin0, even-though what it is really has still is
CLKID_SD_EMMC_B (presumably running a 1GHz)

So if my understanding is correct, you are indeed setting the divider to
60 instead of 64, but you are still dividing 1GHz so what you actually
get it 16,6MHz

If you want to get 24MHz the clkin0, we need to assign the rate,
something we probably should have done before.

I'll send something for this

> Verified on Khadas VIM1S with SoC S4 S905Y4.
>
> Fixes: 3ab9d54b5d847 ("arm64: dts: amlogic: enable some device nodes for S4")
>
> Signed-off-by: Nick Xie <nick@khadas.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> index 9d99ed2994dfa..b87bc83b5a9bb 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> @@ -833,7 +833,7 @@ sd: mmc@fe08a000 {
>  			reg = <0x0 0xfe08a000 0x0 0x800>;
>  			interrupts = <GIC_SPI 177 IRQ_TYPE_EDGE_RISING>;
>  			clocks = <&clkc_periphs CLKID_SDEMMC_B>,
> -				 <&clkc_periphs CLKID_SD_EMMC_B>,
> +				 <&xtal>,
>  				 <&clkc_pll CLKID_FCLK_DIV2>;
>  			clock-names = "core", "clkin0", "clkin1";
>  			resets = <&reset RESET_SD_EMMC_B>;

-- 
Jerome

