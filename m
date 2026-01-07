Return-Path: <devicetree+bounces-252467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B45CFF6A6
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 19:22:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4DCC731344A3
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 17:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4588C38E114;
	Wed,  7 Jan 2026 17:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b="JN2k6F+G"
X-Original-To: devicetree@vger.kernel.org
Received: from raptorengineering.com (mail.raptorengineering.com [23.155.224.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6D73939AD;
	Wed,  7 Jan 2026 17:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=23.155.224.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767805795; cv=none; b=OftI1Bcf6CMpDj0imOtbmQ2Eix8Hz1V0qGASlASTsEMUQ1kfqbDPQT2+Xa3tecV2kKXAyYqgZQjS5IWcT/wbRKhGL7L/XdA9pwTTTZgkjXiA0/CEnlThB9vAeg9kBE/bhE2L3SPMWoOw2EonIDizIa8dvs64Uaq8QvVeuOAII5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767805795; c=relaxed/simple;
	bh=hA5aVez8Xd67vCr6mvlGhKnrV8MFF0dDT8Pt1OA6zJI=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
	 MIME-Version:Content-Type; b=iY3uKnxb7iTgbwR1+AKIpVM3Vcy638+IENz+x8r4Vzs6WSVsU8njzVGfDK394bzmdOxem0YwgWYJH5w8IRvO57CMYMjF7rRUtB4QfpdQxTgRM6fQ+HC3pPjXX4n+eRk62atcjlsA1qpO+wK9v3xeWSQgMpGIwynsJvxEg7ZQ/po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com; spf=pass smtp.mailfrom=raptorengineering.com; dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b=JN2k6F+G; arc=none smtp.client-ip=23.155.224.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raptorengineering.com
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 3C1787790071;
	Wed,  7 Jan 2026 11:09:47 -0600 (CST)
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id PQHVJ03XzBhO; Wed,  7 Jan 2026 11:09:46 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 6A6667790EB7;
	Wed,  7 Jan 2026 11:09:46 -0600 (CST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rptsys.com 6A6667790EB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=raptorengineering.com; s=B8E824E6-0BE2-11E6-931D-288C65937AAD;
	t=1767805786; bh=WY09Dl89sDC09SDKeSI4N2rx9OaMkeQ/6Piy5aMrHlw=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=JN2k6F+G6OJ59xu01HB0tuq9qyhprP4iFFnTRastD6E4CstqEAUXw2Te+tMfRW4G7
	 QSatRqQPM0h7Kw9nuReWCqtZYnaTZlNzagbRzcVh9HsY+Qqb0XKYSZ2BFnes6EqbUc
	 Nb4jVUFekN+D+D0eHlvjVrzOCauoxeXWpZrrOILM=
X-Virus-Scanned: amavisd-new at rptsys.com
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id cEpAGiPVtibu; Wed,  7 Jan 2026 11:09:46 -0600 (CST)
Received: from vali.starlink.edu (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 3893B7790C77;
	Wed,  7 Jan 2026 11:09:46 -0600 (CST)
Date: Wed, 7 Jan 2026 11:09:43 -0600 (CST)
From: Timothy Pearson <tpearson@raptorengineering.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree <devicetree@vger.kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Lee Jones <lee@kernel.org>, 
	Georgy Yakovlev <Georgy.Yakovlev@sony.com>, 
	Shawn Anastasio <sanastasio@raptorengineering.com>
Message-ID: <887779054.192722.1767805783381.JavaMail.zimbra@raptorengineeringinc.com>
In-Reply-To: <20260107-spotted-swan-of-sufficiency-1bfc03@quoll>
References: <20260107002136.3121607-1-tpearson@raptorengineering.com> <20260107002136.3121607-2-tpearson@raptorengineering.com> <20260107-spotted-swan-of-sufficiency-1bfc03@quoll>
Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
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
Thread-Index: 7w8bzvvB/XldAmOAp8jC8IV7Nj46ZQ==



----- Original Message -----
> From: "Krzysztof Kozlowski" <krzk@kernel.org>
> To: "Timothy Pearson" <tpearson@raptorengineering.com>
> Cc: "devicetree" <devicetree@vger.kernel.org>, "linux-kernel" <linux-kernel@vger.kernel.org>, "Rob Herring"
> <robh+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
> "Lee Jones" <lee@kernel.org>, "Georgy Yakovlev" <Georgy.Yakovlev@sony.com>, "Shawn Anastasio"
> <sanastasio@raptorengineering.com>
> Sent: Wednesday, January 7, 2026 1:25:10 AM
> Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc

> On Tue, Jan 06, 2026 at 06:21:33PM -0600, Timothy Pearson wrote:
>> From: Shawn Anastasio <sanastasio@raptorengineering.com>
>> 
>> The Sony Cronos Platform Controller is a multi-purpose platform controller
>> that provides both a watchdog timer and an LED controller for the Sony
>> Interactive Entertainment Cronos x86 server platform. As both functions
>> are provided by the same CPLD, a multi-function device is exposed as the
>> parent of both functions.
>> 
>> Add a DT binding for this device.
>> 
>> Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>
>> Signed-off-by: Timothy Pearson <tpearson@raptorengineering.com>
>> ---
>>  .../bindings/mfd/sony,cronos-smc.yaml         | 128 ++++++++++++++++++
> 
> How this can be a v6 with no changelog at all and still not tested?
> 
> What happened with this patchset? Where is it explained?

Changes have only been to fix issues identified in review and any posted autotest failures.

Please note that the tooling to check the DT bindings does NOT appear work properly, we've wasted a lot of time and effort attempting to get it running only to find that it's spitting out internal Python errors even for other drivers that are *already* in the kernel source tree.  This obviously creates a situation where it's difficult to pre-check the patch set for compliance; if you want to see this first hand, spin up a Debian Sid VM (which has a very recent version of the DT tooling from late 2025) and try to check any of the in-tree MFD drivers using the documented methods.

If this driver is simply something you don't want to see in the kernel that would be useful information for us to know, and would avoid having to go through another patch series.  That information would allow us to simply push this downstream to OpenBMC as a kernel patch set for this particular platform.

