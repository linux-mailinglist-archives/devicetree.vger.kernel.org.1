Return-Path: <devicetree+bounces-290176-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yFoEGq+O7GmOZwAAu9opvQ
	(envelope-from <devicetree+bounces-290176-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 11:51:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B84465C6A
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 11:51:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1321B3009F88
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 09:51:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B37C8393DCD;
	Sat, 25 Apr 2026 09:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPT59NjH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E88B392C5A
	for <devicetree@vger.kernel.org>; Sat, 25 Apr 2026 09:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777110699; cv=none; b=Bgo6g74gJ5TMfKYHtdAUVgDF+arXOYgIuobC8zDpDmbfC/Ug+2VSoWVRfArLu2KnKd7ptDP0QP6rrJJmTe39y3RlpoFlSkdEfzClN7vACHvNc5ZsE1j9mGvaGkpEURfdaDxY/IBlROJhSxaru9O7GzNN8eu6JS9/B2f295kFEz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777110699; c=relaxed/simple;
	bh=DpnRF8hciMIzT/v65H5gxLw6op0T1Y84nuGY5zKWU2I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mI8v7AwOm0J8g3VCSlRweY8HOWyhiOTJAuSX0y3LXVqIASoNn6GjKQhxW6YYOSM9ZdKScBs0KcB0SMgpHlSChmxjFEbTl9LO9jn7AvBIWw651YnFUqgH0lsO3SPuPMc/eZ8gi9qYOu/Bv6WihViUtZUbrp/Pn/Z5PS2MV7oSDMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPT59NjH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44971C2BCB0;
	Sat, 25 Apr 2026 09:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777110698;
	bh=DpnRF8hciMIzT/v65H5gxLw6op0T1Y84nuGY5zKWU2I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CPT59NjHIWBcoIwGoXqCBGtY2uS25XkSnO4yNJiWwqzUF19uHEjs+5GS3bCmxMaso
	 sketEPfxfIVjjf64IEblt6amrAIVLaaMHM6IC5jcOJ7+/7ZCI9IZXg2QSC/wiGk43H
	 oZS76A7yakApNfJUJnDgmDqtD64Xr+kq9GPvM8IxtjvPLFTbwNSI9LM3INdVcb7jxr
	 08UmHn/t3ErcBQIfLg9yH4TTOzSOrdE+d2T/dlo7UGJPjlcmAhHTIOU9+SQTlpaSvn
	 mdX3xSefODL4cqicMXr2ZlLPQvMpT9IflBAYQ4NDc0WWDLXkcdIC+uMQRMdOMqXvek
	 J/lIaoVbGlrnw==
Date: Sat, 25 Apr 2026 11:51:36 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shaunak Datar <shaunakkdatar@gmail.com>
Cc: lee@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, daniel.lezcano@kernel.org
Subject: Re: [PATCH v2] dt-bindings: mfd: hisilicon,hi655x-pmic: Convert to
 DT schema
Message-ID: <20260425-sensible-binturong-of-tempest-d646ba@quoll>
References: <20260422200200.126728-1-shaunakkdatar@gmail.com>
 <20260423113237.260652-1-shaunakkdatar@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260423113237.260652-1-shaunakkdatar@gmail.com>
X-Rspamd-Queue-Id: B8B84465C6A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-290176-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,bootlin.com:url]

On Thu, Apr 23, 2026 at 05:02:37PM +0530, Shaunak Datar wrote:
> Convert the Hisilicon Hi655x PMIC binding from the text format to DT schema
> to enable dtbs_check validation.
> 
> The 'regulators' child node is added based on existing usage in
> arch/arm64/boot/dts/hisilicon/hi6220-hikey.dts, which defines child
> regulator nodes not documented in the original .txt binding.
> 
> The uppercase LDO names are retained to match existing DTS usage.
> 
> Signed-off-by: Shaunak Datar <shaunakkdatar@gmail.com>
> ---
> Changes in v2:
> - Drop the $nodename property
> - Constrain LDO according to actual hardware regulators
> - Drop 'regulators' from required list
> - Drop example root node wrapper and use 1 address/size cell.
> - Elaborate about 'regulators' addition and uppercase LDO naming in the
>   commit message

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>


In the future (no need to resend):
Do not attach (thread) your patchsets to some other threads (unrelated
or older versions). This buries them deep in the mailbox and might
interfere with applying entire sets. See also:
https://elixir.bootlin.com/linux/v6.16-rc2/source/Documentation/process/submitting-patches.rst#L830

Best regards,
Krzysztof


