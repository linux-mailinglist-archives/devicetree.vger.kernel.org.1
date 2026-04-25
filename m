Return-Path: <devicetree+bounces-290178-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UK5SJ76P7Gm/ZwAAu9opvQ
	(envelope-from <devicetree+bounces-290178-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 11:56:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF66465CDC
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 11:56:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9C1723006982
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 09:56:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 226CB3932EF;
	Sat, 25 Apr 2026 09:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQaav5Vz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2DAE38B146;
	Sat, 25 Apr 2026 09:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777110967; cv=none; b=pArtNnRB5LfHuBPBmEAufkISrq5sPG3Gmb6rr9zODJCQxIsuxa0wUKK78snx6UZTf6vwgVZ/vFuic7s8PzxREVO0yAWgF9Xk9A41gMzeUJ/IDJ626EbYJFEyeK6WX1SqK/vFUIPTX2AVwDDscW31teo5RyEMiBnIWR1qLZW1mjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777110967; c=relaxed/simple;
	bh=WJcc1NZETmbddcBcUKF7rrXIoSuykV0QJB1jUEB7vEQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gd9YMU6HSieenwh8kpKVYpiQa5JqwDxRY0EXxOa6O80m6RlpEWkPmbiPkdsJhNLXujPsmZmRz64BB09ZhoGJWiv/BA4kWX/bXD3lR0UESs8KjIr+hWiBeqqlU8FXQKfEToEKVeDCyrDOFnkARYo5ylO7PNiQha14x/1FFbz9fJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQaav5Vz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1EA9C2BCB0;
	Sat, 25 Apr 2026 09:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777110966;
	bh=WJcc1NZETmbddcBcUKF7rrXIoSuykV0QJB1jUEB7vEQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YQaav5VzbXA3ZKzDIAcL2FZVk7pFwk4MWSaisn9CqO/T5tbx63RhH0O0/4h/UuDz2
	 J1HRbdWoue6NAxI5kU4UT9sL9c/e48aJlD5tb/ZEGds0rkTjaZJ+mU8cNgvx+IxSz3
	 Q10QxMOHtnmdz2CaVydUMd7IknbArXP8sqkcfI9yGr8wRyHuif6QPeJqlk4ofFIAgH
	 cpVJlKKDpZ6Z34sjVh4PBguEwDuwJ4R5vcXkMUNUnzSbNc3xOvsLmbn6lBciwJtdxj
	 4OGgw7wdjWGnINf5OSVMmxNO/zJD/pPfWMZ1gTcQCOZ8q8aeMYKqIMYGiiPjp/safH
	 XMPzpaERlmqyg==
Date: Sat, 25 Apr 2026 11:56:04 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lukas Timmermann <linux@timmermann.space>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
	Douglas Anderson <dianders@chromium.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/5] dt-bindings: clock: samsung: Add fimd1 and vpll muxes
Message-ID: <20260425-uncovered-otter-of-sunshine-d00ed0@quoll>
References: <20260423-manta-display-v1-0-196f80c5673a@timmermann.space>
 <20260423-manta-display-v1-3-196f80c5673a@timmermann.space>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260423-manta-display-v1-3-196f80c5673a@timmermann.space>
X-Rspamd-Queue-Id: 9DF66465CDC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290178-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,ravnborg.org,chromium.org,samsung.com,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[timmermann.space:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]

On Thu, Apr 23, 2026 at 11:14:39PM +0200, Lukas Timmermann wrote:
> Add two clocks necessary for the google-manta board
> display.
> 
> Signed-off-by: Lukas Timmermann <linux@timmermann.space>
> ---
>  include/dt-bindings/clock/exynos5250.h | 2 ++
>  1 file changed, 2 insertions(+)
>

If there is going to be any new version, better to split this and send
all SoC patches (clk + DTS) separately from DRM.

No need to resend just for that, I will pick up Samsung SoC things after
the merge window.

Best regards,
Krzysztof


