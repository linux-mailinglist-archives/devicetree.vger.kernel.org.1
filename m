Return-Path: <devicetree+bounces-261156-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCDBAQGLfGnSNgIAu9opvQ
	(envelope-from <devicetree+bounces-261156-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:42:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DA2B9713
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:42:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B34A7300DE13
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:42:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 075CA369980;
	Fri, 30 Jan 2026 10:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2nUC0O/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E553542E4
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769769725; cv=none; b=EOQ4Yz9dv/G0QFk044jIqu2B8yIBquC0BbFrj52FguvR86Mx7umggt0rMAs9NxIcLrYEireFDwmIaLNBcP3857nLA7NLTPEP5lTdupxLDvQ4we3w3cer57HZeh6sfpIJiHMxaMf6Ns2VA07rmAeLL9bVwjMep/sGoXTOPkE8kPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769769725; c=relaxed/simple;
	bh=mixqSyE4GJ/1/2SdrRK2V9d8QLmysNZCs0DF9IiRjlU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CisiPaP0bNYiEcPcOkEG2zQNuzH5mJexMtiZ2T3uw1efToAzKXgPVgE3LDve8E6oR7iDTOuZGub28RkEUWNVBnezEyqKWc2AcVZSaAK8FY5nTCfNjqoB+TrAxzuytkast+ZGu6Tvx6IJSz27SKdjvijuZdv+XcMSLnW6/L2PaJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2nUC0O/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69896C19421
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769769725;
	bh=mixqSyE4GJ/1/2SdrRK2V9d8QLmysNZCs0DF9IiRjlU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=I2nUC0O/+3dPCgChtSioyZmjO0exa/aPfRMHtKJYo9FZnNtGSV/XtM4Wyy7g9I4E1
	 YX7bvjFBMFtpAh6J0DHePKcZE3qlyrWP4kk0Q2VzVSM7n+Kpwkt7RMoiuLZZwggpQu
	 4fiZSwEuYk9nTO01/jpYrGKWEce3+nAzLi1Uww+qzfcuE+pjQw83TT4Cld5VlyDxr4
	 4xUenYI4syfe1VMaX/JDONi55WiBjyGuZCBAMbeCX+VPQ605/o48hgMN5r5nDXkHWk
	 WsGRXc0Ksg0Au6qSz3pAXMXLGbvxlsvOneO2FsHViZof6bm5DPu5QXD+YPLLZWKnZb
	 hrxUS6cUPuGWQ==
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-6495d592b58so1880643d50.2
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 02:42:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXtHixotoxclhzePEU//lK9u77tE2TbiimyYhbqZe8oY+h4EBhgwfMxdYjoqSVnwlE2fqMeBo8Xfm87@vger.kernel.org
X-Gm-Message-State: AOJu0YxgN1SejECSzTah7fxfp0wm7XqqfwHGIZBl2lugtCQHAqCLgckl
	HGbX6S9RtHFitco7SrxPkHtrsZNrrmxpzqBP92R4oLC5NMjzehIwQzVt2zMsLWNXnTOZVmTtdNO
	ESZYO2zN+dfug/OiVQALXUdNYMkNUp1Y=
X-Received: by 2002:a05:690e:11c8:b0:649:aeca:a1b7 with SMTP id
 956f58d0204a3-649aecaa2cbmr253531d50.61.1769769724755; Fri, 30 Jan 2026
 02:42:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260129155633.3985-1-antoniu.miclaus@analog.com>
In-Reply-To: <20260129155633.3985-1-antoniu.miclaus@analog.com>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 30 Jan 2026 11:41:53 +0100
X-Gmail-Original-Message-ID: <CAD++jLncjxEr=QsJiwHNA1uAFGJQHN-GXis5AJdFtzg38pStOQ@mail.gmail.com>
X-Gm-Features: AZwV_Qjs5cVupluor4mOsxG0iknXlF1R-VKCQmFxwyT2gksGWltdkVTIE34Tc0c
Message-ID: <CAD++jLncjxEr=QsJiwHNA1uAFGJQHN-GXis5AJdFtzg38pStOQ@mail.gmail.com>
Subject: Re: [PATCH v6 0/2] mux: gpio-mux: add enable GPIO support
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Srinivas Kandagatla <srini@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Johan Hovold <johan+linaro@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261156-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,analog.com:email]
X-Rspamd-Queue-Id: 46DA2B9713
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 4:57=E2=80=AFPM Antoniu Miclaus
<antoniu.miclaus@analog.com> wrote:

> This series adds optional enable GPIO support to the gpio-mux driver.
> The enable GPIO allows the multiplexer to be disabled before changing
> address lines and re-enabled after, preventing glitches that could
> briefly activate unintended channels during transitions.
>
> This feature is useful for devices like the Analog Devices ADG2404
> (4:1 mux) that require enable control for glitch-free operation. The
> binding documentation now includes ADG2404 as a supported device with
> a dedicated example.

This version of the patches look good to me!
Reviewed-by: Linus Walleij <linusw@kernel.org>

Yours,
Linus Walleij

