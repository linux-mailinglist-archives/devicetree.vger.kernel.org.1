Return-Path: <devicetree+bounces-257397-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGUFIqtScWkKCQAAu9opvQ
	(envelope-from <devicetree+bounces-257397-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 23:26:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 118955EC77
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 23:26:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9829E76C317
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 12:54:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF837426EB2;
	Tue, 20 Jan 2026 12:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGb5hCrm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632034266B8;
	Tue, 20 Jan 2026 12:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768913531; cv=none; b=ZVM3ZvWTcjnXE/R2X/qUnAfye7l5xE5wwD9atQqmsBT0jDIJdBHwT+EXMnEDUUPYObXzPeRtLN92pGZYroJ1VN7aExEojVuOfDSm5toe5PGtk1vdEPnLQigC8I3mpyf4e1GyREgPLH04MKH0y7QORdKAndvS7lBBzsnK+RIDe/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768913531; c=relaxed/simple;
	bh=bc28KWZ4Nes1dVdT5o72sgDVqx84W02iDqzED50KaTA=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=WDayvHj+Zy/A4bQdpHu+n4eCi8oJ5WiXr1PEihU1+QWxz88smJNlF+JusTs5o6tzJ/l3fo3YHMGkELGvmousIp8ETT0yFp8Q60vUhLkvClawaGEtJQdM5/XFXWOiBf0FVccoHiRq+9VFCZvWdcvr2lMlbdf7EMQNlrz9TfEE5Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGb5hCrm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40520C2BC9E;
	Tue, 20 Jan 2026 12:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768913530;
	bh=bc28KWZ4Nes1dVdT5o72sgDVqx84W02iDqzED50KaTA=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=RGb5hCrmbwFcK2OkCJYJo2brNvk5x9DZplXTFTf57NLeH4f+Kl1GAnC3hEGU4lUgC
	 AD/72LTXbNet5aL6/lpknEYOjrbMCgyB7Nv467G3pUsPFkl1OWCzCR8EAW5nszRari
	 yWXSKQ5qtS8Yq0Vr60xU1K9HKh3K0eAzs/5v70ZEyVZPRVX16C0Ghx7SJorfqWtglX
	 pnrDkaoNxknAfVWCuc9+ITPycHLTB09VXke+aeiABgFJ3xluVr3WUzFEbpbHw1ByoW
	 R1XpRdh6Oc/1RJdmU2xbYCuAHDIRwL16lW/wqAFHC7RUuPzXVbwg5uPVWygvcWvtZt
	 hSCM7GQXKNj4g==
From: Mark Brown <broonie@kernel.org>
To: shengjiu.wang@gmail.com, Xiubo.Lee@gmail.com, festevam@gmail.com, 
 nicoleotsuka@gmail.com, lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, 
 linux-sound@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, devicetree@vger.kernel.org, 
 Shengjiu Wang <shengjiu.wang@nxp.com>
In-Reply-To: <20260115061418.4131432-1-shengjiu.wang@nxp.com>
References: <20260115061418.4131432-1-shengjiu.wang@nxp.com>
Subject: Re: [PATCH v2] ASoC: dt-bindings: fsl,sai: Add support for i.MX952
 platform
Message-Id: <176891352801.86219.3828176720307654580.b4-ty@kernel.org>
Date: Tue, 20 Jan 2026 12:52:08 +0000
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
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DATE_IN_PAST(1.00)[33];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257397-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,perex.cz,suse.com,vger.kernel.org,lists.ozlabs.org,kernel.org,nxp.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: 118955EC77
X-Rspamd-Action: no action

On Thu, 15 Jan 2026 14:14:18 +0800, Shengjiu Wang wrote:
> Add a new compatible string 'fsl,imx952-sai' for i.MX952 platform, which
> is fallback compatible with 'fsl,imx95-sai'.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: fsl,sai: Add support for i.MX952 platform
      commit: 2e48020fd7ced9e9953c55b57a5cb608e64deee0

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


