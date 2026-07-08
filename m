Return-Path: <devicetree+bounces-323728-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Z5iSGQmTT2rfjwIAu9opvQ
	(envelope-from <devicetree+bounces-323728-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 14:24:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B627F730F13
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 14:24:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=P8CD5IG1;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323728-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323728-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 841EA30DB7A1
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 12:19:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7565441F7EA;
	Thu,  9 Jul 2026 12:19:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5375E3F86FB;
	Thu,  9 Jul 2026 12:19:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783599555; cv=none; b=IaZVsnLoThqUF0sRziC3vlhMlONfs4Fpu//S22cwEjTp2gkxtlhoMRqGQx/CGnFe12BrK4SHDr+f452i6SucITZ7GWltQ2QO9bvpLHey75peWTAM0E+Ym3ZHJBiYrVCaMWgcXfUlEDRCLZP8kPn40RC9LdDS6aQ4tiZdV0VhnxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783599555; c=relaxed/simple;
	bh=MplgETsFM0VexgxoMrMIq6KgDR0KfukYSXZ79Q+Fz88=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=evFt/Sfa9vkxUdlASSlm7PlnVZp1DVGvR7+pySgabGCUr8TTvhiBex+PTbJRdWzuLOanuoNwVBaWVWAJeKG6cLE/lQpgcF07XLrEz5HiNhm/iJHlZhT1K8dQ0MIKpExwIuz1ugvvhXIRx8bwImx5zZSZn4OGRqgEl5mo3QJI1ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8CD5IG1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93BB61F000E9;
	Thu,  9 Jul 2026 12:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783599554;
	bh=CZCFvOFR+D0f5Pbt8AtYWBwNyj+1RPtceMZuCD+FMqU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=P8CD5IG1QerO/rMxsjVGMH8VVGwWc7LbqHxR/JTqs2O8cmCHIh8pv4tmYsjza7UYF
	 nijiUr90kSMEHTrf6pZnLquyRq1F4fLXnqosDwaWyF7Avhg66ACT5ZTYAJ6Qvdpk4C
	 yS1Zk03/NS3OL39YRuRk/uec/u6e+qnF7j+/DEkyD2mOHi9FWku62UUs1d7cpa7h8Z
	 S6lTuWa0Zv5OYjEBD44hkE8dGkobo3xnDSyNeM5rCPFuQ5l2TfiGmJ5j+rHIVzqBBR
	 Jd+o04fNovG/MaAOZB29N74Xwz9CTSpPD7Iqr25zBpkdAAw15fsJ3dt6IBxgaVUOb0
	 4RsG+rqCt7vMg==
From: Mark Brown <broonie@kernel.org>
To: lgirdwood@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, Frank.Li@nxp.com, s.hauer@pengutronix.de, 
 chancel.liu@oss.nxp.com
Cc: kernel@pengutronix.de, festevam@gmail.com, linux-sound@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20260707065725.312450-1-chancel.liu@oss.nxp.com>
References: <20260707065725.312450-1-chancel.liu@oss.nxp.com>
Subject: Re: (subset) [PATCH 0/6] Add audio support on i.MX91 9x9 QSB
Message-Id: <178353053174.26140.5507506345849775715.b4-ty@b4>
Date: Wed, 08 Jul 2026 18:08:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1664; i=broonie@kernel.org;
 h=from:subject:message-id; bh=MplgETsFM0VexgxoMrMIq6KgDR0KfukYSXZ79Q+Fz88=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBqT5G+bOeWXFq6laYD7zprq60YsaMtJmfMGd1gB
 n8CI8Eks86JATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCak+RvgAKCRAk1otyXVSH
 0LrbB/9HQlTk58Ks5hTLUaXIH8HSzFf+mA6d/gBSskg+ClnJe2s5pNC4SrdFEP5Jf+aJvH8z5mP
 Zy3JnXF/I8pX/zrA8A/hSci8qGld7sG8JVgvuYwO7CqIlj+L45XxiltorhsYwf1mSoTuUZ1YCox
 mGtbtWyOr1BQQ7WHAfWCBHFZUko7QfTGAC8044YPGlNTc3FoPymNxNiGQKQuYoYq6dW4my4DVmZ
 Q8brkK+WUyZhQBUIwd3un7aZrK3sg4zz8LFWprPBr3eMMEuU7/J3j1mNYWWDTSn9NrG40Dqg8tu
 H5H2NWCNMnS4we0AI9lEpJdCVJHC8SqOuDYBYywzyP2locLf
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,nxp.com,pengutronix.de,oss.nxp.com];
	TAGGED_FROM(0.00)[bounces-323728-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:chancel.liu@oss.nxp.com,m:kernel@pengutronix.de,m:festevam@gmail.com,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B627F730F13

On Tue, 07 Jul 2026 15:57:19 +0900, chancel.liu@oss.nxp.com wrote:
> Add audio support on i.MX91 9x9 QSB
> 
> From: Chancel Liu <chancel.liu@nxp.com>
> 
> The board routes audio related signals through on-board muxes controlled
> by a GPIO expander. Add the mux states required by SAI1 playback and PDM
> capture. Add support for WM8524 and PDM microphone sound cards in DT.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-7.3

Thanks!

[1/6] ASoC: dt-bindings: wlf,wm8524: Add audio-graph port support
      https://git.kernel.org/broonie/sound/c/7ccad5668957
[2/6] ASoC: dt-bindings: fsl,micfil: Add audio-graph port support
      https://git.kernel.org/broonie/sound/c/28017bf7f762
[3/6] ASoC: dt-bindings: dmic-codec: Add audio-graph port support
      https://git.kernel.org/broonie/sound/c/cf3bd20c43f7

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


