Return-Path: <devicetree+bounces-261893-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHk2DsPYgGnMBwMAu9opvQ
	(envelope-from <devicetree+bounces-261893-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 18:02:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1D4CF51E
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 18:02:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2BD863037E69
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 17:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CE0E3815EF;
	Mon,  2 Feb 2026 17:01:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G3YfkSIh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B361937F8BD
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 17:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770051684; cv=none; b=Ai9+EBBYDy7YjyUFalDi8Z3uNeKwJVdAu+Eodh/wm5UzkaKTum5T1zsCwCWaKkUb6i138gVej/3bRWvDVQJRcmBY+tcr6gu483rfQlQOel18+faWbkyChbe9eTVIZmH88oZ1VCZVsERfJ7NtQnWy8p45428BvDyS25eN/cQSoNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770051684; c=relaxed/simple;
	bh=LtvoHqnysD1zGYNutc4CejPWz9ZTHU2Nh66lqyyYhTQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U4hsfn2OW6+PmCJhQwDm/khSKsv90SvmEJ3O5acm1ID+HArFxxI7B/mEMjtWFZdKK3fsj6VX/mGB2ddRceND+2tJ1E3OqNamIsroBSCCW/iYEgxoW3rGd9Fng1il+BMeBycX0x7EMeLC63xZIxtNrCB9VYI29mnL9VXM3AhPnq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G3YfkSIh; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-59b6d5bd575so4621134e87.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 09:01:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770051681; x=1770656481; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8ppJ+s5yD8OpOfsCawBEF1Fn1W+ZwaOrmnxykM3fGoI=;
        b=G3YfkSIhgpO2DU7pGKspLuJYzH1ncijTeXopmA1zaZD39svyPmkiPO2U9CsaK5U9D2
         D93DPWFHBmb/471NOQnMb3sB1K4b2H/Ltg16VpdxU/lABZqtgcJVcBT7jZI/0UWGbp7Q
         9rJZ7zHbriluKasGCIdpmqnrlwGajMucu6Y8on7gG7wGeXEhZsjXW46hFxYJDZsp2rao
         woAUGfVLZxGIR+XkmpannAa9ZcMlT3jxCDDb2PqgY7LZhOzlvt07NpL2T97heEmb2K3k
         YR9cs05b23hgO06w4VIijpl2gq3ud0BukDbAiRxRblGSvyACVdi4iTmbl5upg85QFdXt
         kZYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770051681; x=1770656481;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8ppJ+s5yD8OpOfsCawBEF1Fn1W+ZwaOrmnxykM3fGoI=;
        b=tmELYFwaOZwQgoyp4g7b73ogZyQpZhefA7eMiEUQjDHtZ136O6/8g66owBDOmcUpQJ
         DWNbqTZwBmTvB70eOlK5Vh+ZZ0LSnMRmYvnNaWQIO7FcY6PPO2bmNNt2HL5baKqWAuLM
         3AiXZwwfRVeOBRR40lf5oPaDrvUa5mikWEFHh65zUnrT7+MMLc8hxOmdgLcWwv2fbXhr
         02uMa88ivL0XpqPWCq7+FNIsVhLngbzoZnL7Mro0wIocn5hjYYNBPv0egrLR8IqQ0uGU
         dP+D86vm1EmFSI2hB7qUhBuISqF4pu8pcheL30vzsczJWLOTTXE1bOo2tCMtSVeZKfli
         U0gg==
X-Forwarded-Encrypted: i=1; AJvYcCX8OeaVt6gRqs9G3K5+8wWwxfMc4rpMFRP+Cs1v9RyWb5A8rPsH1hN0/DgwDWQtFKj6QI9C1Oi+o7nq@vger.kernel.org
X-Gm-Message-State: AOJu0YyoA4tPRqpQT7x0kxwCKzGZyw5ORhybhNGg2ibm/VrML2Cyp7lv
	MRG6empaDjP+qZLou2eG2FTzGv9fMtQTO8gyI5DzMRoe+EXEmLj+beK5UP/OKnfU
X-Gm-Gg: AZuq6aKmvkLmGerr+3tTZPPUwuuqgLtHLLe6vW/TlFTmJ69PhWDsP3kxuojo+enTDhH
	zTDYUOKfFLJkhRDOcq7P4/uHiWf76eXDchdCBnkSryGfAGpXoolpBSJtdiPsYvdizjf0Nm+BdqF
	ydMCeqyYjNFrMY4WZhUSxjzF3wTGPnMpdbUrsoVHw9wD9C5vWxP0F5Joi+PBup5gjsOQKuNxh1D
	oxZYvgrZnCci/2LKfBZyLM+oiLslKqNFMYzXSnVjhc6SCX/mzD+VQrRBPvtgFlY7Y+XA7BkIVKw
	Hrm6cqve695phdYV2N0Epi0DR0tYWsQZ2s7TuOiBZfBc68h/5nRHO6q51hCT3zKtsvX5wY+CApn
	b0vS8hZoeeOM3vSjDYXQpsU3unMx/9I4Ikvem6t0I2ODDyCeqdXl12WCDniMG+A30YEMMXhi1n4
	5Ae/3ZV3J7WY/3xSzS0KShr+Tww5Pyzj9uff/vOBKk7bYgAHdmNB5c5lyqDgfH8LtEag5SvG1W0
	RfdqFcuMoTP9biur850Z64R3y7OOn4cOMvT
X-Received: by 2002:a05:6512:3192:b0:59b:af7b:9ac1 with SMTP id 2adb3069b0e04-59e163ffc29mr4714394e87.4.1770051680463;
        Mon, 02 Feb 2026 09:01:20 -0800 (PST)
Received: from ?IPV6:2001:999:700:7c7d:ca87:d71e:154f:6316? (n7ka2o5f47ode54rg9i-1.v6.elisa-mobile.fi. [2001:999:700:7c7d:ca87:d71e:154f:6316])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074b7033sm3618294e87.68.2026.02.02.09.01.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 09:01:19 -0800 (PST)
Message-ID: <d7ed59c4-2262-4cd5-978f-e9e5c0e8a9a9@gmail.com>
Date: Mon, 2 Feb 2026 19:02:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] ASoC: ti: davinci-mcasp: Add asynchronous mode
 support
