Return-Path: <devicetree+bounces-238445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5658CC5B45C
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 05:11:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 005BF34DBAD
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 04:11:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83AEC27E1DC;
	Fri, 14 Nov 2025 04:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="NBqH8na6"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B93DB279903;
	Fri, 14 Nov 2025 04:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763093449; cv=none; b=pNe5qLkdGWVt2m4nPoYbS65Zw8TK/a9EdP8OB991EPiw6MXDuzhB8YPMCjLNx0pzuCNMTuAYHI/5jkaoFt918nOZEzIApjrQS6nQiIuUO9+afCo5qFa4xg6JHnWqkLj5BOAXvhZIdu65rnyDkE4b6ZcTl5X7/rs9Yxn+0LLtz+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763093449; c=relaxed/simple;
	bh=QtuHGVXdvxA+eHBB8lQL4h1KqWaneZd2wuVLpQ3gaXg=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=CZ1gjb/1+7Tb7+m2LVvykC3oBSbrGflcIh/gbCK6R8tAQ0rMn4r0YAGeyVoJpxQ+H2YhUhdZjr1fnlL7kZzoQcsdZxr55iHRTGIH4tuA2/6jnjP9/Q/7sy3rSAP49fACaMii1aI4BrIYpvy47krEEFjuIy8eO0dgYSB/TtCzQus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=NBqH8na6; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1763093445;
	bh=QtuHGVXdvxA+eHBB8lQL4h1KqWaneZd2wuVLpQ3gaXg=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=NBqH8na6t0YDaoGvhOypw+y0cGSiDZzvkOP1vNYbLDdsjf65755feM5aRqtVfz4/O
	 51wN/N2n+KxwL7SMWdtBzckHBOtbpNRtUiED+UfXF3tEaZ986gwqEGr7D+lYPbe/41
	 9yqdyzKpwcJ3Pn4/GdJ8dML8ktTpSL5zsbYBDr+Da3AGt2faFyhZpaqnm+501u+bxW
	 UAbHxsdxzeK7VOMEzmSihSY4LtHBJx3JXuSak8D6uWtXZLwqqTcKaAK+mKoL4vA/W7
	 fKqIZkdfM6nVPXHj8nv2bZGpuV9XijHq2PR6d/Qjdfm4j2npCjxr2klaUHfW80Zn2z
	 zb+Mw0XWKTZug==
Received: from [192.168.68.115] (unknown [180.150.112.244])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id CA419783DF;
	Fri, 14 Nov 2025 12:10:44 +0800 (AWST)
Message-ID: <580b0c6d979a69ea0c4590b5d9ba035b417effb8.camel@codeconstruct.com.au>
Subject: Re: [PATCH v2] ARM: dts: aspeed: clemente: add gpio line name to io
 expander
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: kimi.zy.chen@fii-foxconn.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	george.kw.lee@fii-foxconn.com, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel
 Stanley <joel@jms.id.au>
Date: Fri, 14 Nov 2025 14:40:44 +1030
In-Reply-To: <20251107-dts-add-gpio-to-io-expander-v2-1-585d48845546@fii-foxconn.com>
References: 
	<20251107-dts-add-gpio-to-io-expander-v2-1-585d48845546@fii-foxconn.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Fri, 2025-11-07 at 00:58 +0800, Kimi Chen via B4 Relay wrote:
> From: Kimi Chen <kimi.zy.chen@fii-foxconn.com>
>=20
> The chassis power cycle process requires a forced shutdown before
> cutting off the standby power. Therefore, SCM CPLD adds a hard shutdown
> host function and triggers it via the IO expander in Clemente platform.
>=20
> Thus, a new GPIO line named "hard_shutdown_host" is added to the

Most of the Clemente GPIOs names appear to be styled as net names from
the schematics. Is that the source of this name as well? Or have you
somewhat arbitrarily chosen it? Can you expand on its importance (e.g.
wrt userspace software)?

Andrew

