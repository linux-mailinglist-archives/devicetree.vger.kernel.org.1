Return-Path: <devicetree+bounces-312403-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nr0EH2oYMWo7bgUAu9opvQ
	(envelope-from <devicetree+bounces-312403-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 11:33:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C07B68D950
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 11:33:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="E5FQ/phW";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312403-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312403-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8BE37300C0CB
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 09:33:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61F344218A3;
	Tue, 16 Jun 2026 09:33:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042C03B4E81
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 09:33:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781602408; cv=none; b=uwVO5xydB2Xch/Fp+0CTZA//+A6T4vksq/y3Ci0VkCknANflOUIyC5cVsuHVLrqhQLc3Z+vgLeDPRr4onsEZOcDFMV0U5GAOA1gk55SQKoffvwdpR/tNBU9RdcUaLIJCKorsEqeA63vmApj1JVBc07kYALSaTzWDX9D2L1eurAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781602408; c=relaxed/simple;
	bh=zcSczsjl+oUTupPg0K9goQ+v/ljMWZqjCyJlP2xDGRw=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=KJltJVOjOoEvi9m9Kb12gwuTKS6z+Ft67Bv6DTdM6p5FbK3fWXmN0IEf+296D0iyEdWvUKq5ipscXNsr1boZ5pykvFsN1bhnRTjuKYDh7mnH+JG3yybjXF6YzwnoiK1eexCRqCZ5SLwCu/q4Yv3fI7kLp1Djp3KHisDHOdAWWGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E5FQ/phW; arc=none smtp.client-ip=209.85.221.53
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-460662fcb4eso2886739f8f.0
        for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 02:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781602405; x=1782207205; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vwhTbpSf3S7rURBKa5GxlH2Q5fxRXSJEjfD06CTwETQ=;
        b=E5FQ/phWhY5vmLKA6S4Qj945+TwjCqMTeU7AHc5bI6EGUS1ss1ixzB3XLt0r0tvYEQ
         WgZOWMn16j0PXgtK0UdF6h9/WM6cVk5Bk/ZVQBK2KsvlVFupdAfnyji4+qokW5W+G1T7
         AxMfcyXqYVPzac+YsnbMljhIa7l9dPzadgn5e7wzG6gy5JJC08UXRf9clfbKMSAhVBk1
         TSkOQyHMC+S8rfHxYh13+Tg8cW7g+pwt8roiU0IASTiFi689DjGCx9hC7zDviZuTpSM5
         hqGlJqf8PDVGmTtXWI4M/FOP4AErkjiISY+CTCHWs5abkLJeZ0VRFDkXAgwdu+7eLmRo
         BUiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781602405; x=1782207205;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vwhTbpSf3S7rURBKa5GxlH2Q5fxRXSJEjfD06CTwETQ=;
        b=JobkcvaarX0hb9mwQjEHxWQziBCFi6DsQUPUfN66IC+02pDC2UvmsWuT27a7f6MLsE
         9xpmN0boKCe6PJEN5AypvLJGLUomGza4/e5Glqd2cQ4Cv5WOuFInnleKoNiBl5R04TVZ
         8iArKE/tVMtzbGOFO7BdaWcgtCE++7r3URBeb656pAF090umKjezQV1gnXv3l/hwK0nh
         +GdG4PlnKBrDUaXRltiC8KG0MnlFmUCF9jo17T4cAMAAwYgWaSHa/wBfgKVzZDPR9hS6
         btlLkReWG2pYQrQlMTA03pxOX+8laPXDnRnXWQ8OmmkmedrkxtmUVll6gBFAYX8wFACC
         cKSg==
X-Forwarded-Encrypted: i=1; AFNElJ+DqV2AEU9Z7mLkFznHWkw6EKh9azupcwoTYSF9FTU30o5t4HOEeSQZS7qCaqFsOwFfu1P/gZapwkZ9@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3dm0bBL8kbEwK5tDMTD8/BMpk/DwrVtfCRkEQYWelD/4YNLFS
	lhS0agqlfjLhv7LVmKd4nuCqr7UdSD8ZSqQ6o4ApQI+oyZmK27K/9Wzu
X-Gm-Gg: Acq92OGevwa1CEH/yOlTxF4XBH6bZQPubvbJoHb9ZsOGzOhT4xkWwWfnSScbBxr70Jv
	f3J1jOg/YGQKxmFWnNdPrJH+3ytJY39TTj60kUgd0+iNtbSUS6rIYcUmOIZdn5JsU3PiUMJhdO8
	FsHccWuJh5Wfmu78FTf8nQOU8d+fcwFgmmnEe8FYaWGJ3mK8F621GG61Js27Uw3zGTphW1r5TEN
	LPtwrQrelqK8g/7oHnMtrFxoeHq4RUB7qUeOT7JAyUTfbsMdr980aEnWhQt+k1F8fWAZ4tq28io
	cr1GfR8hcIS39rU3R6d4PCV/X26+fnyBh/Gk5liyYKkew5zvLkF13RB8o4/SOD3PP0A9y2IipBR
	wgQsW0td3u2MIG0lEyANQa5OtXhSHgHMC7KNkgX5kmDueYZFt2FM9zbR/Ahs1EA5LPsN4kYmzWF
	nSIeqaBwQ1NpD/BCY0zOTKrdX+OevBoX+WtdiFfFWbjOnLgj7lMJ6C/yRGYPnEuZ5vW1pefWdu8
	rdrss0M0x7UJ93RpoZi900a9Ca4ws/KSiPNZyn9ukiCPDUuH2L88lJD8RgO11X/pNx8YzVv5C77
	h6UDzEtR8EnBogCyjNRoTa+qf5MCdMs3P5IgroAlx4pb3lQVkfVolZkm2WWi7WXmwA==
X-Received: by 2002:a05:6000:136e:b0:45a:e3dd:5865 with SMTP id ffacd0b85a97d-4619f3871d5mr4200728f8f.13.1781602405394;
        Tue, 16 Jun 2026 02:33:25 -0700 (PDT)
Received: from localhost (90-182-112-124.rcp.o2.cz. [90.182.112.124])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f2d9becsm40724271f8f.34.2026.06.16.02.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 02:33:25 -0700 (PDT)
Date: Tue, 16 Jun 2026 11:33:22 +0200
From: Joshua Crofts <joshua.crofts1@gmail.com>
To: Rodrigo Alencar via B4 Relay
 <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, Michael Auchter <michael.auchter@ni.com>,
 linux@analog.com, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, Michael
 Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron
 <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, Andy Shevchenko
 <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, Kees Cook <kees@kernel.org>, "Gustavo A. R.
 Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH v3 05/12] iio: dac: ad5686: add support for missing
 power supplies
