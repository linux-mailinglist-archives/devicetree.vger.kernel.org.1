Return-Path: <devicetree+bounces-272825-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IGMH8Sgrmm2GwIAu9opvQ
	(envelope-from <devicetree+bounces-272825-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:28:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0482370AA
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:28:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E85113013CA0
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 10:27:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 049CB390CBB;
	Mon,  9 Mar 2026 10:27:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E9B38F94C
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 10:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773052056; cv=none; b=g9wz2edghbNNpSuMUiZMC0wO501wSy1KsauyLChGaCKySD9L1VI0qkdcuXaIsV925X7sFeYqCx1Je79+/4OdT/VBBJ7JydtBcGrNts/CUuizvolcKjiySffojluvG+XwuHWhId4PyLgV/Jy2lU+0WcqvWqQUEkGcnr8f+M4/fOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773052056; c=relaxed/simple;
	bh=P6s3MH/jJoO7SYO8UAvPe2t0PMXf8YEo0PrAHpGQA6A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pc6BwmNbnbtWaiSkAuaMSouyc/faKAzVKNSWzIPHrRqFcSa5MkBma0BupOnGZM00qUqXXxK9gAG7/bT3daZTUuGPQJNujlvytIaw6NuD7Db5NzQNoS/MJdhXpEFSx543zyUwciNH81a+djeN9od/9/PTJqHIA0/LPAuNe+8KZGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-79853c0f5b9so93299667b3.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 03:27:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773052055; x=1773656855;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=P6s3MH/jJoO7SYO8UAvPe2t0PMXf8YEo0PrAHpGQA6A=;
        b=xVcOlm3xBbv6RNwf58XQlYv10SW7SJS2/Uu+4jFYIllM6AtIIImfnN6w3pp1HfsBwy
         4Tdz4G/E7wLP1N89YkjqoFTZ7iZEyNIrj/zZHEe4zsqSm/ftM51IhaeJeDTNABC388dp
         wQEJ2CCCQn+yACL/SPH+8Kv41LaDQDzUEFy0xszPhq1KWyTS3HubykMbuw5ZzoRZwiA6
         sRf25tWGSxAWJ1rvVgaMuW+0AEcrr3DSIA6HRSjjCqhClalV4JSvSsnTWQcNfg0TMnF5
         Dxlo28oPoUwPb+zPyR5hCCdQ9U5I6Zy8KKgtmPciCP54YHBFxTpdVDzCdKLsod5+HvKC
         SWEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgHy37uWhSNWIP0bvh/FXcF1ORxZYru/V4tLnADZKwrsOs+aeRcXWCjZWxGnLFNLv4vgkOrHO4zqDu@vger.kernel.org
X-Gm-Message-State: AOJu0YziHGFyp6Qe+R/tdZ3gat0CdTIwSiJdHDr0uh1ihQ2pPXgHR5BM
	YXHCNQnlDCCl2z8Ngp8KOnxBp/lVZ/M6ih29Ok4NidEFvV8hd0/PLEal9VnKBpCG6YY=
X-Gm-Gg: ATEYQzyEqi0T64Bc27yKEOB8PHAwvL0UNZzayh6wXsBaBDVB/Vo+dAPMmNlVBFjzWsf
	A1DgIICaQGz5m7Kx3q7a/632bVMCdih23kiNf28W/2BOSqsl9CnwOmRskPx5wBlHi1S5YR33zEV
	MWDL55E9eDmVvzBlds7b+QAjf9+ietaYq4AT73vuuNgvGhsyMDdUalzdgcxcR/CAsXc4IH4Ch8g
	vFxCZQk+dFAGCWTuKSJAhxyjhV1c4WsPl3Yz+OiakqeBxnB1miA3lgBG+MFTN29xGGAEhP0PQd+
	iLk6Sj4lQLrXNUktxyeXVjHVcJWFIS440xYG+f7HnMasHwjHP53hKsQCI5oFdIuCEnHeASyZana
	r0RwjkqiLDVSVKk7FOeI1xAMSUHEmFciZAd2Pf1L2EXqNJm+ykGSOkGpSG4TE0mO8UbqFwBY48q
	pgWCa9ykDXTMWAUTH/rhbsZko3xCLvHB8Zl/tBj9pXxha7UJRr6qkMHr0m
X-Received: by 2002:a05:690c:3347:b0:798:6042:12b9 with SMTP id 00721157ae682-798dd6ae142mr97157407b3.19.1773052054572;
        Mon, 09 Mar 2026 03:27:34 -0700 (PDT)
Received: from mail-yx1-f42.google.com (mail-yx1-f42.google.com. [74.125.224.42])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-798decdd38dsm42899037b3.21.2026.03.09.03.27.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 03:27:33 -0700 (PDT)
Received: by mail-yx1-f42.google.com with SMTP id 956f58d0204a3-64c9a6d7f81so10168777d50.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 03:27:33 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVPgyxXTIwFq+ODg3ADOL8axSpKoG8/zLLb+4HVxzLDvDUN2TE124W6e0FnIMO/PZyWtaOfns4B/5wi@vger.kernel.org
X-Received: by 2002:a05:690e:d4b:b0:64a:fe95:2ba7 with SMTP id
 956f58d0204a3-64d14164dcfmr8540934d50.31.1773052053325; Mon, 09 Mar 2026
 03:27:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260308113728.40860-1-email@sirat.me> <20260308113728.40860-3-email@sirat.me>
 <aa3lRthNn_VnFChk@ashevche-desk.local>
In-Reply-To: <aa3lRthNn_VnFChk@ashevche-desk.local>
From: Sirat <email@sirat.me>
Date: Mon, 9 Mar 2026 16:27:22 +0600
X-Gmail-Original-Message-ID: <CANn+LWKVJgXTTyd4usZcaAzvws1DvzFuQ2Lm9f8xa82SU36DDA@mail.gmail.com>
X-Gm-Features: AaiRm53h6ZH54dnrZHqTiLaAAypfc59YYsLzwVe9xpXU3VKw9p9GkpNrHeAaZHw
Message-ID: <CANn+LWKVJgXTTyd4usZcaAzvws1DvzFuQ2Lm9f8xa82SU36DDA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] iio: proximity: add driver for ST VL53L1X ToF sensor
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, jic23@kernel.org, 
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 9B0482370AA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	TAGGED_FROM(0.00)[bounces-272825-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.177];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,intel.com:email,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Mon, Mar 9, 2026 at 3:08=E2=80=AFAM Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:
>
> On Sun, Mar 08, 2026 at 05:37:28PM +0600, Siratul Islam wrote:
> > Add support for the STMicroelectronics VL53L1X Time-of-Flight
> > ranging sensor with I2C interface.
>
> I'm sorry, I missed cover letter, but can you remind if it has the explan=
ation
> that brand new driver is needed because of ...?
>
>

Hi Andy!

Thanks for the review. The existing VL53L0X is very different from the
VL53L1X despite
similar naming. Trying to extend the existing driver would mean
rewriting most of it.

The VL53L1X has a different register map (16-bit addresses vs 8-bit),
requires a 91-byte firmware blob at boot, has a VHV calibration cycle,
and distance
mode/timing budget configuration that doesn't exist on the L0X at all.
Also, newer
abstractions like regmap instead of raw i2c_smbus.

I'll make sure to add the info on the v3 cover letter. The rest of the
review I will address on v3.

Thanks
Sirat

