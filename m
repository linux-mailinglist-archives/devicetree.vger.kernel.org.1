Return-Path: <devicetree+bounces-263586-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APuEJTcah2nBTQQAu9opvQ
	(envelope-from <devicetree+bounces-263586-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:55:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F13BF105ADF
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:55:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 916FC301A703
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 10:55:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27F1133F8A7;
	Sat,  7 Feb 2026 10:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMdeA3gT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A5033F390
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 10:55:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770461749; cv=none; b=np5/VMPyDqFLxKiKXPS2iNQQnubseMvNEXQK4Tf9U1WsugqYM4fQyr8TcV0VOlj9BaCegvJe1K1KAv3EaaYaLIpm5rp5oTOeSeIxSFe7508eihBVOu2QsSEXWSTmCjqZ186nKWnTkTP+rEZOM5N6aZsE0rshMUVM+QX3jjgfKfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770461749; c=relaxed/simple;
	bh=15OiEL02Qm3wXK7Z4IXbHK91DpcRfYb2m3WwtlFNacs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X8KUjgGe4njIzKzCYkfnX6TwkLaG52S6xrY2650l2ls5jKdgHLS9JiFA1M3zvu8AkjQLA7pDt+5bwHTXNA6kIXzbqRlBcEvNQLxHWfHYCu/BMyDAsCwr+/uJaKuKsTUD5U0yHnMW/hp+i957AaSKSBwWfJjuBdr+SnLFrclqUwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMdeA3gT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 071C0C116D0;
	Sat,  7 Feb 2026 10:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770461748;
	bh=15OiEL02Qm3wXK7Z4IXbHK91DpcRfYb2m3WwtlFNacs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vMdeA3gT1N5iwodU4W6zBC6L8CvCTH0sPAYh7cvfqA2s3CxlV3xzh3B4heysU9DNj
	 6weNeDP9In8ZW0QAcBxlr6kY3JlUG+9nxsRfy6kQZl6ruclhTvdU7I50yf5lW/XrIb
	 cZs/TNUmvVl4gVbXRwhKsoh8bkWDTlp7CWzov/w4v722CiXvAQlJ3JnbdmACrXbj6H
	 t3q385uPDcU6icK8OT7w0L5SKJ7Xg/38sbkra+u4tT4hO9HbzoLqnpD0+Ph8k4dqLJ
	 i7e7xuw7H46ODxkTb5indKV6VDZ56A1ZZZPWaG2hMdqCg7YBEOCcBf9VemDm1RdYYs
	 mG8ZuZS9Veagg==
Date: Sat, 7 Feb 2026 11:55:46 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>
Subject: Re: [PATCH 00/11] ARM: rockchip: Add initial RV1103B and Omega4
 board support
Message-ID: <20260207-crocodile-of-eminent-imagination-cc5a5e@quoll>
References: <20260206181309.2696095-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260206181309.2696095-1-festevam@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263586-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.981];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nabladev.com:email]
X-Rspamd-Queue-Id: F13BF105ADF
X-Rspamd-Action: no action

On Fri, Feb 06, 2026 at 03:12:58PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> This series adds initial support for the Rockchip RV1103B SoC and
> the Omega4 board.
> 
> The goal of this series is to provide the minimal device tree and
> platform support required to boot the Omega4 board into Linux
> userspace with the root filesystem located on SPI NAND.
> 
> The series includes:
> 
>   - Base RV1103B SoC device tree description
>   - Omega4 board device tree
>   - Required pinctrl and clock definitions
>   - Basic peripheral enablement required for boot
> 
> With this series applied, the Omega4 board is able to:
> 
>   - Initialize DRAM
>   - Boot the kernel
>   - Access SPI NAND
>   - Mount the root filesystem from SPI NAND
>   - Reach userspace successfully
> 
> This submission intentionally focuses on minimal bring-up support.
> Additional peripheral enablement and feature support will be
> submitted separately.
> 
> Tested on Omega4 hardware based on the RV1103B SoC.
> 
> Boot verified with root filesystem stored on SPI NAND.
> 
> Fabio Estevam (11):
>   dt-bindings: clock: rockchip: Add RV1103B clock and reset unit
>   dt-bindings: clk: rockchip: Add RV1103B clock header
>   clk: rockchip: Add clock controller for the RV1103B
>   dt-bindings: pinctrl: Add RV1103B pinctrl support
>   pinctrl: rockchip: Add RV1103B pinctrl support
>   dt-bindings: mmc: rockchip-dw-mshc: Add compatible string for R1103B
>   dt-bindings: serial: snps-dw-apb-uart: Add support for RV1103B
>   dt-bindings: soc: rockchip: Add RV1103B IOC and GRF entries
>   ARM: dts: rockchip: Add support for RV1103B
>   dt-bindings: arm: rockchip: Add Onion RV1103B Omega4
>   ARM: dts: rockchip: Add Onion RV1103B Omega4

I don't understand why you combine around 6 different subsystems into
one patchset, especially that there are no dependencies. Only difficult
for maintainers to apply.

Best regards,
Krzysztof


