Return-Path: <devicetree+bounces-257915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEcvDD3EcGkNZwAAu9opvQ
	(envelope-from <devicetree+bounces-257915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:19:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F4756A3D
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:19:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9B2395A4DE2
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:14:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE3E9466B4B;
	Wed, 21 Jan 2026 12:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qA9aeMCM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D93E44DB64
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768997669; cv=none; b=S8zfUBZbgIch7Pxs5bKccX4C9x6fj5nIQ8piPcLqpgdP355LT4tAKKLFxpUuc0oHx1buOA/jMXoJb225ip5iQPwtdZG4XU2WqCjyyoLcZCTsOV8GzJc4qOe5088dqsEUNjMDcszfWq82PAk4VkrgXHGTW+BdxRfJC/YAUrAseDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768997669; c=relaxed/simple;
	bh=MxAb/KOfj0fTzSsftS+TuyTlZQjPgm8LRuldwJMvBAw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M5WIW2n6+BQXq5UymGaZS2q+pRThqpU7vPoTZ3DNa2MAUGQe/yXSXxdr0d8K9omu2du1IF5pOlA4jm1B6GFydj/w303X8eXLoZputm1BaVSIL546EZnGdTL6UyqEqvVUhqsF1G6+m/KP6EQ7RCepf6wDtF+74V+bPP+Yg8RrNfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qA9aeMCM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36860C2BC9E
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768997669;
	bh=MxAb/KOfj0fTzSsftS+TuyTlZQjPgm8LRuldwJMvBAw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=qA9aeMCM70d/lIgRo9XveyJzh2U4zy0Cgmw1XNf/c9KGq7MgJvaPy3l0FzZ2AsrOX
	 rGKbHySsF0r049G+5gCJOOUSg1w7lwXzAQVOOMIN0Z5xXaS0/6xyPrc+FCNG/5IKZo
	 enj4K44GiCkcsQz9uBdLJ1kwk+LCH0p8dUlkKCoh5EKx9t//iCA+6jhl0YzmLAGv6t
	 qqMMisOyR/i9De9zXYBGkx1fk/FEOcQQnphghpOwyd//lUYAOK0C3U5wCy97IsIGIp
	 peUi3NgCmN8PFM+3hc1sXjGFiO+maBZpeXZVQZ2CvopdTI0X+tGcsMYu9g0r1vaAcn
	 wwh7B/PXqgsCg==
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-649278a69c5so3508574d50.3
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 04:14:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUrciUY54+5MDnpwTVPltwR4Ma90eqnPH6PmN9fk/e4hSVvoCtU87wSOn+/7aHMoF990JQOKuTlONb8@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8SUguOaGVLNpfD1ZmHpnixsy4ERUjpGlsc19kYVDb5GbR8Kc5
	gUytwos/AWQdDPcDb6jgiH/q+blt/jAB6JuQJKcQP2rPYI105hCI188m6BfhLxoFQqUqcz6U6wP
	BWZbqkzSD5GVRrRcw7USkIaMyoUX5HxM=
X-Received: by 2002:a05:690e:120d:b0:644:53c0:299f with SMTP id
 956f58d0204a3-6491650dfa8mr14643804d50.74.1768997668593; Wed, 21 Jan 2026
 04:14:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260120-elixir-salute-dd6ec3d9f5fe@spud>
In-Reply-To: <20260120-elixir-salute-dd6ec3d9f5fe@spud>
From: Linus Walleij <linusw@kernel.org>
Date: Wed, 21 Jan 2026 13:14:17 +0100
X-Gmail-Original-Message-ID: <CAD++jL=EL8yMGJfUCVtcbDHCH4NtUYCjnJLpnXDUXOW=2e2R6w@mail.gmail.com>
X-Gm-Features: AZwV_QgRSTxqPkvEjhSuHvrEvLq-M0kHecgsqzZs-SN8L9p0Qy5A7sM1G0FOtnk
Message-ID: <CAD++jL=EL8yMGJfUCVtcbDHCH4NtUYCjnJLpnXDUXOW=2e2R6w@mail.gmail.com>
Subject: Re: [PATCH v4 0/5] Microchip mpfs/pic64gx pinctrl part 2
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	Valentina.FernandezAlanis@microchip.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257915-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 11F4756A3D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 7:16=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:

> From: Conor Dooley <conor.dooley@microchip.com>
>
> Hey Linus,
>
> Rebased as requested, with the dts patch that snuck in dropped.

Excellent, patches applied!

Thanks Conor!

Yours,
Linus Walleij

