Return-Path: <devicetree+bounces-321261-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KuB4MCW/S2pfZgEAu9opvQ
	(envelope-from <devicetree+bounces-321261-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 16:43:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 085047121E8
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 16:43:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=proton.me header.s=protonmail header.b=gGEGkS5i;
	dmarc=pass (policy=quarantine) header.from=proton.me;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321261-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-321261-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2CD2B3084295
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 14:14:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97868379C24;
	Mon,  6 Jul 2026 14:13:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-24427.protonmail.ch (mail-24427.protonmail.ch [109.224.244.27])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B41A378833
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 14:13:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783347226; cv=none; b=rRVpy/TclsSYMqBKxWMiD5E3OAs/UouwrwaUCWgJey+IsP8phIfOTqpCiPIYVBm0Pc4NR7JvWbq7EGue+nBKkbnln22ItzgeQGtcTmWkk7jkG27spedN/q9gp6GzkmgV0BACy/czp1saM4KXXasxJ0+9Q85a+zLKALVNIszP3BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783347226; c=relaxed/simple;
	bh=rg3Z+pRakkzbf30JB14rO0FWuTatMEjtnrWu4Ub/HTE=;
	h=Date:To:From:Subject:Message-ID:MIME-Version:Content-Type; b=nV/BjAPGZ8Oj1Mgkj2TE7zGymyBdhQMcKTM4qOHSYGYZfTpoeTD1uSzTEg8bugyiYHipTvpP+nEnQw69KQLqN+Af3Ck+UGHW80HXn95INBssa5v2VKJhM6LcTyYa/GS1PxD4W0LPaNFeSVK9WcPHULUv7axWJFeLPwtz3iVsFC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=proton.me; spf=pass smtp.mailfrom=proton.me; dkim=pass (2048-bit key) header.d=proton.me header.i=@proton.me header.b=gGEGkS5i; arc=none smtp.client-ip=109.224.244.27
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1783347214; x=1783606414;
	bh=uE4IWleZqdvv7KCr9CrJRzZ5cr0T6rRxWZKKOvrK1Ws=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=gGEGkS5izSCVrJStEsw/vK3WRXGpkUCg6G0Ke60Ph4BilLhEbxUTLJnAJy37on5JL
	 BqfFTCwiOXp1Mak9l7PMheax17Ppqd8KqnJjTNGcdRJ6x89iTNB396Muv/j8ijnn5y
	 rFtPgG1tqTCXWepRmRadWa7VFV7on4BMdNJ8N/9CW99qYEoxt9SauoBxsNXUkQPksF
	 6pXHR1+0DTDrXP6y6MlloWV0sNMSwFdLSgGOvDUKHkvpdj5zLR6ZRkVqiRJ5vg2EJ0
	 AyaDx3B6VF5Q29/BOtaQl2idzffiMYnYRpd5j3z39YATxXkmKEtsXGHlBkvyL0HzJY
	 Gb3j6ANh+4pkA==
Date: Mon, 06 Jul 2026 14:13:27 +0000
To: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>, Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, "Ivan T. Ivanov" <iivanov@suse.de>, Stefan Wahren <wahrenst@gmx.net>, Andrea della Porta <andrea.porta@suse.com>, Peter Robinson <pbrobinson@gmail.com>, Stanimir Varbanov <svarbanov@suse.de>, =?utf-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, Gregor Herburger <gregor.herburger@linutronix.de>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>
From: John <therealgraysky@proton.me>
Subject: [REGRESSION] Raspberry Pi 5 (BCM2712) hangs at boot since d87773de9efe  (arm_arch_timer: default to EL2 virtual timer under VHE)
Message-ID: <oTZ1wsFlcf4l8zMuD8DYCCvff35nVbFn7gTb5_vrUPSJtjVBSTmGti8S3KnbVdVWJEzP1QRbWma6UYYXyi6v2J0fl61khniPROEhsdxMIz8=@proton.me>
Feedback-ID: 47473199:user:proton
X-Pm-Message-ID: 350a441ca159c5210a100d3d20d946c897da99d8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[proton.me,quarantine];
	R_DKIM_ALLOW(-0.20)[proton.me:s=protonmail];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-321261-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mark.rutland@arm.com,m:maz@kernel.org,m:daniel.lezcano@kernel.org,m:tglx@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:florian.fainelli@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:iivanov@suse.de,m:wahrenst@gmx.net,m:andrea.porta@suse.com,m:pbrobinson@gmail.com,m:svarbanov@suse.de,m:mcanal@igalia.com,m:gregor.herburger@linutronix.de,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-rpi-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[arm.com,kernel.org,broadcom.com,suse.de,gmx.net,suse.com,gmail.com,igalia.com,linutronix.de,lists.infradead.org,vger.kernel.org];
	FORGED_SENDER(0.00)[therealgraysky@proton.me,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[therealgraysky@proton.me,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[proton.me:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,proton.me:from_mime,proton.me:dkim,proton.me:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 085047121E8

Since commit d87773de9efe ("clocksource/drivers/arm_arch_timer: Default to =
EL2 virtual timer when running VHE"), the Raspberry Pi 5 (BCM2712, arm64) h=
angs during boot on v7.2-rc1 and later. Reverting that commit on top of v7.=
2-rc2 boots reliably. Found by bisection.

Environment: - Raspberry Pi 5 Model B, arm64, device-tree boot (no ACPI) - =
CPUs start at EL2 with VHE - Mainline v7.2-rc1 and v7.2-rc2

Symptom: - Silent hang early in driver probe; no panic or oops. Boot banner=
 shows
  "arch_timer: cp15 timer running at 54.00MHz (hyp-virt)". The first blocki=
ng, timer-backed wait during probe never returns because the EL2 virtual ti=
mer's interrupt is not delivered on this SoC, so clockevents are dead. The =
softlockup/hung-task detectors can't fire either, since they depend on the =
same dead timer.

Cause: - BCM2712's timer node lists five interrupts including the EL2 virtu=
al
  timer (GIC PPI 12). The new default trusts that entry and switches to the=
 EL2 virtual timer, whose interrupt is non-functional on this board.  Befor=
e the commit, VHE systems used the EL2 physical timer, which works.

Possible fix / workaround: - Removing the EL2 virtual-timer interrupt (GIC =
PPI 12) from the BCM2712
  timer node makes the driver fall back to the EL2 physical timer (the pre-=
commit behavior) and boots. Whether the correct fix is in the DT or in hard=
ening the driver's PPI selection, I'll leave to you.

#regzbot introduced: d87773de9efe1df6fe2ba379926f9df92f1a5913

