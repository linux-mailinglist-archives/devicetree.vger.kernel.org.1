Return-Path: <devicetree+bounces-259418-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EC16Ki06d2mMdQEAu9opvQ
	(envelope-from <devicetree+bounces-259418-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:55:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 501498646C
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:55:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B80BE3003836
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 09:55:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A5BF32E134;
	Mon, 26 Jan 2026 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bGEzj6Sh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B59532D7F7
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 09:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769421352; cv=none; b=FJCQNHvLo/9RVBT4+DhPo29LTMP2WCnrl4XH4HnQ8HoRSQZ/pyQpP7lm529AyFUDlGJa1JqiNKm7kDpDt28KQmmvmL7t4n/woz0a+coqUDSfP5kyLrBO4Y1CX/cAos9BncJB/w7gZINeQFw77WMJ+orftlA3wg6r8VehjBIyMqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769421352; c=relaxed/simple;
	bh=jwk9yBux6+536fldnVhhGFBsCSDNKxtCSJzdLGo7hTs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=laxqhEsY4h086eFrHX0s/9gKZ8K2zduZzSktFu843W+VVMEjckUCrhwOj9UlAfjzMSWQwDzAWQTvKM+J4w3k0NZizq8h1IlFqLnQQL9h5IQ0wLi5pE6+4fpAw80bdz7A+iZlSGjyGejEMS87szG+aeudbhmMhFL2aj1IXgCSt5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bGEzj6Sh; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47edffe5540so49471895e9.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 01:55:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769421350; x=1770026150; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ITM22V9fOoshZUR1SBOjl67RUW7bLWAYL6S+oxqzFrE=;
        b=bGEzj6ShO2vlMGpWhlsDs2UcxIAJKZoaC4CN9O1L/foW5Ss3ZkZCsDHQy7yD78i1Fs
         Xb7st0edPF+6tiJau0vPp1k8dKSGjrkHxgf/t6f2D13oq8KwN/9cgQVOX2/MIyNnP+wE
         0WHv8vAmCw/kt1bp+yY06ExeTjs4rQe/9QGZqNXazhw7aXvu5AxIYl2PJPtjMN1RsSVe
         iJzFVaUm75k/ERLrb91lrKEZ7BF2ITrayyZkrlP7PeO6pk6Un20TY4pNZvTyYUXI+DL6
         oU/AO0dNQro4mtZ91s5mPOX7W6OGA4RglTv4FIiEFr0KEPvVyJgTFZhqmhF2oxBk6iNv
         ZgOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769421350; x=1770026150;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ITM22V9fOoshZUR1SBOjl67RUW7bLWAYL6S+oxqzFrE=;
        b=rmoV+0LPtBu0/qgpN++Hh1NFyket4nj6/dEM+MVv+a6jB3h5/KMI+ARaXaqr3Rgs4K
         jynMleReAiVfIUjmzs85Wz6jk5GFNbKfDI9CGgxK9YRPfAyX2og38+2zxO7ZYEROXXCS
         xVSPZ+n2W2J1MZfP53Zap1GpPTQBahaPtx5jYKzATMLCm9bplaF41nwkYLBDUQh375Xg
         Fl17zI1y7UU39GwoBhDcya0TpExYSuGJ8lSFjMP7euoGrHx3kzU8M5h/CIJa9I073Bpp
         5/Ds8fvQd1xKgumMNSx99Jiv+cGuFZ3mJK61cbNYFM6vb4GOfKiaHjZ/T4pnG15fhhPy
         pNoQ==
X-Forwarded-Encrypted: i=1; AJvYcCWx1HBd966XzFn1m+2h51dzT4x/wlE6qXfvGzGtRSMnCl3mZ5ocQxwpcTZwZvFPPeaHjsanb7vUKcB+@vger.kernel.org
X-Gm-Message-State: AOJu0YzQZ2oVpVss97h3F6zJjNOOf2GmekOvhbjxJRQW61oe9dlRtI7z
	aYce+WiVp88oCrf/Hm3ZiF+WUkpQ8Uiw17smrEMLGvc8xSjsvS+2IhaB
X-Gm-Gg: AZuq6aLXiQSCLKIy3P3NVTgoEaC6RU8zG5TJBG1N6Sw+wkFvS37p80UJe75nOZE94FZ
	8uQvMrKfmum+gjoCw/p1C2C4rKfJOJXscyrUSyzZ5ZxubFfga5zKJoTPohSCG4r6QL7KLCcelye
	Kye3cdhWyYoMeUlzztS5VnF/stLD70KvfPmsOJ5kfyRUrn6KjT2OHFx0BHv9uArouh3aX3PMgSt
	dtIdaSuThEhg7z0j+V1WbruCZKXy+eDQJ34FEWt9QkRzJCRtlSqDtYCDvkyFhU0nptosVtTbmqS
	idZhnXfznnt0pL9kSzXgn3DC1yqV+s8dqWLL9t1KCCEtbdlASDoEHFU523qAhe24bjqaoCwry46
	XgozOpdS8qEst4mhhYwrxArvqcONqmfR+5iwJpi3ppAL5UGCyxrJAxQinkxUi7Um2bKe8tyKcGS
	r7ar28TNobm8e6LpEIXixvqX9woB6uDT9JY8g5opiGduPzHs+J
X-Received: by 2002:a05:600c:314f:b0:480:3b4e:41ba with SMTP id 5b1f17b1804b1-4805cf669b2mr55811755e9.18.1769421349631;
        Mon, 26 Jan 2026 01:55:49 -0800 (PST)
Received: from [172.25.98.130] ([5.2.194.157])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1f74942sm27922186f8f.36.2026.01.26.01.55.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 01:55:49 -0800 (PST)
Message-ID: <47ce1e14-5443-4d3e-a2c9-7d5be47012c9@gmail.com>
Date: Mon, 26 Jan 2026 11:55:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v8 17/21] media: i2c: maxim-serdes: add MAX9296A
 driver
