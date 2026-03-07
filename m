Return-Path: <devicetree+bounces-272508-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6CZ6A/dqrGlLpgEAu9opvQ
	(envelope-from <devicetree+bounces-272508-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 19:14:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCBF22D2AF
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 19:14:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9B69B3018436
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 18:14:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D23836C0DE;
	Sat,  7 Mar 2026 18:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="U4Xu749u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F116635C1BE
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 18:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772907253; cv=none; b=YgtTv/ey9EcrLUXqsnfANt0r1EUuOutkwdBuyYExC4s7nYrEIotl3LK3lMb4+jObln7L0qGf1zKpFpOv7HO8YqVGjndXFZEBWmNmE/6irC1ijp8Qss6n9xx/hwOHgBO9dPoMyZQvyTXH5Vq0s0K51EcRe/uQ3T6tqWd1OGrKeco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772907253; c=relaxed/simple;
	bh=2bpNFQYrY+4AxovPokblGV+YZqGYq2o3LMzrIO8FHhE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sulu813k1yx2v4/eN6Ml7bt8ABlUbA6TcOQ8zrvizVamwrS+LacPL202Tn83oPTuqwo1APZK6Kl2F2I7lKZjSxnn5G3KvAACSte7LcMki/c6VG4U6HYuAIMcCkW3rR5NKFytYslFs+1SE3qtS1AJDtxBgfCzqv1K1GvRMorllJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=U4Xu749u; arc=none smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-6786b13984fso7276399eaf.2
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 10:14:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772907249; x=1773512049; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GRdsLK7weBsl9Qz7+q1Z86EFK/E2/7vFXBMivgf8qR4=;
        b=U4Xu749urpHkBRZdo4xn4HQ7iY2EWPU1T6nkw/cohHD447YV/J1RAV+KIKwEzFbtu4
         yIyxDlvxljsU6Tfm0VZVQssfTP/V2SqKX458mzIDfJr31Ul5onPkz1wf6ElyNuJJzpMU
         S3Uv5Kh3NmTEkf/d7HyWep2TtGb25V+NTs+gXFtD4EKzpt7FJEyhRWl64odkR4zyezXw
         mqzWJrPPHHkdOhW2E+OF3OrMC7ru91cRqoImKrfWQh1EjxoN/Kko6s0zItXTCH9xjkIF
         70bQ6yeN6kF1ehuNITcvognB/MY41mtnD+tSNku4ARQTTx6uLg9M8qqXfKy9c1LteiyY
         wLHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772907249; x=1773512049;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GRdsLK7weBsl9Qz7+q1Z86EFK/E2/7vFXBMivgf8qR4=;
        b=lcC/gINX6uKhg5f5T3HYeoC5VckDYp4MKrx7ly9WyGKlpJ5Iksl5jzh6nYR4KJbnya
         ongL3opyMZMYg6td8/dOje4v1weazX5od0ApaDrSLAoqDi/xJwBV4RC+gfT8jL3iXgvx
         8GUiOmcqxFhgeYrBhHZGkpSyEHl95ZNU2CkNwHavEiYdFXx1CQ65/nTZxWjFupV1d9EP
         QMbn5kJde86BGBHtqtApgKIcCM1yXMhRKQIUor/dmVZBg4pgcXmQFWiueS0WkjpDdAL7
         0nl6n4TAjYUhl+AhHfqVZiBREf5CZEQM2+F/pXHH0u2dYoCHlAoCbQpzrl8LB5sGpLNB
         cbbg==
X-Forwarded-Encrypted: i=1; AJvYcCWojj6Nzznxm72hkIHHD4TCIQAkHvHO1VkIuzajh6zWC3qusG3j5JSR5AqCzu/Yo8DQVzO37K8hp1UT@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9PARDKKRLY0RBxpmyZeaEvX3tzUunvMGxwCftI4RtObg+wqA5
	DepLlrBcvnCsvnnyLCC3uxoEPrLHPtfPbipl7UGW6becNYusAy3LtT3bSatXVJTiyrc=
X-Gm-Gg: ATEYQzybvnIVujSuQQAm7ZEnF9L3S5UaBMAiJM3eHLPQJkzf5d5COYZ1i95mkkP4qmU
	wMvJI0IXXC2clz31IHNHcZnHpYsg369dJqUJ9rFjImVUiiKqPhbAH1n5Mw+mDh7MzxKtvyY1kOs
	iqXwQ7ysROj1LieOYVRuYAtKl0YDg8tm5smYkqwNfDoXwV6Q7VQetFWADrqGf9KST3VH5FPqDCb
	ram6lfRil81zVQLrQ5doKTmqz8joouIhRiYUgeQlRaQT6N6cqyk+TpGqMbtrhUp+4OPjSPCr3gD
	EhawXZZoZ17RznRdonNawgdIJFJEQ2YOhyedLUq4pRnAUoBpF7qIzAdY3W+00Y8N/znQT/Lu2Qf
	fuol4zHbRDOR1DHBWkel+qPPobPATrGT45HsAsZXanYQGuFo+1DwmJCpli3P0PoY/maMAfNB21F
	4pruBE6cfSCFxt9awdr/CPxycbM2VNMc53ntVf0fQQEfemSySL6Q51OzOUHh6JB95MXLrDNIV7a
	ZKSu2W2SeB7
X-Received: by 2002:a05:6820:1ca3:b0:67b:ad2d:1226 with SMTP id 006d021491bc7-67bad2d15a5mr92348eaf.32.1772907248856;
        Sat, 07 Mar 2026 10:14:08 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:cccf:5174:fa72:c520? ([2600:8803:e7e4:500:cccf:5174:fa72:c520])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-67bacd85dd6sm152199eaf.11.2026.03.07.10.14.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2026 10:14:08 -0800 (PST)
Message-ID: <ece644e9-fa6c-4be2-8159-4e8d1ef52cab@baylibre.com>
Date: Sat, 7 Mar 2026 12:14:06 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] iio: adc: ad4080: add support for AD4880
 dual-channel ADC
