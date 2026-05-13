Return-Path: <devicetree+bounces-296883-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDLUJ8OEBGrVKwIAu9opvQ
	(envelope-from <devicetree+bounces-296883-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 16:03:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C2B534A2B
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 16:03:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 349B031411F9
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 13:40:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 880AC2D3ED2;
	Wed, 13 May 2026 13:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1mkykF1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A9C2C2346
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 13:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778679440; cv=none; b=mTsfOXzNdE/GY3HGc6bvkspsq5YycJ2yurQbw1WyKUBMkD+i8pD4GSd9lEaHG69n4xLcaUdrHx+s6XmOsoXO0jQ6LNhHlBme1+1gAciNMwZb/ALFRo/57FP3YW6C7u3uBsSoiW3dW1Xq8BrVyX/pf0dLOgSNjNaKsmv1F+pcL40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778679440; c=relaxed/simple;
	bh=K2K0ZIDmDouzIYjOgQrDHa+obDFg7JDm6ArC3vxrn58=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jk5rTkj3rQIJW0j0eVTSOZKiHXsA5lKiqmqPooicVVv9sFRssEJ25Ex3N8RtKlxcG3DqahYFEPaMaOD7h0WjckAg2zocI2bJRFrVanfAlxRr3iUWSkpgT3iU8zP7Dp6W1euPuUFizy0P2eh/6KLqLEwGt5ESCVk/So0qITG8u4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1mkykF1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EE79C2BCF7
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 13:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778679440;
	bh=K2K0ZIDmDouzIYjOgQrDHa+obDFg7JDm6ArC3vxrn58=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=p1mkykF10sGMcnkI4zGd8+MrvAv07Rpfsg7wnzLYvADPoJxCSZcVKZ9hfsZPAbdOp
	 aOaS0+HYEjjm72bGvt/08o4tg553smMoX86Y4IvYRTHuZ/waEgOET7tXGYrim4xjGF
	 UJ9OYJBBNoiA7jvVe0ToHrH+vm3y4zcYzu6Z3EweI/SQ40ntFkFWgfZ1Pkhf/2anmw
	 BNJR2+sA/h4iaJximBT7QNEOJcIsxDk3/MH0EIM1Uyu1dTSTb4V55q070M/zmHtXPE
	 ncEgoJAMZLZu4Zlv8tSxCDfDOJP4NFgrYEug+dUn/HiK8HAynR4zVOxmGaR4p/exiW
	 hvrfa13vSpqBQ==
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-393da8f389bso68805381fa.1
        for <devicetree@vger.kernel.org>; Wed, 13 May 2026 06:37:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9UtR0lCHZgQHHEH7cjEmQOWLJ1q9YkRmd8OPZKqX/49PguAixS+/cGjOgkMCDhVocLffXHtkl2c7TH@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0WMxiFOu5wQzDFzysWNjtnBxgetgn/q1aINd+BpzC0UTshxYd
	tTB4aDoSJHcwdGowQaMawE5b8xq2nhBX8JgNRTytPAf5ElU68wBCgKlh03rbZbeAh2p49DncxJW
	KHX4osAA+Qxuz+WQjCextLYKAxHLv9es3BPV+xi+A9g==
X-Received: by 2002:a05:6512:224b:b0:5a8:b8bf:f742 with SMTP id
 2adb3069b0e04-5a8ef987a62mr1294266e87.20.1778679438834; Wed, 13 May 2026
 06:37:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260513123758.4955-1-chaitanya.msabnis@gmail.com>
In-Reply-To: <20260513123758.4955-1-chaitanya.msabnis@gmail.com>
From: Bartosz Golaszewski <brgl@kernel.org>
Date: Wed, 13 May 2026 15:37:06 +0200
X-Gmail-Original-Message-ID: <CAMRc=Mc=kcWv1Eo=Z5j8C+O49skeLfsBOB+rEZBF=Gy-VwLC4w@mail.gmail.com>
X-Gm-Features: AVHnY4IFyN40KMvyDcVQAeiIe3pL67V2UuNqra_cNWQHkSdc-tBvVbPq0awIgIc
Message-ID: <CAMRc=Mc=kcWv1Eo=Z5j8C+O49skeLfsBOB+rEZBF=Gy-VwLC4w@mail.gmail.com>
Subject: Re: [PATCH v4] dt-bindings: i2c: convert davinci i2c to dt-schema
To: Chaitanya Sabnis <chaitanya.msabnis@gmail.com>
Cc: andi.shyti@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, bartosz.golaszewski@oss.qualcomm.com, 
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 31C2B534A2B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296883-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 2:38=E2=80=AFPM Chaitanya Sabnis
<chaitanya.msabnis@gmail.com> wrote:
>
> Convert the Texas Instruments DaVinci and Keystone I2C controller
> bindings from legacy text format to modern dt-schema (YAML).
>
> During the conversion, the `interrupts` property was made required
> to match the strict requirement in the driver probe function. The
> custom `ti,has-pfunc` and `power-domains` properties were also
> properly defined to match SoC-specific hardware features.
>
> Signed-off-by: Chaitanya Sabnis <chaitanya.msabnis@gmail.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> ---

I left my Ack under v3. Please keep tags when resending.

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

