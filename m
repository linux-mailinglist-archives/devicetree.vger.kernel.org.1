Return-Path: <devicetree+bounces-258229-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CApqGgHVcWk+MgAAu9opvQ
	(envelope-from <devicetree+bounces-258229-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:42:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E84A629D1
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:42:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 91DCB409223
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 07:36:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9EA048BD55;
	Thu, 22 Jan 2026 07:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3WH1jLn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA9E24E4D4;
	Thu, 22 Jan 2026 07:32:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769067152; cv=none; b=k/FayBqSCX609Q0VM0MEj3RtLFEmSWNSDhWN0D0x6X+naZzlN2xgYKlsIP1STcTJRct1ek6U9yqIYv1PLvUeAfrlP+y9T3dBu0cRvSMb6XYW/35ccQXNFRo7/Gt2LAgvm8UoaxdnF6370ECc41RJhjPZyzViOhR7TqlYCB81rr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769067152; c=relaxed/simple;
	bh=4c13PYVKBuj93wLp9HTpARpZW9JIi8Nd3PvLJryjPVw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c7JPyD2pVbZi+60uhgl8/Mu+rbj9aFBACLpSidUVBfghgKg8qRFpif1clnR7z9F4rQsaMI9S01amAK0VvOEFAx6H7qXXMkZ4OM7BlsVf2lNTf6n3kLGGWzLM3Ls0QsdQzRyYDvPU4fGQk8/SPiZOIJzzl/KFAF6H+O4qMEHGT0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3WH1jLn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83E56C2BCB9;
	Thu, 22 Jan 2026 07:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769067150;
	bh=4c13PYVKBuj93wLp9HTpARpZW9JIi8Nd3PvLJryjPVw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f3WH1jLn8JpqVyJqVSKcSP8ft/yqpIauoZPAbLZsqke25QzA4aRXAZqBHgexc4nsv
	 NPykm/mGYzjN54Ax1JBsgwMSVhs9uANczkjvOW32ksNcH1ftrin/37ZE3ZwQYcuSRB
	 fuqUILYiFwVZiTbAqzToDmVD/844LHRBCv8Rp1+D3JotfjrG3stS9xZxi8cMk4sU7n
	 jzAcGiJOY6eja/8HqLE/mQ/Z4/cbSTHn9DEz8sI78f67LUbOAkdnagHmSXzgAcGAN/
	 1bZhi0qb9QctfjidfK3gM2m98YJqAD1/ktmoCUmP8XDNRkx7IMcB4XhH6aV00eLcZO
	 0qJ669HgNnahA==
Date: Thu, 22 Jan 2026 08:32:24 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Ben Zong-You Xie <ben717@andestech.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	pjw@kernel.org, palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr, 
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH 2/4] drivers: i2c: add the driver for Andes I2C controller
Message-ID: <aXC6rkiG5lI6n3JF@zenone.zhora.eu>
References: <20260115145244.435890-1-ben717@andestech.com>
 <20260115145244.435890-3-ben717@andestech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260115145244.435890-3-ben717@andestech.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258229-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[zenone.zhora.eu:mid,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: 4E84A629D1
X-Rspamd-Action: no action

Hi Ben,

...

> +/* I2C may be needed to bring up other drivers */
> +static int __init atciic100_init_driver(void)
> +{
> +	return platform_driver_register(&atciic100_platform_driver);
> +}
> +subsys_initcall(atciic100_init_driver);
> +
> +static void __exit atciic100_exit_driver(void)
> +{
> +	platform_driver_unregister(&atciic100_platform_driver);
> +}
> +module_exit(atciic100_exit_driver);

Please, check how other drivers initialize.

Thanks,
Andi

