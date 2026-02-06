Return-Path: <devicetree+bounces-263344-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGQQJPbihWk9HwQAu9opvQ
	(envelope-from <devicetree+bounces-263344-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 13:47:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 001BAFDB2D
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 13:47:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8F45F301588D
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 12:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F0013A1A36;
	Fri,  6 Feb 2026 12:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1DU+eoP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1095125A0
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 12:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770382066; cv=none; b=MSLlN4ELN2VqLkqlg6dZYdZMzbsEwUCVLM4YsN1oFaWZzlQ5ZHLwtFkZu0+/gMGdcsoFnyI5T3BQXvwqtFMLwvnBs6n3nhpiKYDEF+Z2U8P3SBP7y9nMdxrr20dUi0orlV0SK7ETK9OHXkEwMwEzveBPTTjmWNRnpXjWaIH6Ouw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770382066; c=relaxed/simple;
	bh=DmYewFQkG8Br+yJkli7xvaJVDKaHxnJu52vf06s7BMU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GtNijF/hPlrPVoZBlD7HPoHCzX6mshMDqpSoyeKGLHlYi6f45OSJJGk5WyZsMIi7BlYPrHNZ0CKnQnqIIDFnxg3Ev9iVCDWYitj237G6o5HOxHEFtChnWN/VNtCxxZRKS6tHJwa+qqssUZt3rGwN3OJMFC8LmcT194Qn2WeiNHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1DU+eoP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A931DC19423
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 12:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770382065;
	bh=DmYewFQkG8Br+yJkli7xvaJVDKaHxnJu52vf06s7BMU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=K1DU+eoP8rIZpSx/tmtvQZiBNZ0PIui62dlkjpjAcpO4Cjt/RXugdT0t013M4RlSP
	 MYOOOcXe7zE7QJ+JkRfLFQZCLusuABWp+yBM5hToI88UgsM3PL6F/CPVldc2FxWf4q
	 RveHxLyhYSpjQflpkTVPVLnjW43ezUNkT2MW5xmIeOQGOK7S10gyAZfmlEnmpUqvQc
	 HG0CCQmmFtGPbfDFyDocGcpHbPFbrtn8uJkSvRhxDX9G27u7VraEYUqUjIy5CnLn7c
	 YtxVOWux8SjocbcwoZ8rjnVIbCXDaYSb1N5lbO5lmGFg7MnQ8On0rUMVEUS7qQ4qj9
	 qgmLXBDKD0syg==
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-64acd19e1dfso451489d50.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 04:47:45 -0800 (PST)
X-Gm-Message-State: AOJu0YzKkqq6yNkqgdvTxuSczD3OL2z/lo77CnLIfT4JkxyNessA2NZ6
	vGC7cHEnfHpC9DyA/cF9l/uFGWUpMUhooO0bu6CBxQ3+amS2ffb1Hpja5NoMye/fj7V1oygnYw+
	f3dS4nUsARfh0YtpKLjLDTtG3LaXvDNw=
X-Received: by 2002:a05:690e:144b:b0:645:520d:31bb with SMTP id
 956f58d0204a3-64a0b8f8c85mr1664544d50.23.1770382065009; Fri, 06 Feb 2026
 04:47:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203143946.301233-1-jerrysteve1101@gmail.com> <20260203143946.301233-2-jerrysteve1101@gmail.com>
In-Reply-To: <20260203143946.301233-2-jerrysteve1101@gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 6 Feb 2026 13:47:33 +0100
X-Gmail-Original-Message-ID: <CAD++jLn4akBi7opOKdZjtAt17+FjK-y8UqKXbX3fQkAS7hC0_Q@mail.gmail.com>
X-Gm-Features: AZwV_QhVy1-igVoJGFT_GiltoocheA0dz011h4GikRyAw3kiKYlAJeCgAPVYMoo
Message-ID: <CAD++jLn4akBi7opOKdZjtAt17+FjK-y8UqKXbX3fQkAS7hC0_Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: iio: accel: bosch,bma255: add bmx055
 accel binding
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: devicetree@vger.kernel.org, linux-iio@vger.kernel.org, stephan@gerhold.net, 
	hns@goldelico.com, jic23@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263344-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 001BAFDB2D
X-Rspamd-Action: no action

On Tue, Feb 3, 2026 at 3:40=E2=80=AFPM Jun Yan <jerrysteve1101@gmail.com> w=
rote:

> Add the device-tree binding for the Bosch BMX055 IMU (accelerometer part)=
,
> which is compatible with bmc150_accel.
>
> Datasheet: https://cdn.sparkfun.com/assets/b/9/1/f/4/bst-bmx055-ds000_dat=
asheet.pdf
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>

Reviewed-by: Linus Walleij <linusw@kernel.org>

Yours,
Linus Walleij

