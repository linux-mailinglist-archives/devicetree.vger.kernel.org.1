Return-Path: <devicetree+bounces-146155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE07A339D6
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 09:21:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7E861166AA7
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 08:21:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8FA720B7E8;
	Thu, 13 Feb 2025 08:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="iPbTlQyj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531C02066FF
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 08:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739434866; cv=none; b=gbGqiE4s24ppTDX0TFsjYHVPLCHXmgqh5jSFufDjZ+JuVk9MXXl1AJg6XZGYNDIdKvESmpDnNFQ1Qp7Slgj5qpp/icnsG/UIwCOWMvkIXhpu5IqQda4Gm8hOg9V6n4y16ut1RGms31z7hfFtOCkpQuNMWxUBBTsEh6wWBXUFg2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739434866; c=relaxed/simple;
	bh=lmwRaygmZ/TiwWvi6NDiUsz3T4v603jbAub+O8LMaEY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IIlPGL9V+BDpymE5zBU/Z1t1VwfAPjKVOf0S457SIaq/E1W7Kr8uKTawVlzuaD/S3KHApH51hHYZ6zqDXLwUHZfNFzjSYAblqBLT5wbM4cdDMgIe/onwsRuSttffhqIoppabIv8nZ0C0gpKSeFIXt8ezl0cQnDXARt3sr+rLkdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=iPbTlQyj; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ab7d3bcf1ceso100219666b.3
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 00:21:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739434861; x=1740039661; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vn73WalEclJj9iGOI5gsg/U5ld0lXLx5mMbg3tjPXvY=;
        b=iPbTlQyjOELeyhflWxUE18aAKLxLED+MR6F0QRBjxABjvFPTs2yNwntn5s2KXBjr2H
         NmreTCtNx2h82oxGcj3n0JWjqYS4MbxByOYrFBQNTblgu3rvowNhB+mNPU0zONxUIY1k
         nXhTwwOMtSRyfKqJVk2c5AZusj9VD04kk0KZd6PHeE+IMAtVjqR010pBHiGX/4BOD6Sw
         pOJX9Z7e0slcaZZdbFy5Y51vyeG3Qz3zraH+wgZ3/apgDLgQJqN3/G0rR+7wCDonHtPM
         T2MbsKr0nSYTblgF3v5/Layn3g6Gf3v7NBm7PDDHgQFWqKN60ijXrxJJcgi1Zrq/nvhd
         ssgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739434861; x=1740039661;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vn73WalEclJj9iGOI5gsg/U5ld0lXLx5mMbg3tjPXvY=;
        b=b6oUanWI5rNHNrwitk8AMzGyZmAChYXjY+4Ro84vpfQQyp+MUwSC+mZkF74qRf3GJl
         5LiMRwN1NMdFTOFauA77x97BXsUTaQXSGiYnBK+ogNR2+yZno3vGy9VHO6/3iMiFeWO5
         rDeZMQPhF/egg1cBwG3VCfwZvcanl3BmpHRhsxpVFx45AbCySFmTqlnCniAK+IUyMbdZ
         DB7TGocL4SAfriPEi6Au+UU0pbqvtGyaB0Rvv8zYdw9D9FPI4g7BgtbHMs/FOmq2R5Fl
         VVxrq0IqIg3KQEUN2qk/g/cz0a/k4X1Ni5iizD6dw4j9yGPyzQC4/VdDjel44Fm72y9w
         i55g==
X-Forwarded-Encrypted: i=1; AJvYcCW622EdJJidMg8ClKR/nGd0QXSIl0qWLiYbAXNjy5moCFCXqkKIxLlYpBiHoSEi9VPXiFy88Nqc1TlX@vger.kernel.org
X-Gm-Message-State: AOJu0Yyf7Z2FTKk0jm/FtoNKi0Y+/n5y2zAmMsCGcGmJbzgiKunj8kjA
	eLPpJw/gh65vPw02YkZVX0SuKzvGChIeLOHPmGjuA7hRwVvEIJmKStMJGwRVnRU=
