Return-Path: <devicetree+bounces-141188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EE1A1DB9A
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 18:52:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3CF8C1616EE
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 17:52:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96A9117BEC5;
	Mon, 27 Jan 2025 17:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="iJqw0Y/I";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="VFGL8DfT"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1655A1632EF;
	Mon, 27 Jan 2025 17:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738000347; cv=none; b=qb+n9YL3dw4nfPgbJq43Kl6HlTtv3PKW5HgHsDSolgYEtnsbzqskUMXTwgdi8P2FK/iMjMya0Q9salyGYhuIIZ+zfLXc/ptpf5u2qM2CrJKo+E65BF67uMkhKqyPQBkqSvQUTy4vGe4UAj9PFv8XkL+UOe7rJHuuDLHny8sn+mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738000347; c=relaxed/simple;
	bh=lL5um/sMTN4EQBWWgGguD/wCi1CgexKIorUJi08LPXo=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=A7JR6KQq6SBTL0kY7xwOc6g8uTvHBVil0eGqT492qMxgBNhgmdR4MOT59k67SNAOhm0RgS4NhOcXHZZkEkkVtp9Pfq2kgPZ3mf8pQDoXGtk8nkHrcEJByige1kKtKQuvO3ry7rrs9eUmAQsCk/qW7E9j6yYMzBLsjjABUFW9LD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=iJqw0Y/I; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=VFGL8DfT; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1738000344;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=TOlQGAOrFNEkdLS0RWXAijH0T2zahF0AUY6O5HkV56U=;
	b=iJqw0Y/ISbwn6iZ+5Asg5nc8WdREWNtcRf0RX6tK26ZEzj7vdEd70HMF3JhU+kEdjLR1Jl
	coTVpiF9pctggg7wIxgOXKoGlPWWNsOpfFtjqf7ozwPw5YGUAV/uhRdU3NPEKx6aZWEiaa
	i0Okvfse8KwVtd4dbd2EswJ1xXVT8a36W+z98fIHmuadfbAeG26XymgMZLhjCojSrhBWZ5
	q+9vERIYrYf57BvWzl+xR7koza2s/+69cqmyRoK1LOMLgUEBZvUgFDJYwPQYPv3RqL7TbK
	j3XNAYpQOPbMl+3BXKFkKJKxjTTozo7zkHkZWkkPa4/VJeuslqqhW3CnGdw9Rw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1738000344;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=TOlQGAOrFNEkdLS0RWXAijH0T2zahF0AUY6O5HkV56U=;
	b=VFGL8DfTCdjujN4Ijpccci2cB2onhOkb3QVnd7xcTSPXNbKCs5gGr4FnSFhU9dp8WAtZWj
	wg6WGWTG7pvYutDA==
To: Vladimir Kondratiev <Vladimir.Kondratiev@mobileye.com>, Rob Herring
 <robh@kernel.org>
Cc: Anup Patel <anup@brainfault.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Paul Walmsley
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
 <aou@eecs.berkeley.edu>, "linux-riscv@lists.infradead.org"
 <linux-riscv@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: interrupt-controller: add
 risc-v,aplic hart indexes
In-Reply-To: <VI1PR09MB2333835FB0314EE32094D55F941E2@VI1PR09MB2333.eurprd09.prod.outlook.com>
References: <20250109113814.3254448-1-vladimir.kondratiev@mobileye.com>
 <20250109113814.3254448-2-vladimir.kondratiev@mobileye.com>
 <20250110162235.GB2975507-robh@kernel.org>
 <VI1PR09MB2333835FB0314EE32094D55F941E2@VI1PR09MB2333.eurprd09.prod.outlook.com>
Date: Mon, 27 Jan 2025 18:52:23 +0100
Message-ID: <87ed0o87qg.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Sun, Jan 12 2025 at 08:38, Vladimir Kondratiev wrote:
>>> Document optional property "riscv,hart-indexes"
>
>>That is obvious reading the diff. Why do you need this?
>
> I say it briefly in the description for the property.
> In more details this is described in the other patch comment
> - for code that uses this property.
> Is it better to repeat more detailed description in this patch
> comment as well?

Obviously. Each patch has to be self contained and explain what it is
about.

Thanks,

        tglx

