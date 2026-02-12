Return-Path: <devicetree+bounces-265144-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCPQMCUBjmm0+AAAu9opvQ
	(envelope-from <devicetree+bounces-265144-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:34:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 414DB12F7F8
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:34:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0CABF3004C01
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 16:34:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C48E031B824;
	Thu, 12 Feb 2026 16:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X236n7u5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A11DE2040B6;
	Thu, 12 Feb 2026 16:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770914082; cv=none; b=j91S/vFvexjLGzowtB7p7vCX+dk+7X2KjFtnqeQ/Eq7hKhNcfXbgyt8WeuOviW2Lsgt+kmjF3rjlMFxRgNCbzN6t67a3Y9F3cPCJNE9eVj/6885znDFUollROQ5AAeQkCu9VqYgaGuCn7h+V2qzHOKu4QoMUgG0XJx/4v45KWto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770914082; c=relaxed/simple;
	bh=Z1k1swlo0aKkMijmAUSKhyN5/NA/sAYeXY+fHtBonVo=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=fuQwOXvEQ5Z9iz1oSZMtKIMfD5J41eF1MDPofwTlSI8I3HCszGpZhvXLWc2jrueoGxKDuHsQJc8JW7ftM1/AogzU4TELKEhO+GqJtBZWO7feszWBrTFEEA98IOv76QZ4Jfo6sYyqkGWIBt6cLYCVFecvlfU6iuJkhPM5ML8ZoNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X236n7u5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACB66C4CEF7;
	Thu, 12 Feb 2026 16:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770914082;
	bh=Z1k1swlo0aKkMijmAUSKhyN5/NA/sAYeXY+fHtBonVo=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=X236n7u5VLsG3X9Y5ZWdKAn+Z3Ck+2CEgMuw7FD2vdJHfe+Em0lfnXDXIpcyjGOmE
	 0r4dFumYlDxrUSVe9NsV/4C3d4y3k0oOg5kh+OJI+aVJpT8Z4+dTLnwXQw3OEEXvqX
	 NtgknP3QGFfLS2t58XT0HU94xBtJUsEXRnGUXBVeOLekMI4EKJdeDaQxtXL3om1WHH
	 r7dSassZ1vcuJivWOkzkeEoLVvGKJdpxLj+UCAWzqnBbzRRguaLjdSV4bInhJvKX3v
	 00iCR7cMNq98JlxX1lhMPcGY3mP0pn3vBMDqcu7gKGTxa0PAM6iGiuB4e9xYE99Faw
	 YkMu7sh8O1NsA==
From: Mark Brown <broonie@kernel.org>
To: lgirdwood@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, linux-sound@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Shengjiu Wang <shengjiu.wang@nxp.com>
In-Reply-To: <20260211101009.2895296-1-shengjiu.wang@nxp.com>
References: <20260211101009.2895296-1-shengjiu.wang@nxp.com>
Subject: Re: [PATCH] ASoC: dt-bindings: asahi-kasei,ak5558: Reference
 common DAI properties
Message-Id: <177091408040.278884.2237450265817200561.b4-ty@kernel.org>
Date: Thu, 12 Feb 2026 16:34:40 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-47773
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265144-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,vger.kernel.org,nxp.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 414DB12F7F8
X-Rspamd-Action: no action

On Wed, 11 Feb 2026 18:10:09 +0800, Shengjiu Wang wrote:
> Reference the dai-common.yaml schema to allow '#sound-dai-cells' and
> "sound-name-prefix' to be used because asahi-kasei,ak5558 is codec DAI.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: asahi-kasei,ak5558: Reference common DAI properties
      commit: 42a9a5c25615aa1206f893695016a556b345ba85

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


