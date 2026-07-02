Return-Path: <devicetree+bounces-319578-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JgUtAdK3RmrYcAsAu9opvQ
	(envelope-from <devicetree+bounces-319578-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:11:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA566FC6C3
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:11:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=l8IQYceY;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319578-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-319578-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2C1723020852
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 19:10:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F3ED3815E7;
	Thu,  2 Jul 2026 19:10:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B017370D54;
	Thu,  2 Jul 2026 19:10:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783019457; cv=none; b=u8DuZAaxPlpEpLD4rMsTIPIenWDDV8IgIUOQpZAzITWQ13Qndldg5z/yEdinBuDxaz9gN5WfS0YsBOqkWO5KKRKB9vR4i2FdE9WcBtK+8lr7gb1ebQuPfYDAqUGomxDuS47Xin9t9A2AUu2pbOB6CWKfN0kvAcGSIHomDJsXhjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783019457; c=relaxed/simple;
	bh=I5xwFfXJL/F23jY/UVU84QhVfYWMYpavgCY/6SVcqsE=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=c8bR26s53w5rO7xXkN2TSRJKCErh5uSpFLilU6IhgCUuVXi/K7Be3kE/FcfGgI9mrCFwJTV9vGNCVTtX0JTxx+tFCga+Z1yiHPDTYfIE9RUwmtwffZ8v5Ibob1TdvZvviFOECIF3IcjVIY97RiMF6eYq8yi9qffRX73GocHJd4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8IQYceY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAD1C1F000E9;
	Thu,  2 Jul 2026 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783019455;
	bh=oTonvux7NCPyRZ3T4vDun5Mjs1cckhZark104izI2yc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=l8IQYceYuxBa80cAE/zYNtcw1EBS9gACjME8RB/t4FvoZm2tiSY16c1TSO7tlGCWH
	 agggFSeR5rB46NWN7LAXudhWJQeh2FxoiXl8/kzvD4kEQfLCGi0RbnIhnoh383aWQW
	 MTL4aCeIFkGfTZbd9cC41lw/xp82SdvJl0AwIrggOJ33GrK6QcAwolN1CrKrxBS54Q
	 n9rcgtUDE4dShh90+yf+NuUOGh/fs+C1I5rX5flPNCnPaS4hOu2mKUn6HmQuMS/NQL
	 PRMgBt8EU2VlRR+C1xdCuVdaU55r01RytABYnQwrwUfGFgrQXAQiskfBPCwAKdoNXf
	 tVI1D+g83Pmqg==
Date: Thu, 2 Jul 2026 20:10:49 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Chris Hall <c-hall@ti.com>, Patrick Edwards
 <pedwards@ti.com>, Kurt Borja <kuurtb@gmail.com>, Nguyen Minh Tien
 <zizuzacker@gmail.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 8/8] iio: adc: ti-ads112c14: add measurement channel
 support
Message-ID: <20260702201049.164d939f@jic23-huawei>
In-Reply-To: <544fbdef-268d-49cc-ae9e-b18907d9382b@baylibre.com>
References: <20260625-iio-adc-ti-ads122c14-v2-0-ceb9b0b561cb@baylibre.com>
	<20260625-iio-adc-ti-ads122c14-v2-8-ceb9b0b561cb@baylibre.com>
	<20260701212019.12757df3@jic23-huawei>
	<akYs-QgyjN-nmjq-@ashevche-desk.local>
	<544fbdef-268d-49cc-ae9e-b18907d9382b@baylibre.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319578-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:andriy.shevchenko@intel.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:c-hall@ti.com,m:pedwards@ti.com,m:kuurtb@gmail.com,m:zizuzacker@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[intel.com,analog.com,kernel.org,ti.com,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,jic23-huawei:mid,vger.kernel.org:from_smtp,baylibre.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6AA566FC6C3

On Thu, 2 Jul 2026 09:18:41 -0500
David Lechner <dlechner@baylibre.com> wrote:

> On 7/2/26 4:18 AM, Andy Shevchenko wrote:
> > On Wed, Jul 01, 2026 at 09:20:19PM +0100, Jonathan Cameron wrote:  
> >> On Thu, 25 Jun 2026 16:55:10 -0500
> >> "David Lechner (TI)" <dlechner@baylibre.com> wrote:  
> > 
> > ...
> >   
> >>> +	device_for_each_named_child_node_scoped(dev, child, "channel") {
> >>> +		struct ads112c14_measurement *measurement = &data->measurements[i];
> >>> +		struct iio_chan_spec *spec = &channels[i];  
> >   
> >>> +		if (!fwnode_device_is_available(child))
> >>> +			continue;  
> > 
> > Also drop this dup check.
> >   
> 
> How is this duplicate? device_for_each_named_child_node_scoped()
> doesn't check this.

It is convoluted to show but it does (now)...

Ultimately for dt case it calls
 of_get_next_status_child(node, prev, __of_device_is_available);

IIRC that didn't used to the be the case and we had iterators
for available and not available both for DT they always meant
available and more recently it got cleaned up as the number
of places that need to pass non available nodes is tiny!

Jonathan

