Return-Path: <devicetree+bounces-275137-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCQgIz3us2m4dQAAu9opvQ
	(envelope-from <devicetree+bounces-275137-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:00:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB3B281D9B
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:00:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ACCDC30D72C8
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:57:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02DB338F636;
	Fri, 13 Mar 2026 10:57:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E70BE2F6910
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773399451; cv=none; b=ULjGxVk2Z/+HgHhSohjphJSy0MpFOswy81tKEviThBoJXdKw6c/kASyj/DfmCAz2q+Je36ibJXlFnAfLInRbLd/REgHqMUo0KRhoKY0JoyHszDQvPWH3Ee2szib5HVBQqs6+GRl/7pykuOs4UXeftato9HZ/ynbA5BCzK2UVuZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773399451; c=relaxed/simple;
	bh=N+EUMKW8o/9rjbqaO5/kRfo4UuktX8cwqEopTFI8zU8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cDn2W9yapuzj4KC1HIn/aca75va33/f5IOxuNoAFAdOn7GV6x6LdVmVQcWhWjyti6dPgECOheX/D1dTwomF769y0vX6dpoQ770Bej2pYRZTr3sXreosBngtjZZxW84TNzcmjP0Ty5+STH/+9egf+RsVRvSWXVyqteZ3+yJfu6VU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-79898953985so16303867b3.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:57:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773399450; x=1774004250;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=N+EUMKW8o/9rjbqaO5/kRfo4UuktX8cwqEopTFI8zU8=;
        b=TS2Xxnh/4LOaR99og94jFtbkDWMnf/5zSgdARnVvFuTc+uKE5I5iPJMv8//fgriZOS
         EiX37o8vJUrlvC2jOu2NXx/hXZGF7iFLqr+S7Nj5SD/QWE7gvdkQGrh1ZXrLcHxs96p7
         aQnbF+ko5r/N5+xEu03DZsmufb9xEg7Tn94PF+acuP+ddTGTO+pSiMtwoMU+f0zJD9Rs
         4QeVzW3l5tDY8o02+yqi3A8hKo0vgftol2+Ob34mNGpEdl/7uWh1EJWFRqiyNoRJ6MFQ
         PaUPJppmQHr+8YLiNvI14eg1ARGk9Jw97aJ8tLiIigpu7BbyMF3Q5+TtC6A8abQFJG8s
         ro6A==
X-Forwarded-Encrypted: i=1; AJvYcCWP1t4oHkS6C+hZia5/j1vfBc6PhTDsZ1RPNPNbAD0g9PCVeDAO49AqKbzht3W7coD+EOit7wEzEai5@vger.kernel.org
X-Gm-Message-State: AOJu0YyHnWg03aqRkiP5Gvt1WNbfWuS8QHDK59K0ZH9ktqqqsB6pUNjq
	Nh+jnLImMRMSeZ5WRdRKmxb/oxM2kPeebELUhkMiemZp8wlqORA25d+w9mLpVXFp1VAiUw==
X-Gm-Gg: ATEYQzwBkpu10Myi6RUfweYlSKvhzRNVq4qvzQgmSqS5wJn+QZfq6KeYbn0Eg1a2IAa
	qLeqtucG4wF1i1wmSEwerOgeRhdTWF+hCV3wWxH6WAAQ7J3Qw7ihf86t+ytMuPIIks58ECHBAon
	HD3CgeS7IW5zoPh8yNohxTfEfkvDA09Oa8VttqQ60HzC4/MrnFFP5nVqa6JEANQDl60y3J9ZI5n
	VxyU77pqzpLy7JpPGtzNTyRFSr4FeIqmHqGI6HuoIHIBgolWMt50r4Txww4h5sdSQi401nCrORC
	M0Hdkm1oNW8NV+bFpgL37eCbc48D/F1wpouzxn+12oa9l72XJjAYL1ZiYw1XdxPng48+trBdSXr
	fM0fnE9jzK3qIctmRcVv4HXb1rdD1sfHkFfRK8pxVmjgk8eyLozaoMbv2kt9EdmktSXMoryEoWr
	VqTszg/ICcG0tR13qPX2g+OLR6rvMpTQ8ZkwazoXa62p1zTkkwiOWWJxNJ11GXMEYHXpS2HdK09
	yJqSftPmhVfRIkIKaM2s/zT0+4iRoXGhOFWn0aLRY7SuG4O4WV+
X-Received: by 2002:a05:690c:38b:b0:79a:2312:528f with SMTP id 00721157ae682-79a231273e9mr7762107b3.15.1773399449920;
        Fri, 13 Mar 2026 03:57:29 -0700 (PDT)
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com. [74.125.224.54])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-79917e0de05sm44991737b3.15.2026.03.13.03.57.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 03:57:29 -0700 (PDT)
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-64ad79dfb7cso2478478d50.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:57:29 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVvZpq6wGydP9S7Y7rbj6odU+GA5QLpwKwFt0hTDZLLrwMf6jhePWs2CdP8QkSlaHrfpVuxCrCUjFZb@vger.kernel.org
X-Received: by 2002:a53:c049:0:10b0:64a:e799:1d84 with SMTP id
 956f58d0204a3-64e6304d479mr2200425d50.49.1773399449098; Fri, 13 Mar 2026
 03:57:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260312183721.40482-1-email@sirat.me> <abPaqo9pBSClZ-PH@ashevche-desk.local>
In-Reply-To: <abPaqo9pBSClZ-PH@ashevche-desk.local>
From: Sirat <email@sirat.me>
Date: Fri, 13 Mar 2026 16:57:18 +0600
X-Gmail-Original-Message-ID: <CANn+LWLZ28_0nsgtk_Hh_-wT7x1k4Pg-U9GV+cnPtQG_22gT3w@mail.gmail.com>
X-Gm-Features: AaiRm51t3mDZaAf73112SokdohhWIEKBUIeHDPCuYGLDhDLvPmYE-qnlAgI863s
Message-ID: <CANn+LWLZ28_0nsgtk_Hh_-wT7x1k4Pg-U9GV+cnPtQG_22gT3w@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] iio: proximity: add driver for ST VL53L1X ToF sensor
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
	TAGGED_FROM(0.00)[bounces-275137-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: ECB3B281D9B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 3:36=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:
>
> On Fri, Mar 13, 2026 at 12:37:16AM +0600, Siratul Islam wrote:
> > This series adds support for the STMicroelectronics VL53L1X
>
> NAK. we haven't settled down on the v3 comments.
>
> --
My Apologies, I replied in the v3 thread and will address the reset API in =
v5
>
>

