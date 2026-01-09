Return-Path: <devicetree+bounces-253043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB1CD06B21
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 02:12:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EC1D63010992
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 01:09:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4639E1E32A2;
	Fri,  9 Jan 2026 01:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="f5QsO7Jg"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B11C11D798E;
	Fri,  9 Jan 2026 01:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767920996; cv=none; b=L48sXWkeCyd5J/jSZmbSNG5kX7a9ZyikFXx5x2RXHThBT0zRFvtEnhe5V6QVn+plSUJnAzbhOd2C7JeEACMG9n907M/kVCMQDjCrcaeRcn10VL9N14EdXXhAqID/+EneDBBswhsilIEjIODDUDk+I7gyngXP4UNgytxGd3bQAR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767920996; c=relaxed/simple;
	bh=xEmYz2eEu0GD1+huHFkbyyE3FZcw6xvPbknrzN24JMo=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=UuLjz0WJyW884y1vSK8S2cpyLqQsWJ7PgQuNjOpes2txqk9J/ocyw3oU3MfxJLUy0MEjgMLtAYUcbyLKIEKfi2DPOdHAwUqi6+AOl9nUnpCSWXYLlDujq8Fu1141p2wLr8QBWjec9CcAnmeJRllbdP/6oT/U1660xWTkB3E1pbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=f5QsO7Jg; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1767920991;
	bh=xEmYz2eEu0GD1+huHFkbyyE3FZcw6xvPbknrzN24JMo=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=f5QsO7JgKiKwtfo0NC2WKxrbNedm2H+BSDZ6UzdhBsZ20fMBJYaEURWpxqZSUBIjs
	 cZQDyxfGZimUu5Zjcnb8CClzcSc+tgfZ/ptZLOd1dLXBAyWp+E3P5E2zAEc3rvQPih
	 WRT29nG0/8e7j8CA3iebO1Spop0e+x7Wy5WmPe5Fq4UlwKFNQVGV1n5wZ2dVeh4fNi
	 Z1ZGwav4r/h7o7CjlrAWEln1kJE3ogo5S927h3yzvHaydlr9/f1cqgfTuL7nfTZSS+
	 OkwofRS+F7JdYg/r8LAhzQwW+QyTSjV+mpXhz57pt8luUunEYO6PbNH6kXNckNI9rn
	 N2a9Ii8ydPoWw==
Received: from [192.168.68.115] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 3BB237E142;
	Fri,  9 Jan 2026 09:09:51 +0800 (AWST)
Message-ID: <d6ca5544da6f90a72dde334c4d76270fa9db9469.camel@codeconstruct.com.au>
Subject: Re: [PATCH] arm64: dts: nuvoton: Add missing "device_type" property
 on memory node
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Rob Herring <robh@kernel.org>
Cc: Avi Fishman <avifishman70@gmail.com>, Tomer Maimon
 <tmaimon77@gmail.com>,  Tali Perry <tali.perry1@gmail.com>, Patrick Venture
 <venture@google.com>, Nancy Yuen <yuenn@google.com>,  Benjamin Fair
 <benjaminfair@google.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley	 <conor+dt@kernel.org>, openbmc@lists.ozlabs.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org
Date: Fri, 09 Jan 2026 11:39:50 +1030
In-Reply-To: <CAL_JsqL2ZS_D-ZUGRmJ6=dhuAAfoTUoC3CNsP4_FBat160dCVw@mail.gmail.com>
References: <20260105193232.3167128-1-robh@kernel.org>
	 <176786448160.1407469.7623777355686519631.b4-ty@codeconstruct.com.au>
	 <CAL_JsqL2ZS_D-ZUGRmJ6=dhuAAfoTUoC3CNsP4_FBat160dCVw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2026-01-08 at 08:56 -0600, Rob Herring wrote:
> On Thu, Jan 8, 2026 at 3:28=E2=80=AFAM Andrew Jeffery
> <andrew@codeconstruct.com.au> wrote:
> >=20
> > On Mon, 05 Jan 2026 13:32:31 -0600, Rob Herring (Arm) wrote:
> > > "device_type" is required for memory nodes, but is missing on Nuvoton
> > > npcm845-evb.
> > >=20
> > >=20
> >=20
> > Thanks, I've applied this to the BMC tree.
>=20
> I didn't realize Nuvoton and Aspeed are 1 tree now. Should MAINTAINERS
> be updated?

Yeah, it should. I've sent this:

https://lore.kernel.org/all/20260109-npcm-arch-maintainer-v1-1-a0ec6aee22fb=
@codeconstruct.com.au/

Andrew

