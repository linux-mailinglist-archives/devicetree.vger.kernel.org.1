Return-Path: <devicetree+bounces-252560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 44627D010F2
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 06:22:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DCF1E301E1A5
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 05:22:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC6B62D322F;
	Thu,  8 Jan 2026 05:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="R/HdhE2Q"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E6128D830;
	Thu,  8 Jan 2026 05:22:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767849765; cv=none; b=V3JCZjc9uhsexi0p4V7BLi0E+2DUiobthBr1JSeIx1E7/s1jJmsRHFKiDSTkQbIu4QFFdVi8OMDG4XTYAVDTAavlSqWctQH3LmOtS4nJrQgRjwi5yfhlu+qgDXbHrxHkuP8/vThip0rWbeNkNz27xEz0epMq9/f0QczKilmd+QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767849765; c=relaxed/simple;
	bh=hPSe2rlEHvzyi69dJB3VX99Hot44xCw/39GofG4V748=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Tj4T21U8FPF1jhMSij0cOqtCqCKVRRqNUxGPQwmkHLBZajb9GVBAZoSbzkP2X4Z8NqFMRksigjwNeFiyeTdfd9uoNkOC9nO611GePGag1hcFMRhYaxEmg5t1mLqD8CJkV5ccZ2mTayHOac9JtRtovtCNoh7QB32m+Bgup3PTumU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=R/HdhE2Q; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1767849762;
	bh=hPSe2rlEHvzyi69dJB3VX99Hot44xCw/39GofG4V748=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=R/HdhE2Q8L7sSX56r7227YzjCDQjxo4Dhg/bw3c0g4GesSdeGUC22BahmZFuMYpUY
	 +Y8MsANXUSCOj6mQAqangpaW7M1VonBWINZlo9DM0LfpObeA7jI5YSmXMhz1XD+JJX
	 XGL+hobqTpSuS7Y1zuWmaPZEy12TwR/Cj6KqE5spQqnQiM7jQu0XibvW+i4CCloVi/
	 OWxFR13Y8w9g8AZYLsMZMlVLFMKNGLDyCujZxmVi+xC9H5tnobUyKxWYlYc9iX0Dqa
	 ZScipnCTHJz/Uda+MUvBsxnlJyYwDMUUcaAfiHqAjG3eCTq6MILuGNUNPuJDOHn/Re
	 m1mUqlz/0V8Iw==
Received: from [192.168.68.115] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 5BF7C79F8C;
	Thu,  8 Jan 2026 13:22:41 +0800 (AWST)
Message-ID: <4441e66d607fe442e392b8a82c134adced03a5dc.camel@codeconstruct.com.au>
Subject: Re: [PATCH v3 5/5] ARM: dts: aspeed: yosemite5: Correct power
 monitor shunt resistor
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Kevin Tung <kevin.tung.openbmc@gmail.com>, Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley	 <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, Amithash
 Prasasd	 <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, Ken
 Chen	 <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>
Date: Thu, 08 Jan 2026 15:52:40 +1030
In-Reply-To: <20251219-yv5_revise_dts-v3-5-ca1d5a382013@gmail.com>
References: <20251219-yv5_revise_dts-v3-0-ca1d5a382013@gmail.com>
	 <20251219-yv5_revise_dts-v3-5-ca1d5a382013@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Kevin,

On Fri, 2025-12-19 at 16:09 +0800, Kevin Tung wrote:
> Correct the shunt resistor value in the DTS with the hardware setting
> to ensure accurate power and current measurements.

Why were the existing values wrong? Why are the new values correct? Can
you please add more information here explaining both concerns?

Andrew

