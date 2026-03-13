Return-Path: <devicetree+bounces-275537-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id psr2IhpmtGm4nQAAu9opvQ
	(envelope-from <devicetree+bounces-275537-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 20:31:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6E32894DA
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 20:31:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A16023070355
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:31:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEE313DEAD6;
	Fri, 13 Mar 2026 19:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k/6zInrm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8747D32D45C
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 19:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.170
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773430293; cv=pass; b=FqgvlpwxwIAvbP4yLAeUAuRrD3uT0ihiSWUNdrUS1YYqSzAcEyjaMZ2UDnSe1NAh47//njLm+tjQ0+NyfIpSRZf19UJWQ0F8KJ9zeMPlg/T/ZjhNgr/zM0Rsxh1vxlvMBa5bO5iHDIVluStKeATPr9Z2708atxHaOOGr944Xr+E=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773430293; c=relaxed/simple;
	bh=7qk9o5w5pN/whF6xyjkdP2hsByxiZCU1yFYz//xI0dw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fbZvYORmiq0G5DR4mGERvugxi0WRvKtGVurjSV4Fx8iy7Xg/qAsznQkhnXI2rzi5CwGRnYEihUb+aYEYCpW2EQwMFqUFF6NKlFlhwU22/jwb2u2bzAKK2Vc97xwbA18TWm5ZEtdRNy+7vboKuJezQq08ew30+GM2QhPeSwgezVY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k/6zInrm; arc=pass smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-38a3066b68bso24032341fa.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:31:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773430291; cv=none;
        d=google.com; s=arc-20240605;
        b=JxOzBzGGv/3gcvrhd1dn8MGxcEWB01pWPb4BCnIFvbVYrnbvd13NWnoAUzDRXTvlu+
         LcSU6Ii7Wmg7qErOoHbjeHO8b/Fgl2/Uiu7usumCAv5xKZaMEGWC2XIiHKYydTtq5eod
         5Ar3GRxr6q7kXLSFCDoSS7GqbonQFXvWPfAxFDRdg3RDFJkcKYKEICucN4SierB01i2m
         ah/iJT3WxmZRknjfcs+fDwznZMrlhxTzk9O3UuTBtkgXsmvb3IafcJi2xernTPHBi0l7
         8Xz2Mv1NeZ+NAMUx4k51eNJXMUM+3Y6CjlTBvRqPL806ILwey/PGepAgs1jd3eIbYnDt
         kCaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=7qk9o5w5pN/whF6xyjkdP2hsByxiZCU1yFYz//xI0dw=;
        fh=J9vOx8qJ5k4i/nNex/D6nKwmhoWDTzww/D6uBDdzOY0=;
        b=ijeolhnhEgYXGERHGBHfC8wsbeR+2EJiw24foZfOqulFApTel34HEXbGAoK37NeJBv
         kb/f++BgY8PQs8DpGA2CxFJ14hql4R1dgvhGEQQ6yA2X6nX0Jxb586KVN8+stgTmn47W
         dKq9u3KvnoPWAKIfEjql8uEwxicM/CkrMQV0fIltP8xdRA0uhBYrQ+U2C3AqZ7D667vs
         myDL5QJ2WVrNoa2RTqBkFT7VUAJoQJ1Y/Vf89pwswWu/LzN8CKh5DHKXbnVjPm+hVpRU
         cHRuXa91mKMojcnTOJ3NOEkt/j+0zdBwhlHFGawhXAxOUuSHnrDbCpkgJkY/g5ltxttq
         JfsA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773430291; x=1774035091; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7qk9o5w5pN/whF6xyjkdP2hsByxiZCU1yFYz//xI0dw=;
        b=k/6zInrm5mxO4+N+QlxsMCqDdgyyNi/LxEdxUf6BQTSEJMNBL49Oxh6zpwY1JiKZHu
         jT5d3nb9FjzNWtK1ermPvSEtnWGw55lPoUubmnCw5YeE04yL0tC4nO342neVyHg4hZ/D
         nN+2cFNGnK36g/k9Fxl17iVJMBR1T0LHlCrXGLkDNfLmhmyePkEeHdtgYeNpx0zb0OCM
         WubRTgXUh2Ha9SHTqEFsOtLTqitxrv9d8cUAjcxjvACxDqrQ4XVouoAwD9UGvrTr7ugk
         5DzFriUfusmHrf5MLuS0R10n9uiPJf9sqI6k2yHC5Vqj22HzjLyTHYniMJFhCrp1m+3o
         EeIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773430291; x=1774035091;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7qk9o5w5pN/whF6xyjkdP2hsByxiZCU1yFYz//xI0dw=;
        b=aGj3nIOJ516WxbFgO2ePPWWGza9XcRulYjBfsI1hOrvfxi8N0X1JCDGOuAjfdhLwbX
         egk6I++CYJd5hWbT0s49zg7gL24ib8R9SEPJKKxTbNo+siJ9WOdRYbBj+3khnN7AOIC0
         tv6ofopkaOBvawmTwYIIKbzwlE+ec10glfn6BtSyblV2CagjGWLcqv59lO4fWqu/vbZ7
         /lQBWCLSYvO1eu6yL0yZNMDNAHDYKfPzPnUN+FaMm6HU7GIOnN9SG7TXnX9/03iMpZxo
         Q7/hHY7mwV87UwwOLOX20xZniCvv7oAXqO+VAtthG5vRYTcDZvwde7Rd2MKWTknrksep
         UIQA==
X-Gm-Message-State: AOJu0YyrH3locg9dEmT8InwVkQWO/t2nPJO6qNHgZTEB0y7ZTePREtEb
	0rKVwzXzH1YLcs/C/aHcvWy965VzPGiHLhGonOSklwjEbidbVV8nCsrz54xSH5v92Zni/6WikUl
	H4EshWLiHCrk1tljWYWtX1ZmzSoH4C6M=
X-Gm-Gg: ATEYQzwXAhQp2Q+uVsb8XVq0pXHT0M4dxj78bz5yrpDXxL0HukrkzE+CA9Mq5ft696w
	0t9JfjIgttvpLRZB3LOuG9fijOBalaiha32dE6Q1nlvX/gJ6QTORG+1umD5nMXIrM0HGs6GTDM4
	kA5WfmFl+0KjA62+pHJYGiDdKWwwFL/bOsolJOm6ze+5teh8U7N9acfFqcFjCgpuzGTRvfWX/3s
	n69OasV/fCtT7i+i8P9/CTKbVxjwuPUc++o3gscrZHXmjgKE1bO2DUalgWZIERMpITnZmWHVAA9
	Q1tnIntVwr50Z0Btc91pr+af49hTZ+jEg/cygRSs/C0gstLqDTo3LICCowvqoAbh6HWgPR3ncAg
	DJHnUSa8=
X-Received: by 2002:a2e:a36c:0:b0:38a:1a50:d843 with SMTP id
 38308e7fff4ca-38a8981c174mr11402461fa.36.1773430290368; Fri, 13 Mar 2026
 12:31:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1772898346.git.stefano.radaelli21@gmail.com>
 <7c84625f82c562bb9cd2b455465d63a1a25bf19e.1772898346.git.stefano.radaelli21@gmail.com>
 <CAOMZO5C+USp34WQ9ap+N9ha6EgU7JgsYkRsLEW=ZdizbkMQvPA@mail.gmail.com>
 <abQ_d9fGarNobYdo@Lord-Beerus.station> <CAOMZO5BnuGc8sddmfhKJhFgWa+K2gExeRN5097794j48+Dw-AQ@mail.gmail.com>
 <abRDxRK_GFYwmAGE@Lord-Beerus.station>
In-Reply-To: <abRDxRK_GFYwmAGE@Lord-Beerus.station>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 13 Mar 2026 16:31:18 -0300
X-Gm-Features: AaiRm50pUUd5PlDELi1jeVhIygeT3DuOuUYNivL7Ni7NnylRuT23VDH4JhtqGGg
Message-ID: <CAOMZO5A7XJL8TFHZJAgJAV=yHzqHEb4+AyDEoiBR4Zas3zMisA@mail.gmail.com>
Subject: Re: [PATCH v3 06/11] arm64: dts: freescale: imx8mm-var-som: Update
 WiFi/BT with variants
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	pierluigi.p@variscite.com, Stefano Radaelli <stefano.r@variscite.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275537-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BF6E32894DA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 2:05=E2=80=AFPM Stefano Radaelli
<stefano.radaelli21@gmail.com> wrote:

> Thanks for the feedback!
>
> I might have misunderstood the best approach here. The reason I split the
> WiFi/BT configuration into separate dtsi files was to follow the directio=
n
> discussed in the previous revision, where we decided to keep support for =
the
> legacy Broadcom-based SOM while moving the configuration out of the
> device tree, giving the support for both modules revisions.
>
> However, I see your point that if it is not referenced anywhere it become=
s
> dead code:
> Would it make sense to add a legacy Symphony DTS that includes the Broadc=
om
> configuration, in addition to the current Symphony DTS that uses the IW61=
x?
> This way the existing boards would keep working while the default board
> description reflects the currently produced hardware.

Yes, the idea is not to break the old boards with the Broadcom Wifi.

