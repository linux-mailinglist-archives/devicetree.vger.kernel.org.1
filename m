Return-Path: <devicetree+bounces-259575-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIyfKQOUd2n0iwEAu9opvQ
	(envelope-from <devicetree+bounces-259575-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 17:19:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3D58A973
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 17:19:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 91B5430059B4
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:19:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C6AA3043B5;
	Mon, 26 Jan 2026 16:19:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RVFL7IkK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com [209.85.167.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B5F2D1F7C
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 16:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769444352; cv=none; b=MyiuBc5z0KVvO4swBFEKu7yukukd9Gw44b5OEOHkhCyhoRuTRuTH3D30ZYA1+WuzJAp2W4ZQkfCDssxjzsEvq4xtvwx3p78qOCIJveSoEox0OaeuzMWumIQpJ4UPTa3825MCCpqfI8Y28v6GV5Ltw5w45SQdNZTcmrFLdAUImq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769444352; c=relaxed/simple;
	bh=lJr+9LjXijVG2L3doiOysGn3q8Yh/YioTMPp6/ZPQOI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ct/cmjQjxOMMQaeiQrV852uHuZsvh9iXvzVgjob1ys1rrq3EbH4IJdENj6uKWCRy2O/aJ5xwNNrlCdu6Nk52Gk0fYapuMA5fRlPGusz05/R0HFPN4fiY5+BU++2fUfUFsWCeA4l+DzOpejG2fsJEXpikrInXhV1kVVD0nXgyCzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RVFL7IkK; arc=none smtp.client-ip=209.85.167.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f196.google.com with SMTP id 5614622812f47-45c93313721so1397860b6e.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 08:19:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769444350; x=1770049150; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Re7o1luj0nF8ENFMBzSgQp4htPbrtZUdaJYqDNv3ZpA=;
        b=RVFL7IkKyB3uSibg7IdzRVOLDoTggaKbr0utLxr9EXoUCCcjH7+tBmWQ2w4G/KShnx
         POGnFUrzXxFjkYP3qFE+3zuTkHYlGAgpLlBnZWDWMdBtvlVYhH8S95QhNvwJbcq1ESTo
         d9K2p4hBCGdgyrNSrlugNaQpIX61inCnhvvs9fCxNmVXUOXcBN0wgCIb9SVqJPMXdCQn
         VhdPySo0/F1GfHjKgHw4ogjgP7ogtu7+fKAkJwe2SaOdYeVq2FTc37VjLcZOU52j8bpx
         0woOkJFTvZXLR73NALOTxQLF/WbduP+bNFKEjjAUs2krkeFWcj57STGLe5PNqSJ2cc5w
         UhBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769444350; x=1770049150;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Re7o1luj0nF8ENFMBzSgQp4htPbrtZUdaJYqDNv3ZpA=;
        b=fw+NVgyujYIowIxDq2rjR4OQb9c3oUgzgIQ3+ubC0opmG+mLEh4B1oaYLtQvb9ddGY
         hJ6eJKfGDtYnV/o6KUMXLA7xJbywepr2ZRLjedKnQeDcjTEsCsQ4VYuEDfP4p9TQfBAm
         WRx4IxKcrLJ1YMBphosycIvSIERfmDGSNVuLVoPWPwFnmIyvrJvP3HFlWFCuDIszCnlw
         fATcEHhBXE8pajdxqPgcw4Q4k1K72XXfoOpzeYQqwKN+ykgKbmrUdDKi1Z5iHnVcUUD7
         wJj1b2GNg+gFGSr9MOzVQx8hZ0C6Db0DJqq6QkD70htcWACC/SakYFmDVeAlexwZh3b/
         IHow==
X-Forwarded-Encrypted: i=1; AJvYcCUXjskufMCLug0XIwkEFrgdflqZpU8k7KuE4yFAUOfKinzq3LR0Au/dsT+AbXKXdvbi3T5oFRj+Fz6g@vger.kernel.org
X-Gm-Message-State: AOJu0Yzzc4FY5jPoj4LQ84VDf3PC815JFZnhiPiVuwoeyeqoW6zwT0hl
	XnlO4Eonw1N/LjDGsEfPaTo3RyCgeHpV9d6+iUmgR78Hy1lojr55vBC7XZSPgAMu
X-Gm-Gg: AZuq6aJmhNq2jnb6vDgHh3xdjHV+qDZPYtDXkdN7D6vQ+AeoAV1Xk5hl0+y1t83EzhU
	N1nDlO2YuhxzFMEcvcopKezOZnmXW27T+5n+wjwNptId7I4KQf/WZ8qGDhfnF/FUlsL/umXCZcO
	9Yji4BNId6hr1BbUdGIVZBYAZYDnV5PDZmUMV+9hWEcdEhGVCcpdINwdYrmXpB5twQngOmJo5Ds
	qxxka/YVt+k8WX8YDIsOJwW+r5CQjTvv+azyzAj6W447fdtMxnqjio+9gAp9p+XRbCV449hx/SP
	YlYq2q2VUh1WZBHvRMJPvSPdwVnblgQ0kCqUtVlS8KLMxLuQF1nrqUB8oJzPnXuHtHd7jwP1tDG
	OFqhok0a4fw0+BQIZSNztzohjW43fZDvW7km9Gm4YynesSJlbsflv4zANWIwYWTc34vcRx4ZqcC
	1FLQycL0cHJGy+oo++TSYJMpE2955CyPytEXbT8l8Qk17v11oBt3BCVVMNUYehGtm1KwQ=
X-Received: by 2002:a05:6808:4f60:b0:45a:8d42:646f with SMTP id 5614622812f47-45ed9a95bdemr2130038b6e.62.1769444349706;
        Mon, 26 Jan 2026 08:19:09 -0800 (PST)
Received: from [172.31.250.1] (47-162-126-134.bng01.plan.tx.frontiernet.net. [47.162.126.134])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-45eb40e32desm5928854b6e.5.2026.01.26.08.19.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 08:19:09 -0800 (PST)
Message-ID: <03a91568-d1a0-4779-a465-2788f4765a42@gmail.com>
Date: Mon, 26 Jan 2026 10:19:07 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 0/4] leds: extend disk trigger
To: Niklas Cassel <cassel@kernel.org>, Markus Probst <markus.probst@posteo.de>
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Damien Le Moal <dlemoal@kernel.org>, John Garry <john.g.garry@oracle.com>,
 Jason Yan <yanaijie@huawei.com>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Pavel Machek <pavel@ucw.cz>, linux-leds@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-ide@vger.kernel.org, linux-scsi@vger.kernel.org
References: <20260123-ledtrig_disk_-v1-0-07004756467b@posteo.de>
 <aXctPaaXFYemV20T@ryzen>
Content-Language: en-US
From: Ian Pilcher <arequipeno@gmail.com>
In-Reply-To: <aXctPaaXFYemV20T@ryzen>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259575-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,oracle.com,huawei.com,hansenpartnership.com,ucw.cz,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arequipeno@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4D3D58A973
X-Rspamd-Action: no action

On 1/26/26 3:00 AM, Niklas Cassel wrote:
> But I'm not a fan of making the driver more complex.
> If we want something more complex than what is already there, then it
> is probably much better handled in user space, considering the amount
> of possible configuration options.
> 
> Basically the same argument as used in:
> https://lore.kernel.org/linux-nvme/20220227234258.24619-1-ematsumiya@suse.de/T/#u

Niklas -

Can you provide some links on how this might be done in userspace?

I've been maintaining my out-of-tree block device trigger for years, to
make the LEDs on my NAS work.

  https://github.com/ipilcher/ledtrig-blkdev/blob/v6.9%2B/drivers/leds/trigger/ledtrig-blkdev.c

I'd love to be able to replace it with something in-tree.

-- 
========================================================================
If your user interface is intuitive in retrospect ... it isn't intuitive
========================================================================


