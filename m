Return-Path: <devicetree+bounces-257709-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJepNnc6cGmgXAAAu9opvQ
	(envelope-from <devicetree+bounces-257709-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:31:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E73A4FCBF
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:31:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2F9A43EF5AC
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:30:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FBFF23D7CA;
	Wed, 21 Jan 2026 02:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoItEJWm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D7A286D5E;
	Wed, 21 Jan 2026 02:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768962619; cv=none; b=aV4ZgurRtEvJjHKte34DAxoZf181Z3hoxZhVemYPBC4Ceai5vZzI88sPzmTgKjcSLI3Fg2pFvL0iWRLc51nwMjMajm2FW3eirvs3ZdnuZeK+Ypbp1PJMkv7PnYxqYNzzdMNyLaRVkUEjdBs7oHusY3ktbPzGXJZ/60lOZAOQ98w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768962619; c=relaxed/simple;
	bh=qGrGq+WjO+0/AMaXMyyeImAUN8v9eq1Kl4YybbLFXzs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u/8rAu+ti1NVMN4YMPpUsCKL+V/lqfht9kr9L7/5bZFoYs2s1OKKw7Yuodns7uXC5sHH/8ooN4BtLWdYg+y4g5c/+qFdi1Uqte0DqnNzOc3MPj/EVCbrguedeGZgVqll+QEqPVRMC1lxIHI+OxSRJ4UTqp1qszMGsEEVtekV8LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uoItEJWm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DD35C16AAE;
	Wed, 21 Jan 2026 02:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768962617;
	bh=qGrGq+WjO+0/AMaXMyyeImAUN8v9eq1Kl4YybbLFXzs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uoItEJWm0LVFPE7anJieBvxWmwVdoDk558iLW23WzQAstABvo9/zQOVi3jsMtCgf/
	 LYtsmpG0gywjuHq5Rq0fxpUgBlzXovRd7O4jBMXMQRoA9elWM3sATYZIDlE/6W0QiX
	 SSNx4dWROuFb+mwg9jc460Dv9W52IYBWmgOtfO5yLoPvErbsBnpET3+OsWLHoXkNb/
	 Y0QLjO/JkpKPDDG8WtlusYBHvzuh5A4yzZM4jOd+IsvDgu8xCxLHY9vG3XB+csdibZ
	 4tlHUe16S0cma/Dhken9DepdXsLgTgrIFLNKPzHXa/YN98KD7QK0vBqIBfOY3JN+G0
	 NIXcnGRpnqV2A==
Date: Tue, 20 Jan 2026 20:30:16 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: "Anton D. Stavinskii" <stavinsky@gmail.com>
Cc: Chen Wang <unicorn_wang@outlook.com>, Takashi Iwai <tiwai@suse.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, Paul Walmsley <pjw@kernel.org>,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	Inochi Amaoto <inochiama@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>, linux-sound@vger.kernel.org,
	sophgo@lists.linux.dev, Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH v4 3/6] ASoC: dt-bindings: sophgo,cv1800b: add ADC/DAC
 codec
Message-ID: <176896261596.1836014.8166453734393092086.robh@kernel.org>
References: <20260120-cv1800b-i2s-driver-v4-0-6ef787dc6426@gmail.com>
 <20260120-cv1800b-i2s-driver-v4-3-6ef787dc6426@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260120-cv1800b-i2s-driver-v4-3-6ef787dc6426@gmail.com>
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257709-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[outlook.com,suse.com,kernel.org,vger.kernel.org,lists.infradead.org,gmail.com,dabbelt.com,perex.cz,lists.linux.dev,eecs.berkeley.edu,ghiti.fr];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 7E73A4FCBF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Tue, 20 Jan 2026 23:06:05 +0400, Anton D. Stavinskii wrote:
> Document the internal ADC and DAC audio codecs integrated
> in the Sophgo CV1800B SoC.
> 
> Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
> ---
>  .../bindings/sound/sophgo,cv1800b-codecs.yaml      | 46 ++++++++++++++++++++++
>  1 file changed, 46 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


