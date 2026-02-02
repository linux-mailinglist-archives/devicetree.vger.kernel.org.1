Return-Path: <devicetree+bounces-261890-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KL5G+fUgGmFBwMAu9opvQ
	(envelope-from <devicetree+bounces-261890-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 17:46:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C9252CF1E6
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 17:46:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 04643301C5A7
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 16:41:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 208D737C109;
	Mon,  2 Feb 2026 16:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bcZmKp/x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72347284B2F
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 16:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770050473; cv=none; b=VVp1YZBuucsiLQtgPdXE4IHieJzDKID6l5g1/7rkVevjpkWM67uKl9KWRdOFtj1n2KB0peADU1q1rPfvmU/MIOCQjhzFcQN9LlFbRUY5oyr1to/2bSaD2rpbigF9kogKEwfGQ6NJOL661kev7Q+uksxuNSgaU4JYmKrHE1kzHtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770050473; c=relaxed/simple;
	bh=KShGaT1qgrVmzBvsExwPDJ7IJ5x4aX4qzzVujJIQm3M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B7A65s2GccnPASWNXu9UIEGkE4WCsFsB3Qd4t5OVHjYs3NLIOVROktWgLyfKt0fQCcpTeBrBKcBLlfh78nnV9+md/WJZEvqaYRN2V4iu8w1BF83Z45RjJ8qF35ICEd7ovDN7HhUaHc77D9kSt9e9EtEg8DEGGhrjJbQGkA2aYsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bcZmKp/x; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-59deec3d8dcso6159512e87.3
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 08:41:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770050470; x=1770655270; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wKZpya53ePP94vNtf7vtbWwSUdhjwrNT/p0Fq+u4v78=;
        b=bcZmKp/xQAozATxueY0J8buk23c3urSljaA63ltTIIcyOmYM6VvBoB6cHt2RXe/kNM
         UAYdl6AVgY+1qXUnSz2U3ZcY5lCTjxKlrNbiTHRrieRD69PKwEwr0uiGA073XW3ObrKz
         y1Qe9pfx3RDfNyK17mi1NIozlGhu/fF1X0GIxGp9rp4N98C73JFF+6/0O3dOShEM1Wf5
         KFtdjU5NtrzT/lfFhsymGt7viooTN30f+iPjwRfFml+OZ+S7DOpaTIyrzCL+VGp3OJGi
         U7JmkB1wyiN7MdGifEbfs9wWIOWA+nqAEV3IhIU9m6wQntXB16BKh7KmwvQmalym7T7T
         GJXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770050470; x=1770655270;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wKZpya53ePP94vNtf7vtbWwSUdhjwrNT/p0Fq+u4v78=;
        b=wbcxTi8JtR30L7jNSWynRnaDpi9YwKj5MFwhallSsfxXKnpMKzXDHKSJ4ezjVNjH5S
         mqOVpW2M+znsRIcrI0//qlVu/zFHyFIdtYoPUv5r7G6UWv2Zi2kTQgOcSRCOsMaz1zow
         srTlCiDXTyPcSRgf/BdNGcraHeVi63jXNVJwRUo0FV5ahl6yrVY69mZkBUJ3UFr9t6oD
         TmH0HTJdGFwD6r94WORR1DAVAiaip8dAXBZxJpwTUO3HGbCRIelApWJxo8FkewM2l0pz
         zOG3tW7iQbv7AL0zpDGX1EOGu3p45X5yoM6Q94/WAsFWT2iYEztijlvznrsV6yMz4SkY
         JEtQ==
X-Forwarded-Encrypted: i=1; AJvYcCWk2lB5lZaXAiQo+U4m2XRJjiv9nFgehNIZ4NTsg0RDJ/BcKx+7v9+bNS0cHQLVgcclzs3gZK0BuywK@vger.kernel.org
X-Gm-Message-State: AOJu0YwyvSISMtvfm0/dtvZ2gB443Mr/6Q2x3BPmKomVfUgIbVPfCbtq
	R89rRWyFVCqZ8zFiWujJgoRQhDAwn440kHgRLuG05GxuN1V54bfzA1ce
X-Gm-Gg: AZuq6aKfCZhsV2Oq1YgaaepYizcX6bqGiya7CnpSGMumGbjnD3pZMavGfEhFoXVsf58
	lOpbcm20BWFA+OHGruuZalawV739EEosLt/AuJdiSsdQjxvfkZ4dKqMA2/RZ++QfgUnT+YbuA7I
	pzuhMhBo1q3LJcAHKwAHXVU24bY+kbQNzI2hHwHEM7Mf3AetALKf9qZyPvEG/n1hkvhWku5xLUR
	HX9tQSREaOzwq1S/Yd2Ps7AkqG59rFNVFDdxEgLHVbUr2N/vh1FRVngiNU+Qwkdu9LpACde4Ka0
	1wiYjBo2AePyPBv0YA4OKwaAQZVq8VDYI4ZMJA3ellb0xL1KC/6Lj6cvECh6ZY+C4jWemrOwRPc
	1lH0/To0nW2hhTdJpAzYRUVxziLiuTiBZ141rNhawWPzfEeS40h/Hx6vlwJfdhJWkT3mH/Ls19v
	FDaYA1DiE3yD23LxDBOkntCyJ9fn4lT39UJpBI6rzMq8Qz+J9HWGUtwRH6qDXE7TMRV8Z6Eg7CV
	jXLxYPh/FKI03fXouygPRfXv3rmNEp/pSiyJh7m/boDwJI=
X-Received: by 2002:a05:6512:3f1f:b0:595:81eb:5368 with SMTP id 2adb3069b0e04-59e1643285emr4848977e87.39.1770050469254;
        Mon, 02 Feb 2026 08:41:09 -0800 (PST)
Received: from ?IPV6:2001:999:700:7c7d:ca87:d71e:154f:6316? (n7ka2o5f47ode54rg9i-1.v6.elisa-mobile.fi. [2001:999:700:7c7d:ca87:d71e:154f:6316])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074889fasm3676714e87.30.2026.02.02.08.41.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 08:41:08 -0800 (PST)
Message-ID: <eec4df22-f664-45dd-a8e9-97c4714ffaa1@gmail.com>
Date: Mon, 2 Feb 2026 18:42:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] ASoC: ti: davinci-mcasp: Disambiguate
 mcasp_is_synchronous function
