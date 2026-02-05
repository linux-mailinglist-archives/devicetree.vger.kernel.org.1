Return-Path: <devicetree+bounces-263047-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id jNkSLMGmhGnV4AMAu9opvQ
	(envelope-from <devicetree+bounces-263047-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 15:18:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EED84F3DE0
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 15:18:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 607793003D2B
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 14:18:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48CB53EFD25;
	Thu,  5 Feb 2026 14:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="QknARNu0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com [74.125.224.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 830AB3A9D95
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 14:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770301119; cv=pass; b=teUNU3AIiRCL9bTb6uqtQq+JikncQTMUUixBO4yHjDma//2jj+2L4Inr4XolDnYmlBn0qobWVv/wijkkNFLOyv4xwiJxY8Ax0LWalaMKE3jJEiI0y89zOtHvzecYz/okdznKo2D9bK5BMmwg++bMirvFOyvGnom2plPtJ35emj8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770301119; c=relaxed/simple;
	bh=13/yP5sugD1T4wa1KPYaT73Fe/1mMh07j2CgQxCEiIU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gyH1MMVJE/DeD3LFI0SpaDlYbOFAVoCvrvYJloZOWRW0XCmOGt1L3GglsBJO4Z8r4UIWjIB1qDmWuhNjud9KN/fawOIX4LAI/00eAt3a5cYXBTNJWC3lJQNLJ1QJ222QASZQD94+VMMFcwZrm99e1IB06dlvHSUIK50wL5oSQl8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=QknARNu0; arc=pass smtp.client-ip=74.125.224.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-64969550a1aso1106967d50.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 06:18:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770301117; cv=none;
        d=google.com; s=arc-20240605;
        b=XeeuNQfhBjN8in+Iwbw919lO/UZe8oYUTsB4HM9/FcsGaJEzgWJrCRzyjs0mHEIvf4
         Tu6K/okZWWmJP24ioc7RLw8JzAIrBSt29j28vMEMvVFYVIKSxDW69DUujghYasezmRuP
         lIaJcXGPi46On70qwGL4/ubrZCHNd0nowf/2znAtsjyqdW0s4Cq18MIyL1wUfs4Lp6GU
         T/5K6UTailJvAnolpz0g0aUmZgOH6DgjJ+fj1HhH7d3FbiS0M3Ipd+44QaIxENzMO08D
         nyoXz58eaiD1oXV2YNhfV0qnPmXQ88e7VHKQKIeiudZs3VUusRaAe0/9Ax7J7Bw+1dRv
         8+Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=FmzX7miFPHenGmKgTxHym6piSGjO2BEbSWKlfsS546M=;
        fh=s0z9yUa8N25ehKo2tgBjuB0j2KTiAN4qjhEwwmBgGwQ=;
        b=TThR+zdD0JYRDk6gxAFyDnu+55GacQJ9AZo7nPKhlEEbes/i03FXMs1Oe2IIDT5/lK
         iKFy4o3MgSEps7yxl/AS5czkKv9bPxbtADgwr4brXYmUdzu+xG1u9g/SV7jtCJvOap3Y
         kjKM+3ctQeVjq7NpvxcRmU2dw02fXP/pri29QwzWQW/79dxGXUoD2tvtM7jAzABaweJ/
         Tqdn/cT1lgebce/5YCM/E38lEXS9nro/GPB8fbucW7fdCGUWw/K+jD5EeFU6Sb8KwQhe
         P7yJJtvC8ZfzGXHHkOGbLzs1XiRSvUIGh9b7E3bWAL/wCw703mNgIiEakC4Tba5g5frE
         XD0Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1770301117; x=1770905917; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FmzX7miFPHenGmKgTxHym6piSGjO2BEbSWKlfsS546M=;
        b=QknARNu0j+XhP/+qePBd1kSekNUhuw2gujmqmZ92bd5R3Qw8+URORQJvYFqo0UIgNi
         pkYtoFsi3TRa4cJGdC4pYSkfQzs/U725ybPsngHRqqxHHtloiBCCtwr2po4zMGfwvYzi
         fsTufLrMHyt/PKyD5yLCRM5yrCwg5zOvA/vmWovi7rF6rq7pKSqtH4Fo8YehMatJLDBj
         9IvNL36acxtJA3TcM4agTL844UY9ShK6FfiE/UFb4eASDVxVMQb/K5ML9uPeU/THx/jK
         VfBwCvPxCEaFdu5/5LZbIU51ZfMSK0NxCVR3twOfmoIWGf+s3ZGXe1/sCAQZMNw+JyoX
         Vfxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770301117; x=1770905917;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FmzX7miFPHenGmKgTxHym6piSGjO2BEbSWKlfsS546M=;
        b=QxZwrnYO6k/TZoWD0J2EZwiKHh6umSsdIQ/2eXl2WMfuLGA2zWwFqnt5FbxTWak7He
         CgqpnrziA7pp+BB92JVDLdQvrC0xQQbJPoaazUYcyK57rHvI9GUxUOlG/93PYl4J2rxI
         tWRwbA0rvgQ4wnIczpu8295upx3tgcEIhWRVolPgjBbMmhoxHoiuO/AGtMLFCZLnknui
         yjjOC1Wdt4ItlVqN+uhol5GBRUbN9s4aM77u6g7evP192w478KNFaiUnjgE01yA86usP
         FvyWhwgcwbJncQk3FKbNCcxMzR/GPLlrA5hvc2Vr1V1Ku/Wan6kLABLplBY0R3JZ1f2m
         WJ+g==
X-Forwarded-Encrypted: i=1; AJvYcCVck8GX1XmVL2sUkjyXGjTj0hPjaFDhg9A98kUiNfaSZAUrXkAvOZWwGt4h0JxZufLpyEagb/42B7ZT@vger.kernel.org
X-Gm-Message-State: AOJu0YxYzYOTPqHOSeawFU+BdhSwVLCfM1Gfjsaw0nuZXmlM4GJ1mXhm
	67Mm3cmF401CACWARUSkajNxgTvYiAoyF38kClkzi4Rk9UvKlIUqiGLbTsnBMcZtlBn8mOFamLs
	WF1zDn6NlqE/ONvxkh7gUphBb6hka7PFWEGfmmrJA4A==
X-Gm-Gg: AZuq6aJgnkkh3uLU3iQpZJUklBeemsY9gcS6DyxzGboV/msqpiAs3hc0D2T7f58Atqu
	cvcjR6nOd0Cj2+FoLEe4rqntsJAH2DVdjeG+JboOq12GkDWHTv7KTyhgPtcsCRsDxb5znzygFNF
	V4DuHlxoRXsDenxLRkY8E338QjpIdNw7vKg7wEqFEk1ih9TXJB1MDct+UFPuQoVX/TVfvLU+X1E
	azsba6V9dvjzox/T0HxFkqgg4YN7emV9u9ginearNN/01EsrNxqTzuz0Pknf5ZxVNj7fUvh0weV
	LFlKyWk7TTg08MhMQvuxq2C5GsEbOp3H7zXR+gUdfWHLsGXLukJAfYFWeZWi
X-Received: by 2002:a05:690e:400b:b0:649:deac:3a4b with SMTP id
 956f58d0204a3-649deac3b03mr3774253d50.53.1770301117363; Thu, 05 Feb 2026
 06:18:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260202-atlantis-clocks-v5-0-0922e43acaba@oss.tenstorrent.com>
 <20260202-atlantis-clocks-v5-2-0922e43acaba@oss.tenstorrent.com> <20260205-spiffy-bizarre-doberman-184d2b@quoll>
In-Reply-To: <20260205-spiffy-bizarre-doberman-184d2b@quoll>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Thu, 5 Feb 2026 08:18:26 -0600
X-Gm-Features: AZwV_Qjh73GzJRPJHTYqtWlvnk8u0Q7TIS1RXBqh4qKkHh3LKjQLN6cuUSeiYrU
Message-ID: <CAEev2e_S9LYV609VmrHCqNneuTro=hbAjzgHFLAO6RD0_fErwA@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] reset: tenstorrent: Add reset controller for Atlantis
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>, Joel Stanley <jms@oss.tenstorrent.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, joel@jms.id.au, fustini@kernel.org, mpe@kernel.org, 
	mpe@oss.tenstorrent.com, npiggin@oss.tenstorrent.com, agross@kernel.org, 
	agross@oss.tenstorrent.com, bmasney@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263047-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EED84F3DE0
