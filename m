Return-Path: <devicetree+bounces-270835-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AwHF+Gbp2ksigAAu9opvQ
	(envelope-from <devicetree+bounces-270835-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 03:41:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B0A1F9F33
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 03:41:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1247730D9276
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 02:41:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A4FD309EFC;
	Wed,  4 Mar 2026 02:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="lHZfQy0/"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36252F547F;
	Wed,  4 Mar 2026 02:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772592080; cv=none; b=VXJTHdj4+f4843ZVOssx1mhpkyy4tRpyrBGg9aO4PvuDbFps47NU3t0sNV6Km88h1DKRYXqWgLKSMtw7b68GETNOotA+0MvzmdnNzcT59aZ3LYo1qRIEBXOn595f6HH1UqRPHheYlCTPLYHXZ8o0du/4XhiPAqEsIvYy2kS/jag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772592080; c=relaxed/simple;
	bh=96lQsWqDKySGJZInYDPP1iz7MJpHJVtnNEeUPS7642k=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Tx1a9jh5vuMDKxVDBZLth4XMlJezYI/R9+7zmEqtnlJ9Dx3oATjxqs6kHcqYcEk6zIv1gmz1v8vG5X3g3Y4v77lMqZ2zhM64TSEDUvANCBbUJc+zsqnQN41p1AsmAqFx82C5Czvq8HELrYPL2TAhmdKJlSyKZgml1jHuRer691I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=lHZfQy0/; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1772592076;
	bh=96lQsWqDKySGJZInYDPP1iz7MJpHJVtnNEeUPS7642k=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=lHZfQy0/G6rk0rkPwPdvfIMI8Mh7+Ivf/8PBeFOKXWFLcoeCs1/pU62LFbkvL86T4
	 Kgpczg1MfdW81pTAR7H7ttfWH/VN6iYywfBC7RZebRac3dmR+RP3LlCiA41OvaunC+
	 iiSL8gjFT9D3OdB1lddQtX2+RsKE6/jshGjIngquVcWENpoOvOQjcF8reYuxAEFeiQ
	 t65g1VTuB1sRNVCsKumnK8LktMFxnYtPbMdJV/CMD45q+LwkUdUDN+TiHn5CxRsKF+
	 u9n5xXefWzjABKeMO+fN1xFgUO4esLN/h4PtY99OUkcZpaLAKaVtmRyOV52uZvA57L
	 ++s8Xtj003JuQ==
Received: from [192.168.68.117] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 6DBB16000D;
	Wed,  4 Mar 2026 10:41:16 +0800 (AWST)
Message-ID: <73ea41bf341df0e3215c58a029c9ea2386c4ef8a.camel@codeconstruct.com.au>
Subject: Re: [PATCH v5 2/8] ARM: dts: aspeed: yosemite5: Remove ambiguous
 power monitor DTS nodes
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Kevin Tung <kevin.tung.openbmc@gmail.com>, Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley	 <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, Amithash
 Prasasd	 <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, Ken
 Chen	 <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, Jackson
 Liu	 <Jackson.Liu@quantatw.com>, Daniel Hsu <Daniel-Hsu@quantatw.com>
Date: Wed, 04 Mar 2026 13:11:16 +1030
In-Reply-To: <20260223-yv5_revise_dts-v5-2-fc913e902488@gmail.com>
References: <20260223-yv5_revise_dts-v5-0-fc913e902488@gmail.com>
	 <20260223-yv5_revise_dts-v5-2-fc913e902488@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: C0B0A1F9F33
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270835-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,jms.id.au];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,codeconstruct.com.au:dkim,codeconstruct.com.au:mid]
X-Rspamd-Action: no action

Hi Kevin,

Sorry for the patchy replies so far, but this series bothers me and
other priorities keep bumping it down the list.

On Mon, 2026-02-23 at 19:17 +0800, Kevin Tung wrote:
> Two different power monitor devices, using different drivers, reuse
> I2C addresses 0x40 and 0x45 on bus 10 across Yosemite5 board variants.
> Defining these devices statically in the DTS can lead to incorrect
> driver binding on newer boards when the wrong device is instantiated.

There are effective methods of maintaining devicetrees for variants.
Why are we choosing to remove information about the platform rather
than use existing techniques to properly describe them?

>=20
> Therefore, remove 10-0040 and 10-0045 device nodes, and let the driver
> selection is instead handled in user space by the OpenBMC Entity
> Manager based on the actual board configuration.

As a separate problem to the one above, while you may run OpenBMC on
this platform, I'd rather keep the description abstract. We can finish
the sentence at "... is instead handled in user space" and remove the
rest.

Andrew