Content-Language: en-US
To: Sakari Ailus <sakari.ailus@linux.intel.com>, dumitru.ceclan@analog.com
Cc: Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Julien Massot <julien.massot@collabora.com>, Rob Herring <robh@kernel.org>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-staging@lists.linux.dev, Cosmin Tanislav <demonsingur@gmail.com>
References: <20251208-gmsl2-3_serdes-v8-0-7b8d457e2e04@analog.com>
 <20251208-gmsl2-3_serdes-v8-17-7b8d457e2e04@analog.com>
 <aW-EXiiKFLrXQeJG@kekkonen.localdomain>
From: Ceclan Dumitru <mitrutzceclan@gmail.com>
In-Reply-To: <aW-EXiiKFLrXQeJG@kekkonen.localdomain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259418-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[ideasonboard.com,kernel.org,collabora.com,ragnatech.se,linuxfoundation.org,vger.kernel.org,lists.linux.dev,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitrutzceclan@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 501498646C
X-Rspamd-Action: no action



On 1/20/26 3:34 PM, Sakari Ailus wrote:
> Hi Dumitru,
> 
> On Mon, Dec 08, 2025 at 04:13:09PM +0200, Dumitru Ceclan via B4 Relay wrote:
>> +	*ops = max9296a_common_ops;
>> +
>> +	ops->versions = priv->info->ops->versions;
>> +	ops->modes = priv->info->ops->modes;
>> +	ops->needs_single_link_version = priv->info->ops->needs_single_link_version;
>> +	ops->needs_unique_stream_id = priv->info->ops->needs_unique_stream_id;
>> +	ops->fix_tx_ids = priv->info->ops->fix_tx_ids;
>> +	ops->num_phys = priv->info->ops->num_phys;
>> +	ops->num_pipes = priv->info->ops->num_pipes;
>> +	ops->num_links = priv->info->ops->num_links;
>> +	ops->phys_configs = priv->info->ops->phys_configs;
>> +	ops->set_pipe_enable = priv->info->ops->set_pipe_enable;
>> +	ops->set_pipe_stream_id = priv->info->ops->set_pipe_stream_id;
>> +	ops->set_pipe_tunnel_phy = priv->info->ops->set_pipe_tunnel_phy;
>> +	ops->set_pipe_tunnel_enable = priv->info->ops->set_pipe_tunnel_enable;
>> +	ops->use_atr = priv->info->ops->use_atr;
>> +	ops->tpg_mode = priv->info->ops->tpg_mode;
> 
> What's the reason for doing these assignments and a copy of the memory? Why
> not to just keep a pointer to the struct memory instead? I think there's
> another case of the same.
> 
Would this be alright:
#define MAX9296A_COMMON_OPS					\

	.num_remaps_per_pipe = 16,				\

	.tpg_entries = { ... },					\

	.init = max9296a_init,					\

	.set_enable = max9296a_set_enable,			\


static const struct max_des_ops max9296a_ops = {

	MAX9296A_COMMON_OPS,

	.versions = BIT(MAX_SERDES_GMSL_2_3GBPS) |

		    BIT(MAX_SERDES_GMSL_2_6GBPS),
	.modes = BIT(MAX_SERDES_GMSL_PIXEL_MODE),
	/* ... */

	};



static int max9296a_probe(struct i2c_client *client)

{

	/* ... */

	priv->des.ops = priv->info->ops;

	/* ... */

}

