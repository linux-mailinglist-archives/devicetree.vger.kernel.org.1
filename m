Return-Path: <devicetree+bounces-261891-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKV6METWgGmFBwMAu9opvQ
	(envelope-from <devicetree+bounces-261891-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 17:52:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F8FCF2F8
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 17:52:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 218E230630E9
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 16:48:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C86773803C1;
	Mon,  2 Feb 2026 16:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="On8twFI7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A1537F8DB
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 16:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770050914; cv=none; b=MSUa7FJLrkNyBCoMwhdUxc58Ai7ID0ELZOGodV0CLfEPKFayNaYZXql/jqjG61riS2PVx/qmeIOzPT36l/7hbWWYL17DQ7ehrUNuS92vhKJ99i9M53x6S/7cWUTO1ioIa66dcL24nK3miGpKiNcU/1AEG27N5CDp9IA71gmBhTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770050914; c=relaxed/simple;
	bh=9nc5Yb9Ey5V1/5wY5YpYIHYPLoHq/9oLwfxwaQMf34o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j5h9Sr+Bg+4QpPqKoZ+NWyXBqekee4CN2E7VSNIcgZguHWq8QWfInpcl//UMkemyyDJgplKQrVMutHDAK4BUzJhsT/nnhXuvk9QTVNaaleGIrjvhGvUiZSTBDfIULEEeM5HqlRxMu7Ug38ZbdCze5pRsj1kaZXqXG1ppJ6tAkEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=On8twFI7; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-59dea72099eso5505293e87.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 08:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770050911; x=1770655711; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6So5Xq258WzvuB3Waej1vRyM0kWGAajf74EAt3sWHG0=;
        b=On8twFI7EU2/S2JDFowvEq++EKhZw3NzRavb9TkkW+8Vz40EF6Z/xSdXAjjktOnZuB
         dgh5j4oJZuMMnh5DHSpq7Xnej9kngirIPoJoA/h8PYh5/LZEWREFB5QZWpZ+szWVP9Tm
         0UOHml6xiJeQViptwzUmcyTEoLjbyO2R2ByBjwbPkVQK/QKkurQII8DaESXsFH+KXIB3
         oSLAeyqwls+VEtxefDelYadTUiZU/6np3sNvZaFU7QGjuVsqZ9JBCbWOru/TjbGOTmmg
         qkbOB5Ck2xQJKHLnIVEXLJNAaWXtRbBwilYzsDo9BsMCqHDTUp4MUZ/weof0FAnYWILu
         v9tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770050911; x=1770655711;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6So5Xq258WzvuB3Waej1vRyM0kWGAajf74EAt3sWHG0=;
        b=brbvUSxozx9m7ksWl4siXIzebssZni5tfDEFsmQ26l+SYRQeZ8SObGIiVL5UIfmZO/
         wkxj28VKp1T84/RRrreHPp/KnPaDMJJeknzIfjSSFDKRCzUXdVp3K71915Cr5hwoE56m
         V8uBtN0ICqCWiSYkxH9AX8hr1+pcy3edDLnYxirm441Pylrzuwjm3wiw3SXKrsgnzjb2
         WQL6sXMmMQeeM3uW+Z01B1nn0bWqxLxujrHx0kO9ccutDkm762+51VjtfDs/wwFUJ6LZ
         MgULNZUHKhu+VJzANsjsWYh8XIyp3ffab2mcxHY6kjN9yxj9wy5f27QgAe/X0HJULQVT
         YGmA==
X-Forwarded-Encrypted: i=1; AJvYcCVLJoXzSMdLeUkfRzNvQIUdjIbvbr0fx3djpEr3MhvI1tSZePF25u+/LYbogHC/sMvyeJ4ppti98I70@vger.kernel.org
X-Gm-Message-State: AOJu0YzwKgHne7mO9pRdjY7jsr6hVHIcaPbEQxuZD1KWYWqcUig6kXuz
	T7O08qtow/aLm5BcODLWF4ivbgYyFhdJfZtbATeX3DY28mewQdczFMXF
X-Gm-Gg: AZuq6aI6zrzwStEHVq0+QvZMOCMAQRAdgHLXtHeQOLQhy29SQldp+6csAnJgIu3zUg6
	+j5zOOASBEvkTNvYzIFnutJTTJnICm7OtrbCI6+F5cp1onhxhh56vGupfCwy6wb5O3vCDHE/ZUx
	46eIp7ASMwPgQK0y8JkSC9GYnwrLhHgGW6Hzxa7EFluh312XHoq16t0DM7J6ZtcSDBHx0PKYbn+
	JMIDw1tteVbrMFIzMF/MNDDA61xGsS34Z+spiyBMGQOT6dWotMQ/o+01yhGcexouUrhyMHvIyLt
	smJipidVhDcOaJRkyRzctlX7Pccj6XnaqFe0TxtAbtuPh0XqGT1qWQeOX5uNKq6ZbABDikgG+9g
	lkEkC3Ps7QQnUKmpUTn67CHOKnjIYyrWaPH8G4OdxyGms/s0y1j3Vsx0BtNgZz8LtkOqDF+BHJ3
	qf0Tf0coR28kQKyOusnboRHX4aVqwWKMcQ4gdxKEpZlPRIbi9JygbKi/ycKUp1SVS3bzUnnubVm
	Zv6tqX4dX+5TT/O7jDR6U5/g/i+45wEkwsS8hdLCXOB4BY=
X-Received: by 2002:a05:6512:128a:b0:59d:d22b:8d30 with SMTP id 2adb3069b0e04-59e164329femr4784423e87.33.1770050911061;
        Mon, 02 Feb 2026 08:48:31 -0800 (PST)
Received: from ?IPV6:2001:999:700:7c7d:ca87:d71e:154f:6316? (n7ka2o5f47ode54rg9i-1.v6.elisa-mobile.fi. [2001:999:700:7c7d:ca87:d71e:154f:6316])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074bc9b0sm3650331e87.91.2026.02.02.08.48.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 08:48:30 -0800 (PST)
Message-ID: <ffcbbe3b-3a1b-4986-8b4c-b0f7e309ccbb@gmail.com>
Date: Mon, 2 Feb 2026 18:49:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] ASoC: ti: davinci-mcasp: Streamline pdir behavior
 across rx & tx streams