X-Gm-Gg: ASbGnctMhSBgzOUs3MYBBGSfg6dya7JAA16LvE2lIJ4O5YU/vsMhlmXNLRAp+i6msl1
	3Em+pvP+1yzU/f/zKvv49+xDkHdx08U4lX/uq6k0xiTG+QNAVmqTSsa0X4qZOaYEGrUe98honCw
	HSIeCyXjoBRVH9pQNJKOfUmrTC0NYaD21IQIld6Xeq+ffe8a47wescYD6leNE2eMz2W2GaYWgdW
	8tjYfHQOBO10CKlsVH7XqmRSDzdPH8kY7txSXRmzSmSqRdEEJuhmctavB2F9tbPgLndgs7yKCmB
	V4idLq48iLKeqmeGqK4rACZM
X-Google-Smtp-Source: AGHT+IEhesjdBkqWLnCNWzrr/NiEW06NaoXsZ/TpreP8TtqwE77xsVNkXng0LA9DXjAWL54/IW9UoQ==
X-Received: by 2002:a17:907:968d:b0:ab7:a33f:289a with SMTP id a640c23a62f3a-ab7f37865cfmr421784266b.28.1739434861289;
        Thu, 13 Feb 2025 00:21:01 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.173])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba53258215sm81996566b.53.2025.02.13.00.20.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2025 00:21:00 -0800 (PST)
Message-ID: <32ad3a1a-c6b6-4db1-8e80-8b5f951055a8@tuxon.dev>
Date: Thu, 13 Feb 2025 10:20:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 12/15] ARM: at91: pm: Enable ULP0 for SAMA7D65
To: Ryan.Wanner@microchip.com, lee@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 p.zabel@pengutronix.de
Cc: linux@armlinux.org.uk, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
References: <cover.1739221064.git.Ryan.Wanner@microchip.com>
 <a00b193df9e0cb95d144a249b12f1b13188d1ab7.1739221064.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <a00b193df9e0cb95d144a249b12f1b13188d1ab7.1739221064.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Ryan,


On 10.02.2025 23:13, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> New clocks are saved to enable ULP0 for SAMA7D65 because this SoC has a
> total of 10 main clocks that need to be saved for ULP0 mode.

Isn't 9 the total number of MCKs that are handled in the last/first phase
of suspend/resume?

Also, the state of MCKs are saved/restored for ULP0 and ULP1 as well.

> 
> Add mck_count member to at91_pm_data, this will be used to determine
> how many mcks need to be saved. In the mck_count member will also make
> sure that no unnecessary clock settings are written during
> mck_ps_restore.
> 
> Add SHDWC to ULP0 mapping to clear the SHDWC status after exiting low
> power modes.

Can you explain why this clear need to be done? The commit message should
answer to the "what?" and "why?" questions.

> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> ---
>  arch/arm/mach-at91/pm.c              | 19 +++++-
>  arch/arm/mach-at91/pm.h              |  1 +
>  arch/arm/mach-at91/pm_data-offsets.c |  2 +
>  arch/arm/mach-at91/pm_suspend.S      | 97 ++++++++++++++++++++++++++--
>  4 files changed, 110 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/pm.c b/arch/arm/mach-at91/pm.c
> index 55cab31ce1ecb..50bada544eede 100644
> --- a/arch/arm/mach-at91/pm.c
> +++ b/arch/arm/mach-at91/pm.c
> @@ -1337,6 +1337,7 @@ struct pmc_info {
>  	unsigned long uhp_udp_mask;
>  	unsigned long mckr;
>  	unsigned long version;
> +	unsigned long mck_count;>  };
>  
>  static const struct pmc_info pmc_infos[] __initconst = {
> @@ -1344,30 +1345,42 @@ static const struct pmc_info pmc_infos[] __initconst = {
>  		.uhp_udp_mask = AT91RM9200_PMC_UHP | AT91RM9200_PMC_UDP,
>  		.mckr = 0x30,
>  		.version = AT91_PMC_V1,
> +		.mck_count = 1,

As this member is used only for SAMA7 SoCs I would drop it here and above
(where initialized with 1).

>  	},
>  
>  	{
>  		.uhp_udp_mask = AT91SAM926x_PMC_UHP | AT91SAM926x_PMC_UDP,
>  		.mckr = 0x30,
>  		.version = AT91_PMC_V1,
> +		.mck_count = 1,
>  	},
>  	{
>  		.uhp_udp_mask = AT91SAM926x_PMC_UHP,
>  		.mckr = 0x30,
>  		.version = AT91_PMC_V1,
> +		.mck_count = 1,
>  	},
>  	{	.uhp_udp_mask = 0,
>  		.mckr = 0x30,
>  		.version = AT91_PMC_V1,
> +		.mck_count = 1,
>  	},
>  	{
>  		.uhp_udp_mask = AT91SAM926x_PMC_UHP | AT91SAM926x_PMC_UDP,
>  		.mckr = 0x28,
>  		.version = AT91_PMC_V2,
> +		.mck_count = 1,
>  	},
>  	{
>  		.mckr = 0x28,
>  		.version = AT91_PMC_V2,
> +		.mck_count = 5,

I'm not sure mck_count is a good name when used like proposed in this
patch. We know that only 4 MCKs need to be handled for SAMA7G5 and 9 for
SAMA7D65.

Maybe, better change it here to 4 (.mck_count = 4) and to 9 above
(.mck_count = 9) and adjust properly the assembly macros (see below)? What
do you think?

> +	},
> +	{
> +		.uhp_udp_mask = AT91SAM926x_PMC_UHP,
> +		.mckr = 0x28,
> +		.version = AT91_PMC_V2,
> +		.mck_count = 10,
>  	},
>  
>  };
> @@ -1386,7 +1399,7 @@ static const struct of_device_id atmel_pmc_ids[] __initconst = {
>  	{ .compatible = "atmel,sama5d2-pmc", .data = &pmc_infos[1] },
>  	{ .compatible = "microchip,sam9x60-pmc", .data = &pmc_infos[4] },
>  	{ .compatible = "microchip,sam9x7-pmc", .data = &pmc_infos[4] },
> -	{ .compatible = "microchip,sama7d65-pmc", .data = &pmc_infos[4] },
> +	{ .compatible = "microchip,sama7d65-pmc", .data = &pmc_infos[6] },
>  	{ .compatible = "microchip,sama7g5-pmc", .data = &pmc_infos[5] },
>  	{ /* sentinel */ },
>  };
> @@ -1457,6 +1470,7 @@ static void __init at91_pm_init(void (*pm_idle)(void))
>  	soc_pm.data.uhp_udp_mask = pmc->uhp_udp_mask;
>  	soc_pm.data.pmc_mckr_offset = pmc->mckr;
>  	soc_pm.data.pmc_version = pmc->version;
> +	soc_pm.data.pmc_mck_count = pmc->mck_count;
>  
>  	if (pm_idle)
>  		arm_pm_idle = pm_idle;
> @@ -1659,7 +1673,8 @@ void __init sama7_pm_init(void)
>  		AT91_PM_STANDBY, AT91_PM_ULP0, AT91_PM_ULP1, AT91_PM_BACKUP,
>  	};
>  	static const u32 iomaps[] __initconst = {
> -		[AT91_PM_ULP0]		= AT91_PM_IOMAP(SFRBU),
> +		[AT91_PM_ULP0]		= AT91_PM_IOMAP(SFRBU) |
> +					  AT91_PM_IOMAP(SHDWC),

In theory, as the wakeup sources can also resumes the system from standby
(WFI), the shdwc should be mapped for standby, too. Unless I'm wrong and
the wakeup sources covered by the SHDWC_SR register don't apply to standby
(WFI).


>  		[AT91_PM_ULP1]		= AT91_PM_IOMAP(SFRBU) |
>  					  AT91_PM_IOMAP(SHDWC) |
>  					  AT91_PM_IOMAP(ETHC),
> diff --git a/arch/arm/mach-at91/pm.h b/arch/arm/mach-at91/pm.h
> index 53bdc9000e447..ccde9c8728c27 100644
> --- a/arch/arm/mach-at91/pm.h
> +++ b/arch/arm/mach-at91/pm.h
> @@ -39,6 +39,7 @@ struct at91_pm_data {
>  	unsigned int suspend_mode;
>  	unsigned int pmc_mckr_offset;
>  	unsigned int pmc_version;
> +	unsigned int pmc_mck_count;
>  };
>  #endif
>  
> diff --git a/arch/arm/mach-at91/pm_data-offsets.c b/arch/arm/mach-at91/pm_data-offsets.c
> index 40bd4e8fe40a5..59a4838038381 100644
> --- a/arch/arm/mach-at91/pm_data-offsets.c
> +++ b/arch/arm/mach-at91/pm_data-offsets.c
> @@ -18,6 +18,8 @@ int main(void)
>  						 pmc_mckr_offset));
>  	DEFINE(PM_DATA_PMC_VERSION,	offsetof(struct at91_pm_data,
>  						 pmc_version));
> +	DEFINE(PM_DATA_PMC_MCK_COUNT,	offsetof(struct at91_pm_data,
> +						 pmc_mck_count));
>  
>  	return 0;
>  }
> diff --git a/arch/arm/mach-at91/pm_suspend.S b/arch/arm/mach-at91/pm_suspend.S
> index e5869cca5e791..2bbcbb26adb28 100644
> --- a/arch/arm/mach-at91/pm_suspend.S
> +++ b/arch/arm/mach-at91/pm_suspend.S
> @@ -814,17 +814,19 @@ sr_dis_exit:
>  .endm
>  
>  /**
> - * at91_mckx_ps_enable:	save MCK1..4 settings and switch it to main clock
> + * at91_mckx_ps_enable:	save MCK settings and switch it to main clock
>   *
> - * Side effects: overwrites tmp1, tmp2
> + * Side effects: overwrites tmp1, tmp2, tmp3
>   */
>  .macro at91_mckx_ps_enable
>  #ifdef CONFIG_SOC_SAMA7
>  	ldr	pmc, .pmc_base
> +	ldr	tmp3, .mck_count
>  
> -	/* There are 4 MCKs we need to handle: MCK1..4 */
> +	/* Start at MCK1 and go until MCK_count */

