Return-Path: <devicetree+bounces-320468-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9RrWEWzYSGpTugAAu9opvQ
	(envelope-from <devicetree+bounces-320468-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 11:54:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 239C7707519
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 11:54:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=cknow-tech.com header.s=key1 header.b="Kas5S/+E";
	dmarc=pass (policy=quarantine) header.from=cknow-tech.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320468-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320468-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CA67D3005777
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2026 09:54:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE7B039D6CA;
	Sat,  4 Jul 2026 09:54:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-187.mta1.migadu.com (out-187.mta1.migadu.com [95.215.58.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110D0331EBC
	for <devicetree@vger.kernel.org>; Sat,  4 Jul 2026 09:54:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783158888; cv=none; b=XvIog7xbud7/tJUs41Tgtizv7wXrfgKxuQhDhGo0HA410tLSk20GqzxZgW1XRMSvsD/afEyGt0HsPceYWaopUpLTFpuJM6XDqTQ+L3lwDW+iRmI0qp6mlLTK5fEvOTcJOyWSZ9La5RGXFpMfYgVGhkNAxe5Eb/tWaRe8ik9mjN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783158888; c=relaxed/simple;
	bh=d4FzgPzMAfTw3eD2clLSz3kLvxePfHTw3NTAXiGBYZ8=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=DJ32etlEVvSyW4epxh5VLS1E89DUKC+8IuzxP1pGLVE8ajHHM9P+IC2OGjHBQ9yuGjiOrohSzJdpIAz1jJMD8Gl8o46UJ4tt6LDpc2nwoxYraG1WiMkd0nzyiHCgJK5/eboM5clEpwVubqUdkjovxGyq+llmEZ0PeVKxj0B/a7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=Kas5S/+E; arc=none smtp.client-ip=95.215.58.187
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1783158883;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gwSOPRwPe16md58gxuRwvnrh/zOt3EcNn/2KFaD5eL4=;
	b=Kas5S/+E5faZ6tGsC3Od6zFmgPLB0QI5dwtnD9T+vrUTRkUxkwYhbQX09vex7b+YyLFpso
	DCLLST39THRf9qOm/obiooOuvpjt15Nh7bjLPsWaU5YIB/ZfS+5SyuYWGxvHGC7LgoGfG6
	t+tpHKTDTc14LXDhr2HqkVKUW9v6YHYjhTMaGyGVDXIjuHqAXxg3K5SM7d4BcUFUXfVMA8
	bA4+/yA/oEYLPdJRDOcIMeVAxOG4ZssKcQH4q0sxvvEQ4eXvUtb5l+YmnTR39o4cnFD7xz
	WQYmrM7B0zG345JVEKb4D1zPKr+JufARpjpcvprEfbweF2HqmF6gmR1eESoT/g==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sat, 04 Jul 2026 11:54:36 +0200
Message-Id: <DJPP2F4YRQGN.1CR6HUGTXDYKK@cknow-tech.com>
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH 00/12] arm64: dts: rockchip: Add NanoPi M6 board
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Joachim Eastwood" <joachim.eastwood@gmail.com>, "Diederik de Haas"
 <diederik@cknow-tech.com>
References: <20260703-nanopi-m6-v1-0-8344a1559519@gmail.com>
 <DJOWHH5K7P76.3JPJVO47K1SZE@cknow-tech.com>
 <CAPSPb=tZ1FenNfEM5P+DWcksKvpQjyQQjAWTRdyxb7=YYxY_rw@mail.gmail.com>
In-Reply-To: <CAPSPb=tZ1FenNfEM5P+DWcksKvpQjyQQjAWTRdyxb7=YYxY_rw@mail.gmail.com>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[cknow-tech.com,quarantine];
	R_DKIM_ALLOW(-0.20)[cknow-tech.com:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320468-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:joachim.eastwood@gmail.com,m:diederik@cknow-tech.com,m:krzk@kernel.org,m:conor@kernel.org,m:joachimeastwood@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,cknow-tech.com];
	FORGED_SENDER(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[cknow-tech.com:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,cknow-tech.com:from_mime,cknow-tech.com:email,cknow-tech.com:mid,cknow-tech.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 239C7707519

Hi Joachim,

On Fri Jul 3, 2026 at 10:23 PM CEST, Joachim Eastwood wrote:
> On Fri, 3 Jul 2026 at 13:30, Diederik de Haas <diederik@cknow-tech.com> w=
rote:
>> On Fri Jul 3, 2026 at 12:07 AM CEST, Joachim Eastwood via B4 Relay wrote=
:
>> > This patch series add support for the NanoPi M6. This board is very
>> > similar to the NanoPi R6C and R6S boards which are already supported.
>> >
>> > Main differences:
>> > * M.2 M-key slot with PCIe (Also present on R6C)
>> > * M.2 E-key slot with PCIe and USB (from hub)
>> > * 1 additional USB 2.0 port from an on-board USB hub
>> > * RT5616 audio CODEC
>>
>> This seems to be the M6 (2405 aka 'V1')?
> Yes, correct. This patch set is for the original M6 board. V1 if you like=
.
>
>> Because there is now also a M6V2 (2603), which uses an ES8389 CODEC:
>> https://www.friendlyelec.com/index.php?route=3Dproduct/product&path=3D69=
&product_id=3D319
> I did notice there was a new version, but I hadn't given it much thought.
>
>> Is it useful to already take the 2 M6 variants into account with this pa=
tch set?
> Yes, I think you are right.
>
> How about this setup:
> rk3588s-nanopi-m6.dtsi
> rk3588s-nanopi-m6v1.dts
> rk3588s-nanopi-m6v2.dts
> This mimics the setup for the R6 series boards with rk3588s-nanopi-r6.dts=
i
> and rk3588s-nanopi-r6[cs].dts.

Seems fine. You could drop the 'v1' as I only used that to differentiate wi=
th
the V2. OTOH, I'm always 'struggling' how to identify the original NanoPC-T=
6.
I do like consistency, so mimicing the setup for R6 is nice :-)

> Note that I will not make the v2 board part of this patchset since I
> am unable to test it. But as you said we can take it into account now.

Agreed. My concern was about trying to prevent another complete reorganizat=
ion
once someone decides to upstream support for V2 (2603).

>> https://wiki.friendlyelec.com/wiki/index.php/NanoPi_M6#Schematic.2C_PCB_=
CAD_File
>> https://wiki.friendlyelec.com/wiki/index.php/NanoPi_M6V2#Schematic.2C_PC=
B_CAD_File
> I did a quick comparison of the schematics and noticed the following
> differences:
> * New CODEC; ES8389
> * A new "User" button connected to a gpio line.
> * Different USB 2.0 hub: CH334P (may not be relevant for DT)
> * Different USB PD power solution (not relevant for DT)

At the end of the M6V2 product page, there's also a comparison with 'V1':
https://www.friendlyelec.com/image/catalog/description/M6V2_en_13.jpg

It's under the heading 'Comparison', but it's part of the picture so you ca=
n't
search for it. Dunny why FriendlyElec does that, but they do it consistentl=
y.

Cheers,
  Diederik

