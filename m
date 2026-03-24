Return-Path: <devicetree+bounces-279681-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iA7mAJ5ZwmnQbwQAu9opvQ
	(envelope-from <devicetree+bounces-279681-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 10:30:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E08F30599F
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 10:30:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 38B313023DBE
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 09:16:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13AE53DA7C2;
	Tue, 24 Mar 2026 09:16:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvbLWtsy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FBE2727E2;
	Tue, 24 Mar 2026 09:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774343768; cv=none; b=KtTHh90AKe3eKCgRU4kkBwbgGzWo5ndXhTvzoKahZKMcVSLZXmmjV/jff3qD43ygoyple9KD4ScZm/FWPc1/Mn2Lh85kg8r3zUsekY4RtwJxLa9dM9KX+/+kLORWqeniWqdh+JoTokCZCFkpKJrjc8y4a0qRz64M+rE0MoaPLwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774343768; c=relaxed/simple;
	bh=+RIij9NEuIuPQtqJ5P/rbM6Rew0JlQNlsK8q3ZzlVV0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CDDdxwY3Y4vVjHm4GiX4dtvVh+SmrXb443uwzCfXuuX6bdRVRea3zdZqQtzepqdbRhlfciv6qokYmkYbzv7FNUlFIIjk1XPXQLt69CyszmzSjFYSMSsQhWpwIsxQXTms8aj8p0OhXn+7FuUWLjebovFy9IZbymWvoTAJwjsl21Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvbLWtsy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED606C19424;
	Tue, 24 Mar 2026 09:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774343767;
	bh=+RIij9NEuIuPQtqJ5P/rbM6Rew0JlQNlsK8q3ZzlVV0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fvbLWtsyRGOYeoAGVckAfF3ELImNKX+HDa7zDf4l9Oq9nCNtEMlxFfruyiYwe5eLV
	 fJgWujeUclti7Gs3nbxuPFQPMxwF1qU0wIVEeMjwI44bnU/iUvDm0gQR7Lf20d7qhH
	 FeaeI/WHcFFQ8KvhljnpPf4UjoTuNPZBJN7Cp46cbKwQqvsN7FYSTlf/2WJ2J3GtZa
	 GhBNOfavdRm5JTlMBUpufETsAtiAp7TUxZ4Q1uigwC/oWZ5mRjCj4bVU1Qd8SR9+K+
	 ckhIfJ2yhVccZDO7u+CRzmVj85CDiRA7m9vJjdqMXjjYDva8dEd6/kHmBb8z8USIT4
	 EUEbBV+J/oNDQ==
Date: Tue, 24 Mar 2026 10:16:05 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Eduard Bostina <egbostina@gmail.com>
Cc: daniel.baluta@nxp.com, simona.toaca@nxp.com, d-gole@ti.com, 
	m-chawdhry@ti.com, Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Mark Brown <broonie@kernel.org>, linux-watchdog@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: watchdog: Convert TS-4800 to DT
 schema
Message-ID: <20260324-transparent-lemur-of-emphasis-f3605b@quoll>
References: <20260323175948.302441-1-egbostina@gmail.com>
 <20260323175948.302441-2-egbostina@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260323175948.302441-2-egbostina@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-279681-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,ti.com,linux-watchdog.org,roeck-us.net,kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5E08F30599F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 23, 2026 at 07:59:44PM +0200, Eduard Bostina wrote:
> Convert the Technologic Systems TS-4800 watchdog timer bindings
> to DT schema.
> 
> Signed-off-by: Eduard Bostina <egbostina@gmail.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


