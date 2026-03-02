Return-Path: <devicetree+bounces-270173-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uEpKJqXHpWnEFgAAu9opvQ
	(envelope-from <devicetree+bounces-270173-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 18:23:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9C41DDC1C
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 18:23:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A35F630055B0
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 17:23:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FD1541C0B5;
	Mon,  2 Mar 2026 17:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="2bZcrrQ3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD25F426D1B
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 17:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772472227; cv=none; b=M4Bmy9Y0TW4/B2T4in4h/r1F0dHq9dGymXTJhhNShg6ZE+7gLuIJV4ZlcHXddKOy/v61yBIn2nvj0yD6zx8DZvwhQlyau8nM0Voh7B+h7duexulwJUECl8bJzzbhiEvng6qIdaS1rrA2t1gGyd4+dyK7MzFamguAalHokRxfb7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772472227; c=relaxed/simple;
	bh=lsqoijld0gAdVfIcfMKRJZDiGviXR1wEv1HLS/9y7b4=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=h4SHxkbZ8bbzSE0Q3vhOyGV8XbwidIMtuDN8NxjjNNmlHK8es8L8J5kgfvUefbp0h5R/fiCdjHgZam+MNQkMDvqtxjGDhLOLIX0CQsEF7ENdn+pk8RZNcaBoN7Sj1SWw43wqB58Nzjp6/4EN1vxenQoMy5SDrB/Q35qobWYyzBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=2bZcrrQ3; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 6C53BC40F8F;
	Mon,  2 Mar 2026 17:24:00 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 1337C5FE89;
	Mon,  2 Mar 2026 17:23:43 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8545E103686D8;
	Mon,  2 Mar 2026 18:23:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772472222; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=/aeeLY5nCjJLoCOrscAC1ow5AwnqUo867Edx/KaGydM=;
	b=2bZcrrQ3nyqiGFzPmuml2QFGFv2Sj5GXVH1NYS5Rynl5ah9/35dlksWhR3LH0JN1aF+/au
	a+O/tG6gT0Gtmicxzm7yFzr9AUwIogZbbRL2SKZnNR1SzANYZ9d5euwhA1ZubW8tQitqHM
	+Rpt0kZK6/9X6dwQO9hNSre3IuK2txxlhn29e1RyO+CFqa4b3sMzxoAPNA2pvvUul6N5Yr
	hXdELycHMylOxKSg7bbycYQqaWTm07blL4orH6rVqacCBrqc/M8dwUe/wrDghN3PGLC4W7
	UOCjFtYAk2jjKUSRR8fSL2CyC1MCTc2kQY1ldsR4E7SqN/zK4H/yrY8+x3Vcwg==
Date: Mon, 2 Mar 2026 18:23:35 +0100
From: Herve Codina <herve.codina@bootlin.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, Magnus Damm
 <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Pascal Eberhard <pascal.eberhard@se.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2] ARM: dts: renesas: r9a06g032: Add support for CPU
 frequency scaling
Message-ID: <20260302182335.312e0c3a@bootlin.com>
In-Reply-To: <CAMuHMdUi+FsBveQ9HU+NT7iE7QOX0tKn4Jt_1mfDdq_D0=czJA@mail.gmail.com>
References: <20260115164905.1203453-1-herve.codina@bootlin.com>
	<CAMuHMdUi+FsBveQ9HU+NT7iE7QOX0tKn4Jt_1mfDdq_D0=czJA@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: 3B9C41DDC1C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[sang-engineering.com,gmail.com,kernel.org,vger.kernel.org,se.com,bootlin.com];
	TAGGED_FROM(0.00)[bounces-270173-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[herve.codina@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,linux-m68k.org:email,0.0.0.1:email,bootlin.com:dkim,bootlin.com:email,bootlin.com:url,bootlin.com:mid,0.0.0.0:email]
X-Rspamd-Action: no action

On Mon, 2 Mar 2026 18:04:36 +0100
Geert Uytterhoeven <geert@linux-m68k.org> wrote:

> Hi Hervé,
> 
> On Thu, 15 Jan 2026 at 17:49, Herve Codina (Schneider Electric)
> <herve.codina@bootlin.com> wrote:
> > In RZ/N1 SoCs, CPUs are allowed to work at 125, 250 or 500 MHz when the
> > 'ref' clock frequency value is set to 500 MHz which is the default 'ref'
> > clock frequency value.
> >
> > Add support for CPU frequency scaling defining those 3 frequencies in
> > the opp-table with the assumption that the 'ref' clock is set to its
> > default value.
> >
> > Signed-off-by: Herve Codina (Schneider Electric) <herve.codina@bootlin.com>  
> 
> Thanks for your patch, which LGTM.
> 
> > --- a/arch/arm/boot/dts/renesas/r9a06g032.dtsi
> > +++ b/arch/arm/boot/dts/renesas/r9a06g032.dtsi  
> 
> > @@ -24,6 +57,7 @@ cpu@0 {
> >                         compatible = "arm,cortex-a7";
> >                         reg = <0>;
> >                         clocks = <&sysctrl R9A06G032_CLK_A7MP>;
> > +                       operating-points-v2 = <&cpu_opp_table>;
> >                 };
> >
> >                 cpu@1 {  
> 
> Unless I am missing something, the RZ/N1 clock driver does not support
> the A7MP clock yet, so how can cpufreq work for you?

R9A06G032_CLK_A7MP is DIV_CA7

https://elixir.bootlin.com/linux/v6.19.3/source/include/dt-bindings/clock/r9a06g032-sysctrl.h#L78
https://elixir.bootlin.com/linux/v6.19.3/source/drivers/clk/renesas/r9a06g032-clocks.c#L261
https://elixir.bootlin.com/linux/v6.19.3/source/drivers/clk/renesas/r9a06g032-clocks.c#L455

And on my system, got the following:
  # cat /sys/devices/system/cpu/cpufreq/policy0/stats/time_in_state 
  125000 4574
  250000 108
  500000 392
  #

All defined opp-hz values seems to be used without any errors. I hope that
any errors would be reported in kernel logs. At least this one:
  https://elixir.bootlin.com/linux/v6.19.3/source/drivers/cpufreq/cpufreq.c#L2329


Best regards,
Hervé

