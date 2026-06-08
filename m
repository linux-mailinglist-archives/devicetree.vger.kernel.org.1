Return-Path: <devicetree+bounces-308826-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id o02xLPPSJ2rC2wIAu9opvQ
	(envelope-from <devicetree+bounces-308826-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 10:46:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B57D65DEE6
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 10:46:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gLN3Tz0C;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308826-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308826-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 10CAD3063938
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 08:40:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE2363EEAC0;
	Tue,  9 Jun 2026 08:40:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFEE433C195;
	Tue,  9 Jun 2026 08:40:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780994437; cv=none; b=Xy9fCTtu4EdlpztCrQrAjDZoxyYNXHoWGc0SHZxgKyAgIWd4VcTJivoIHz/npcX1439LcQE64y8NW0AX3C12vi228zWyWyHREWoR/XRqlbDxBFEjmGvjBPsu0QnNFd+l/Xxwy2CaAdwwuRVvFp7G2qO93AULg4cutES6Snpe8F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780994437; c=relaxed/simple;
	bh=XSjoHKs8MCMIjerSDcjBJdrB/+DJHhLIab/p1Ghmjxg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=D78vzRlbIvPufwAGxHrjVLk0RSxDSOxbKYdfSjg0I9YwMCqFdxRui5Rx9nqNF5HYIZIiBPNCQ6LJvqYslMwnEk2PRGkIJsZikPWo3L90PC9d/w8bNpvJuylppBNHGnXjfQgRnphOF6zAdQ8PycxG21Ufre4n77I8C0EcPPFnqsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLN3Tz0C; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A01CD1F00893;
	Tue,  9 Jun 2026 08:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780994436;
	bh=ogyh4wObZizXAya8DYDVQH81cbqfbWCBqwPAMYcZIC4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=gLN3Tz0CeLBoINPbLoMDEUIeCS40M/eztQaoXb2xOXXCuWH/8ntgJohyObvQ49N/Q
	 1vu3Qb/12zKwAVIoVIaEfG0NxUHdmW5xIwt6AYmcYQqhb/7ZS8P7VZlvkzuHG+81WE
	 zBsafO+3vZ4CFTAr/PkIfa3TnPo1G736JHlBBX2/FTwVZDKeB9VpMyyUvfwl58YDPy
	 p4derCnh8YJvfxsZaBUuaOqjHlp7BGDxE+Cbo+0O9Bo/cxQe23lKWqRQ9PpBk8KF1p
	 Q/HbK8FCDH/RjSQSV+WqD9F2nxhyv6gZkuPeP/bbJb5Uamr+iW8Qluy335nZegcijS
	 4FljBATGIB1Gg==
From: Mark Brown <broonie@kernel.org>
To: lgirdwood@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, Chancel Liu <chancel.liu@nxp.com>
Cc: shengjiu.wang@nxp.com, shengjiu.wang@gmail.com, Xiubo.Lee@gmail.com, 
 festevam@gmail.com, nicoleotsuka@gmail.com, perex@perex.cz, tiwai@suse.com, 
 Frank.Li@nxp.com, s.hauer@pengutronix.de, linux-sound@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 imx@lists.linux.dev, linux-kernel@vger.kernel.org
In-Reply-To: <20260528020725.2265321-1-chancel.liu@nxp.com>
References: <20260528020725.2265321-1-chancel.liu@nxp.com>
Subject: Re: [PATCH v2 0/3] ASoC: imx-rpmsg: Add headphone jack detection
 and driver_name support
Message-Id: <178094123266.20828.2548677822968710520.b4-ty@b4>
Date: Mon, 08 Jun 2026 18:53:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1653; i=broonie@kernel.org;
 h=from:subject:message-id; bh=XSjoHKs8MCMIjerSDcjBJdrB/+DJHhLIab/p1Ghmjxg=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBqJ9Fxq985rl6kfTLCWLnzgyx0mjqIxkqYD996p
 GmnbAq+9+WJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCaifRcQAKCRAk1otyXVSH
 0Pz7B/9FpjAQLHNUdUnnW0vYfUAIj7d1B+K/0BzPsIUnYoaLa/9/3mAYK+III9/dbbmJ5lIeciG
 BCywHAC0/i96S9Ocrz8FYBu6NXNozRr9GVGV2UrbqjjhaNKq/LI2fXnpYhPWj0jsPPWMX8/PPrr
 /c2nrMWRmZMhm2BrgvQI5FOyFqjMhAMl87ZfhHzxvvS5POknlQQw4Cb79LrELy2L4iuMgC+9PiX
 Jk121hJBNFh9wF4ozz83VsyVui5ZSg28uV+snrfVPV9/vm6E2w5RQMEp2zn2r8vAnllRum0htVE
 O2hed+mhbUu87ZlXDJavMdPzvvCturASxUp9R2Jsb2CnhHkr
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:chancel.liu@nxp.com,m:shengjiu.wang@nxp.com,m:shengjiu.wang@gmail.com,m:Xiubo.Lee@gmail.com,m:festevam@gmail.com,m:nicoleotsuka@gmail.com,m:perex@perex.cz,m:tiwai@suse.com,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:imx@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:shengjiuwang@gmail.com,m:XiuboLee@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,nxp.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-308826-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,perex.cz,suse.com,pengutronix.de,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0B57D65DEE6

On Thu, 28 May 2026 11:07:22 +0900, Chancel Liu wrote:
> ASoC: imx-rpmsg: Add headphone jack detection and driver_name support
> 
> This series adds two features to the i.MX RPMSG ASoC card:
> 1. Headphone jack detection via GPIO: Introduce the "hp-det-gpios"
>    device tree property and use simple_util_init_jack() to
>    register a headphone jack with GPIO-based insertion detection.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-7.2

Thanks!

[1/3] ASoC: dt-bindings: fsl,rpmsg: Add hp-det-gpios property
      https://git.kernel.org/broonie/sound/c/1558039bea60
[2/3] ASoC: imx-rpmsg: Support headphone jack detection
      https://git.kernel.org/broonie/sound/c/ec74d4f934a6
[3/3] ASoC: imx-rpmsg: Set driver_name for snd_soc_card
      https://git.kernel.org/broonie/sound/c/af0d8aa7fcd5

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


