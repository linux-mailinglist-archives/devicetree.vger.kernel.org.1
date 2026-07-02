Return-Path: <devicetree+bounces-319428-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mLr1JfN0RmqsVgsAu9opvQ
	(envelope-from <devicetree+bounces-319428-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 16:25:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9D16F8DB2
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 16:25:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b="SefeOP/8";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319428-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319428-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0EB703164147
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 14:18:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E78F84DC545;
	Thu,  2 Jul 2026 14:18:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 713CB4DBD74
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 14:18:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783001929; cv=none; b=o76s6lFnU86iLoODnoRG8X7NUT6btgYEMf09t7XFFfQQKmLq+hrAkX2b1R4fEr/WIlaZQ+QTZY9YiK1wH5+pU7qXIWWJEqBpoot5ksy1s9m2zi3KAJftoDlehRV4DQhbRWnl8fa2ZAZD5bvV1py1yHX4Rjk6E0xIxTHd9qtj2is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783001929; c=relaxed/simple;
	bh=FzlQ4dU8Y7So5+PoKuqx2vCx/5MPgXqpsLfNBx+XtJI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=toN41MHuiP696FDPT97Wl2zlQM/yZorABpts1//m0larCrOpPhhrZsMA3Vclw6LmDk1GnwjJWlQUaw0wl3Bg/4s0PqPuOlsBH2BKZaD1QBVmz4kPw2D1Escu68iqS+wKgMlTnf0RlYBFhD+rxjq9LM3slMiDGFlq6BuYlsgX4XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=SefeOP/8; arc=none smtp.client-ip=209.85.160.51
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-4487b0f9b20so732892fac.3
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 07:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1783001923; x=1783606723; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D3aJl8QhQEFbQbyrb9zx0aFaFWiPGxodfC82XFdOcZ0=;
        b=SefeOP/8wupF+nUFeWKGg9bdzKJHS14dotjJBUP95kU68lu/bstckB3fZElv823DDO
         bfk7ZgVMZ9Utd2C3DHb6vmt9U3MassvQwQdVz5V+G/VybSCuA+OBHfxbSaCTjEpIj20J
         uAxWi4q2wXC1yjf+JNEP2CiigBAbGX0O6nZag8IWkOdYFpRqVLUJX1sRmA7qaFpYlxIW
         Nh2ZbHlm3KeyOhy9T9bthrD4Fm2sojoROpWKq7rx0YYPH0+Nw4MTgQxd07TMN96rw2db
         849dWaf6hWSay7c+3JtjMVpNdGSLyg0kawt1OH01clcw1KYG6cSoozdh9VoyDlx5gCRj
         glHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783001923; x=1783606723;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D3aJl8QhQEFbQbyrb9zx0aFaFWiPGxodfC82XFdOcZ0=;
        b=qxubmXxRpDcpyQO7gNRVqxZthRvKZ9BUstzzliBuVQjwo/mbrih97G0C20hd6dmvFt
         2H85LBqxQ3ypmnhUvjXKTR61c6qqal3o24qvBXSGVR1VvdXn/CUEAhMyUusSy9XNICsT
         44PPI8nlj0zkext+g4tx9wG+aduxdmgYB9UhMgw1oo0S8w5nBfd/dcsb92ZscMmi2GfD
         3CxSmfbWmDD1wQO9rZitN2C6WSvO90LOas+lvTXOhODqke0pP+IjQ0z1eUpk1vfC3TMK
         5zNMWi2d5V5/g/LK9UxE7HFx5acUnSOAFuBRQ+nb5RdCxxlw7lnqZVRQL3d5eqgk7sKV
         zl9Q==
X-Forwarded-Encrypted: i=1; AHgh+RqUSdu31ef6lKhCm51ipWbfA5zkQZVynMK8TJjHpG52Q2f0sJ3NoweVYhtgGfuJllxBkpck0cIQOmrO@vger.kernel.org
X-Gm-Message-State: AOJu0Yy21peV4VqL59ICrSPArufHfhsZdjbQIkEKZ8kjx8mcjXX7Um+x
	cQ2YkeRjGkx1eCDeJ8gqC/ksOibmep36u3xjGJuprd2JITRzM9bp0sy3IjTpV0uLD2c=
X-Gm-Gg: AfdE7cms/DaJ3LPPDFjHo5wB50rBJ0immrOmm6pnorFlmoAEF80nQK29CEKU9+/FG/Z
	+hwwTnzY+UZRJgxDyTim7OaVUSJnXntT+OnLIUEpj6RD/JJPAjyvoepZoB6ldjbEOBmHaeMYprN
	dTebfLARCNWi4LoUB97fapBxHPsnm5qNcqt/gicAFQ4xQJAbeP21BbHY+0uwYfZLdihbXBAOuyk
	FtbMeaHDJJ3pzmz5rdHCLnWG5JIAtZX7tgzwEYS+gmhIjGyfiz1ispj7vyOK66xbv2yytORAv1l
	gTmiHtwUIbBciXvecu+0PqUsEJy1NmuWBRU2Lzw8vHHsR23OfcD1iGyiW6Hs5J2Gq+wtuHxeF4l
	YIleXnRruxGoYj0OWDIs1z+WW4qfMDrsW61YGNUQnwYqn539J/1gTGj1sqv6TpOuMkZGwM6C+3N
	i5rM1iN58y4FBP6bpyeOeCLaHlXJVMn+7kcEkl3n2DGDqq8PA280OaqBBwCZ2rsTa6Qu+iI0Yo/
	g==
X-Received: by 2002:a05:6870:8899:b0:44a:e965:b9dd with SMTP id 586e51a60fabf-44cabcb3840mr3681787fac.42.1783001923076;
        Thu, 02 Jul 2026 07:18:43 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:6a9f:626e:95c4:2a80? ([2600:8803:e7e4:500:6a9f:626e:95c4:2a80])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-44cbec92bbbsm3013174fac.10.2026.07.02.07.18.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2026 07:18:42 -0700 (PDT)
Message-ID: <544fbdef-268d-49cc-ae9e-b18907d9382b@baylibre.com>
Date: Thu, 2 Jul 2026 09:18:41 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 8/8] iio: adc: ti-ads112c14: add measurement channel
 support
