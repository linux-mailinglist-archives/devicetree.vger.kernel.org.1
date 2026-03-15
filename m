Return-Path: <devicetree+bounces-275854-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNvqNdE+t2n0OgEAu9opvQ
	(envelope-from <devicetree+bounces-275854-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 00:20:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC75292FAE
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 00:20:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 47B7830058D4
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 23:20:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75A0529D26C;
	Sun, 15 Mar 2026 23:20:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4530B29BDAD
	for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 23:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773616844; cv=none; b=jOtCfh4/i2gkZPRNNkMt96CSalNMHPld/AfkVme/mk2zVrllSlNNPFYsoXLqhS/moOjhR0DfMR3n8AayJCENcJXnjLuTwAPqUBaJ7PAmRa2QLZwxfEWWqdkiKfutvuOPfzSjDVZ+B687g4v9GYl28K54tULUJHVN7fcFxaPqlRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773616844; c=relaxed/simple;
	bh=Vj5x1vUv4SFvnor1CgHfsWPBhzIC7+CaxxXc809b7kE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=c2B4WDXFWGCc4tZGDPzqZsGVPFd2s34gQ+CoUGGimDtMc8OhuScBOdvX5DOngsq6YUu1/vuIbvHPyMVGdPwy4LYQV1Cxycyh7fJlr+Vpa3+HlQ2mlDpSMx9M/9msbvDO8JMPGZC5U+X27qzzC2Qj0uIbAEXfSaKAeW3Oho2/Bxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=74.125.224.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-64ad9238d8fso4382268d50.3
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 16:20:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773616842; x=1774221642;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bXxvI7dwyBvyYzzG73LmHExQnMN7J8QMVgYTtKMjrPI=;
        b=EfrABD6oVkmqWXAPWPlQxZq/Pidt/QUviWKGrl1iNNOjmJP6pfHhyqCDo4ddjK2bDt
         bYn8U3OxJHVZdSsNclUjoxinCQCen6ayDbPEFudl7P6q89dUc1PyXp+saEzNn4AxE38K
         JCwD+nwPCLoOZv6l07knQGjGhJFI6BvGopTI9f39lsfU+2yQZrKZIeHmiALhLvsS71Tg
         bXZiMxJZl+dpbN3EYx5RZc8YG9GXAtKvC9L9u6Ix+NozQSgRy2olzw8N2+FyB0SthF9Q
         8KdPwVmQenb7bqFzTBMhTmVZer3gW4+r4RhxXvOQBvh81vaiBGhQPfoRldhePoOnP7C8
         W+gg==
X-Forwarded-Encrypted: i=1; AJvYcCWIBkpLWvplky4il9dY+rUHdfmvURG+wi8scZg7RBuw+WhQ0pkS66+dBobW84QjXdujhY+NDH1O8jeg@vger.kernel.org
X-Gm-Message-State: AOJu0YyDclWAGReDTNKvuKsua73PeQLamaV5EjLd05irq+uq73GKk0z3
	ni/azDnSXVDy0jQ7uE9CW0zy7N7+09PFqiu3qwbqTJqGWJPoyJf18YD8t3Hv5jCx7IA=
X-Gm-Gg: ATEYQzxodT97YhVSLluttUhgUXQpjfgyB0/O1FQAIImwxl730JFGU84BZ4KU/jfC+ij
	vaZ2w+PsOEkeOKFmOxDx0YB2SD8AwHUmPO5ZNInqoT1sFor5yhw7nRwpje/QCJdQD9848saB/f4
	FlcijzzX+JMjl5+bVqKoREdRWDYKK4p/lebvEL34syZZUUlWizsuPOpuzu+B1wYZFqeOr2V9/6c
	uy8Nma3GLLvyICZMRTP+rlri0M12zWWFPMj2HJe8xKn+EGgwYaDjs3gEXKzbD0Y/323XG8gyFSV
	k3fbyKYsBEpz8in72GgZ+n37ce/sqBzqbXL4y4lhq9Sw9LyuwKNhJLKAjijAYQDnF+I4StsHv/O
	cNb397TpQ40uIIazA6Mdt94pobKBCL39u1hm2U5wakWvgyPEzITTYOiqdgYGHPHIDOKMUq6X2aA
	JFME3ZmeTKgDs+QbmRHLZUcf6UOQDAE+12QRmuc20aS7bbQ8lsT7YKW/uUS0KiDK1f5g5twdDpe
	RIbryYSUX5m4sdgTt8uit22mMwieL4uuIh2SVk2HQ==
X-Received: by 2002:a05:690e:1445:b0:64c:9fcf:2ad6 with SMTP id 956f58d0204a3-64e63088296mr11118764d50.74.1773616842050;
        Sun, 15 Mar 2026 16:20:42 -0700 (PDT)
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com. [74.125.224.49])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64e65a511aasm4758390d50.7.2026.03.15.16.20.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2026 16:20:41 -0700 (PDT)
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-64acd19e1dfso3625763d50.0
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 16:20:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUfRtpo01XXMNULxNBc0VhZ3DPlTICRIG2qgLu56O0Zxq0d9egtvUpV/i6Fp9WpZ4uiYKf9Ckrr/iZ5@vger.kernel.org
X-Received: by 2002:a53:da11:0:b0:64c:f871:6530 with SMTP id
 956f58d0204a3-64e63096361mr8599821d50.77.1773616840979; Sun, 15 Mar 2026
 16:20:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260311224044.21480-1-email@sirat.me> <abLNbGUmaA7K0s68@ashevche-desk.local>
 <CANn+LW+F2bVMAGwoF8q9yBpF3x5r_hWDqvE3_JYjcLd16A_cEA@mail.gmail.com>
 <a2486bc7-13be-4567-a53c-b37921df7bcd@baylibre.com> <CANn+LWK2OZ1dm0TAstM2hr6O6h2nEPRrNfje0mC3a2uc0HEwVQ@mail.gmail.com>
 <20260315185715.2f97c496@jic23-huawei>
