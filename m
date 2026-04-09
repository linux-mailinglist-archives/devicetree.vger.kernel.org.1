Return-Path: <devicetree+bounces-286017-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6M44My9g12noNAgAu9opvQ
	(envelope-from <devicetree+bounces-286017-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 10:15:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C7B3C79D1
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 10:15:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1ABE93016801
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 08:15:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC26326290;
	Thu,  9 Apr 2026 08:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Va9irgIN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A734381B1F;
	Thu,  9 Apr 2026 08:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775722516; cv=none; b=ssUWySW9LDdyvR4zpIjtBPU0dvMuSw3e7vBeIjev21OvDONFXnL51uwzJg4H7htmY1IrgoyQJbPAWksV3+nzYqZ6ht450RhgvndHsiR0oANB2ruWKe+FF4J89iFVwEMfEMqHQwxTwEZD1h/37shXxKdAEUZJgMn7McGG4Exvvb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775722516; c=relaxed/simple;
	bh=aMOUTQ2n8ZdUSc9lx4PDrliZ+neBQXCbhBCvjHLo1wo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o1AF9AIOWQ5p0GAVaPTYE+eqlE5/Dh010d6UFCRg/AwEvVAaO63ZjvFfPuhXSVU1nnFlVKRqI/zKX3d+H1kfKnM5u5c/iOXy1/QCr2vyxZXGqOm5+fjeANubB2jPYr53TggG3MDmBzZdXzrWc0OBFV6GhWhQZjhvIPkxAryxb44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Va9irgIN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A34BBC4CEF7;
	Thu,  9 Apr 2026 08:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775722515;
	bh=aMOUTQ2n8ZdUSc9lx4PDrliZ+neBQXCbhBCvjHLo1wo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Va9irgINaO3bh5yRUsexQXriLdkEha6HsQSYQbbnu1Rl3c/xxehk2mlOKjpnhCCto
	 vRbzRaFU1JDJMuCHm46cGUsaQNqdBOPsUbhTyfDfO+CYFUmu3Mj/ikL28hrX4YcIwS
	 YSWL067120ZH4sy2nSV5HX0Qtv+9h8aY9RVH1sIiFsBP9OdeazHEwsuZhjKU/mk9Kr
	 2b1ug7oSahUJvSy+T95ZM7Ain69aWHK+MrgzJu4qlXCyArD9AtsyimMlV2SsAiw6bp
	 LQbPTvAtPw9WlRSVCJGWuQPU+tpId5ffg5OuHmTgoVsfJIlfO7O9x9mfHNB+fembEe
	 qBXWv8Rxt1zMQ==
Date: Thu, 9 Apr 2026 10:15:12 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gregor Herburger <gregor.herburger@linutronix.de>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>, 
	Srinivas Kandagatla <srini@kernel.org>, devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: broadcom: bcm2712: Add the otp nodes to
 firmware
Message-ID: <20260409-imposing-strict-snail-5d2a6f@quoll>
References: <20260408-rpi-otp-driver-v1-0-e02d1dbe6008@linutronix.de>
 <20260408-rpi-otp-driver-v1-3-e02d1dbe6008@linutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260408-rpi-otp-driver-v1-3-e02d1dbe6008@linutronix.de>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286017-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,broadcom.com,anholt.net,gmx.net,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 62C7B3C79D1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 08, 2026 at 10:00:17AM +0200, Gregor Herburger wrote:
> The Raspberry Pi 5 has two OTP registers (private and customer), add these
> to the devicetree.

So this sentence confirms my question on bindings - your device
raspberrypi,bcm2835-firmware has these, thus you do not need these child
nodes at all. Neither compatibles.

Drop entire DTS and binding patches.

See also writing-bindings and DTS101 why we do not allow this.

Best regards,
Krzysztof


