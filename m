Return-Path: <devicetree+bounces-326175-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MzIfJkcnVmrN0AAAu9opvQ
	(envelope-from <devicetree+bounces-326175-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 14:10:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C15A375453A
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 14:10:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=1V5YCDK1;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=72W64q08;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=1V5YCDK1;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=72W64q08;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326175-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-326175-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=suse.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 11C3A3065EF7
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:54:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E318438C406;
	Tue, 14 Jul 2026 11:52:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6A538A700
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 11:52:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784029979; cv=none; b=sts85r2toZ3yR7Q0l+oz9AgFwViJ54HgKgjg3KNax7Ss8l/UKlCHoD7IhKcWmC2IFQacr1VKarAPWwejTHHR3PePTd1Cgm5oJnzLeJdhNgHqcyzXcpP7cvN3ZlVtyaNj4EyEVGxY++X1KV4jrtiHmZSusohdKTn84gI2O2QOv8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784029979; c=relaxed/simple;
	bh=q62MG/KZnFtxq0b7Jy3yHW3PGTLF9Pt17ZkpVcdzoX0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HQcDH5MmH9cjFoS3F0fcINuoWKJuRTRjfyiVDJd3E/YuRIK3idb40cO835apNNx/j34Imtz7EqWsDGxzTUmyNsEXVTe19YT7uF//eA87bC09kp2wIDonQ4kFr3hZjKZ9tY3h305h+uHibFpUJntZM4jywr3ULUYvfbTeO/IjJZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de; spf=pass smtp.mailfrom=suse.de; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=1V5YCDK1; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=72W64q08; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=1V5YCDK1; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=72W64q08; arc=none smtp.client-ip=195.135.223.130
Received: from kunlun.suse.cz (unknown [IPv6:2a07:de40:b306:2000::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 27F0D77E49;
	Tue, 14 Jul 2026 11:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1784029976; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/arxFu0AfWl5VKJfwYtAIB0ze2CiMONt1SfavfBwTcc=;
	b=1V5YCDK1E9WAmMcZbM4dTaBj5YSZQY0MdPJCDn05bnQi+scYeXcLmKPgJ50aU0gZMzFPPd
	lEKHgSKoFTt9/1j3+I8cFgpefGOm14/hS1Mys2OE/QaxCYTDfrB6+HWLa0R4rOeRu7zkhQ
	MxqP4LEqj8UdPYuFmHQJYWkp+VRY938=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1784029976;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/arxFu0AfWl5VKJfwYtAIB0ze2CiMONt1SfavfBwTcc=;
	b=72W64q08AWUN8gzE3h+nMI8Xu2c5ClDSnYmLwAXd/4poFfEQeEJ15hkGSkvAZkFMqCA71J
	ahS/STSnnltMr3Bw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1784029976; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/arxFu0AfWl5VKJfwYtAIB0ze2CiMONt1SfavfBwTcc=;
	b=1V5YCDK1E9WAmMcZbM4dTaBj5YSZQY0MdPJCDn05bnQi+scYeXcLmKPgJ50aU0gZMzFPPd
	lEKHgSKoFTt9/1j3+I8cFgpefGOm14/hS1Mys2OE/QaxCYTDfrB6+HWLa0R4rOeRu7zkhQ
	MxqP4LEqj8UdPYuFmHQJYWkp+VRY938=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1784029976;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/arxFu0AfWl5VKJfwYtAIB0ze2CiMONt1SfavfBwTcc=;
	b=72W64q08AWUN8gzE3h+nMI8Xu2c5ClDSnYmLwAXd/4poFfEQeEJ15hkGSkvAZkFMqCA71J
	ahS/STSnnltMr3Bw==
Date: Tue, 14 Jul 2026 13:52:55 +0200
From: Michal =?iso-8859-1?Q?Such=E1nek?= <msuchanek@suse.de>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Sudeep Holla <sudeep.holla@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, vsethi@nvidia.com,
	Salman Nabi <salman.nabi@arm.com>, Rob Herring <robh@kernel.org>,
	linux-kernel@vger.kernel.org, Varun Wadekar <vwadekar@nvidia.com>,
	Trilok Soni <trilokkumar.soni@oss.qualcomm.com>,
	devicetree@vger.kernel.org, Nirmoy Das <nirmoyd@nvidia.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 0/8] Arm Live Firmware Activation (LFA) support
Message-ID: <alYjFwi0dnld-wP3@kunlun.suse.cz>
References: <20260706134455.132091-1-andre.przywara@arm.com>
 <alUMGCJzVG6U3Ggm@kunlun.suse.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <alUMGCJzVG6U3Ggm@kunlun.suse.cz>
X-Spam-Flag: YES
X-Spam-Level: ***************
X-Spamd-Bar: +++++++++++++++
X-Spam-Score: 15.68
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.34 / 15.00];
	SPAM_FLAG(5.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:andre.przywara@arm.com,m:mark.rutland@arm.com,m:lpieralisi@kernel.org,m:sudeep.holla@kernel.org,m:conor+dt@kernel.org,m:vsethi@nvidia.com,m:salman.nabi@arm.com,m:robh@kernel.org,m:linux-kernel@vger.kernel.org,m:vwadekar@nvidia.com,m:trilokkumar.soni@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:nirmoyd@nvidia.com,m:krzk+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	GREYLIST(0.00)[pass,body];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER(0.00)[msuchanek@suse.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[suse.de:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[msuchanek@suse.de,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-326175-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,suse.de:from_mime,suse.de:dkim,kunlun.suse.cz:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C15A375453A

On Mon, Jul 13, 2026 at 06:02:35PM +0200, Michal Suchánek wrote:
> On Mon, Jul 06, 2026 at 03:44:40PM +0200, Andre Przywara wrote:
> > Hi all,
> > 
> > this is version 3 of the Live Firmware Activation kernel support. The
> > device part of the code now relies on Aneesh's SMCCC bus patches[1],
> > which solves some problems rather nicely. I also added the formerly
> > missing sysfs ABI documentation. Based on v7.2-rc1, plus the first
> > two patches from Aneesh's series. More detailed changelog below.
> > ==============================
> > 
> > This series implements the kernel side support of the Arm Live
> > Firmware Activation (LFA) specification [2]. LFA enables the activation
> > of updated firmware components without requiring a system reboot,
> > reducing downtime and allowing quicker deployment of critical bug fixes
> > in environments such as data centers and hyperscale systems.
> > It requires explicit firmware support, both via an agent running in EL3
> > (for instance in TF-A, already merged), but also in the firmware
> > component to be activated. TF-RMM recently merged support for this.
> > 
> > Unlike the usual firmware update process (which may use tools like
> > fwupd), LFA focuses solely on the activation of an already updated
> > firmware component, called "pending activation" in LFA lingo. This works
> > by signalling the LFA agent (part of the EL3 runtime firmware) via an
> > SMC call, which then does the heavy lifting of the live update, in
> > cooperation with the to-be-updated firmware component.
> > 
> > Key features of the driver:
> > * Detects LFA support in system firmware (EL3).
> > * Lists all firmware components that support live activation, identified
> >   by their GUID.
> > * Exposes component attributes (e.g., activation capability, and
> >   activation pending) via sysfs under /sys/firmware/lfa/<GUID>/.
> > * Provides interfaces to:
> >   - Trigger activation of an updated firmware component.
> >   - Cancel an ongoing activation if required.
> > A more detailed list of features can be found in patch 2/8.
> > Based on v7.2-rc1.
> > 
> > This work is conceptually similar to Intel’s Platform Firmware Runtime
> > Update and telemetry (PFRUT) [3] and TDX module updates [4], but
> > targets Arm platforms. The driver has been used to successfully activate
> > a Realm Management Monitor (RMM) firmware image in a controlled test
> > environment. RMM is analogous to Intel’s TDX module.
> > 
> > There is effort on similar work from the OCP [5]. Future work may
> > include integration with utilities like fwupd to automatically select
> > the appropriate driver, based on platform architecture, for Live/Runtime
> > firmware updates.
> > 
> > Please have a look, test and comment!
> 
> Hello,
> 
> booting a kernel with v2 of this patchset applied the module does not
> get autoloaded. Loading it manually I get
> 
> [ 1972.957282] [   T5195] Arm LFA: Live Firmware Activation: detected v1.0
> [ 1972.958620] [   T5195] Arm LFA: registered LFA ACPI notification
> 
> Is this expected?
> 
> I would expect the driver to load automatically.
> 
> I do not see anything in the v3 changelog obviously addressing
> autoloading but changing to using a bus might affect that.
> 
> I will try to update to v3 later.

Hello,

updating to v3 of the patchset resolves the problem.

The driver is now autoloaded.

Thanks

Michal