s/MCK_count/mck_count to align with the mck_count above.

>  	mov	tmp1, #1
> -e_loop:	cmp	tmp1, #5
> +e_loop:
> +	cmp	tmp1, tmp3
>  	beq	e_done

If providing mck_count = 4 (for SAMA7G5) and mck_count = 9 (for SAMA7D65)
you can change this to:

        bqt     e_done

>  
>  	/* Write MCK ID to retrieve the settings. */
> @@ -850,7 +852,37 @@ e_save_mck3:
>  	b	e_ps
>  
>  e_save_mck4:
> +	cmp	tmp1, #4
> +	bne	e_save_mck5
>  	str	tmp2, .saved_mck4
> +	b	e_ps
> +
> +e_save_mck5:
> +	cmp	tmp1, #5
> +	bne	e_save_mck6
> +	str	tmp2, .saved_mck5
> +	b	e_ps
> +
> +e_save_mck6:
> +	cmp	tmp1, #6
> +	bne	e_save_mck7
> +	str	tmp2, .saved_mck6
> +	b	e_ps
> +
> +e_save_mck7:
> +	cmp	tmp1, #7
> +	bne	e_save_mck8
> +	str	tmp2, .saved_mck7
> +	b	e_ps
> +
> +e_save_mck8:
> +	cmp	tmp1, #8
> +	bne	e_save_mck9
> +	str	tmp2, .saved_mck8
> +	b	e_ps
> +
> +e_save_mck9:
> +	str	tmp2, .saved_mck9
>  
>  e_ps:
>  	/* Use CSS=MAINCK and DIV=1. */
> @@ -870,17 +902,19 @@ e_done:
>  .endm
>  
>  /**
> - * at91_mckx_ps_restore: restore MCK1..4 settings
> + * at91_mckx_ps_restore: restore MCKx settings

s/MCKx/MCK to align with the description from at91_mckx_ps_enable

>   *
>   * Side effects: overwrites tmp1, tmp2
>   */
>  .macro at91_mckx_ps_restore
>  #ifdef CONFIG_SOC_SAMA7
>  	ldr	pmc, .pmc_base
> +	ldr	tmp2, .mck_count
>  
> -	/* There are 4 MCKs we need to handle: MCK1..4 */
> +	/* Start from MCK1 and go up to MCK_count */
>  	mov	tmp1, #1
> -r_loop:	cmp	tmp1, #5
> +r_loop:
> +	cmp	tmp1, tmp2
>  	beq	r_done

