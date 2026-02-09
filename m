Return-Path: <devicetree+bounces-264153-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id rYAbIV5gimlIJwAAu9opvQ
	(envelope-from <devicetree+bounces-264153-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 23:31:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D7A11510E
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 23:31:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6ECE2300908E
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 22:31:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 133E930E0ED;
	Mon,  9 Feb 2026 22:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="GYKm162+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A34022DF3F2
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 22:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.170
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770676315; cv=pass; b=MhIWQNKu+PWGjmcIj3kBGob2b3/I4hSJ5zN9kMmwO9onVtZdhR7LYxUmtZWR6N7Ge0X65YHA8woJuLRtQuIwbecfwQ5ly6PZ7BJYxysuH7yphrfpwqn9+0fDhHHEQRguAzf7+Eu+NIvf6HPggiPeiGByv04+Ke/km1LLS832XNA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770676315; c=relaxed/simple;
	bh=d08/Nt43bjOjQktFsYenGbHQUA7+zLDH0pYMagY5598=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P75G5UwUANK8CHhd6LtdITgURW1xxlfTm9GRVtYwVRhQ9sGrpO5exTu1CaH2YznWknmJ6FznlsLe51fQql7/L6oof8c/ygmsqKblZdV9eJh2oUO39uRwyH+4t+kKqGqyQtjMGd+BPP/9nI7gBD1+Uo6TLSVOa0T1YQzOC3M0FhA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=GYKm162+; arc=pass smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2a9057b2ec3so700175ad.2
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 14:31:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770676313; cv=none;
        d=google.com; s=arc-20240605;
        b=CcS3Xz3T05ZrPHLhcpazSxHwCZiBpqf3OS/2wF/ysBIenj8FctUOiQrwHPXucTZF+M
         rwE7CxUikaJ46nCouBG3bzU7uPPkrSJePKYr3lHjpSaejBIBqCbuTrIvCEwfSSBpJ3iB
         IK9ICMZskRUtMmdFKYSxbwNVGPb9qpyIUBIsbWFUsanu7AQqAPs0mR5Tqbw30mSSvHXU
         7OIVj8bcI0TtCiHVEafpgKa7yutUWxmB6KExKiGHTCl8j+P3aByKIUp7aKu1TVt78Er/
         /BRpBPvGMVdvb9Mq+SWHDZLesA2N9bbH/rOUo5P1kjZqBh9a9PH6zYfJeEXrLjeTsRmz
         e4oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=d08/Nt43bjOjQktFsYenGbHQUA7+zLDH0pYMagY5598=;
        fh=LA3zbDxq0edrtYD8HgwYc4mizdMPE9FFIiNrTEjOR1s=;
        b=Hdy6e8ju6IxjdYc5xbjsuKnct8EVvC6Hxn0w3qdsBHeJSGwkuqDbz3peaIEostp9/D
         WE0gt9eBLIkzn4CfiRwYl8FGP1XrelsVGD8Jz15t68eZYlvlfJAB9McjZ+0CMaIvv1WL
         oMtYEf7OPIxbA2lSgGT880tFyK+06dfl+ZOARV8y/8s/d8/vyJomfqsfIZ7nMQ1OkvKQ
         GvpVkHRLPsdmVs125S6KlIv5qY0B7uMCdMTpKMi1nZXtI5OMjhUjTYxXL9UKnm4sR78o
         iFmSctN8Es1B8za6QA6lhvypHS/+j0phpRyUmASQjn7vwdPt8DGY3+5gGMoAAAfak567
         jIJQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1770676313; x=1771281113; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d08/Nt43bjOjQktFsYenGbHQUA7+zLDH0pYMagY5598=;
        b=GYKm162+ZVzMcdaFVFOOADyro3hN7TbF9xGJRoIzHluML6qEh3haz+c6xr3+lOO8R1
         Z2vJrORk2Ser02newjlwubV8ZhiG7H6paO1rwRhn0vc/q39M4ZsTb1ClZbP3MUIbgQCi
         kzeC2GuRoqn/mNF55eSjTSB9xTOIEVG5NLfX7xABcZJGr5Blxzv8EE4+vs1sryFhsjLz
         WL42kww8v3XJzyIPrL0vQVIS0QwtUydPEiuET2CLGTHpvI9zKCcjOxOraCZr17rfgUhi
         C1xIJVixu7ZBm7G2Nx5PcPQwPoqAU/8egj92cBMNXTVzkUwNqhUCizmMn9J9U9v7y5gB
         k1IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770676313; x=1771281113;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=d08/Nt43bjOjQktFsYenGbHQUA7+zLDH0pYMagY5598=;
        b=PnOgOMasWRUQ31efdQfTYMmoMd5/iRKXju3Of6ruhX+iXgV6Zm0e8VHy8UAZGuvg5P
         1ztlKdlLAZBrWFEV2BDp+x8G7fkk5x5OViokdPFDbGhZsZ3CRJ5LXh5Xjouebp+ZyKCo
         TEzO4I05FDN3bx/tU0R4IgQjxA3JQyeOGUDw/bhX8/eYImT8rhztjvwhzTVI1e8YT8WW
         SeALC6CouDKYRfs54o3OTh91b9jLAVucdMcJIBv/IHKmWFQqs2i6TC3tjjIcnZYYzs35
         yk2C2uh6iPkeLRpJmtZJ/i76VkpsYhjQi9nsRCIM2xdy+9FueLHtbW6o+amL/T1ZuIGb
         dCsg==
X-Forwarded-Encrypted: i=1; AJvYcCUfYpoD1uOxDnfzNTwjV2EuTkmC3qiCdrnxC8e03A+L5sCSJdtAGyLZ/dKAegKLRL4GeAsLX2OcnUoO@vger.kernel.org
X-Gm-Message-State: AOJu0YyNPvfAtfNOO0w5zUcfyrAQiw7yR+HinmelGYqQ+0Sb9tgMlSej
	w1iAMnuDEVl65/Co9SA39E5fctwgkHuLLTATpjnYmYLUd3MqYbbAOyFAIRGExVydw/WdcLpCHWl
	Mq05iRHJY1OvgjiSwVh84VIVcz71JpaY=
X-Gm-Gg: AZuq6aJVg6NYtgBwE9QE9Jn+oM30UxG18iBNTWzqivAPb7Js6TW0L4PGYZ5uy9qlrXE
	sfCx2VkIRKsUuRpvLsGSI4JVumxxNVCyCKipw4KndqO03LkCd7IOcy1lCs1lfygVoVckm6t7/C7
	P6A8g6pT1Npjc6XntnysCUR3pxo6bERxwyaJigtKlqc7JFQatslEei150Ybmcjw9/SuabcJlvRy
	3jfci+r/sYRZ0rz/KKRWgsifoaYRbBjAVUq6KnR7mALGrUAKvMYcyUOiq+Kk0aXQUa+Mtch8tl0
	XkoZMn1KOohLMA2ujSNsruaXQeGQ
X-Received: by 2002:a17:902:ce91:b0:2a3:1d78:7505 with SMTP id
 d9443c01a7336-2a951924f55mr126359035ad.56.1770676312902; Mon, 09 Feb 2026
 14:31:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260115030015.1334517-1-nick@khadas.com> <20260115030015.1334517-4-nick@khadas.com>
 <09df45e1-90b5-4618-9197-c724142bd83a@salutedevices.com> <PS1PPF62EEA9B1D287E26DFE619BB840508AE93A@PS1PPF62EEA9B1D.apcprd03.prod.outlook.com>
 <88a0395b-1ab3-4ef0-96c4-440b3a5c96f4@salutedevices.com>
In-Reply-To: <88a0395b-1ab3-4ef0-96c4-440b3a5c96f4@salutedevices.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 9 Feb 2026 23:31:40 +0100
X-Gm-Features: AZwV_Qg9-pSrN0eULTrynbIuhC886DIQHj3VdC6tJoFAxqLkGIhfsb5jWDc-CwI
Message-ID: <CAFBinCDcDy4M79+mM+axsqXLfoQ56Ucd1C-OHkGLxwNkpfZ-zQ@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IOWbnuWkjTogW0RNQVJDIGVycm9yXSBbUEFUQ0ggdjMgMy8zXSBhcm02NDogZHRzOg==?=
	=?UTF-8?B?IG1lc29uLXM0LXM5MDV5NC1raGFkYXMtdmltMXM6IGFkZCBpbml0aWFsIGRldmljZSB0cmVl?=
To: George Stark <gnstark@salutedevices.com>
Cc: Nick Xie <nick@khadas.com>, "robh@kernel.org" <robh@kernel.org>, 
	"khilman@baylibre.com" <khilman@baylibre.com>, "jbrunet@baylibre.com" <jbrunet@baylibre.com>, 
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "kernel@salutedevices.com" <kernel@salutedevices.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "xianwei.zhao@amlogic.com" <xianwei.zhao@amlogic.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264153-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[googlemail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[googlemail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid,googlemail.com:dkim,bootlin.com:url,salutedevices.com:email,iu.edu:url]
X-Rspamd-Queue-Id: 16D7A11510E
X-Rspamd-Action: no action

Hi George,

sorry for the late reply.

On Thu, Jan 29, 2026 at 3:48=E2=80=AFPM George Stark <gnstark@salutedevices=
.com> wrote:
>
>
>
> On 1/26/26 12:35, Nick Xie wrote:
> >> Thanks for the patch. Since you have khadas mail I'm pretty sure you'v=
e
> >> had the possibility to test it on the real vim board and I just don't
> >> get it how it works with the voltage table above. The problem is that
> >> pwm is calculated incorrectly in the upstream pwm-meson driver. That
> >> voltage table appeared to be used in early amlogic bl loader and
> >> appropriate pwm is initialized from a table's record. Duty cycle value
> >> is translated to pwm regs correctly. Later when kernel start running
> >> pwm-regulator driver is probed. It reads the pwm regs, calculates back
> >> duty-cyle and search it in the table. Since calculation algos are not
> >> match and the table doesn't contain full range of 0-100% values
> >> regulator driver doesn't find current voltage. In such case regulator
> >> core sets the minimum voltage from the table [1] and the SoC may hang
> >> (depending on board) due to minimum voltage may be too low for the
> >> current frequency SoC uses.
Nick likely didn't spot any issues on S4 since CPU frequency scaling
is not upstreamed yet (as there's no way to control the CPU clock
yet).
The lack of a OPP table means: the PWM and CPU clock will just stay at
whatever the bootloader provides

> >> Or I'm missing something?
> >
> >
> >> There's not-yet-reviewed patch that fixes pwm algo [2]. There's
> >> calculation example in the cover letter.
> >> [1] https://elixir.bootlin.com/linux/v6.19-rc5/source/drivers/regulato=
r/core.c#L1227
> >> [2] https://lkml.iu.edu/2412.3/00826.html
> >
> > What's the status of such patches?
>
> the patch is ready for review. It's seems like nobody is interested
I'm sorry to see that the patch had it's first anniversary.
I'll need to bring out my logic analyzer and test your patch (I hope
it's precise enough to show the impact of your changes).
Are your plans then to re-send the patches or have you moved on and
need someone else to take care of it?


Best regards,
Martin

