Return-Path: <devicetree+bounces-276440-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBAdNGTOuGlfjgEAu9opvQ
	(envelope-from <devicetree+bounces-276440-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 04:45:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 515042A34CE
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 04:45:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 060B23012810
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 03:45:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68BE1313E33;
	Tue, 17 Mar 2026 03:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="r52WIV8t"
X-Original-To: devicetree@vger.kernel.org
Received: from out-189.mta1.migadu.com (out-189.mta1.migadu.com [95.215.58.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E38F31353B
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.189
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773719133; cv=none; b=T5k+f9tX1ZbptUoWYT/GMf5KSxSSxX2Xnx2DSZKsvh322R9nAyEM/9YGaCYejV9uRm2BtF1KmVnnrmTa7Ck2HI6VJFIe7oYdgSsBNSUiPbQQZ8U/nyUG/ihv0xrNlsr5e8eZ+g+a9X2OiYgpNmmQPPtdxpiQzDdx6Jm4ayRTb1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773719133; c=relaxed/simple;
	bh=Wvgb0QK9/kdW4xiCJDb2YWNz0nwp287l2ggwg/P8HB8=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=j0Z+xZViSML04Zj2nx850k5f8Ln6FsCHv++BeimE9a3QFqxBY4a3eT2ayjJWpA7QPAc1jVnd+LFMmUmohlG6elX9HN1nVXysLHe7ZmVdfize4l2i5MhggAktPmwS05fUIvfSYKpyl/x8wdz1oY36DDgrANgj1GNkcFgVCiGqxLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=r52WIV8t; arc=none smtp.client-ip=95.215.58.189
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1773719120;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=O4i2+UVfo722vu90425e3cyaw1piodx4Inw2OrQ0w3Q=;
	b=r52WIV8tirMuLbByMH5685Hf9HkG2XX+5sDEp6fRTBay6g9ubIjq7jIPmu6aFAqUlsgiqA
	wG7Po0h7WLRP6t82lcE7HylGZpf8XsW7lWwGYy9NThgAM6kQ2yHZdJvXuRktlurV18Btrs
	GSUP+gbLye6BskET3tA4OHjDyzDMDjg=
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 17 Mar 2026 11:44:27 +0800
Message-Id: <DH4QXMW272P1.1ZFLSL4PHR2T0@linux.dev>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Ze Huang" <huang.ze@linux.dev>
To: "Marco Felsch" <m.felsch@pengutronix.de>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Fabio Estevam" <festevam@gmail.com>, "Matthias Kaehlcke"
 <mka@chromium.org>, "Liam Girdwood" <lgirdwood@gmail.com>, "Mark Brown"
 <broonie@kernel.org>, <huang.ze@linux.dev>
Cc: <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <kernel@pengutronix.de>
Subject: Re: [PATCH v5 0/4] Add onboard-dev USB hub host managed vbus
 handling support
References: <20260223-v6-16-topic-usb-onboard-dev-v5-0-28d3018a8026@pengutronix.de> <shnrtu77frks3yd5r66tzpeca3bxxuu4jpfaqxzerc3tl7j6hr@4ewe2trbh746>
In-Reply-To: <shnrtu77frks3yd5r66tzpeca3bxxuu4jpfaqxzerc3tl7j6hr@4ewe2trbh746>
X-Migadu-Flow: FLOW_OUT
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276440-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[pengutronix.de,linuxfoundation.org,kernel.org,gmail.com,chromium.org,linux.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[huang.ze@linux.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linux.dev:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:dkim,linux.dev:email,linux.dev:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 515042A34CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu Mar 5, 2026 at 7:29 PM CST, Marco Felsch wrote:
> Hi,
>
> +To: huang.ze@linux.dev
>
> On 26-02-23, Marco Felsch wrote:
>> Hi,
>>=20
>> the whole purpose of this series is to make it possible to control the
>> USB VBUS regulators of an USB hub via host managed regulators.
>>=20
>> Regards,
>>   Marco
>>=20

I have tested this patch series on the SpacemiT K1 Milkv Jupiter board.

Thanks for driving this!

Tested-by: Ze Huang <huang.ze@linux.dev>