To: kernel test robot <lkp@intel.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Olivier Moysan <olivier.moysan@foss.st.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: oe-kbuild-all@lists.linux.dev
References: <20260305113756.47243-5-antoniu.miclaus@analog.com>
 <202603080146.6a7IzS7i-lkp@intel.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <202603080146.6a7IzS7i-lkp@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: BDCBF22D2AF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272508-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.977];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,git-scm.com:url,intel.com:email,baylibre.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,01.org:url]
X-Rspamd-Action: no action

On 3/7/26 11:11 AM, kernel test robot wrote:
> Hi Antoniu,
> 
> kernel test robot noticed the following build errors:
> 
> [auto build test ERROR on v7.0-rc2]
> [also build test ERROR on linus/master]
> [cannot apply to jic23-iio/togreg next-20260306]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch#_base_tree_information]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Antoniu-Miclaus/iio-backend-use-__free-fwnode_handle-for-automatic-cleanup/20260305-194647
> base:   v7.0-rc2
> patch link:    https://lore.kernel.org/r/20260305113756.47243-5-antoniu.miclaus%40analog.com
> patch subject: [PATCH v5 4/4] iio: adc: ad4080: add support for AD4880 dual-channel ADC
> config: sh-allmodconfig (https://download.01.org/0day-ci/archive/20260308/202603080146.6a7IzS7i-lkp@intel.com/config)
> compiler: sh4-linux-gcc (GCC) 15.2.0
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260308/202603080146.6a7IzS7i-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202603080146.6a7IzS7i-lkp@intel.com/
> 
> All errors (new ones prefixed by >>):
> 
>    drivers/iio/adc/ad4080.c: In function 'ad4080_probe':
>>> drivers/iio/adc/ad4080.c:739:31: error: implicit declaration of function 'devm_spi_new_ancillary_device'; did you mean 'spi_new_ancillary_device'? [-Wimplicit-function-declaration]
>      739 |                 st->spi[ch] = devm_spi_new_ancillary_device(spi,
>          |                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>          |                               spi_new_ancillary_device
>>> drivers/iio/adc/ad4080.c:739:29: error: assignment to 'struct spi_device *' from 'int' makes pointer from integer without a cast [-Wint-conversion]
>      739 |                 st->spi[ch] = devm_spi_new_ancillary_device(spi,
>          |                             ^
> 
> 
The cover letter of the series should call out the dependency on the
SPI patches that have already been picked up.

There is even a git format for this that the bots understand to avoid
messages like this.