In-Reply-To: <20260315185715.2f97c496@jic23-huawei>
From: Sirat <email@sirat.me>
Date: Mon, 16 Mar 2026 05:20:29 +0600
X-Gmail-Original-Message-ID: <CANn+LWL85Ot6yrfuNB4qw3YoUJPyE1YD2gf9PPPGoAGv8EOJ9w@mail.gmail.com>
X-Gm-Features: AaiRm53i9h1kwoP9wlywp23JgrxSmvP7tSNKDT_tz5So4h089_CJJFwdpbLmuhk
Message-ID: <CANn+LWL85Ot6yrfuNB4qw3YoUJPyE1YD2gf9PPPGoAGv8EOJ9w@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] iio: proximity: add driver for ST VL53L1X ToF sensor
To: Jonathan Cameron <jic23@kernel.org>
Cc: David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andriy.shevchenko@intel.com>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, nuno.sa@analog.com, 
	andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	TAGGED_FROM(0.00)[bounces-275854-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid]
X-Rspamd-Queue-Id: 6CC75292FAE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 12:57=E2=80=AFAM Jonathan Cameron <jic23@kernel.org=
> wrote:
>
> On Sat, 14 Mar 2026 21:25:44 +0600
> Sirat <email@sirat.me> wrote:
>
> > On Sat, Mar 14, 2026 at 8:39=E2=80=AFPM David Lechner <dlechner@baylibr=
e.com> wrote:
> > >
> > > On 3/12/26 10:12 AM, Sirat wrote:
> > > > On Thu, Mar 12, 2026 at 8:28=E2=80=AFPM Andy Shevchenko
> > > > <andriy.shevchenko@intel.com> wrote:
> > > >>
> > > >> On Thu, Mar 12, 2026 at 04:40:35AM +0600, Siratul Islam wrote:
> > > > ...
> > > >>> ---
...
> Can make it required in the binding. Just explain clearly why
> it should be there.  The driver should carry on coping without
> it though (and leave a comment so we don't break that in the future).
>
> Jonathan
>
> >
>
Just to make sure that I understand this correctly,

I will
  - make vdd-supply required and add a description of what it is.
  - add a comment in the driver like "vdd-supply is required in the DT
binding but we continue if missing to support older DTs."
  - also add reset-gpio description and update the example to include the v=
dd.

 I'll send v6 after a few days.

Thanks,
Sirat
>
>