Message-ID: <20260616113322.00005273@gmail.com>
In-Reply-To: <20260616-ad5686-new-features-v3-5-f829fb7e9262@analog.com>
References: <20260616-ad5686-new-features-v3-0-f829fb7e9262@analog.com>
	<20260616-ad5686-new-features-v3-5-f829fb7e9262@analog.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-w64-mingw32)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312403-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[joshuacrofts1@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:devnull+rodrigo.alencar.analog.com@kernel.org,m:rodrigo.alencar@analog.com,m:michael.auchter@ni.com,m:linux@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:Michael.Hennerich@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:kees@kernel.org,m:gustavoars@kernel.org,m:devnull@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joshuacrofts1@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1C07B68D950

On Tue, 16 Jun 2026 09:21:11 +0100
Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:
>  	st->use_internal_vref = ret == -ENODEV;
>  	st->vref_mv = st->use_internal_vref ? st->chip_info->int_vref_mv : ret / 1000;

I'd use a macro from <linux/units.h> instead of just doing / 1000.

> +	if (!st->vref_mv)
> +		return dev_err_probe(dev, -EINVAL,
> +				     "invalid or not provided vref voltage\n");
> +
> +	fsleep(5); /* power-up time */

I'd recommend using a macro to define the sleep time, removing
the need for a comment.

>  	/* Initialize masks to all ones */
>  	st->pwr_down_mask = ~0;
> 

Otherwise LGTM!

-- 
Kind regards

CJD