To: Sen Wang <sen@ti.com>, broonie@kernel.org, lgirdwood@gmail.com,
 perex@perex.cz, tiwai@suse.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260130051045.1898892-1-sen@ti.com>
 <20260130051045.1898892-4-sen@ti.com>
Content-Language: en-US
From: =?UTF-8?Q?P=C3=A9ter_Ujfalusi?= <peter.ujfalusi@gmail.com>
In-Reply-To: <20260130051045.1898892-4-sen@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261891-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[ti.com,kernel.org,gmail.com,perex.cz,suse.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peterujfalusi@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:url,ti.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 40F8FCF2F8
X-Rspamd-Action: no action



On 30/01/2026 07:10, Sen Wang wrote:
> Simplify the mcasp_set_clk_pdir caller convention in start/stop stream
> function, to make it so that set_clk_pdir gets called regardless when
> stream starts and also disables when stream ends.
> 
> Functionality-wise, everything remains the same as the previously skipped
> calls are now either correctly configured
> (when McASP is SND_SOC_DAIFMT_BP_FC - pdir needs to be enabled)
> or called with a bitmask of zero (when McASP is SND_SOC_DAIFMT_BC_FC - pdir
> gets disabled).
> 
> On brief regarding McASP Clock and Frame sync configurations, refer to [0].
> 
> [0]:TRM Section 12.1.1.4.2 https://www.ti.com/lit/ug/sprujd4a/sprujd4a.pdf
> 
> Signed-off-by: Sen Wang <sen@ti.com>
> ---
>  sound/soc/ti/davinci-mcasp.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/sound/soc/ti/davinci-mcasp.c b/sound/soc/ti/davinci-mcasp.c
> index aa14fc1c8011..4f8a2ce6ce78 100644
> --- a/sound/soc/ti/davinci-mcasp.c
> +++ b/sound/soc/ti/davinci-mcasp.c
> @@ -235,8 +235,8 @@ static void mcasp_start_rx(struct davinci_mcasp *mcasp)
>  	if (mcasp_is_frame_producer(mcasp) && mcasp_is_synchronous(mcasp)) {
>  		mcasp_set_ctl_reg(mcasp, DAVINCI_MCASP_GBLCTLX_REG, TXHCLKRST);
>  		mcasp_set_ctl_reg(mcasp, DAVINCI_MCASP_GBLCTLX_REG, TXCLKRST);
> -		mcasp_set_clk_pdir(mcasp, true);
>  	}
> +	mcasp_set_clk_pdir(mcasp, true);
>  
>  	/* Activate serializer(s) */
>  	mcasp_set_reg(mcasp, DAVINCI_MCASP_RXSTAT_REG, 0xFFFFFFFF);
> @@ -311,10 +311,10 @@ static void mcasp_stop_rx(struct davinci_mcasp *mcasp)
>  	 * In synchronous mode stop the TX clocks if no other stream is
>  	 * running
>  	 */
> -	if (mcasp_is_frame_producer(mcasp) && mcasp_is_synchronous(mcasp) && !mcasp->streams) {
> -		mcasp_set_clk_pdir(mcasp, false);
> +	if (mcasp_is_frame_producer(mcasp) && mcasp_is_synchronous(mcasp) && !mcasp->streams)
>  		mcasp_set_reg(mcasp, DAVINCI_MCASP_GBLCTLX_REG, 0);
> -	}
> +	if (!mcasp->streams)
> +		mcasp_set_clk_pdir(mcasp, false);

I'm not sure about this, but the sequence should be preserved, PDIR
change first.

>  
>  	mcasp_set_reg(mcasp, DAVINCI_MCASP_GBLCTLR_REG, 0);
>  	mcasp_set_reg(mcasp, DAVINCI_MCASP_RXSTAT_REG, 0xFFFFFFFF);
> @@ -340,7 +340,7 @@ static void mcasp_stop_tx(struct davinci_mcasp *mcasp)
>  	 */
>  	if (mcasp_is_frame_producer(mcasp) && mcasp_is_synchronous(mcasp) && mcasp->streams)
>  		val =  TXHCLKRST | TXCLKRST | TXFSRST;
> -	else
> +	if (!mcasp->streams)
>  		mcasp_set_clk_pdir(mcasp, false);
>  
>  

-- 
Péter


