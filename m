Return-Path: <devicetree+bounces-272295-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uEQ0FYQMq2k/ZgEAu9opvQ
	(envelope-from <devicetree+bounces-272295-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 18:19:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AFF225D83
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 18:18:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8F7A330906A1
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 17:13:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EDBC47D93A;
	Fri,  6 Mar 2026 17:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b="IOyBgq+i"
X-Original-To: devicetree@vger.kernel.org
Received: from raptorengineering.com (mail.raptorengineering.com [23.155.224.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1F1C41C0AF;
	Fri,  6 Mar 2026 17:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=23.155.224.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772817077; cv=none; b=cnMg4zhXIPhcldkDSousegPKihLWFLaxmsdMEjipd9OFDVbo8hINoSpYkBTNH+oro6IMn/RZ8yucFnt09oi6PrBhSnHGHqfWFOGGkI9tFfiCVtxgxr/da6PSBzz+cluUD6lMObqpPbWO0aHl3hOmhLB3kX4qEm5XFp0+MbkiwQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772817077; c=relaxed/simple;
	bh=8C3Jfb3dYINRYDrI1wDXrhPs7b4uNE3bVTMtddNK20Y=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
	 MIME-Version:Content-Type; b=QzPh/7EGZn5hBc51NsdTUbAtkgEYlM6I0jovUBxoTSMnlPfafHqsGLPyqVNiY080xk5593ggnIzOvsgFXmlwrVKFllmB/Y/Nb0IwnggrFHhuHWSRvRvAD12u2UjMRIBsOBKFVc/dLj93o1av5rH9D3TxREWeewk67NKDHXZ25js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com; spf=pass smtp.mailfrom=raptorengineering.com; dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b=IOyBgq+i; arc=none smtp.client-ip=23.155.224.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raptorengineering.com
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id CE8C47791E7D;
	Fri,  6 Mar 2026 11:04:10 -0600 (CST)
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id AZ1jICwx1IIR; Fri,  6 Mar 2026 11:04:10 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 080347791C4E;
	Fri,  6 Mar 2026 11:04:10 -0600 (CST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rptsys.com 080347791C4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=raptorengineering.com; s=B8E824E6-0BE2-11E6-931D-288C65937AAD;
	t=1772816650; bh=3zUPbJA2VVfOb0tOV9nmaQxzk2J1jQ+DczUqlRJgqSs=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=IOyBgq+idDFNql5l7TtpqY3oMlvdlO7DutfZxMNk5pgS/wNeXL71k/LBb1CJLof2r
	 6yupF3jlxYiSFbezDV0rFbh4B0CEGdZAsiwCRbV+K7+d9ljwaI/NQzqpdrTN3xPS/6
	 cUN7XjQBKnZkNqdssi7+xFnvXlXMLyyCtku3Vtiw=
X-Virus-Scanned: amavisd-new at rptsys.com
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id eHN9uKFnAxSB; Fri,  6 Mar 2026 11:04:09 -0600 (CST)
Received: from vali.starlink.edu (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id C90217790702;
	Fri,  6 Mar 2026 11:04:09 -0600 (CST)
Date: Fri, 6 Mar 2026 11:04:06 -0600 (CST)
From: Timothy Pearson <tpearson@raptorengineering.com>
To: Conor Dooley <conor@kernel.org>
Cc: Lee Jones <lee@kernel.org>, robh <robh@kernel.org>, 
	Raptor Engineering Development Team <support@raptorengineering.com>, 
	devicetree <devicetree@vger.kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Georgy Yakovlev <Georgy.Yakovlev@sony.com>, 
	Shawn Anastasio <sanastasio@raptorengineering.com>, 
	Timothy Pearson <tpearson@raptorengineering.com>
Message-ID: <1360170183.286029.1772816646737.JavaMail.zimbra@raptorengineeringinc.com>
In-Reply-To: <20260306-kept-shelving-67e5d74dbf5d@spud>
References: <20260129192047.562540-1-support@raptorengineering.com> <20260129192047.562540-2-support@raptorengineering.com> <20260209174912.GA1474958-robh@kernel.org> <20260306083101.GC183676@google.com> <20260306-kept-shelving-67e5d74dbf5d@spud>
Subject: Re: [PATCH v7 1/4] dt-bindings: mfd: Add sony,cronos-smc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailer: Zimbra 8.5.0_GA_3042 (ZimbraWebClient - GC143 (Linux)/8.5.0_GA_3042)
Thread-Topic: dt-bindings: mfd: Add sony,cronos-smc
Thread-Index: yhFatKV/+d8A3WJc/w3kl1GlC6ujig==
X-Rspamd-Queue-Id: 61AFF225D83
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[raptorengineering.com,quarantine];
	R_DKIM_ALLOW(-0.20)[raptorengineering.com:s=B8E824E6-0BE2-11E6-931D-288C65937AAD];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272295-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[raptorengineering.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,raptorengineering.com:dkim,raptorengineering.com:email,sony.com:email];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[tpearson@raptorengineering.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Action: no action



----- Original Message -----
> From: "Conor Dooley" <conor@kernel.org>
> To: "Lee Jones" <lee@kernel.org>
> Cc: "robh" <robh@kernel.org>, "Raptor Engineering Development Team" <support@raptorengineering.com>, "devicetree"
> <devicetree@vger.kernel.org>, "linux-kernel" <linux-kernel@vger.kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
> "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Georgy Yakovlev" <Georgy.Yakovlev@sony.com>, "Shawn
> Anastasio" <sanastasio@raptorengineering.com>, "Timothy Pearson" <tpearson@raptorengineering.com>
> Sent: Friday, March 6, 2026 10:49:56 AM
> Subject: Re: [PATCH v7 1/4] dt-bindings: mfd: Add sony,cronos-smc

> On Fri, Mar 06, 2026 at 08:31:01AM +0000, Lee Jones wrote:
>> On Mon, 09 Feb 2026, Rob Herring wrote:
>> 
>> > On Thu, Jan 29, 2026 at 01:20:44PM -0600, Raptor Engineering Development Team
>> > wrote:
>> > > From: Shawn Anastasio <sanastasio@raptorengineering.com>
>> > > 
>> > > The Sony Cronos Platform Controller is a multi-purpose platform controller
>> > > that provides both a watchdog timer and an LED controller for the Sony
>> > > Interactive Entertainment Cronos x86 server platform. As both functions
>> > > are provided by the same CPLD, a multi-function device is exposed as the
>> > > parent of both functions.
>> > 
>> > Why do we have DT bindings for a x86 server platform?
>> 
>> This looks like an ARM device that connects to an x86 platform.
> 
> I dunno. The text talks about "this" being a cpld, so at best it would
> have to be connected to an arm SoC that's on the x86 platform's board,
> acting as a BMC or something similar.
> Unless by "this" you don't mean the device in the binding, but rather
> the platform that the device in the binding is connected to.
> 
> I've kept this in my mailbox for the last month, because I was wondering
> the same thing as Rob, and there's been no engagement from the submitter
> at all. I don't think that that should be rewarded by trying to give the
> benefit of the doubt.

Apologies for the lack of response, I hadn't seen the initial Email.

As suspected, this patch set is required to enable the ARM-based BMC SoC on the custom x86 server platform.  The peripherals in question are attached directly to the BMC, hence the need to have DT bindings for their drivers.  The BMC runs the OpenBMC firmware stack, which does not accept downstream patches to the Linux kernel and thus the Linux kernel itself ends up as a gate for new BMC platform enablement.

Thank you!

