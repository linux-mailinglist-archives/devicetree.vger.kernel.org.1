Return-Path: <devicetree+bounces-275136-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mNPVNgbus2m4dQAAu9opvQ
	(envelope-from <devicetree+bounces-275136-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:59:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FFA281D84
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:59:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 08A45321BEFF
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA6FF390229;
	Fri, 13 Mar 2026 10:56:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBDA93358BF
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773399363; cv=none; b=q2hc8HMhBv+1pEy5wbms2/fnu2FCJ/VUiIWrMFo5lrOBZoX6VrZpTZf/8YtrR5P5ywDNYnIxjKHFFMIHSx7svNs7A9Na4nHrpJs+dZM/jQxLARjCMKbfDFIhIpB2HGlE4jnn6QFKb932akVTyovZ6POqpiphhCcopjKJQcJ6aY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773399363; c=relaxed/simple;
	bh=xWJukZR7qun4SLAfI53dfW+rWEm/QwqPyiKcmt6t38k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Tx7MqwmM+yxCXzkqMT3wdbr7E2hsdkn06yv9MG+D2QcFLHX0oqWiRim12G/nup0d5nLWAdMCsbyld5uXe6l/sDxzPCj4SgQaZ34eX25UC9S2omIN2nGy9x9giJkPHleqBcttqNiGgBBP0R8YqCXrvGm7ipdvqfzNs/zbeTAP0hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-79800183233so31041377b3.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:56:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773399362; x=1774004162;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xWJukZR7qun4SLAfI53dfW+rWEm/QwqPyiKcmt6t38k=;
        b=AcSSWywDY55rXiPS4/FO7KFwMHjJDT4E9QbUlT8BwJFwk3ynqP2hCM6modD3//4/IH
         EtmxSlx27Szex90EIDedDYlyYcd9MewPQfLwkG8+ch4Tx5vgilGgYq1eW6vwofpWVGdv
         DVj41exmMne9zVwvDzGwfvS5YcTFYQ0fQ8depJeKUre3bTGHsWm+Ol1kondv/wHRYSgp
         C/H06WtXGeM9GkFwWh/4uEhkWymt8HYiRUpv0gWp3aGaapcfT5XB1STG7kXe9BW6jim2
         /IEpdAS1sKziMHkkqJqswHiElxDTlVVSGPeEbjbZMB/aKjqgPXzjbYQ7xmdM3b1ZNcSp
         Z8qA==
X-Forwarded-Encrypted: i=1; AJvYcCUUEMxGBy2D6QH2YIfoASxOHo4ag0R2ajwhCrSvr05j/BE237xj81/ZyKQ/IPTSzwIUNu919YNZ9Mhx@vger.kernel.org
X-Gm-Message-State: AOJu0YyDt+mvdfckecGXuVdXMznCbXHaChC7qkXdBKvffMMuvvG7fIdF
	Z58cTlvphXPnqZBaNCaHqerDzh83Bll8Ys8yDzhnKhzLwZRIL6Pt+syFuWOO2uzeAPbdqw==
X-Gm-Gg: ATEYQzzPUYj6NHC8WzIlZ7N67LXd/SRfkaUaaHom7oaVOl+PG1n9Hhaq+YTRzjoW0fU
	U0VjP7EHDiq186XL2AHoxRQOYiyybFUB+Y6F3jrVKt9ynjEzzHdzoBWMeHl7LFFSlW/n7nITA67
	ky4SiOHv4xSLf9PZi9elf2ulsCEbiHQpXrCcV6tyTzRR2Xiiuv/q+/AYVWkEz5Xo40GV79zDFd9
	w1bUfwWM7adMZy0jDFFs7wFnkA9XOhSv01/CXSQFDpfbvSeQJ/SLeYfxYgyoJ0NyCRYqkTfKtZ0
	rtzbutdV1lf/cGa/Yyzj+SB6fnxEAXLn8BsDbKmJrlKhHf/1WMdnASWWKqxfzLJTY1maxwDkMB6
	Eutpw5AC7gJBDu1n+nxJaGZhoeIG6X6i66U8bUa6ihiHB5osxxAxuPNarK1/2VebpifzvgBwOHC
	rh2klJMSZ8riX7mC6trAFE0OYwy717FUee7KHWhlMR9Nn+ct0H+IyBXZQwmRX8HsXWQB8fHmObK
	axzjcrmsqMDyGFbVkqF/joqo204rqIETdlWHfUbSA==
X-Received: by 2002:a05:690c:660f:b0:798:1637:ff29 with SMTP id 00721157ae682-79a1bcd5a7amr27043157b3.17.1773399361641;
        Fri, 13 Mar 2026 03:56:01 -0700 (PDT)
Received: from mail-yx1-f46.google.com (mail-yx1-f46.google.com. [74.125.224.46])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-79a231a54d2sm4314637b3.42.2026.03.13.03.55.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 03:55:59 -0700 (PDT)
Received: by mail-yx1-f46.google.com with SMTP id 956f58d0204a3-64c9c8f8783so2396499d50.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:55:59 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCURGEG1ZvCXEcMwLGvhTjyfTuziWL4/S5IScWIV0biEjp9UX46xObLdoqHg/plTXQ95lbndZf6iTgiu@vger.kernel.org
X-Received: by 2002:a53:ee4b:0:b0:64d:6a5a:ac3d with SMTP id
 956f58d0204a3-64e6289f6cbmr2073213d50.39.1773399359165; Fri, 13 Mar 2026
 03:55:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260311224044.21480-1-email@sirat.me> <20260311224044.21480-3-email@sirat.me>
 <abLUgxivQnz2ISeY@ashevche-desk.local> <CANn+LW+mg9Ridm3aMrVhy7cgvmJO0JNV_s_myfRCW8gPv7Ggkg@mail.gmail.com>
 <abPaaSgJi6m6mch9@ashevche-desk.local>
In-Reply-To: <abPaaSgJi6m6mch9@ashevche-desk.local>
From: Sirat <email@sirat.me>
Date: Fri, 13 Mar 2026 16:55:48 +0600
X-Gmail-Original-Message-ID: <CANn+LWL1anBWWQz3DKbZWo=0MSb5EhY3KSiq84=qgo8ZO68XTQ@mail.gmail.com>
X-Gm-Features: AaiRm52AWgFnivg9kHX3kLuPles6YeHu778rjWkq6sm2jrDVCYGJ_SYCDT66Jl0
Message-ID: <CANn+LWL1anBWWQz3DKbZWo=0MSb5EhY3KSiq84=qgo8ZO68XTQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] iio: proximity: add driver for ST VL53L1X ToF sensor
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, jic23@kernel.org, 
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	TAGGED_FROM(0.00)[bounces-275136-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 72FFA281D84
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 3:35=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:
>
> On Thu, Mar 12, 2026 at 11:37:26PM +0600, Sirat wrote:
> > On Thu, Mar 12, 2026 at 8:58=E2=80=AFPM Andy Shevchenko
> > <andriy.shevchenko@intel.com> wrote:
> > > On Thu, Mar 12, 2026 at 04:40:37AM +0600, Siratul Islam wrote:
>
> ...
> > >
> > > If it's a reset (semantically), use reset-gpio driver and reset APIs =
here.
> > >
> > The XSHUT pin is a shutdown/enable pin rather than a true reset line,
> > and the existing shared st,vl53l0x.yaml
> > binding already defines it as reset-gpios. So I am keeping the GPIO
> > consumer API here.
>
> And? reset-gpio driver is exactly for those cases. Please, move your driv=
er
> code accordingly.
>
Blame is on me for not realizing that reset controller now also
supports "reset-gpios", my apologies.
My original hesitation was due to not willing to modify the binding to
add "resets"

I will switch to the reset controller.
>
>

Thanks,
Sirat