To: Andy Shevchenko <andriy.shevchenko@intel.com>,
 Jonathan Cameron <jic23@kernel.org>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Chris Hall <c-hall@ti.com>,
 Patrick Edwards <pedwards@ti.com>, Kurt Borja <kuurtb@gmail.com>,
 Nguyen Minh Tien <zizuzacker@gmail.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260625-iio-adc-ti-ads122c14-v2-0-ceb9b0b561cb@baylibre.com>
 <20260625-iio-adc-ti-ads122c14-v2-8-ceb9b0b561cb@baylibre.com>
 <20260701212019.12757df3@jic23-huawei> <akYs-QgyjN-nmjq-@ashevche-desk.local>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <akYs-QgyjN-nmjq-@ashevche-desk.local>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319428-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:jic23@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:c-hall@ti.com,m:pedwards@ti.com,m:kuurtb@gmail.com,m:zizuzacker@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[analog.com,kernel.org,ti.com,gmail.com,vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,baylibre.com:dkim,baylibre.com:email,baylibre.com:mid,baylibre.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EB9D16F8DB2

On 7/2/26 4:18 AM, Andy Shevchenko wrote:
> On Wed, Jul 01, 2026 at 09:20:19PM +0100, Jonathan Cameron wrote:
>> On Thu, 25 Jun 2026 16:55:10 -0500
>> "David Lechner (TI)" <dlechner@baylibre.com> wrote:
> 
> ...
> 
>>> +	device_for_each_named_child_node_scoped(dev, child, "channel") {
>>> +		struct ads112c14_measurement *measurement = &data->measurements[i];
>>> +		struct iio_chan_spec *spec = &channels[i];
> 
>>> +		if (!fwnode_device_is_available(child))
>>> +			continue;
> 
> Also drop this dup check.
> 

How is this duplicate? device_for_each_named_child_node_scoped()
doesn't check this.