To: Sen Wang <sen@ti.com>, broonie@kernel.org, lgirdwood@gmail.com,
 perex@perex.cz, tiwai@suse.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260130051045.1898892-1-sen@ti.com>
 <20260130051045.1898892-5-sen@ti.com>
From: =?UTF-8?Q?P=C3=A9ter_Ujfalusi?= <peter.ujfalusi@gmail.com>
Content-Language: en-US
In-Reply-To: <20260130051045.1898892-5-sen@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261893-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8F1D4CF51E
X-Rspamd-Action: no action



On 30/01/2026 07:10, Sen Wang wrote:
> McASP has dedicated clock & frame sync registers for both transmit
> and receive. Currently McASP driver only supports synchronous behavior and
> couples both TX & RX settings.
> 
> Add logic that enables asynchronous mode via ti,async-mode property. In
> async mode, playback & record can be done simultaneously with different
> audio configurations (tdm slots, tdm width, audio bit depth).
> 
> Note the ability to have different tx/rx DSP formats (i2s, dsp_a, etc.),
> while possible in hardware, remains to be a gap as it require changes
> to the corresponding machine driver interface.
> 
> Existing IIS (sync mode) and DIT mode logic remains mostly unchanged.
> Exceptions are IIS mode logic that previously assumed sync mode, which has
> now been made aware of the distinction. And shared logic across all modes
> also now checks for McASP tx/rx-specific driver attributes. Those
> attributes have been populated according to the original extent, ensuring
> no divergence in functionality.
> 
> Constraints no longer applicable for async mode are skipped.
> Clock selection options have also been added to include rx/tx-only clk_ids,
> exposing independent configuration via the machine driver as well.
> 
> Note that asynchronous mode is not applicable for McASP in DIT mode,
> which is a transmitter-only mode to interface w/ self-clocking formats.
> 
> Signed-off-by: Sen Wang <sen@ti.com>
> ---
>  include/linux/platform_data/davinci_asp.h |   3 +-
>  sound/soc/ti/davinci-mcasp.c              | 487 +++++++++++++++++-----
>  sound/soc/ti/davinci-mcasp.h              |  10 +
>  3 files changed, 398 insertions(+), 102 deletions(-)
> 
> diff --git a/sound/soc/ti/davinci-mcasp.c b/sound/soc/ti/davinci-mcasp.c
>

  static void mcasp_start_rx(struct davinci_mcasp *mcasp)
>  {
>  	if (mcasp->rxnumevt) {	/* enable FIFO */
> @@ -230,13 +288,17 @@ static void mcasp_start_rx(struct davinci_mcasp *mcasp)
>  	/*
>  	 * When ASYNC == 0 the transmit and receive sections operate
>  	 * synchronously from the transmit clock and frame sync. We need to make
> -	 * sure that the TX signlas are enabled when starting reception.
> +	 * sure that the TX signals are enabled when starting reception.
> +	 * Else set pin to be output when McASP is the master

In new code - while it might not match with old code - use producer
instead of master.

Otherwise it looks nice, I trust you have tested the sync and DIT mode.

With this nitpick addressed:
Acked-by: Peter Ujfalusi <peter.ujfalusi@gmail.com>

-- 
Péter


