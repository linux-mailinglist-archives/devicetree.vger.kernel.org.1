Return-Path: <devicetree+bounces-267475-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCsFActlnGmsFwQAu9opvQ
	(envelope-from <devicetree+bounces-267475-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:35:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2C41781E8
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:35:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CBE9A3083DD1
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:35:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE31429DB64;
	Mon, 23 Feb 2026 14:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XhBXIkoW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B11129B78B
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 14:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.172
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771857300; cv=pass; b=TDC5pmnEszjZsjzQmtqIwebN+IAAvxULFS6mAHWgCwP6Ca8BdbaWKZw9AC+wxIGbWq8aBvRHBf3+ib0dMJ5a7XQS9ugMIZE7Yx09eZ3xut5ak/RJEVep/gz4DvNcsPxIh3ZQ+u8hxbFZQeWhSWmngzRqyvF2f0jrrvimrTwoUag=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771857300; c=relaxed/simple;
	bh=HvOYLcElekz+hDX7Jna93XLYHDEzVU8smwFySHb8Bm8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=c7U+s42RIpTinS+GyVROMa07TbiBZcFsltYFBzp2icMAt7t2XLC5lDqWTfw0ck0Jq6mZJ8pY5z1+U3uGUe1fgFzoGL6z+QtEG9ajNCSP6mEGPYn+ejvjMhDUmlWdAbai3YfvUcJBic/hb/0kzBfj/T+jh1rdLcPLMl4cyjz5Wy0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XhBXIkoW; arc=pass smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-38706b63929so39640541fa.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:34:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771857298; cv=none;
        d=google.com; s=arc-20240605;
        b=kDwxK3o4a2YeP5nOstwJTy9IUjnNqA6snpWlgzCwA+f1LPuwV3r5WXX6WOzPJF/dk8
         F8jwe+m3ODwRz0GbBlCDFznFPpuBdpwDJpitbmzvYOssIr3GhGlcvvL5YIpZh3kkCmcU
         ylqme+365MtME4NjVQHQ7QjekDR7QV3TunrUR6TPXekuV7KJFco+GcjOyuyopWJRRxC/
         EKqIHLqnIEb7E3n70rz0sitGg67kLGMjSrUhwpqUXDqahwdiVtDyVbueulg/sBtVnX23
         U+TT8xRbfmZj9GJNSN4nosOkG8u5OYxBrDQ5HEMKKE5aswA7JMAmtGajwSC+BnGxZqqs
         WmQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HvOYLcElekz+hDX7Jna93XLYHDEzVU8smwFySHb8Bm8=;
        fh=/3o8USpjO0CP2xsuz3aQ0Dw1K4T2HaxV74phXCmpIT8=;
        b=lufcdi8zlXUZKjP8yY8oWWW0f1mzY09r6qHC+A74f3JBwicbvZXYfakHWPtvAuaR0l
         UB9so1tfzpZ2I3BljJ5MmzvB7LLSMAa5rJGjrvEnSPVykEy+/2ZPPRLK04wr6kgUGLv6
         5ksiuk+qkeIrQZUXDlwpmV7LDuIG9jV9cgZIju9Lmd6ISOySV1MwxZ5VLxP+cQCUuf4h
         8TD3kF0nbCCKchRCLQMGHHjnJQm7vrrlEZZtZKkGFcGHtRNSxNmzo/ajhyqoRns+EF6L
         Ixh4CI/GhK/Ahp+4Suqh8XhnVHYSuTMKfrknFNKsQDO+aZpSEk5OGzAHFsC9p1oKW/JZ
         gzOw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771857298; x=1772462098; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HvOYLcElekz+hDX7Jna93XLYHDEzVU8smwFySHb8Bm8=;
        b=XhBXIkoWLmtcRY7pvW8EXMV0OtTmowWixN7GAvLJFEmMsbfgy0rOrNUahVurM1Nw5s
         B3l93fHPV7VhDOsNdJ1hG7jezm8EGa9aVo8AUdPZVnScM9r0BVMykllCFc/CFevD0YU7
         8yym/BWj5n1cnZwn6RFttKfAuqZKn9L6IDxPe2r8D6TbvQjawAjbTED96m5SESuj6l7L
         Pfc8Bga8wlTGfWqUBE7zujWoOAKGFmIM4xIvvhaRGTzKQEpStPWw9esxvP4A6DU5Gexj
         0xBjxxk1xkCDNos452sRfYDnNySyft9rM7h/J0ApIxQGHS78qchwIgaPbY9OuO4INCR4
         E+KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771857298; x=1772462098;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HvOYLcElekz+hDX7Jna93XLYHDEzVU8smwFySHb8Bm8=;
        b=dhsm2jvur5tEXEnQdjtAPd55C4MT59nSWSjx873dfvGsvyB/Bn79+sBx8KyQV0Pyv6
         mwe5LPJ5cwXrFlQAIYtSgcQeZTbNWuSU4+JintKClIm+DXgVu1BE2so+uGNfHgkenGko
         iTsP1p89XlVaLKxiwHyDNTCpoePNrBHt15W28lK4iPGfcfVRCPJGbFbQGvwXtN0wZrhk
         LDBNJa77W6zrOn0+3oZUV/JTqmlmVlRyAYHpsRAONpS9kLpdYzo5PY5M9BoWrHNj5qn0
         gQXsvcG2kpn/t6VKW4kSfktLc3Uj4kmvUm6pJhttglmfgZ/Y+CvtQbk+6m1/WtYZYzUj
         N06Q==
X-Forwarded-Encrypted: i=1; AJvYcCVRNopyGuJ9mhPasTK2Ve+VO+cFQPbkakwa0b/82RqlvTKRvtoT/x1MjMf1qoIOh2nO8txeePbmPfED@vger.kernel.org
X-Gm-Message-State: AOJu0YzwEVHoA6clvx/lk9LZcrPaDKnhIbeW5L3IOLgReaYIsEn/AJXC
	YSzXkLWknfH1UGF5/ixDrw7xU0B86ScrRDzYumm7tYV9dVHAQZmGU2JwYrRQKv2wddpeC0OqgQs
	2bqoAF+8vEgzABf4g+ydPhy+ohM6MgHg=
X-Gm-Gg: AZuq6aKhObD0z7trp74SW7U0tVm89UShlFS0g60gfQlszRSbtwwc9AZT9sYIwMi05ic
	ddY6Bfd4y9Y0mC5UzbXGpIVwx+w5SFI1jp9nIJL28MrpI/6OLrJVdKkjwZwhArT7d78q0kzJx48
	17XzFDwO762PJBMyCKY8pf+AGc5GqRf1TUJj497/NI1C3Va/Z3/h+DqDZy7lmxkkSgxWpnhkZ1L
	l2DODJaF+eRg6iqleHpsjE6dOWbtqmcQeiZHpQEYRJdAUKd9yNk/UqG+uCMFp6UGF6e8AV5YwIQ
	1IPpt3n08Cm9TQc3eJpC9T5yrn0/dfSLkHgXsaueLu+6Fw9C61WrDvMiMAv5Vgdr5XkeXMQ=
X-Received: by 2002:a2e:b8cf:0:b0:37b:9e27:89f with SMTP id
 38308e7fff4ca-389a5e6abebmr32022861fa.37.1771857297577; Mon, 23 Feb 2026
 06:34:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260210022620.172570-1-festevam@gmail.com> <CAOMZO5BdgjaHKA6xV5MzPLDetqy-+iRdVPn3o38vo3szcxEhVg@mail.gmail.com>
 <32347982.43St1lv6Oq@diego>
In-Reply-To: <32347982.43St1lv6Oq@diego>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 23 Feb 2026 11:34:46 -0300
X-Gm-Features: AaiRm53UEksx7wDyF9MxqaPxOEXz2-K9UDawkXeTmlpxSfNLW8bU5W22DHEjxsM
Message-ID: <CAOMZO5Af3XW+dwbAYFoRzYt904YPN32qgsatL2or4+XgxfV1yQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: clock: rockchip: Add RV1103B CRU support
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-clk@vger.kernel.org, jonas@kwiboo.se, devicetree@vger.kernel.org, 
	Fabio Estevam <festevam@nabladev.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267475-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sntech.de:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 5E2C41781E8
X-Rspamd-Action: no action

Hi Heiko,

On Mon, Feb 23, 2026 at 11:21=E2=80=AFAM Heiko St=C3=BCbner <heiko@sntech.d=
e> wrote:

> I generally pick up Rockchip clock changes anyway and then
> send PRs to the clock maintainers, so that'll work as always :-) .

Excellent! Thanks for letting me know.