X-Rspamd-Action: no action

Hello Krzysztof,

On Thu, Feb 5, 2026 at 3:27=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On Mon, Feb 02, 2026 at 01:46:50PM -0600, Anirudh Srinivasan wrote:
> > diff --git a/include/soc/tenstorrent/atlantis-prcm.h b/include/soc/tens=
torrent/atlantis-prcm.h
> > new file mode 100644
> > index 000000000000..841516cbefd9
> > --- /dev/null
> > +++ b/include/soc/tenstorrent/atlantis-prcm.h
> > @@ -0,0 +1,31 @@
> > +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> > +/*
> > + * Shared definitions for Atlantis PRCM Clock and Reset Drivers
> > + *
> > + * Copyright (c) 2026 Tenstorrent
> > + */
> > +#ifndef __SOC_ATLANTIS_PRCM_H__
> > +#define __SOC_ATLANTIS_PRCM_H__
> > +
> > +#include <linux/bits.h>
> > +#include <linux/types.h>
> > +
> > +struct atlantis_prcm_adev {
> > +     struct auxiliary_device adev;
> > +     struct regmap *regmap;
> > +};
>
> Drop, there is no driver-wide user of this.

>
> > +
> > +static inline struct atlantis_prcm_adev *
> > +to_atlantis_prcm_adev(struct auxiliary_device *adev)
>
> Same here.
>
> Do not add symbols to headers which nothing uses. These are private to
> the driver so they must stay ONLY in the driver.

The definitions in these files are shared between the clock and reset
driver (which are in drivers/clk/tenstorrent/ and drivers/reset/),
hence they have been put here.

>
> Best regards,
> Krzysztof
>

