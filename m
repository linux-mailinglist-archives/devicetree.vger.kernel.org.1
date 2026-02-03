Return-Path: <devicetree+bounces-262387-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJBbAb9EgmlHRQMAu9opvQ
	(envelope-from <devicetree+bounces-262387-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 19:55:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D19ADDEAE
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 19:55:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4B5BB3021E71
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 18:51:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96A8731B123;
	Tue,  3 Feb 2026 18:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b="lgS6/KZV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B077731D371
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 18:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770144659; cv=none; b=J4jG2EFFtoeBLuPyl0cNxn7wkNuOT1mIqSgga7pT7499n2X7YPDj3r2QHRjTALlBae6z2euBW9UAYG+DxtIrBAb+8TfNLjnD2iVcrJxlqA3/2soJcrvuHQNBmg9OsfuN2bE/A4eEraiMSnn8v92eDtJ+rrOY7OinvYtUN134lr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770144659; c=relaxed/simple;
	bh=DHmaR94WIM1xMhIJTLcWEnvc7pYhuGrKmKB5FjKwX9o=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=K9hMuRaPYI+2qD2kviVsEezMl9/L9Kqr+zeQ0N9tD+pctyFs6SL5pJEWprfsOoe/rbnEZoVfGv+ycxRO/Ub4mOr3RwJUkqIpYVTJzhEf4ekKZNgo55DGKI4XvqYCN7Ue0tp/DTgX4hNcxvKnRk2YAYtZmlcsValt/YMgMkxfv2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai; spf=pass smtp.mailfrom=nexthop.ai; dkim=pass (2048-bit key) header.d=nexthop.ai header.i=@nexthop.ai header.b=lgS6/KZV; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nexthop.ai
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nexthop.ai
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2a79998d35aso40773945ad.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 10:50:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexthop.ai; s=google; t=1770144657; x=1770749457; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Rfw0XG2ThbAXfeMl6ZSUUMc+ZydcYLefy3zvZERR6M=;
        b=lgS6/KZVx25a5hA5kFzufCxZ1oE0H9QnPSaeDrKRQALZtYmqJnmz0+akN+w1wK3qFB
         3GUphA/B9duMHad9aXQsg7wb0LLCu2cYLalNPMEFG+jHukLzh0hs9X+uWhsastMNEGGr
         c9QLQEF8XTRltJYNfKATFft2RcDeOaieVEqSH8xQc3xBtcfaJo0L7RKihRGSpvMib6Pq
         kydh2nogc0T4/DAOcPOVMpr2525N3g1WnqifVICeobyjJ8DI/le8l7R35ueM6cgUXn7r
         aXKMFwsgmWRakPQnMEtj01fy+sdkG3TWonn6xUQcA7EDHlm8sqvA+W9M5Woqqw65xDEx
         We5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770144657; x=1770749457;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+Rfw0XG2ThbAXfeMl6ZSUUMc+ZydcYLefy3zvZERR6M=;
        b=tukf5xfXxXCeaqKLsyeFvDQEbSMUV/BPV++xsvjLoxDatSYK5ZoTvi/rHLRsmrf3Jj
         GYCrpPQx9fivYmGJMUTMlJHJwcO3vDu8MZNi9WaPiqKfDe0SgJyxW7L25VUMZnM/8qUG
         jj/oIQWBD9H93ugInSyFn3qN52z7JVBFsAbypCfbSj1SXnX54KeMPS/MQGPT0lkXv+wk
         HzwFvl5t+bUvShNFX1KaFAjX7vHTKke/yBy4i2QOtrgA8Qq8F4Uh7SorT4XMNkIgsdOq
         GATnjnH0d/YkURKqlbyJY2kagKv5Ai6sRxniEa59dqaIEhJ4kEJIicMV7Pgb042Z6gbf
         jA3A==
X-Forwarded-Encrypted: i=1; AJvYcCVXwQXAM5xqWGjar7ZnDOmIcxF9r0VCsXruf/2lldGUh78qhgOOmy1PAbbaWJdsWDqt7RuxmqTC1FXc@vger.kernel.org
X-Gm-Message-State: AOJu0YyJGu7k1nnp5moDzkFDdqts/AiOPhI/uutO++YmIEqtd05ZpWvP
	YWaV3wSRugV3xzzTXN8R+atNmhmpFEE/e5F91Q9vGeufeW/HJ7tr4+txXBT8Pv7hOlY=
X-Gm-Gg: AZuq6aJFsro7bK0Xzqb77xudtoKQNTtAkv0+Aem+e5C6gCaQ5RBRv4mZ9IzT2DAp/Ia
	b5XJnjnjhZNmp5xiCWdhcDXDaCt3iydAnqArL6dgXGIxCDO5Tw1AdOuVty61UPGEqQeLyMLKL2I
	fPsDjcnYiED59EzRMIC9HgnD2IwRXoqyF7M8aW3yppbddbBSMIEva5dHw8ul0e9XK/LRIZ1SSP3
	Kfo1c9zdRK31dSNULjCs6JiJJ4omJdxJm8lyIpJIHSPChGolKV9gmwwqjHrMoW0s4NYMCHjJbUs
	Oww0Dw21/dq73LWAoTe+a10LftSo4FWQ67r7WCMcUZODTBP+pzm3ytJLEVcr1aGANAPxs0D8rpw
	9Bu67x5+ytGiip4jCxysctqfYcgo0dTFET2XyBIq/kUONKfJbx8UQfpcEsz8yxTocrId7kJ6S65
	u0aTG3xqyccZz1FiCNB+CZjr3hHj4rtfTTMnl3wY9aRO82LA==
X-Received: by 2002:a17:903:19cf:b0:2a7:aa14:82f7 with SMTP id d9443c01a7336-2a933b9d152mr3156645ad.10.1770144657038;
        Tue, 03 Feb 2026 10:50:57 -0800 (PST)
Received: from smtpclient.apple ([2601:602:8701:5361:2dd6:2d53:d593:7d46])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a933888e8csm2181465ad.29.2026.02.03.10.50.55
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Feb 2026 10:50:55 -0800 (PST)
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
In-Reply-To: <1ac7be34-22b1-4d93-9957-fc7ade9a2649@lunn.ch>
Date: Tue, 3 Feb 2026 10:50:44 -0800
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
Message-Id: <DF13B121-56F2-4987-A47B-99A20E18554E@nexthop.ai>
References: <20260202-i2c-xiic-v9-0-ce4695f5267d@nexthop.ai>
 <20260202-i2c-xiic-v9-6-ce4695f5267d@nexthop.ai>
 <aYIYBheQgIN71os8@smile.fi.intel.com>
 <2F830E87-F00A-4A54-A5CC-E59BD2C5C7B2@nexthop.ai>
 <1ac7be34-22b1-4d93-9957-fc7ade9a2649@lunn.ch>
To: Andrew Lunn <andrew@lunn.ch>
X-Mailer: Apple Mail (2.3864.300.41.1.7)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[nexthop.ai:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[nexthop.ai:+];
	DMARC_NA(0.00)[nexthop.ai];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262387-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abdurrahman@nexthop.ai,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email,lunn.ch:email,nexthop.ai:mid,nexthop.ai:dkim]
X-Rspamd-Queue-Id: 5D19ADDEAE
X-Rspamd-Action: no action



> On Feb 3, 2026, at 10:31=E2=80=AFAM, Andrew Lunn <andrew@lunn.ch> =
wrote:
>=20
> On Tue, Feb 03, 2026 at 10:14:49AM -0800, Abdurrahman Hussain wrote:
>>=20
>>=20
>>> On Feb 3, 2026, at 7:45=E2=80=AFAM, Andy Shevchenko =
<andriy.shevchenko@intel.com> wrote:
>>>=20
>>> On Mon, Feb 02, 2026 at 08:37:23PM +0000, Abdurrahman Hussain via B4 =
Relay wrote:
>>>=20
>>>> Use i2c_add_numbered_adapter() to allow platform devices to specify
>>>> fixed bus numbers when needed.
>>>=20
>>> Not sure about this. Doesn't it break the current approach? Please, =
double
>>> check that.
>>>=20
>>> --=20
>>> With Best Regards,
>>> Andy Shevchenko
>>>=20
>>>=20
>>=20
>> If pdev->id is PLATFORM_DEVID_NONE(-1) then =
i2c_add_numbered_adapter()
>> falls back to dynamic allocation and calls i2c_add_adapter().
>>=20
>> Many existing i2c drivers use the same approach, see i2c-pxa.c and
>> i2c-pnx.c etc.
>=20
> It is not about if other drivers do this. Its about does this change
> the behaviour of this driver, so that I2C busses get different IDs
> then before, and so cause regressions?
>=20
> You need to explain in the commit message why you think this is safe.
>=20
>    Andrew

Before, the driver was always doing the dynamic allocation due to
i2c_add_adapter(). So there could not have been a system that relied on
consistent i2c bus numbering. Even between reboots bus numbering could =
change.

The systems that did set pdev->id and were expecting a consistent i2c =
bus
numbering were broken to begin with.

This patch won=E2=80=99t break any existing systems or cause =
regressions.




