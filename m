Return-Path: <devicetree+bounces-264108-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOGxGbElimlKHwAAu9opvQ
	(envelope-from <devicetree+bounces-264108-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 19:21:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C72E1137BB
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 19:21:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 09B58300BC6D
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 18:20:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A0F229C321;
	Mon,  9 Feb 2026 18:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vTThX6qp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7DB2D7DED
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 18:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770661245; cv=none; b=UloVbHq+3cbXkCn7P8n9+0R1ZYhGERN78QVSJANKWkgmgwghOJzEqe2uqLeFUz3TbMrqGD3rxtxKtEylwf6I5DZPEfzj6d5zXsaMueqqVDRUDiBj1KX56zBk9iPkIdojytK1XkkM8mhGpOn83+Wjnhdi7fdBa/X7NxMa9ZXsiMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770661245; c=relaxed/simple;
	bh=nHvEOtk0p/bx0nGCHDaxJahqOxGYrkQfZxMGweFLXmQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=u2bgYqkS4gQq3Mm0BnEzLEcbl50xpXuraqxtrGEw4mQGd9vGvneisJoMXP6OhnDwlxKf2zKDwy6BQ8WMGrCs2XQAOQ87ryj8Xf1bacrKK+mWWeFECIfVO3RZT20Wmr/vuCtJ9lIQNQjk/q4o6Q2CbpWylVDqhusDSp9aezgqToE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vTThX6qp; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-7d1866473b0so2728262a34.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 10:20:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1770661244; x=1771266044; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EqLmn4mbdLcrRVXVKVq2iS1TAqysNFH2oGNdN4Z4ID4=;
        b=vTThX6qpgrFYCEsMMT6mHDZZEUJGWsnAJiXAd37TOdqw8S0B99qipvohLk3IZyBm2u
         jHvcQHav3ksljMIpg1jfqwX5phCO8AsEm8nfma+ZrpFvy8S2tEpUfUACAodebf/WmMc4
         4q4Y93mqOAhFZoeaOhfsCNhwgv0AEPy5E3BZ7PbXYVye1bpCk+LjJfw3Z1oGfartOj+Z
         09HDmvsmcLqpulI5/uy/mUF/5Chl5/EMBZKSdO3cmoX4XQHxZlnaa5tpx7a9YohDe4/v
         Yrtk0/n+0PtLFUda8zF3qOCvEprLWFx4FvEAQ4cFAPtXHbgpjDyF43Gdy9tWxwTY2xKU
         aO6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770661244; x=1771266044;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EqLmn4mbdLcrRVXVKVq2iS1TAqysNFH2oGNdN4Z4ID4=;
        b=MyuuDJ2xtYNYmOdL6fG7zgfgpzDx6ulz/cGnGedw1CVRW9ikiYa1Z3is+z0GrWKIki
         7RHWmTn5va+xVpNS86cwiRiwxBeJUtETOrOkpfqFaYxfy47RgC5ITW57cFYYExaVvqZ5
         WxB4UN5+M4ZqaYmSNMVmjeZNnz13618Bv+ROWsxOoo5JwJo5ndiQ8X1ZhQIhiDvgJPlA
         jxbEzs9bxyzQpuSHbhI6s5kD+HUK3qZWf+8uXBwPQLka9qnMx9iMhP9Hkt7f/gPpkjHf
         yeTM1NVk6/5Kms1JpyKVkZHUdG7dyeIU6wZKYixlzZJQrht7JOTCOVQREaXNs4JX5O1V
         IqOw==
X-Forwarded-Encrypted: i=1; AJvYcCXmhZVtaJsyUnHKHfp/nzAXtlJIDEAuj1c99g0pP9FWQrtKhUwJhUfDpIhG8n4mgiicNxinMQZYGrSV@vger.kernel.org
X-Gm-Message-State: AOJu0YxIemsNEvQ9NcC6fa+hmwjLfHXxKC32oTQQVBN3gZAsB6bSY8ms
	Wo6+giZTZvXyTw8ojRlZ087XnCcU8IwT1NMVoPeuYYHNl3j9t/OGvhFUPrXbRqS+wiA=
X-Gm-Gg: AZuq6aI6Jx5q9pIa79QfvzjT4Vg/THtEv3y9t1SiFyesVpSvDzbJ1Yu5uKHbYcp8CRh
	u6+4bxh//GV9zRYQJoAjPu+oDcvCCbuDoiUMCMUz+N3evlNcdLIFd9o0I1otLsqkM+AJcv7kpzy
	8hHV1WfrKYwxewCwjPcC+q4Ci5Oge0CX/fA+Q7iuP3pchI9ufjsgrB1mVJ9rXKWhVNuX067tAcq
	iL1A7ELxmxoNw9lTu2SLltzQ3z3hkKF2Fkrpp00OS1LEF6C32JvYaETanIihXTh7gGebPKVW3IW
	spG5auREFcLPYb+M3o2niNvf85KpbDm9awksB53Sok8Fi4tGtLA2QRChON/EgUcyfLBhqdFHf+Y
	oJG7/PQaYNoDdXsumGO/oIrRK6e28THOTgjb3+auo+wk+0RoHAJEKWPakWfzy1axp7BEad3RsG2
	SKKMKjR68V32LMSrr5OMkiv4qYicVoFZ1qVOkHiZ5wRhobrBxadnrAJFIdjC82
X-Received: by 2002:a05:6830:6319:b0:7c7:2df4:faa3 with SMTP id 46e09a7af769-7d464679084mr7705868a34.33.1770661243787;
        Mon, 09 Feb 2026 10:20:43 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:cee0:eb0c:b683:ad1d? ([2600:8803:e7e4:500:cee0:eb0c:b683:ad1d])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d464710c95sm7791470a34.12.2026.02.09.10.20.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 10:20:41 -0800 (PST)
Message-ID: <7842eb25-9d6b-4218-9a23-f8758b819987@baylibre.com>
Date: Mon, 9 Feb 2026 12:20:40 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] iio: backend: add devm_iio_backend_get_by_index()
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Olivier Moysan <olivier.moysan@foss.st.com>, Mark Brown
 <broonie@kernel.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org
References: <cover.1770393792.git.antoniu.miclaus@analog.com>
 <550323d752213f177b7673bdd42e667f1d2228cb.1770393792.git.antoniu.miclaus@analog.com>
 <c731b6fba72286707821ea6e7722835ba45f089c.camel@gmail.com>
 <becd9db1-818f-4aa8-8362-91a711861839@baylibre.com>
 <be8457799b32d420228df5e2841c5547023ec515.camel@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <be8457799b32d420228df5e2841c5547023ec515.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FREEMAIL_TO(0.00)[gmail.com,analog.com,metafoo.de,kernel.org,foss.st.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264108-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,baylibre.com:mid,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: 7C72E1137BB
X-Rspamd-Action: no action

On 2/9/26 10:47 AM, Nuno Sá wrote:

...

> uHu? Maybe I'm completely missing your point but what I had in mind was just something like: 
> 
> 
> // from the frontend:
> 
> static const char * const names[] = { "adc1", "adc2" }

Yeah, that isn't so bad. (A "why didn't I think of that moment").

And I saw the other replies already, so a moot point anyway.

> 
> for (c = 0; c < ARRAY_SIZE(names); c++) {
> 	back = devm_iio_backend_get(dev, names[c]);
> }
> 

