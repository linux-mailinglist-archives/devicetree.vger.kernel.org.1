Return-Path: <devicetree+bounces-281274-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEgbHN5LxWkU8wQAu9opvQ
	(envelope-from <devicetree+bounces-281274-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 16:08:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C0439337474
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 16:08:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C7933304E818
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 15:00:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36B543FB7F6;
	Thu, 26 Mar 2026 15:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="cGPf09tN"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2321338B121;
	Thu, 26 Mar 2026 15:00:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774537210; cv=none; b=G/DZsJmJLwBTpG2OWcFJncURQthjYYKveMbaOGDJ0/tWVrylGfMGa2mtKe+19Vih0Ma4CRj/4WJJl04pMEnn8Qzmx5lqhaEIQ+L2vT5/TC1aqoJ+YTn5ERckZcUgJxPkudzRCJaych9sO+onZ33j0cp3yWlpu1RXTBkEk2XqNIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774537210; c=relaxed/simple;
	bh=KrD5+E/sPqShKW5rQjT46miMmCkjaRLinJ3hjRfBDcI=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=tPxZRlwevcLB0tQKKUch7KM1N02dDZ61pueMjVI3xmdNnpCLLvwT2zytx8HrEpaZAuyQkA86/kxML0zDbkVUXY47jab9hFqRqCPsOUUvKTfBWLClwmGwfU8ucZpA2RUSvRm0CBZ9I+k0firxg7nzwp01rYCOJoJd3RE3PafHhtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=cGPf09tN; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id BD15C2689A;
	Thu, 26 Mar 2026 15:59:58 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mofW45hx9Nhz; Thu, 26 Mar 2026 15:59:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1774537198; bh=KrD5+E/sPqShKW5rQjT46miMmCkjaRLinJ3hjRfBDcI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=cGPf09tNjzV7fDBxpBykRofxYcL2Et/EOBzsS0GGaI+glhvAlg8weVirrEs2+D1sh
	 loJDCmQjJ3iubvcKIJa4SoDDbtEFdHO0ssYdg9TMzINxUg+fBkrjN4id98JdxgGsTF
	 X0C14etGZudmt7No1oAaUEzsYBNI2o/5dKsNTxkqLD+cm0OWyIHq9v5+GHCt1y5AnE
	 qEA8wltWl7DBEa5AYV3qUq6bFjT2NrvBH7aZp+HlEFNvLKnIE5LWCqgAq3vSQ6Or2e
	 1Yt7+yV4U5lMBa9gsCR63st/mbs2zx+6oZFUC38tBJ6K8ViFRqqi139Mni/7FVPe0Z
	 lss1wejRX87/Q==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Thu, 26 Mar 2026 14:59:57 +0000
From: Rustam Adilov <adilov@disroot.org>
To: Conor Dooley <conor@kernel.org>
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>, Andi Shyti
 <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 5/8] dt-bindings: i2c: realtek,rtl9301-i2c: extend for
 clocks and RTL9607C support
In-Reply-To: <20260324-musty-tapering-f7700d6ed947@spud>
References: <20260323071337.15410-1-adilov@disroot.org>
 <20260323071337.15410-6-adilov@disroot.org>
 <20260323-stash-contend-ea5974195eac@spud>
 <be24b1e5651ba3a059cefdbbee361ed7@disroot.org>
 <20260324-musty-tapering-f7700d6ed947@spud>
Message-ID: <ad0631c0fe50dcd6e60f05ad808a192c@disroot.org>
X-Sender: adilov@disroot.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[disroot.org,reject];
	R_DKIM_ALLOW(-0.20)[disroot.org:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[disroot.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-281274-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adilov@disroot.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: C0439337474
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-03-24 17:48, Conor Dooley wrote:
> On Tue, Mar 24, 2026 at 03:30:34PM +0000, Rustam Adilov wrote:
>> Hello,
>> On 2026-03-23 19:41, Conor Dooley wrote:
>> > On Mon, Mar 23, 2026 at 12:13:34PM +0500, Rustam Adilov wrote:
>> >> Add the "realtek,rtl9607-i2c" compatible for i2c controller on the
>> >> RTL9607C SoC series.
>> >>
>> >> Add a clocks property to the properties to describe the i2c reference
>> >> clock and make it available for all the compatibles. This i2c reference
>> >
>> > Why? I can see that you're doing that, and it's good to know that that
>> > is intentional, but why is it being done? Need to explain that all of
>> > these devices actually do have this clock etc.
>> 
>> As far as available information goes, there are some datasheets that 
>> note
>> the existence of these clocks. For example, RTL9310 Developer Guide 
>> 1.0 in [1]
>> mentions "I2C master support 12 peripherals with 2 clocks" at page 19.
> 
>> I hope this explains the whole intention behind it. And if there is 
>> better way to explain
>> this in the commit message, let me know.
> 
> What you need to say in the commit message effectively boils down to
> "the existing devices have these clocks too".

Alrighty then, will update the commit message in the next patch series.

Thanks,
Rustam

