Return-Path: <devicetree+bounces-262723-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GPe/MNltg2kFmwMAu9opvQ
	(envelope-from <devicetree+bounces-262723-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 17:03:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B51CE9CA1
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 17:03:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 559C83019CAD
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 16:01:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F970421F1A;
	Wed,  4 Feb 2026 16:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJjYLrrv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D06F421F03
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 16:01:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770220861; cv=none; b=KfFyefznYML3JPRui0CT5TQsPnmEtJR1/OpNtJEkQc46i0F9L0FzXash6GzwpmE84Visxs/NTprbS/vMHD+19WnSPKrY6zWQnfxzPHLashE6OfL0t/RCKc+7DRFEAO03G1mUv+M+VROW7U1n+kIINz1LEl4H5uQ3qoyJn3sK4o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770220861; c=relaxed/simple;
	bh=ogx23gacZZgPrV0U5TFdmtL8gJvQMl3JZYOLmU3rg7k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H4pLVP13ZdP9lVqiTiox5Wy2A+DSJmh60Rim+pCV5cWDe14511+Zmu2MOHyOzKtV4c0tPJ+5SHs1lxUW484t9i53fcKn2T2MKqw7NaBYkTCQ2Gov/ar0RXrbNNeJJcVqDzt1lFdFGmJW3mK7h5MUSnHJSQDUa8tcdl0XOkUf44I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJjYLrrv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBED5C4CEF7
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 16:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770220860;
	bh=ogx23gacZZgPrV0U5TFdmtL8gJvQMl3JZYOLmU3rg7k=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=tJjYLrrv8SlKweiPubF5F9jV818YoXlFge1JZqbe2kxdTrr/YJx8/HqwENbPGW+kp
	 nJNRY4q8xihEhZhjK6HrodSzYnb5A5e4pTBhZOcV6yxYDKOOnmMV+MZvmZlKTmKoXr
	 ZT9PwjOAe7p3chF+7i4fmp02LzQEjxsuubEQOg1yuaEzBsFOIkH7MH0bGpaxL7L7YI
	 nCxQg63a4EKbguT0jlDp9X6dj+DnLL7HDkIyL+VHg9yB7BwIFl1GXaTWlYgVDWzoio
	 T3KianEII4RJJxwhNlyEfP3iGNvTJnceHDVGWS4fFqAMMWt6FA2jbtxXqFFzjRVAMw
	 CobewdCSx1ROA==
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b885e8c679bso1099612166b.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 08:01:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVDHgDBF2T53mEyiMOdUbXFcwmdANUiLn9ORb0AEYQEPRa0gNcQUqMARg6bemT9y4Tie78Gn1TjK3H/@vger.kernel.org
X-Gm-Message-State: AOJu0YyZa2pI+20w5OdUv9F2wQ88WgVfGTGLIeZYR44Zp4Ute4jvctjo
	8COUez48ihlHkmW5Y5wYFlFwkYORz+oYFmwjXQawuB/hhdWILFiAZOYOAgvjachyGboTs4reijQ
	9wDTtcgWWXTijWr4tTlkR6z6qinn4Gw==
X-Received: by 2002:a17:907:7fa8:b0:b8a:f29e:307a with SMTP id
 a640c23a62f3a-b8e9f396397mr256996966b.57.1770220859406; Wed, 04 Feb 2026
 08:00:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260204091530.624230-1-miquel.raynal@bootlin.com>
In-Reply-To: <20260204091530.624230-1-miquel.raynal@bootlin.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 4 Feb 2026 10:00:48 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJC5mn0RW9oT+VK7eis7E1Fb3OrgfJxaFnX9Rq9de-TeQ@mail.gmail.com>
X-Gm-Features: AZwV_QgesdgcB5JYe_mQ7m9VfFfTGajIr0ZwIwKl7g78T8EJ3qG35kb1pnTQmS0
Message-ID: <CAL_JsqJC5mn0RW9oT+VK7eis7E1Fb3OrgfJxaFnX9Rq9de-TeQ@mail.gmail.com>
Subject: Re: [PATCH -next] ARM: dts: BCM5301X: Drop extra NAND controller compatible
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>, Hauke Mehrtens <hauke@hauke-m.de>, zajec5@gmail.com, 
	bcm-kernel-feedback-list@broadcom.com, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	William Zhang <william.zhang@broadcom.com>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org,bootlin.com];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_FROM(0.00)[bounces-262723-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 3B51CE9CA1
X-Rspamd-Action: no action

On Wed, Feb 4, 2026 at 3:15=E2=80=AFAM Miquel Raynal <miquel.raynal@bootlin=
.com> wrote:
>
> Fix the dtbs_check warning introduced when the brcm,brcmnand fallback
> compatible got removed for iProc machines.
>
> Fixes: 4db35366d6dc ("dt-bindings: mtd: brcm,brcmnand: Drop "brcm,brcmnan=
d" compatible for iProc")
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---

Acked-by: Rob Herring (Arm) <robh@kernel.org>

