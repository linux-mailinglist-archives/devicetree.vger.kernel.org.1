Return-Path: <devicetree+bounces-317926-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aiDVCKXnQ2pZlQoAu9opvQ
	(envelope-from <devicetree+bounces-317926-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 17:58:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B54F6E62DE
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 17:58:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=RUFVmX8e;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317926-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317926-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E6C0031AB54C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:49:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79A4746AEF1;
	Tue, 30 Jun 2026 15:49:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BE746AECC;
	Tue, 30 Jun 2026 15:49:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782834552; cv=none; b=iLrDx0pPmad2i48Q2daRP7mp2m9mJB02CONSMCvdy0fJMBn6gWLh6Ojaf/IgRZAN3VPoz3TDfzwQEUdXyjKhNDEHxEkm4OI6vaDk0/4+PSHFLXreI0bjcMqOZqY9ddtncECCKPJNPUWglxrh3kuS+/7WDvdyjUkrVqx21NzxfH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782834552; c=relaxed/simple;
	bh=+mu2xcT0nwoLIp0swtqhupdARRBhiosNKr6wrjgJjVI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=gDLdbz1XgWGMTjNdsJ8k+Ymi/8W5F6u/YqctDrZ6ngV8txfJukbri015CPf3pyqRDPW28/stl62w1mKiXZSpNK5mE5FZ7vg+v47QoS1k2a7h4cRE7NAsdfQ5moIQg+r5JlufJEfcF4BlUFDPAW5L41T3zR3Wg6636w0fuqV66IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUFVmX8e; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 306D31F000E9;
	Tue, 30 Jun 2026 15:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782834550;
	bh=N1cs8dxUNXx7SRL0RkpGK0B4FDOYukdxUpHg73xldcM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=RUFVmX8eilDkdKM0sG6CWCGkb7gQrzEOndXlZzkoOZHum9hxFdF+niGsUUhFRVyjr
	 tfh99GcFq1b3LwO5Rm80FcJBY41dVkCB7kmchY52rfSHxVpByWq3aNi/qFpVB/9KtT
	 NfYVYjt9EapVoOxqyAtkATKZqY7R6j/YGL42STxRqaGXZBp+L9kUu7+EAZVAkSIAd5
	 ORVb+3n5SHYu3A/53L1VWYregeGhxGbjnOKlr+glqkOYfHFPEEjI99Lvqkani2VyjF
	 3RZ13tiHF9njRTMlyEGRy5fjaLL/uOSfAYcIH06KLpdjniwLRa5sO93KsdRggrSINc
	 3v5agWethJwaQ==
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, cy_huang@richtek.com
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Yoon Dong Min <dm.youn@telechips.com>, 
 edward_kim@richtek.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <cover.1782444299.git.cy_huang@richtek.com>
References: <cover.1782444299.git.cy_huang@richtek.com>
Subject: Re: [PATCH v2 0/2] rtq2208: Remove the unnecessary MTP_SEL
 property
Message-Id: <178281978386.79320.3879730013919887255.b4-ty@b4>
Date: Tue, 30 Jun 2026 12:43:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.16-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1509; i=broonie@kernel.org;
 h=from:subject:message-id; bh=+mu2xcT0nwoLIp0swtqhupdARRBhiosNKr6wrjgJjVI=;
 b=owEBbQGS/pANAwAKASTWi3JdVIfQAcsmYgBqQ+V07tRTTH4d/aOKjxbKgW3RbRGhh4fnB4gsw
 LA6GKTeFgqJATMEAAEKAB0WIQSt5miqZ1cYtZ/in+ok1otyXVSH0AUCakPldAAKCRAk1otyXVSH
 0NnVB/wLYgGsMKhw7CRDJqy1pW+yYOxvs2vmra05EE22ASxIfgNt+/h6A5y+t7TeH//DjfXVSZf
 zyKUNo3qWAALDnDGj/zuJ/l7QcYkOjhQ9AM5OSFJ+PdU/szmTW6gnmlrV5n+AXRJQGkAvqkZg+y
 hDMrvFvXLD1n6Jduy6/7Z+tPqQxdVPKPzaSRwYvVkcOUSbVwZafI1ssw51/ugWE4LgtLFkAsFJ+
 T1JRe4cyyK7CzgnP1kuhEGL2Go9zOToZ6IunAEOfcFq46RMkkZ/5D2pxnkzrxf/qyvdvrQU2fqa
 PaxY11yR+m1JS8TbE2jz43zvSqjObbF+MSMQEmR0ILwgTV9j
X-Developer-Key: i=broonie@kernel.org; a=openpgp;
 fpr=3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317926-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:krzk+dt@kernel.org,m:cy_huang@richtek.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:lgirdwood@gmail.com,m:dm.youn@telechips.com,m:edward_kim@richtek.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,telechips.com,richtek.com,vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[richtek.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8B54F6E62DE

On Fri, 26 Jun 2026 11:38:51 +0800, cy_huang@richtek.com wrote:
> rtq2208: Remove the unnecessary MTP_SEL property
> 
> From: ChiYuan Huang <cy_huang@richtek.com>
> 
> This patch series remove the 'richtek,mtp-sel-high' property usage.
> 
> v2:
> - Remove'richtek,mtp-sel-high' from yaml example block
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-7.3

Thanks!

[1/2] regulator: dt-bindings: rtq2208: Label mtp-sel-high property as deprecated
      https://git.kernel.org/broonie/regulator/c/9f6e4b8befc4
[2/2] regualtor: rtq2208: Initiate the default MTP_SEL state by hardware register
      https://git.kernel.org/broonie/regulator/c/2f84cec84ffa

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


