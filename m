Return-Path: <devicetree+bounces-262376-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBvUMHE7gmmVQgMAu9opvQ
	(envelope-from <devicetree+bounces-262376-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 19:16:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9FEDD6B1
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 19:16:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F8E730A30A8
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 18:15:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E12F03ACEF1;
	Tue,  3 Feb 2026 18:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b="kGesceCh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82CF43A4F23
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 18:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770142503; cv=none; b=WK4IrNSOdVVhVXK5Y5yVZllmLkiyOygTOe2du76EATFJ5/ANDH4YgnioxE9tv9DLjLy8roLONafMYWD2nYhmsHIwc36qXSFld8q1km1NYrhb0K4BRTmYX8ebAZ7cEk8UxpPiHxf4QZGtns+JZFrPEHG6zJmjYDmvPdbtNBKKRGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770142503; c=relaxed/simple;
	bh=AhLtBFYuwe8sjQdJz53j2wA7HDUB30kbmrpluvLvkdw=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=m/JubRQxKiLtSJ2hmDGoF4/7ziLD16UJEWfoIUty727g35xzStOPDurI0zENlz/H5AbzxgJP8n5Mk673e0IEEwtEL9hhOn+wpjJi0F3l89g4dXtS/iGl8yNNcfPRlLFpak+fzSe5YtYcZtAnXvthuABXhhB2E6ik6KJzJp8o+mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai; spf=pass smtp.mailfrom=nexthop.ai; dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b=kGesceCh; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nexthop.ai
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2a933b9b591so578075ad.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 10:15:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexthop.ai; s=google; t=1770142502; x=1770747302; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AhLtBFYuwe8sjQdJz53j2wA7HDUB30kbmrpluvLvkdw=;
        b=kGesceChbVrf/l07Neb9Bo2rH+IJr21G6ehWSggqft7eRgKtL6sdpUuFIM5mwNOQYZ
         bV3rj1hiezGNXkZMK0yDm+Ui3CEk4KM7jF9hfSAykqfHXUquUmxBwDcFMnDU1MjdCTA0
         z6DI2oFy2nOzN6SV8XOCFM8c9xeqxqhgYN6xI4YfIUDRkrH7IN9pu11zTLxlYVPXzbXM
         im2GXZF+TUIxaqIJ7NrIm+x+hnz52nmX+a9bgWBLz0GbmB4IzIbSUuG8wl6UNoEki87K
         ObGvrXI+UBbSxiJ9takkYe54YbL2bZ3jn9st8kq5FP2/cPlAvVaVZXSK7pHv490LWTNs
         Ho2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770142502; x=1770747302;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AhLtBFYuwe8sjQdJz53j2wA7HDUB30kbmrpluvLvkdw=;
        b=GAZDX0IHw57Lzjg6Qbr8Ay9KWqZeYiqfGaUqz1SUxKEjjyz+M8cZnFWqpIab/PxrED
         gxEj0kU/u4KGQ8gRV3xY0UDpNfNhehi1SU0qeINLVtn1DMRzSF9v20FJlArM2Q3m8Z4a
         c3BmpGAtT3P/vCF0xV1KZoIe6ZiB+4GnLudgLNx63gjgE0j2mkNndo1UF19FkM4HXbLw
         jcNR0uiXbN2V2ZdE88dG18Hx3jtlR5HGg1EpkK/c4zq9fxrVA9u5WKYEY+EoDy41F/gS
         5Yqg8a1SUxpSEeSvrz7aVYM7w2Q4f7I9Gm5hWt2fKNyoB4nlCeR4HTakTCymTLenYAfC
         oyGg==
X-Forwarded-Encrypted: i=1; AJvYcCW8IhNfZAdOn0OtNGa+17XBkG7xgaLQmNSq9Ar5I/KJkjose7hM8b6gpvU+7W//P6XxXp+vYtFrHrJ1@vger.kernel.org
X-Gm-Message-State: AOJu0YzRzjWlokFCZyftWBeJh1jxqQPGnFVSPXVQpREWzNhlRSy4m2uf
	Aw/0ZEggMnYB+XHzHW+OEQKLBsz494gEDeS4CvwTDBy0k4G9Mlj3mnYzNVkNk+f4MM4=
X-Gm-Gg: AZuq6aI1FzsqyciGis9Hxc3wC0hn1uBb1ZRJnS746sM2NcGmZjL2N+IxO3iwOdDNyL2
	+ZMsFvFjQPz1+zX5IS3jHIXqm78rCmgdX5gKlDjoGbfbVP02x4B6S6mu8rZm8Urs6bKZMSPLCLS
	VTiQs585fJqN9lERNx1AAZ/ouwKVvDJxFu6XqDs+ZMwTyveb3GrNzK17cZYBeQQALXrhHegWF/p
	1bAV0BT+0HhCHVT8IwlspJhc6DuCoV4xpxfZfGB+m7dThvkXnDE0aGNzXDzzQeo4k3CxRakjWJb
	dY0EN4fsa7yvKIfWKusGxQBZawptfTZedlzH8w72fbutUF2uVp8mUK8jJ0MNAENuo+K6uyB54UV
	owwuQ9PxagCzSfxuZoVwkwsm1pA3ea+TzPRoeT92qvVWoWNLNC6dZktPLhy3nvi2uK4qOYbb/Cd
	28Y+phbFIxQc/mPYHjKWvnPd0YRva2zu/xTH8p2aZrQjNfUg==
X-Received: by 2002:a17:902:f711:b0:269:b6c8:4a4b with SMTP id d9443c01a7336-2a933bc9acbmr2072775ad.6.1770142501839;
        Tue, 03 Feb 2026 10:15:01 -0800 (PST)
Received: from smtpclient.apple ([2601:602:8701:5361:2dd6:2d53:d593:7d46])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8241d43513esm32495b3a.43.2026.02.03.10.14.59
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Feb 2026 10:15:00 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Subject: Re: [PATCH v9 6/7] i2c: xiic: use numbered adapter registration
From: Abdurrahman Hussain <abdurrahman@nexthop.ai>
In-Reply-To: <aYIYBheQgIN71os8@smile.fi.intel.com>
Date: Tue, 3 Feb 2026 10:14:49 -0800
Cc: Michal Simek <michal.simek@amd.com>,
 Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <2F830E87-F00A-4A54-A5CC-E59BD2C5C7B2@nexthop.ai>
References: <20260202-i2c-xiic-v9-0-ce4695f5267d@nexthop.ai>
 <20260202-i2c-xiic-v9-6-ce4695f5267d@nexthop.ai>
 <aYIYBheQgIN71os8@smile.fi.intel.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
X-Mailer: Apple Mail (2.3864.300.41.1.7)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[nexthop.ai:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[nexthop.ai:+];
	DMARC_NA(0.00)[nexthop.ai];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262376-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abdurrahman@nexthop.ai,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nexthop.ai:mid,nexthop.ai:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 1C9FEDD6B1
X-Rspamd-Action: no action



> On Feb 3, 2026, at 7:45=E2=80=AFAM, Andy Shevchenko =
<andriy.shevchenko@intel.com> wrote:
>=20
> On Mon, Feb 02, 2026 at 08:37:23PM +0000, Abdurrahman Hussain via B4 =
Relay wrote:
>=20
>> Use i2c_add_numbered_adapter() to allow platform devices to specify
>> fixed bus numbers when needed.
>=20
> Not sure about this. Doesn't it break the current approach? Please, =
double
> check that.
>=20
> --=20
> With Best Regards,
> Andy Shevchenko
>=20
>=20

If pdev->id is PLATFORM_DEVID_NONE(-1) then i2c_add_numbered_adapter()
falls back to dynamic allocation and calls i2c_add_adapter().

Many existing i2c drivers use the same approach, see i2c-pxa.c and
i2c-pnx.c etc.=

