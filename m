Return-Path: <devicetree+bounces-142316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E0866A24E7E
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 15:08:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 998001884155
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 14:08:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B02681F76B7;
	Sun,  2 Feb 2025 14:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="DOTEFVU3"
X-Original-To: devicetree@vger.kernel.org
Received: from out-171.mta1.migadu.com (out-171.mta1.migadu.com [95.215.58.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C941F7589
	for <devicetree@vger.kernel.org>; Sun,  2 Feb 2025 14:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738505315; cv=none; b=oCdWz0zvZnhaQiGxl0EXZqqAAuSn8j0SzTusMf19gnqWIRUISLJoP2ZFA4Klqee7B4y0SntGC81XbDVZ2PSb44csY3/hGIRzpMWms6rh5QEka7gdNXhBffwa+3SocUiOXMAwBoHQ0ggen0B/9kwjRDIuuHSPH6MGW2aHjELGhiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738505315; c=relaxed/simple;
	bh=D3su1JDDerQOMWuB5dX8o3YUbZ17HKFsnv8lV7e1I/4=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:Cc:To:
	 References:In-Reply-To; b=mCLx+3VvNigNCApu6T5a++gJCFsxpbF4NX9RvOOmNRTkiQu0kDVPC3Q+D/rBHx0vz/67SUifdsCGd3BtFCDVA/npDT9+ZCv+2Mpe8yfOQ8pGVi/ggy4fujBxQM4chIzyyml/5n9uVsvM+EgMFiStmaQYCKgwer9ewI7m6PmNpdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=DOTEFVU3; arc=none smtp.client-ip=95.215.58.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1738505309;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6YVArxw6byNXDXJF0zYPmUVcQzU6VgzWGkQuMNKnrKw=;
	b=DOTEFVU3/BrkD1UysTSI6w8EbS6l3RPoseP0F/elW7mSuNnu88KHj0wMn1cJ0b+aSVoIhR
	FQ1Dl5vJkfMVhQxXJ0aWsOyAro9qsAtKl/CR0rcLcd5ui38CTB2+vin5jFd0AF4UWn+pcx
	TUw3Zo97AfMpvsuy1o2OyOkT0YRy66A+7/Hv/myR+AimYsZGYzblRt3OfskBRkmLX6W7No
	cyPgFaRX/FKG3wF6JzlQuZs55V2218f8WG/tKOcoWIIeFP9zIoVLa1yCuCvxzwWmY6J/RC
	nu7uoJ+wnMuUQyWEtIv+K8DMUm0CE+zmbiyjKK+n5Ss0cv8N0m9KdxA5TCtFLA==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 02 Feb 2025 14:07:39 +0000
Message-Id: <D7I0OILRTJG9.3O0P7Q6SEHYV3@postmarketos.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: amlogic: add S805Y and Mi TV
 Stick
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Ferass El Hafidi" <funderscore@postmarketos.org>
Cc: "Neil Armstrong" <neil.armstrong@linaro.org>, "Kevin Hilman"
 <khilman@baylibre.com>, "Jerome Brunet" <jbrunet@baylibre.com>, "Martin
 Blumenstingl" <martin.blumenstingl@googlemail.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, <linux-amlogic@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <~postmarketos/upstreaming@lists.sr.ht>,
 "Artur Weber" <aweber.kernel@gmail.com>, "Karl Chan"
 <exxxxkc@getgoogleoff.me>, "Christian Hewitt" <christianshewitt@gmail.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
References: <20250201193044.28856-1-funderscore@postmarketos.org>
 <20250201193044.28856-2-funderscore@postmarketos.org>
 <20250202-wisteria-rook-of-intensity-6fecfa@krzk-bin>
 <D7I0F3OMXALB.1ZT1G03JTKSEZ@postmarketos.org>
 <56ec442d-54b3-404a-a10b-763a00e7099e@kernel.org>
In-Reply-To: <56ec442d-54b3-404a-a10b-763a00e7099e@kernel.org>
X-Migadu-Flow: FLOW_OUT

On Sun Feb 2, 2025 at 2:07 PM UTC, Krzysztof Kozlowski wrote:
> On 02/02/2025 14:55, Ferass El Hafidi wrote:
> > Hi,
> >=20
> > On Sun Feb 2, 2025 at 1:54 PM UTC, Krzysztof Kozlowski wrote:
> >> On Sat, Feb 01, 2025 at 07:30:43PM +0000, Ferass El Hafidi wrote:
> >>> From: Ferass El=C2=A0Hafidi <funderscore@postmarketos.org>
> >>>
> >>> Add support for the Amlogic S805Y SoC and the Xiaomi Mi TV Stick (aka=
.
> >>> xiaomi-aquaman).  The S805Y is very similar to the S805X, with just a
> >>> few minor differences.
> >>>
> >>> Signed-off-by: Ferass El=C2=A0Hafidi <funderscore@postmarketos.org>
> >>
> >> Please run checkpatch. You have from/SoB mismatch.
> >=20
> > I don't see any mismatch.  Maybe it complains because of a spurious
> > non-breaking space?
> >=20
> Could be, no clue. I copied them to editor and it also sees mismatch -
> both entries just do not match.

OK, I'll see what I can do.

>
> Best regards,
> Krzysztof

Cheers.