To: Sen Wang <sen@ti.com>, broonie@kernel.org, lgirdwood@gmail.com,
 perex@perex.cz, tiwai@suse.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260130051045.1898892-1-sen@ti.com>
 <20260130051045.1898892-3-sen@ti.com>
From: =?UTF-8?Q?P=C3=A9ter_Ujfalusi?= <peter.ujfalusi@gmail.com>
Content-Language: en-US
In-Reply-To: <20260130051045.1898892-3-sen@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261890-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:email]
X-Rspamd-Queue-Id: C9252CF1E6
X-Rspamd-Action: no action



On 30/01/2026 07:10, Sen Wang wrote:
> The current mcasp_is_synchronous() function does more than what it
> proclaims, it also checks if McASP is a frame producer.

True, the naming was not too precise. It is tasked to decide if the TX
clock needs to be enabled for RX operation, which precisely when McASP
is in synchronous mode _and_ it is clock provider.

> Therefore split the original function into two separate ones and
> replace all occurrences with the new equivalent logic. So the functions
> can be re-used when checking async/sync status in light of async mode
> enhancements.

Acked-by: Peter Ujfalusi <peter.ujfalusi@gmail.com>

>
> Signed-off-by: Sen Wang <sen@ti.com>
> ---
>  sound/soc/ti/davinci-mcasp.c | 21 ++++++++++++++-------
>  1 file changed, 14 insertions(+), 7 deletions(-)
>
> diff --git a/sound/soc/ti/davinci-mcasp.c b/sound/soc/ti/davinci-mcasp.c
> index 621a9d5f9377..aa14fc1c8011 100644
> --- a/sound/soc/ti/davinci-mcasp.c
> +++ b/sound/soc/ti/davinci-mcasp.c
> @@ -179,10 +179,16 @@ static void mcasp_set_ctl_reg(struct
davinci_mcasp *mcasp, u32 ctl_reg, u32 val)
>
>  static bool mcasp_is_synchronous(struct davinci_mcasp *mcasp)
>  {
> -	u32 rxfmctl = mcasp_get_reg(mcasp, DAVINCI_MCASP_RXFMCTL_REG);
>  	u32 aclkxctl = mcasp_get_reg(mcasp, DAVINCI_MCASP_ACLKXCTL_REG);
>
> -	return !(aclkxctl & TX_ASYNC) && rxfmctl & AFSRE;
> +	return !(aclkxctl & TX_ASYNC);
> +}
> +
> +static bool mcasp_is_frame_producer(struct davinci_mcasp *mcasp)
> +{
> +	u32 rxfmctl = mcasp_get_reg(mcasp, DAVINCI_MCASP_RXFMCTL_REG);
> +
> +	return rxfmctl & AFSRE;
>  }
>
>  static inline void mcasp_set_clk_pdir(struct davinci_mcasp *mcasp,
bool enable)
> @@ -226,7 +232,7 @@ static void mcasp_start_rx(struct davinci_mcasp
*mcasp)
>  	 * synchronously from the transmit clock and frame sync. We need to make
>  	 * sure that the TX signlas are enabled when starting reception.
>  	 */
> -	if (mcasp_is_synchronous(mcasp)) {
> +	if (mcasp_is_frame_producer(mcasp) && mcasp_is_synchronous(mcasp)) {
>  		mcasp_set_ctl_reg(mcasp, DAVINCI_MCASP_GBLCTLX_REG, TXHCLKRST);
>  		mcasp_set_ctl_reg(mcasp, DAVINCI_MCASP_GBLCTLX_REG, TXCLKRST);
>  		mcasp_set_clk_pdir(mcasp, true);
> @@ -239,7 +245,7 @@ static void mcasp_start_rx(struct davinci_mcasp
*mcasp)
>  	mcasp_set_ctl_reg(mcasp, DAVINCI_MCASP_GBLCTLR_REG, RXSMRST);
>  	/* Release Frame Sync generator */
>  	mcasp_set_ctl_reg(mcasp, DAVINCI_MCASP_GBLCTLR_REG, RXFSRST);
> -	if (mcasp_is_synchronous(mcasp))
> +	if (mcasp_is_frame_producer(mcasp) && mcasp_is_synchronous(mcasp))
>  		mcasp_set_ctl_reg(mcasp, DAVINCI_MCASP_GBLCTLX_REG, TXFSRST);
>
>  	/* enable receive IRQs */
> @@ -305,7 +311,7 @@ static void mcasp_stop_rx(struct davinci_mcasp *mcasp)
>  	 * In synchronous mode stop the TX clocks if no other stream is
>  	 * running
>  	 */
> -	if (mcasp_is_synchronous(mcasp) && !mcasp->streams) {
> +	if (mcasp_is_frame_producer(mcasp) && mcasp_is_synchronous(mcasp) &&
!mcasp->streams) {
>  		mcasp_set_clk_pdir(mcasp, false);
>  		mcasp_set_reg(mcasp, DAVINCI_MCASP_GBLCTLX_REG, 0);
>  	}
> @@ -332,7 +338,7 @@ static void mcasp_stop_tx(struct davinci_mcasp *mcasp)
>  	 * In synchronous mode keep TX clocks running if the capture stream is
>  	 * still running.
>  	 */
> -	if (mcasp_is_synchronous(mcasp) && mcasp->streams)
> +	if (mcasp_is_frame_producer(mcasp) && mcasp_is_synchronous(mcasp) &&
mcasp->streams)
>  		val =  TXHCLKRST | TXCLKRST | TXFSRST;
>  	else
>  		mcasp_set_clk_pdir(mcasp, false);
> @@ -1041,7 +1047,8 @@ static int mcasp_i2s_hw_param(struct
davinci_mcasp *mcasp, int stream,
>  		 * not running already we need to configure the TX slots in
>  		 * order to have correct FSX on the bus
>  		 */
> -		if (mcasp_is_synchronous(mcasp) && !mcasp->channels)
> +		if (mcasp_is_frame_producer(mcasp) && mcasp_is_synchronous(mcasp) &&
> +		    !mcasp->channels)
>  			mcasp_mod_bits(mcasp, DAVINCI_MCASP_TXFMCTL_REG,
>  				       FSXMOD(total_slots), FSXMOD(0x1FF));
>  	}
-- 
Péter


