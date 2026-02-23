Return-Path: <devicetree+bounces-267345-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCwIKyQunGkKAgQAu9opvQ
	(envelope-from <devicetree+bounces-267345-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:38:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A41917501C
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:38:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 806A63048B1E
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 10:37:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6890135C183;
	Mon, 23 Feb 2026 10:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Bcl64j3b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0639E34FF41
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 10:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771843067; cv=none; b=tUSl94toDdwYrWnCgIs01+F16z4UUZPwniZ/1+kFuSDEocQSwOzyZw/PTl7Uhh7ZZm/p7qavZoWrI2vtTCM/ijoPCTBeczr6pY+VO63CrJVXJuomclxaFhsQSYZ+PesZNR73DFhnZ2KNfjR0S15eyD8dFNKEMGadmEQFX58Lg4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771843067; c=relaxed/simple;
	bh=zT1ymARhK/pXKsQRMgVO73M73Z/1yu0UpdoXBvjpeyA=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J3GgDxhZECE2sbaLzcMgWRQ0BWN5ixDI7gfT3i0AIsMV/YFHY2PE5MUM3uAm+ewpBwNu/HCdZx+H6rKgheQYY8XWUL4bq13SMnPD/BSfV8B1neCB6hACdiGnx+1NhXBmoFggjv9xXfL/xx9jtwmtjdloOxjdaiPs2ZMEgnW4Aws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Bcl64j3b; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-483a2338616so25940495e9.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 02:37:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771843064; x=1772447864; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qSdtkc+pH53KLgyifPEPmqXMhFd02h+G9d/1irb/6Lo=;
        b=Bcl64j3bWDypWKDIgmmaiEBFOYqwpTTMvBU/4kmVeXcDb/aY1LCSGkGXkHUOHSsrCe
         6gyo8z57OW0qbT9mPBHEQQrQmvBbNlZdRlYM7VAUtBx2F4fLU364qvCcOwoAkGqC+0hO
         Wjt1eQDUQ6OPD9KWaZhsvlKEtur776UVbdojffEc38BhjTRHTUSXmOM8fK/3dSjAYUUW
         S85B3WROJ5Er3W74uTjPx3sEEAgju8+jvhTTjpkK2EqvlPlVqv/C8t/pUAbYd/+D+gXO
         OdviQl0FsvjpuTskSzJ3p8lpDwbPm0Q4J0A2ijPeRop2piIr7rP5mrRLD8oR5/ovhsKC
         48vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771843064; x=1772447864;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qSdtkc+pH53KLgyifPEPmqXMhFd02h+G9d/1irb/6Lo=;
        b=jm/MxuVEbHIAALPpA3lk8jbW+8yQ0Sm3zMaZqKmK5psawaG2i1WI2sgtBFBw/wBuRN
         edFQ9DGEpgIglKTTtt4KFhPotcBkqRlwhBfzMEmSBzTBYBRIkV85czVWglHWdOjbh5SY
         am9Kn+hi4utOAQ2RwYEzyBkfhVCyNHfIDhCiRa34RPdW3JvK4tgfzfxlF4bc36lt0kw2
         8+7VKoyg7+lu5+PSAd50gju2LQoEx/oJR6yhIlE1cHoHLCbk3a49pgSBJqCOM224T3cV
         6sYQGwEEE/vzBKH7Rvjy7LZgQp7DN+iWRKlmZ9mNmbFEasav+xTo9Jm0HaUgYq84RPDN
         xxkA==
X-Forwarded-Encrypted: i=1; AJvYcCXwcxMv8eHDg7/wG96zi/UdwO7mSdK9SXZDu8wM8opck7/f82+Wv0+pGKYMBy4eilBAKKZy4h0kXltR@vger.kernel.org
X-Gm-Message-State: AOJu0YwfEKZagbp3fNbH5sk0fCCw1Zjv/qzFO9zDrQeBFx9sJxzUV6h5
	5j5Q44rlLGsAR6p3LcYQ1HvBi48keVQ2Vk3KMbgzVlhQEhK26RulkWxX1AmnTg==
X-Gm-Gg: AZuq6aL9dd/UO5bBU3uMunGcdFgKYKIGWxZckBpOipX3GWzj9R5fFZyese54bEgoGeu
	BaWzH5fGMo7Yl//GKX3q/gdg8LcyZZD9Q++r7Q7NNnE/eNGjheZsUrec/e7XqN5iP3cgEaEzV6J
	PKfNxLEajHPO6Nq3JT4+8GJHtRBO06XqYCw0f4uiM8ADa5Ve5PvFMKs8a+uZnTAq2zCWGxf07FX
	9EfsHBlyYHleKzzCfSXDI9qLzyAF1GD61edhZlGumCr98BOe3Or6yh13l8QgHE8Zwwas5SJwsNP
	d9KOBMiuvQtocv1WZAcSM7j3Q+6DGH8lKCgSq+hAOX6Me7umkxTp7DWiXADw/UJEYgnSxx97/Rq
	5naHkaVpkXyuHG/weuoW20K50GJYRxZ9wYHfxtQr6TxrxFtToxt89OpyvltgQHaO6aTjzWnkeG2
	xpIxeGurV6zvVAuoNCYiycNFxjVaF2rdaUFxEwUsrKLuWIH/QhxRtj5NRMa69BBJDafEDEGc2Rt
	uc/VOsa3Dm/YtPqlhhhR1LzjfEL66v6Vm2o6H8KIXE08wm6eDkPF30/um9t2w==
X-Received: by 2002:a05:600c:c4a2:b0:480:20f1:7aa6 with SMTP id 5b1f17b1804b1-483a95e96e4mr123633655e9.21.1771843064096;
        Mon, 23 Feb 2026 02:37:44 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com (24.206.116.103.netskope-rdns.com. [24.206.116.103])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a429e49csm132820845e9.4.2026.02.23.02.37.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 02:37:43 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Mon, 23 Feb 2026 10:37:36 +0000
To: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	Jonathan Cameron <jic23@kernel.org>
Cc: 
	Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>, rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Dmitry Antipov <dmantipov@yandex.ru>
Subject: Re: [PATCH v7 2/8] iio: core: add fixed point parsing with 64-bit
 parts
Message-ID: <zb752y7tnjzsc35na572o4sip6efwv3i4lha4ls6fhdrr52h5v@bfgy65cmae4p>
References: <20260216-adf41513-iio-driver-v7-0-b0ed387ab559@analog.com>
 <20260216-adf41513-iio-driver-v7-2-b0ed387ab559@analog.com>
 <20260222172912.60a103c0@jic23-huawei>
 <aZwYshRxNgSh3CWk@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aZwYshRxNgSh3CWk@smile.fi.intel.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267345-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,vger.kernel.org,baylibre.com,metafoo.de,lwn.net,yandex.ru];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:email]
