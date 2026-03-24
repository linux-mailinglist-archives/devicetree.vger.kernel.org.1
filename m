Return-Path: <devicetree+bounces-279982-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBDJF0XDwmmjlQQAu9opvQ
	(envelope-from <devicetree+bounces-279982-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 18:00:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4F33198E4
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 18:00:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D16F63056CC5
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 16:56:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C488405AAF;
	Tue, 24 Mar 2026 16:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ziyao.cc header.i=me@ziyao.cc header.b="T+rLzfT6"
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-op-o15.zoho.com (sender4-op-o15.zoho.com [136.143.188.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A43405ADD;
	Tue, 24 Mar 2026 16:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.15
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774371386; cv=pass; b=JEUKg61xnkg78oCbAYVwENLBOojLdOk20YIKEiKf0InK+EqkaXNcf0siJyjL7FuPTPhfLemsP/4jopOQUI+jQvzcxqWlNgRwHNPGciZKXpwYJa8Ii44j04nFIo3zz0054FV3bQ+qq7UFC3fNkNuMlb3T6Fu+cuD/WbPT47/+0gc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774371386; c=relaxed/simple;
	bh=ce5KgZpNqQXpdfz+fCZfMY2AY+7fq0BiWHSfcjJHws0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sO9jqNfJmFmO5LOGaSwGpjHg2oCuzDOnjwZnDCOaPsHleVN6lKWwmrF+VRTg6+Kxtum/g8u9hpJsVdfXrEhNMe5AnsTidDOtoXCuB4npJkmiXhnnuDYxMW3LCs9xVQV/Q4P3EcHzL/Qg9ndcq1rpNM2wv2ou3VJ0Ojiu/MOb+VY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ziyao.cc; spf=pass smtp.mailfrom=ziyao.cc; dkim=pass (1024-bit key) header.d=ziyao.cc header.i=me@ziyao.cc header.b=T+rLzfT6; arc=pass smtp.client-ip=136.143.188.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ziyao.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziyao.cc
ARC-Seal: i=1; a=rsa-sha256; t=1774371363; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=WDaP5f4TUhtcoSFuDnk3D3GgbpPqY3U0w/BSQBhwQMxJoQn2FPNITKn+oKydoBn+MGjHNXcfrowNjya/Us6Ehb6c4syEyFXNTKRenPDltf3RAch6pEOBDUa6brD4myndBQEFFVWen0hoYXpnbaGyyKtJeVbAaKSte1ONTaaHvkQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1774371363; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Jiy7RO9txASLPqZYKrGArRewWy+3t2WyQyeCTuVmXy4=; 
	b=apLOPBX6Wp9f1EaqyKjyBYRazZdqSmGQGIqvIJ125nOyFnZYydxZ9USnkO1FeFOzS4O8D0VdJ8Ul5apRTXH11rOCkPF/VgYHzE6jUHCq0Q/ctJ6+QEPoe/mBcr5R0GmEJiqeZgC1LBHw7GwjBk/D6smJh1TmqT92ueyvXjVfffo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=ziyao.cc;
	spf=pass  smtp.mailfrom=me@ziyao.cc;
	dmarc=pass header.from=<me@ziyao.cc>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774371363;
	s=zmail; d=ziyao.cc; i=me@ziyao.cc;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=Jiy7RO9txASLPqZYKrGArRewWy+3t2WyQyeCTuVmXy4=;
	b=T+rLzfT6sCf/pqDn1dxCrg3R1bNkfSReYXzi6M+pmTImhA87l+LmTyvTFzOlRiUH
	wQgGyLTF1yXAWy0KWb4NBS3Ks7X7WhYc0E1PNn8XK9JYG5APTkcQ3JTIJC/cKXIQp+1
	wmAvh2lUPtu33ypCQ3XRNSH6bzNrh48esF697qik=
Received: by mx.zohomail.com with SMTPS id 1774371361201648.8428770573439;
	Tue, 24 Mar 2026 09:56:01 -0700 (PDT)
Date: Tue, 24 Mar 2026 16:55:40 +0000
From: Yao Zi <me@ziyao.cc>
To: wjjsn <wjjsn@qq.com>, Huacai Chen <chenhuacai@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	kernel@xen0n.name, devicetree@vger.kernel.org,
	loongarch@lists.linux.dev, linux-kernel@vger.kernel.org,
	wjjsn <2858482031@qq.com>
Subject: Re: [PATCH v5 0/2] Add Loongson-2K0300 processor support
Message-ID: <acLCDL_nJom8AzjK@pie>
References: <tencent_325FB1D2C600CD55E367332EC453E5A64B09@qq.com>
 <ab_iF2hjZRfp16HP@pie>
 <CAAhV-H7FZ65D9mHgW8_-_QiZ2Kv2cxVo5P72AJhc3JptviFpNA@mail.gmail.com>
 <tencent_CA7176E8823B957F1AEB15254D17904D5505@qq.com>
 <acCoo_ZrTmZGZH5d@pie>
 <tencent_414FBFBEE2A4510232AB52CE665C04A6C20A@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <tencent_414FBFBEE2A4510232AB52CE665C04A6C20A@qq.com>
X-ZohoMailClient: External
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ziyao.cc,quarantine];
	R_DKIM_ALLOW(-0.20)[ziyao.cc:s=zmail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-279982-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RSPAMD_URIBL_FAIL(0.00)[ziyao.cc:query timed out];
	FREEMAIL_TO(0.00)[qq.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ziyao.cc:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[me@ziyao.cc,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,xen0n.name,vger.kernel.org,lists.linux.dev,qq.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2E4F33198E4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 24, 2026 at 11:09:16PM +0800, wjjsn wrote:
> On 3/23/26 10:42, Yao Zi wrote:
> > On Mon, Mar 23, 2026 at 12:33:31AM +0800, wjjsn wrote:

...

> > >    the clk_apb_gate will
> > >    turn off by kernel while booting,though 16100000.serial is using
> > 
> > This is unlikely an issue in the clock driver, but rather the consumer
> > is doing something wrong, though I haven't seen similar issues when
> > working on the clock driver.
> > 
> > Please try booting the kernel with clk_ignore_unused, and check
> > /sys/kernel/debug/clk/clk_summary to see whether the serial correctly
> > acquires the apb gate clock. If not, one (and the most possible) reason
> > is both clock-frequency and clocks properties are specified in its
> > devicetree node, where 8250 driver would ignore the latter.
> > 
> 
>  When I use 'clocks = <&clk LS2K0300_CLK_DEV_DIV>;', the system log gets
> stuck at the message about closing unused clocks, and there are no further
> logs. It seems like the clock for the serial port is being closed. However,
> if I set the parameter to not close unused clocks as a startup parameter,
> the serial port can continue to be used. If I use 'clocks = <&clk
> LS2K0300_CLK_APB_GATE>;', then the clock for the serial port is not closed
> and can start normally. I have not specified the clock frequency in the

This is the expected behavior, because LS2K0300_CLK_APB_GATE takes
LS2K0300_CLK_APB_DIV as parent, and unused clocks would be automatically
disabled by kernel.

It's intended to let consumers take the GATE clock instead of the DIV
clock, just like what you have done in your patch.

> Regards,
> wjjsn

Regards,
Yao Zi

