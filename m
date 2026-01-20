Return-Path: <devicetree+bounces-257578-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KAADQ/db2n8RwAAu9opvQ
	(envelope-from <devicetree+bounces-257578-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:52:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C644ACBE
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:52:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 97FB38C9A78
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:23:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45E0B47AF50;
	Tue, 20 Jan 2026 19:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRpx/RcG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6C938BF6E;
	Tue, 20 Jan 2026 19:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768936990; cv=none; b=MvKx1cktuzmuFuZSSQGFLtl7PpgD2OIhzC1i7vjHTY5OnHAecI5mK4tFIx7YJbszx91O2zgL3cvcUYtZF+QItRPuGiL9IRKiDs9LkQBd2m++YKUYmwPkxQ5EfbujItN03UV0NU5FESZBcK944VgwU3ze3pNY6+ysOVcqGRpDemE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768936990; c=relaxed/simple;
	bh=msgc5OAItP5BP06gHcspzIYJOajROm2gY312bQiYkIc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ehDaMsjTm0Dr1oep3IqMX2+ZgZ91HQuxUj6u/pNDCybFAQTD/SJAkPwinvp6XbfB2O9IdpjjQmTY2iM5dwCmfjmKuF1jhpy4oQh+B+fy8KHbAbiafqY+nEUyNg32/UR76exUOz7pygi+fGO49OuS4F2BTmibTdVduSvR0FGqKHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRpx/RcG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D58C0C19421;
	Tue, 20 Jan 2026 19:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768936985;
	bh=msgc5OAItP5BP06gHcspzIYJOajROm2gY312bQiYkIc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=iRpx/RcGX7hbdKjE/fPxQ7pTyEKe7GLTOnqByuIP2kdVUyNwklO2vi9PeJcqyDAAx
	 +Crkkto6oeQgxNaVV0+jMIUsXuVkGO9oPAh4PzLkOAqoScL3NlY0rpi6/z1G+F4Ntg
	 ApJhsb7EgkBP4JE79jkDkUMbjX5r+gCWgt9T2GFWngAzpI7x5ND/8BbzA4tsSTJlXs
	 cOZpjcRQhnF02WcU5OLqhi51WSrYbUydk0WefcXCRUC+fj3s/NnyHW7WZbOyzFed62
	 vHvI8MWhsz9EQqdpKy831Pu5Fyj6xtiMdDdnbFZfjNddNDXKNv7Yym8D6/8kuGGPPm
	 BIfz7aHjtjpNw==
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Michal Simek <michal.simek@amd.com>, 
 Abdurrahman Hussain <abdurrahman@nexthop.ai>
Cc: linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260119-spi-xilinx-v3-0-4566c33bac0d@nexthop.ai>
References: <20260119-spi-xilinx-v3-0-4566c33bac0d@nexthop.ai>
Subject: Re: (subset) [PATCH v3 0/3] spi: xilinx: switch to device
 properties and make IRQs optional
Message-Id: <176893698361.778248.6867023245726406177.b4-ty@kernel.org>
Date: Tue, 20 Jan 2026 19:23:03 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-47773
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_FROM(0.00)[bounces-257578-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: D2C644ACBE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 19 Jan 2026 07:06:21 +0000, Abdurrahman Hussain wrote:
> Transition the driver to use the generic device property API.
> 
> Additionally, make interrupts optional to allow the driver to fall back
> to its existing polling mode on systems where interrupts are either missing
> or broken.
> 
> Abdurrahman Hussain (3):
>   spi: xilinx: use device property accessors.
>   spi: xilinx: make irq optional
>   spi: dt-bindings: xilinx: make interrupts optional
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/3] spi: dt-bindings: xilinx: make interrupts optional
      commit: b603500de20fbe15ee54580481c1df4212a4ec44
[2/3] spi: xilinx: make irq optional
      commit: c3608162a95a259c669cf9fdccf900782fa8d902

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark


