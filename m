Return-Path: <devicetree+bounces-269265-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFJlO+6moWmivQQAu9opvQ
	(envelope-from <devicetree+bounces-269265-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:15:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F041B8960
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:15:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 05C0931AB785
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 14:08:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86926421EEC;
	Fri, 27 Feb 2026 14:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Sr7DMt0Q";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="boXpR4hS"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4729C41B35B
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772200996; cv=none; b=NIIWE39Ah4QuramAHWTmbi+zoVqwq0Im3J+X8AnLmV0y0KGEKrdTCNEeoAJAxUWmHtLIn1Zeap+hTYgUveZEwPu5APsAob3vWJyP/q8ot0wAH7vBWAOL8XipE32KQMUIWJ8c/ZUxl5qrF5hwdxQifYxqeKN0hA03L8sxWVV+HXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772200996; c=relaxed/simple;
	bh=B7fHy1cGZkNQ2wdNUr90lrf+1d59/jJ2MVkVEhWoe5Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xi9OdXNYbIrKpSMiVoSH3zHVg+itRhCmk2BHseVF5FsZ3PH1uw5LFF0+mF9MO/xwogPnh8lcAYxpDW60VZtHTxb+QLOS/SDfPOQzHiFvvPDPmZgYsPp7Mh5tf+kAc/HbHnO6zu80z+DExyM2BcbWnOy59pzQOvfMMEyp9EtTwAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Sr7DMt0Q; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=boXpR4hS; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772200992;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=oV2BIg3dhsX9PonNzGGB5cY2QemaB9h/4eyj8OI7C6o=;
	b=Sr7DMt0Qf7a4MHqdkKNmmGBCUsZYBIUB7kPwn3EeWNYIb2+TgpcqtCw7uxP8DPKVw/Kmed
	RlmmTiMbns5BkT29HHV8I8MefoqSzTVIMoxSxDyOtqVHeO/8zzU4/PZLUz9Boimj6g72i6
	fM/FEr22Hiz8LzoqmynD0YCUea/JRYQ=
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com
 [209.85.216.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-2-3M91gbd6PF6nHp_C8PJ9WA-1; Fri, 27 Feb 2026 09:03:11 -0500
X-MC-Unique: 3M91gbd6PF6nHp_C8PJ9WA-1
X-Mimecast-MFC-AGG-ID: 3M91gbd6PF6nHp_C8PJ9WA_1772200990
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-358f8b01604so7287834a91.3
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:03:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1772200990; x=1772805790; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oV2BIg3dhsX9PonNzGGB5cY2QemaB9h/4eyj8OI7C6o=;
        b=boXpR4hSfhQlKeGSFZlV+YZuPVp1AqjnLT6UMdf4CNueczybmSHAtwmH6NZSN3O42o
         D75b21dGmBw17Y/Dl9nkh0KlSH3+/6cGaYWGwdx2RyAUhvxk/kspWkgR0N0qYMBLDcNf
         /mhwQWBB4EKSdYiAebbvEmNl+fEgK7TEKGbSLZ5eP+pgiuBK1rIT3yPHy5wcSTlWbrLf
         vr52uasLVVG7RFh+ovMdT4h2sOCywSAKI91vXKA3bTfRdMG8NPUeKJBJKBh7q0yZUNQd
         zAnLA1XeTpVWguuuahhSXhOfKfrVu7IHVwnTWCzg9wEX7CFlR5YndbeEJUjlgyQN0rok
         k4xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772200990; x=1772805790;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oV2BIg3dhsX9PonNzGGB5cY2QemaB9h/4eyj8OI7C6o=;
        b=VzRtDFTosnW2VUi163DH0fdJR4V9f5muvI2EKk1U2JA/n77GwcRW4+dDJmqec2pQTf
         PIUVpC+K4f5V7ihrzfFGjd2PW+i2QBhwejNE5qv6S10CCQOH58Gv/nPwN4g1sXW8TPhB
         7YEP6NqWqIJJB6tV6BNVopD0CjspljbjEmAyAiE3KgbempYt/NpK3sVVFDGbwHMulCYA
         1GkuOq6dD9a0knfx05BjWPHKslg2YlCOrz4OYvfTo9yTQg/BqpO/fBpy3WbvkYOcdXMh
         Qg5jLEJktHNr6UDCcCU994cTHAHkdq4zmz1A+pdjrOcTkodNvalEwFV9zN0SjhInpZfJ
         Hrbg==
X-Forwarded-Encrypted: i=1; AJvYcCXzSBy08UzI+Kqsftq5ivoynAll+vSqW9WDT6mobaTlpqAyutHUKogWkqJq+5rnRGCIVvER6J/1xDrB@vger.kernel.org
X-Gm-Message-State: AOJu0YzUo//eATAAwvTdk7cl3dhzltLQzwz4R14Ktz/tckdAtqT8snQW
	tsdFOw9Q/n+Qm/T0Jj8dqN5ESj1BDVO3ZiZWkWNuzrCuKUpkXS60D2q/J5ETTH+4D8LUMYd66v2
	ITz4w0XBvqvonv31X4Sa0x0t0sU5HeutlREDgspi5VoEBYCJHFcfEwbb1kk/SCKg=
X-Gm-Gg: ATEYQzzbiFke8M+1BpcOdLp2UuGGbVL0LfENN6CsvRpRmXKv13P/j3GHe8Ut7K9pkta
	BQ5EonTco5SBlnl6YdTtPHB6KChnXHmT7v4vXawY9korruHhHYxK7LPHa8wh6VBmySaRvGvR7AC
	Srlb+2VF2coZSL4ASfgj4/1TKZvnIWh0yfahmptkBfF3YlwJrcl2XbTecRZdAAQFyC74wj3YeBI
	N2cU6YAaPyi7iWO7OTgJQ2Wyc8ou/RfPgWAfgZGXIKVbhTxeGxRyr+T9W2n/HtPlqFJO7Kg9c6P
	XQL2EWIRCqEsAdmjTpXfQ01Lw1pGFNm8f5hgzjACAMznsV8XAhPNhiPyWo4/FfcXJtV64vOs/MX
	k4mstiven4wzebN2y2OuaohwXbzgzoEAFRZ+z4TSonf6KC5uEkfo1ng==
X-Received: by 2002:a17:90b:5710:b0:341:88c9:6eb2 with SMTP id 98e67ed59e1d1-35965c3385fmr2137029a91.1.1772200989865;
        Fri, 27 Feb 2026 06:03:09 -0800 (PST)
X-Received: by 2002:a17:90b:5710:b0:341:88c9:6eb2 with SMTP id 98e67ed59e1d1-35965c3385fmr2136984a91.1.1772200989423;
        Fri, 27 Feb 2026 06:03:09 -0800 (PST)
Received: from jkangas-thinkpadp1gen3.rmtuswa.csb ([2601:1c2:4400:eb20:99f3:ffd5:11da:6745])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35913269232sm5305497a91.5.2026.02.27.06.03.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 06:03:09 -0800 (PST)
Date: Fri, 27 Feb 2026 06:03:07 -0800
From: Jared Kangas <jkangas@redhat.com>
To: Larisa Grigore <larisa.grigore@oss.nxp.com>
Cc: gregkh@linuxfoundation.org, jirislaby@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, sumit.semwal@linaro.org,
	christian.koenig@amd.com, chester62515@gmail.com,
	cosmin.stoica@nxp.com, adrian.nitu@freescale.com,
	stefan-gabriel.mirea@nxp.com, Mihaela.Martinas@freescale.com,
	linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	s32@nxp.com, imx@lists.linux.dev, clizzi@redhat.com,
	aruizrui@redhat.com, eballetb@redhat.com, echanude@redhat.com
Subject: Re: [PATCH 00/13] Add DMA support for LINFlexD UART driver
Message-ID: <aaGkGwbk-sh0YJqj@jkangas-thinkpadp1gen3.rmtuswa.csb>
References: <20260216150205.212318-1-larisa.grigore@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260216150205.212318-1-larisa.grigore@oss.nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269265-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[linuxfoundation.org,kernel.org,linaro.org,amd.com,gmail.com,nxp.com,freescale.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev,redhat.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jkangas@redhat.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 83F041B8960
X-Rspamd-Action: no action

Hi Larisa,

On Mon, Feb 16, 2026 at 04:01:52PM +0100, Larisa Grigore wrote:
> This patchset enhances the LINFlexD UART driver and its device tree bindings to
> support DMA transfers, configurable clock inputs, dynamic baudrate changes, and
> termios features. It also includes a series of fixes and improvements to ensure
> reliable operation across various modes and configurations.
> 
> The changes added can be summarized as follows:
> 1. Fixes with respect to FIFO handling, locking, interrupt related registers and
> INITM mode transition.

Tested this series with the default devicetree configuration by booting
the board to a login prompt about 200 times. Without the series applied,
I was seeing a bug roughly every 30-50 boots where the kernel would
would hang in linflex_console_putchar() waiting for DTFTFF. In my tests
with the series applied, I didn't see any regressions and the bug no
longer appeared. Thanks for the fix!

Tested-by: Jared Kangas <jkangas@redhat.com> # S32G3, interrupt-driven

> 2. Removal of the earlycon workaround, as proper FIFO handling and INITM
> transitions now ensure stable behavior.
> 3. Support for configurable stop bits and dynamic baudrate changes based on
> clock inputs and termios settings.
> 4. Optional DMA support for RX and TX paths, preventing character loss during
> high-throughput operations like copy-paste. Cyclic DMA is used for RX to avoid
> gaps between transactions.
> 
> Larisa Grigore (8):
>   serial: linflexuart: Clean SLEEP bit in LINCR1 after suspend
>   serial: linflexuart: Check FIFO full before writing
>   serial: linflexuart: Correctly clear UARTSR in buffer mode
>   serial: linflexuart: Update RXEN/TXEN outside INITM mode
>   serial: linflexuart: Ensure FIFO is empty when entering INITM
>   serial: linflexuart: Revert earlycon workaround
>   serial: linflexuart: Add support for configurable stop bits
>   serial: linflexuart: Add DMA support
> 
> Radu Pirea (5):
>   serial: linflexuart: Fix locking in set_termios
>   dt-bindings: serial: fsl-linflexuart: add clock input properties
>   dt-bindings: serial: fsl-linflexuart: add dma properties
>   serial: linflexuart: Add support for changing baudrate
>   serial: linflexuart: Avoid stopping DMA during receive operations
> 
>  .../bindings/serial/fsl,s32-linflexuart.yaml  |  31 +
>  drivers/tty/serial/fsl_linflexuart.c          | 972 +++++++++++++++---
>  2 files changed, 846 insertions(+), 157 deletions(-)
> 
> -- 
> 2.47.0
> 