X-Rspamd-Queue-Id: 5A41917501C
X-Rspamd-Action: no action

On 26/02/23 11:06AM, Andy Shevchenko wrote:
> On Sun, Feb 22, 2026 at 05:29:12PM +0000, Jonathan Cameron wrote:
> > On Mon, 16 Feb 2026 15:02:17 +0000
> > Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:
> > 
> > > Add iio_str_to_fixpoint64() function that leverages simple_strtoull()
> > > to parse numbers from a string.
> > > A helper function __iio_str_to_fixpoint64() replaces
> > > __iio_str_to_fixpoint() implementation, extending its usage for
> > > 64-bit fixed-point parsing.
> > > 
> > > Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > Hi Rodrigo.
> > 
> > This looks fine to me, but given earlier discussions I'd ideally like
> > to wait for a final review from Andy.
> 
> It all depends on the series from Dmitry Antipov.
> Can somebody help reviewing the patch 1 there?
> https://lore.kernel.org/linux-hardening/20260212125628.739276-1-dmantipov@yandex.ru/

can we push for the exposure of that function to kernel modules?
We have discussed that in v6, and I understand that:

EXPORT_SYMBOL_FOR_MODULES(_parse_integer_limit, "industrialio");
in lib/kstrtox.c;
 
#include "../../lib/kstrtox.h"
in drivers/iio/industrialio-core.c

is not a good call...
 
> When it's in, we can continue on this one. TL;DR: for me this is on hold.
> But if you see the need to have the driver being in IIO, please add a big
> fat FIXME to make sure we will get this all being sorted out in the
> (nearest?) future.

I could add the FIXME into iio_safe_strntou64() doc header. It explains
the context:

> + * The implementation of this function is similar to _parse_integer_limit()
> + * available in lib/kstrtox.h, but that header/function is not available to be
> + * used in kernel modules. Hence, this implementation may need to change or
> + * removed to reuse a new suitable helper that is properly exposed.

-- 
Kind regards,

Rodrigo Alencar

