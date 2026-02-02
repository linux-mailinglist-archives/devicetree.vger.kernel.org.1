Return-Path: <devicetree+bounces-261915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKqzGXfsgGleCAMAu9opvQ
	(envelope-from <devicetree+bounces-261915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 19:27:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 72516D0269
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 19:27:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3C8B8300404A
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 18:26:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 768DE2ECE85;
	Mon,  2 Feb 2026 18:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b="alG+C4k/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147B52EBDD9
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 18:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770056816; cv=none; b=uHH+QlOLCE8CD2FLcY3ehLtZwubDdhQWXI31CXUE9Xeo7vfJJpn1KRjACCkNOt6CcIidcgea0ya97mrYpBrUJfSzVPQG1RyW0ptVb1gLliW1ljMfzE/TgxQp689LSR1Yz1FoA+GK//8RgKvr4eYSSV95rF/wbL0P9efbQZHuF2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770056816; c=relaxed/simple;
	bh=UmAP85T4hD2xzqQLiYF8/uEGgU9rFd+QCSkTmTB/L8k=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=LUw4ZD/u3CJrveYqid279ck0Ko34Wl088hoxe+rD+uJ9aY7xfrktnyvneA9C6kl88k3h5SwtWpQA0koQwYIpZReF/3erqCX3spD47jodsVQy2zLguEZvKL5HFv2EyFfBTiBJDyPBViadjGumSUHLt1G9ENgmMgeJ/uUL3xNo2FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai; spf=pass smtp.mailfrom=nexthop.ai; dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b=alG+C4k/; arc=none smtp.client-ip=209.85.210.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nexthop.ai
Received: by mail-pf1-f196.google.com with SMTP id d2e1a72fcca58-823c56765fdso1347671b3a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexthop.ai; s=google; t=1770056814; x=1770661614; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UmAP85T4hD2xzqQLiYF8/uEGgU9rFd+QCSkTmTB/L8k=;
        b=alG+C4k/+4gADn0D/ZWJvy52nBSOo99uYtLql8z/Y4f7tx5DWeUy3/+oZBmtqFg47I
         im9h98SVZzOpdX80sL6LMDYG7mH6aCWqwvJrdaLDLBqBXPXFR+2GKth2kqQvOakd3rGS
         Cqp0a8LKCPEYV6UibRO/SGZD+L5g68LYfHxRYppviiSZAswG2zUy7Kb3nytfKe3B+eNH
         xzOV5x4QX7Ii1maIC3qOqeMDZDV+NcD3B1KKBluGHXJCodTFnf+lxGH+y9ctcrXVvn8S
         1OIcWXgA0YFYMf4CHeoHXb7JP1oQnarUpEJpr31nPsLm9Zu1BLPQVf1EeoLcyilZjJVu
         A+oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770056814; x=1770661614;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UmAP85T4hD2xzqQLiYF8/uEGgU9rFd+QCSkTmTB/L8k=;
        b=i0ZsAyYQqgLLzxeCe1vYU+sYXBOWCVsZNbEie4zI6POQT+/pBLF5rGo0Zasda67mxi
         bSDMQkefPXxjWlU6qiG6G/39ocXpw54iX+TVDG0VgdizqRW7QD+41gJq2Sk7vKwTfmQt
         4Lm67+J3TcVk4wzrSuBT6WEaYMrklo8A5CdRyuXCyt7vwHHWLZon15TG2Fu/iS8OqXu+
         LT/T3e2R5deTe/gbpSL8oBIb1yBAeloXe+XBgwR5YbtUm53Nj6ZueG4XAyKEuARbb9YN
         8IyXV243FghyWI5LxRl/o2BpAyuclj7DvREKROZZ3ScTCTGP6yPQ0x4M3z7TIjSxa+vH
         nDNA==
X-Forwarded-Encrypted: i=1; AJvYcCW+oJqPQ7u/guifNbNuf/hpew1Cd44835YUdSjxwG0Ogzy1Bh6vGDtnHJjuLqvajrNbaSYsi5TMEaNv@vger.kernel.org
X-Gm-Message-State: AOJu0YzNpoI9NrDnjzGjocA8TzmkYlZquWFSZgl2PseMjz8fqWNKKUFd
	91i6jT41eFpKkoImYY6ZT3yN1N8KdhFs3OHCVtpNAx3BvVPpPLycaq2Y1/fmObxPwe4=
X-Gm-Gg: AZuq6aJJTg972uKUT8KHn0HRwcHwOH3Lwh4J7Y23hbvpRvvKsi6ON1kPXwWJRIoOnrm
	TiDEjx+HXRLASeB6ETJO6TUqKdW590fJNnAq/W9hic0iUNq3WT+0Bk5wM65dSomszFSg8/HH+dY
	F8S59GqcewTj0RCfta0mPQQCBolymvMt2pSi4qlw2Qf+v1EBpx1Xc0HqFa6irQpKJ3LxHYWktYG
	KJJJWW4vg8yyKJeogG+QpKSfXbrKOtCWsOHEBYj0uiqEs9fQkx/ParYytQEfAF+u7EqX/tELxE5
	nbXxnf4Q8v9tzA0Y+jRV+Dbw9pYjRnAHEGjawQG5WZz9D0wyfync4UZXDwT68iBn2eIpSi6krLo
	NVvGGxwND5ZHqeuMxIHwpfmqlA5oWKDx8DllaKmV0d37i8fa5hV6bR2Nv7meMfMoq1tUNP9gKkH
	vprDA70qKmHCATwOx4051INQDFEQEIR+HUwbTCX+hzcKA9kj4BmiDNyaWyVZ1Cd/QrfCZ0JSxxX
	jzfX3uWBw==
X-Received: by 2002:a05:6a21:34c1:b0:38b:ecae:671b with SMTP id adf61e73a8af0-392dfd7bb59mr12340570637.0.1770056814292;
        Mon, 02 Feb 2026 10:26:54 -0800 (PST)
Received: from smtpclient.apple (c-24-16-26-157.hsd1.wa.comcast.net. [24.16.26.157])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379b59e10sm16991693b3a.25.2026.02.02.10.26.52
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Feb 2026 10:26:53 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Subject: Re: [PATCH v7 1/6] i2c: xiic: skip input clock setup on non-OF
 systems
From: Abdurrahman Hussain <abdurrahman@nexthop.ai>
In-Reply-To: <8be34da2-bf0e-47a0-bf91-3329ed0ec8ab@lunn.ch>
Date: Mon, 2 Feb 2026 10:26:42 -0800
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>,
 Michal Simek <michal.simek@amd.com>,
 Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <7B60C48F-B2BA-4443-A4B7-F5086667A1F1@nexthop.ai>
References: <20260129-i2c-xiic-v7-0-727e434897ef@nexthop.ai>
 <20260129-i2c-xiic-v7-1-727e434897ef@nexthop.ai>
 <ab9dc191-59c1-40a9-bbf1-e6c082af128a@lunn.ch>
 <2428D892-89F9-4013-9681-AD9BD76B0874@nexthop.ai>
 <aX3VqGlIUGCvMY5p@smile.fi.intel.com>
 <CAGYn4vxRbPVFvzm1b_mk2KvnRcJSO0Ewmx1tCTEALaZAu+ZQJQ@mail.gmail.com>
 <8be34da2-bf0e-47a0-bf91-3329ed0ec8ab@lunn.ch>
To: Andrew Lunn <andrew@lunn.ch>
X-Mailer: Apple Mail (2.3864.300.41.1.7)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[nexthop.ai:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[nexthop.ai:+];
	DMARC_NA(0.00)[nexthop.ai];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261915-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abdurrahman@nexthop.ai,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,nexthop.ai:mid,nexthop.ai:dkim,lunn.ch:email,mail-archive.com:url]
X-Rspamd-Queue-Id: 72516D0269
X-Rspamd-Action: no action



> On Feb 2, 2026, at 5:21=E2=80=AFAM, Andrew Lunn <andrew@lunn.ch> =
wrote:
>=20
> On Sat, Jan 31, 2026 at 08:30:40PM -0500, Abdurrahman Hussain wrote:
>> On Sat Jan 31, 2026 at 10:12 AM UTC, Andy Shevchenko wrote:
>>> On Thu, Jan 29, 2026 at 03:29:45PM -0800, Abdurrahman Hussain wrote:
>>>>> On Jan 29, 2026, at 2:43=E2=80=AFPM, Andrew Lunn <andrew@lunn.ch> =
wrote:
>>>>> On Thu, Jan 29, 2026 at 09:43:13PM +0000, Abdurrahman Hussain via =
B4 Relay wrote:
>>>=20
>>>>>> The xiic driver supports operation without explicit clock =
configuration
>>>>>> when clocks cannot be specified via firmware, such as on =
ACPI-based
>>>>>> systems.
>>>>>=20
>>>>> Are you saying it is technically impossible to specify a clock in
>>>>> ACPI?
>>>>>=20
>>>>> Maybe a more accurate would be:
>>>>>=20
>>>>> The xiic driver supports operation without explicit clock
>>>>> configuration when the clocks are not specified via firmware, such =
as
>>>>> when the ACPI tables are missing the description of the clocks.
>>>>=20
>>>> Actually, ACPI (since 6.5) added a ClockInput() macro that can be =
added to
>>>> _CRS of a device node. The ACPI subsystem in kernel could parse =
these and
>>>> convert into proper clocks integrated with the CCF. But, AFAIK, =
this idea was
>>>> rejected in the past.
>>>=20
>>> Rejected by which side? CCF?
>>> Because specification still has that.
>>=20
>> I think the argument was that on ACPI based systems clocks are =
"owned"
>> by AML and there could be syncronizations issuebetween AML and the =
OS.
>>=20
>> See =
https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1712165.html
>=20
> Doesn't that just mean there needs to be a call into AML to request it
> take an action on a clock? Otherwise, why even have ClockInput()? This
> link is to quite an old thread, 2018, where as ClockInput seems to be
> pretty new.
>=20
> The fact ClockInput() exists, means at some point somebody will
> implement it. Once it has been implemented, somebody might need to use
> it with xiic? Because it is mandatory in DT, and there is no ACPI
> binding document for xiic, they could make it mandatory in ACPI as
> well. And then your device breaks.
>=20

That makes sense. I might have misread the thread and came to the wrong
conclusion that converting ClockInput() into a CCF clocks was
undesirable. Thank you for clarifying. Maybe I can start looking into =
adding
support for this after this series is merged.

> By putting in the commit message something like:
>=20
> Currently Linux does not implement ACPI ClockInput to describe clock
> resources, unlike DT. However the xiic driver is happy if something
> magically enables the clock before the driver probes, and does not
> turn it off again. The clock should always be considered optional for
> ACPI.
>=20
> That should act has a hint to future developers hacking on xiic not to
> make it mandatory.
>=20

Yes, that is much more clear and concise! I am going to use this =
paragraph
verbatim in the commit message. Thanks for all the feedback, Andrew!

Best regards,
Abdurrahman