Same here:
        bgt     r_done

should be enough if providing mck_count = 4 or 9

>  
>  r_save_mck1:
> @@ -902,7 +936,37 @@ r_save_mck3:
>  	b	r_ps
>  
>  r_save_mck4:
> +	cmp	tmp1, #4
> +	bne	r_save_mck5
>  	ldr	tmp2, .saved_mck4
> +	b	r_ps
> +
> +r_save_mck5:
> +	cmp	tmp1, #5
> +	bne	r_save_mck6
> +	ldr	tmp2, .saved_mck5
> +	b	r_ps
> +
> +r_save_mck6:
> +	cmp	tmp1, #6
> +	bne	r_save_mck7
> +	ldr	tmp2, .saved_mck6
> +	b	r_ps
> +
> +r_save_mck7:
> +	cmp	tmp1, #7
> +	bne	r_save_mck8
> +	ldr	tmp2, .saved_mck7
> +	b	r_ps
> +
> +r_save_mck8:
> +	cmp	tmp1, #8
> +	bne	r_save_mck9
> +	ldr	tmp2, .saved_mck8
> +	b	r_ps
> +
> +r_save_mck9:
> +	ldr	tmp2, .saved_mck9
>  
>  r_ps:
>  	/* Write MCK ID to retrieve the settings. */
> @@ -921,6 +985,7 @@ r_ps:
>  	wait_mckrdy tmp1
>  
>  	add	tmp1, tmp1, #1
> +	ldr	tmp2, .mck_count

Or you can add tmp4 for this

>  	b	r_loop
>  r_done:
>  #endif
> @@ -1045,6 +1110,10 @@ ENTRY(at91_pm_suspend_in_sram)
>  	str	tmp1, .memtype
>  	ldr	tmp1, [r0, #PM_DATA_MODE]
>  	str	tmp1, .pm_mode
> +#ifdef CONFIG_SOC_SAMA7
> +	ldr	tmp1, [r0, #PM_DATA_PMC_MCK_COUNT]
> +	str	tmp1, .mck_count
> +#endif
>  
>  	/*
>  	 * ldrne below are here to preload their address in the TLB as access
> @@ -1132,6 +1201,10 @@ ENDPROC(at91_pm_suspend_in_sram)
>  	.word 0
>  .pmc_version:
>  	.word 0
> +#ifdef CONFIG_SOC_SAMA7
> +.mck_count:
> +	.word 0
> +#endif
>  .saved_mckr:
>  	.word 0
>  .saved_pllar:
> @@ -1155,6 +1228,16 @@ ENDPROC(at91_pm_suspend_in_sram)
>  	.word 0
>  .saved_mck4:
>  	.word 0
> +.saved_mck5:
> +	.word 0
> +.saved_mck6:
> +	.word 0
> +.saved_mck7:
> +	.word 0
> +.saved_mck8:
> +	.word 0
> +.saved_mck9:
> +	.word 0
>  #endif
>  
>  ENTRY(at91_pm_suspend_in_sram_sz)


