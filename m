Return-Path: <devicetree+bounces-277010-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHx/M8pfumnFUgIAu9opvQ
	(envelope-from <devicetree+bounces-277010-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:18:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6E62B7BE6
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 09:18:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 64081302F4CF
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:17:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F7F9379998;
	Wed, 18 Mar 2026 08:16:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F177437997C
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:16:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773821817; cv=none; b=XFLskcUGeDEflMT7PqvUOxVVuIukRk0xoyyXvRaBcHiHTJWwXW8MRursNbataiYlychFkyHStYRP+ahPJRot9MgvyTMvv4POuRKniZnDzx3Vf5ieQtZ64Nmx20cjimcE4SAq+haQSDPZdV10Q8P4Mn2m35XMWYDSEZExzITZlGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773821817; c=relaxed/simple;
	bh=KAICH7AyRNLHyx9na4VNik7GvrikW4tPpi3l7+AtXfk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HWSFaspiBAXYj9097w6VgC5GPUiRO7qLd9SxItTphUnorwJHLLE0IFz19nzKBt8dj4ANZlnkodrLYMVyc93UpQAEOtHLPRy2SdVysQ4YslAXalm0FS1y/qbBZJWs9j7bfzThScBZ75604PxLt57tv2uc6ZegVpDuEiqxVmJduSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-899eabc5292so75343716d6.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 01:16:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773821815; x=1774426615;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yLFVo6AiXNHbx6lUNUpPWDsgWE1jK824gYrpCYtdfM0=;
        b=B+XC/o+wuCzP2kf16cKv6EHqkwf9iwqzJPgp3iQWl+l5vOQ0pYU8/GHriYT3XfcPbg
         GCO+QvOkJDmlv039f2vwkQSK4V2v1tcFyKCKNWC/17VSG5uQBVqO9td6VkC4+osvcqeD
         ifXYfLyuRHtq29asGXSY6ZIo6xR3ptjV/kDGmgg+rOkCJY7Z7eh+bx2cLRElItGStgeV
         GsbIE1tPwVfXQttrxP0CcJfLBadU7rS0LfmR7sVJWDhkYJVi4kXgEIX1nWS873dAjA1D
         tE3Mo8ohuit2Q53422bL/6SGD0CfquVXgfcHgC+y3d6Vy/k4/pLX3uFkonJz91iB5sjR
         usDQ==
X-Forwarded-Encrypted: i=1; AJvYcCWI3fDLSRfb+W8aB3EiJWv+DdddP4BqBQK46UIrlND8KyfAboELa1iFkYCk8zA869Csl+o3g89wyk9f@vger.kernel.org
X-Gm-Message-State: AOJu0Yyw6APMtE8RYE43OXy+9Bs8AmSCvoGBJSk2U40MW/wpHKTIhIEG
	EOcVY5r2jBKGpdNGvRHNiZww8LpOUvvPUkL4Ob2n2sBuErsawU5V4Km47WV2VhOYX+g=
X-Gm-Gg: ATEYQzzKA8O2xkRIjCWezMjHo4mgFxXY+gJCkZFF12rfDbibcSeNSRhiOCzMmWEE2dx
	M+no7QG3VmBw+CPtuRCe64hI4IYW+OM0QkGqOVDO14jiTLfLzc9I77C5qMLGLkN0Ppy9LLOS3VY
	eA4DlaqdCMmPlAn9qxlmzbdeX9g4v+75jVcG124n3ZBOmvz1mgJmnm8awAP26vOXIehR7MB48iD
	bbfj+79c+rwqXTgoHrmaKJRR5PSXlo5D9WzRWAEbVTAdDy8hJ939fB6k02b5WXbHxnZmkLEjqjj
	dIK7Bb3Al4j0vjzhzSoNyT9ZcK9F2rjVBDp6jWbc1KcmgnDOhJIWBrdaY8KBczf3qf8+moVKi6s
	8zCSZ3ukOBZScWkwTi38r3Ba3Mue2mtZ7i4yXISItVkzlVCsw4+KL98ldWbHK0t/utAlHn6BpbD
	BN0tHTWMFSgSuzJv69vI09W3cfwUmh3UMR8kEJqJhOTcbf6RPfVk6bMk0ItwlWnhGh
X-Received: by 2002:a05:6214:5006:b0:89c:5557:88ca with SMTP id 6a1803df08f44-89c6b4ce2acmr37664556d6.14.1773821814807;
        Wed, 18 Mar 2026 01:16:54 -0700 (PDT)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com. [209.85.222.176])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89c6b8dfcb7sm15615426d6.4.2026.03.18.01.16.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 01:16:52 -0700 (PDT)
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-8cbc593a67aso166996085a.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 01:16:52 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXr+n99bcmL8bPJFHKi7lwnDO3GSIj1jO9CqSycbCxU5IjQ6QUMTuv7tkLQFdjGZ7qNV9Rwmsd+l7vM@vger.kernel.org
X-Received: by 2002:a05:6102:945:b0:5f8:e323:580d with SMTP id
 ada2fe7eead31-6027d1284cbmr1153417137.11.1773821475435; Wed, 18 Mar 2026
 01:11:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260317194442.468147-1-biju.das.jz@bp.renesas.com> <TY3PR01MB11346876072AAF91064B2700D8641A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB11346876072AAF91064B2700D8641A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 18 Mar 2026 09:11:03 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUiomf+6O5eDUBAt-41D-Lhvnda7w_bbdj-EQppapjdUg@mail.gmail.com>
X-Gm-Features: AaiRm52dBzFdESjaYAuu__pn42Q-OWaaQ-EFK2jgv-IViv74in_nOyYaaSxkIRo
Message-ID: <CAMuHMdUiomf+6O5eDUBAt-41D-Lhvnda7w_bbdj-EQppapjdUg@mail.gmail.com>
Subject: Re: [PATCH v4 0/9] Add support for Renesas RZ/G3L SoC and SMARC-EVK platform
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: "biju.das.au" <biju.das.au@gmail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, "magnus.damm" <magnus.damm@gmail.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,linuxfoundation.org,kernel.org,baylibre.com,glider.be,vger.kernel.org,bp.renesas.com];
	DMARC_NA(0.00)[linux-m68k.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-277010-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.698];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,renesas.com:email,mail.gmail.com:mid,linux-m68k.org:email]
X-Rspamd-Queue-Id: CD6E62B7BE6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Biju,

On Tue, 17 Mar 2026 at 20:59, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> Please ignore this series . I missed to addresses for Patch#4. I have sent a new
> version[1] fixing it. Sorry for the noise.
>
> [1] https://lore.kernel.org/linux-renesas-soc/20260317195650.468330-1-biju.das.jz@bp.renesas.com/T/#t

You have sent two "v4" versions with different Message-IDs,
which are treated as different series by both b4 and lore.
Please bump to v5 and resend.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

