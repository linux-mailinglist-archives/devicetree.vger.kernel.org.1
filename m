Return-Path: <devicetree+bounces-262990-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iD9EK6uChGl/3AMAu9opvQ
	(envelope-from <devicetree+bounces-262990-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 12:44:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 528EFF2002
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 12:44:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9ABC0300669A
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 11:44:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43F4E3B52F0;
	Thu,  5 Feb 2026 11:44:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXM3efcn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209783A9D95;
	Thu,  5 Feb 2026 11:44:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770291879; cv=none; b=gnaImZ8XaIq33gA5YHPuvYf9rfmvTDaog3xlgo9vr4FimdY+n7ngCFNWPhiok4sAJFW1oEcWj/3cAgeLn4YClKaiA4wPo6lxm/ZGaJoru+x8KQPe0AqpEaNe+5MyvRpT0sULAYC1SehsFHOKoMUHrEZr7xKwcEddNYpvUk17QyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770291879; c=relaxed/simple;
	bh=hAAHav3T98aKj321vhwrLR2ehXeVSbOmkejkdN37/rY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qRzjMfn3rDPh5N0qXAPrDcoaxCbLlIOAEI3TIbIDznk7syAvBdiDDHYZfby5XFgEFsLVtlGOjhIMgA18aiG4g1JhSJWCE+G1OzN3uuRV6ksDmtbjPIa8vJd3Y96eL5rX5XxJNkhEqSszOGdr6H2HmPIlUAWPo9u5nMC3hSAFTfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXM3efcn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6F66C4CEF7;
	Thu,  5 Feb 2026 11:44:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770291878;
	bh=hAAHav3T98aKj321vhwrLR2ehXeVSbOmkejkdN37/rY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PXM3efcnYFetp6Q+ZBeh1IqjJE3T67ivogdHO0eoMp5Pwgui8vEohgllHkt1f1iva
	 /JcSeIoZ+Lqcwh57L5XR1sC6o9tE+foxESQTZMyfi/Wuqnm/40q6jawvf+c1SYUUCV
	 MgbcdZ4GM4klYVaS7W0o6kIk9A/BFg5CHBiBkbTP04wz1wU6IgCxt7WabW8v82OTqP
	 rTbsuDgJYGTF302TjDFkhVtXpWbq2ID/nK71mFmqbeSJsjIWKo4BzlMns9u3cIinVJ
	 Qjb2jgCV4AqFMLYOkpL55ldYB549SG9SfOVNQA4Xkbfd5qG6+WzMDp36NgGMr3DrQ2
	 RmBaZU40iazOQ==
Date: Thu, 5 Feb 2026 12:44:33 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Danny Kaehn <danny.kaehn@plexus.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Benjamin Tissoires <bentiss@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Conor Dooley <conor+dt@kernel.org>, 
	Jiri Kosina <jikos@kernel.org>, devicetree@vger.kernel.org, linux-input@vger.kernel.org, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Ethan Twardy <ethan.twardy@plexus.com>, linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Leo Huang <leohu@nvidia.com>, Arun D Patil <arundp@nvidia.com>, Willie Thai <wthai@nvidia.com>, 
	Ting-Kai Chen <tingkaic@nvidia.com>
Subject: Re: [PATCH v12 1/3] dt-bindings: i2c: Add CP2112 HID USB to SMBus
 Bridge
Message-ID: <aYSCiHf5eFp7m5dQ@zenone.zhora.eu>
References: <20251126-cp2112-dt-v12-0-2cdba6481db3@plexus.com>
 <20251126-cp2112-dt-v12-1-2cdba6481db3@plexus.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251126-cp2112-dt-v12-1-2cdba6481db3@plexus.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262990-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linux.intel.com,vger.kernel.org,gmail.com,linaro.org,plexus.com,nvidia.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,zenone.zhora.eu:mid]
X-Rspamd-Queue-Id: 528EFF2002
X-Rspamd-Action: no action

Hi Danny,

On Wed, Nov 26, 2025 at 11:05:24AM -0600, Danny Kaehn wrote:
> This is a USB HID device which includes an I2C controller and 8 GPIO pins.
> 
> The binding allows describing the chip's gpio and i2c controller in DT,
> with the i2c controller being bound to a subnode named "i2c". This is
> intended to be used in configurations where the CP2112 is permanently
> connected in hardware.
> 
> Signed-off-by: Danny Kaehn <danny.kaehn@plexus.com>

just this patch, merged to i2c/i2c-host-2.

Thanks,
Andi

