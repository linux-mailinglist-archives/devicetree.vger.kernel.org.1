Return-Path: <devicetree+bounces-239156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF13C61FB6
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 02:17:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 90D8D356841
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 01:17:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A3E11E008B;
	Mon, 17 Nov 2025 01:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="PoYARTso"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAF5D84039;
	Mon, 17 Nov 2025 01:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763342245; cv=none; b=odXfPXbJnbnimQFEVd3f/WY0pfMjvP5BxMLqEcFPQrCfo4rr5yFnWUd1W8AsCBo4EYe5XR125gvKP0n1ILUojyl7woIo+umpo8H5T0JGXo+9msFqwAOFWrFNuMqywQQ4jHZC7aPDAEmFzoZXYp4TIJ/MKh/J57j1rMkqiUBv2Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763342245; c=relaxed/simple;
	bh=gR8tM1GdWNJTIXHdhwGhG4VDj+IddGGnu1o64KxUA/A=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=dmKJj9IPjIp+Mke4AfQzOrMBiB0ArGzi44jXvWYhFXLzLYyLb7XdaQ5x8Pq9+DyGBwW2+b7y86deKsSAgnAIN6VrqEwNhbG+/gaOTMdeuc7QvhHGvGld0U5qvdxB3iwmTGidFyUxjTJpqPrqfhJuxm98IaeIPukxKG83/YPTbVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=PoYARTso; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 768CA4118B;
	Mon, 17 Nov 2025 02:17:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763342234; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=ayCI78s0sFTeRE+mYXvPdg5dHDi/jDMZJzVBaBaUiuk=;
	b=PoYARTsooGdjq3wnQNA8x72KudChF71ko5NH0iTGj3hnqKcMmltTC6ZR9Cuz9PBqHMGZE1
	uRu4zviJiEzSLqKiMUVKma1gnBCt9QndRT7yeON+ZP2/83raE6ljp9fixSgtdSFnqW9J47
	kq5HNoKeylpEjrpiV/VneuW2gQQjg8sAPcpGFGZxj1FZIYpUuPpTaqjWlUtGhh2ao2YYdx
	NHK5Yn9TgQM/pCnSAPY85vppSbRWkbKW37LdgqQpp9tHEWiisRRwWwcBsSeiv2DP6X6YtV
	mDlqNdaqq/UhIqN3ydZyZc0G0jFr4hsDIh66e4b7HZeDnO8m2/5W3unvYQxeDA==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <2455319.NG923GbCHz@diego>
Content-Type: text/plain; charset="utf-8"
References: <12d6e151-dfa0-ca0a-5888-ddffb2dbdec7@manjaro.org>
 <bb74679a-ce21-4373-bcc5-1214e9bf832e@rootcommit.com>
 <24561990-8293-0505-5837-eca416d01bb7@manjaro.org> <2455319.NG923GbCHz@diego>
Date: Mon, 17 Nov 2025 02:17:12 +0100
Cc: "Michael Opdenacker" <michael.opdenacker@rootcommit.com>, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <a5e7824d-03c7-fa0a-473f-193e172420d2@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2 2/2] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Add Asus Tinker Board 3 and 3S device tree
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Heiko,

On Sunday, November 16, 2025 00:27 CET, Heiko St=C3=BCbner <heiko@sntec=
h.de> wrote:
> Am Samstag, 15. November 2025, 08:14:58 Mitteleurop=C3=A4ische Normal=
zeit schrieb Dragan Simic:
> > BTW, my responses are currently jailed by the linux-rockchip mailin=
g
> > list, requiring manual approval, as a result of the mail server I'm
> > using sometimes inserting some strange invisible UTF-8 characters
> > into the email subjects.  Oh well. :)
>=20
> I guess that mailserver needs a fix :-)

Indeed, something is, unfortunately, really messed up there, :/
to the point that even one of my "unjailed" responses in this
thread ended up in a separate lore thread. [1]

[1] https://lore.kernel.org/linux-rockchip/e4cd11d0-463c-e707-5110-6b92=
899b1ba3@manjaro.org/T/#u


