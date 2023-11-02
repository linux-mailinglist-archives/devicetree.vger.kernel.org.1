Return-Path: <devicetree+bounces-13570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B3D7DEF5E
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 11:02:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 789AD1C20E4D
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 10:02:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBF6D125C8;
	Thu,  2 Nov 2023 10:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lexina.in header.i=@lexina.in header.b="CEXw035f"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183B7125BD
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 10:02:34 +0000 (UTC)
Received: from mx.msync.work (mx.msync.work [62.182.159.68])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 178D2133;
	Thu,  2 Nov 2023 03:02:29 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id F20E6148596;
	Thu,  2 Nov 2023 10:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lexina.in; s=dkim;
	t=1698919347; h=from:subject:date:message-id:to:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=z6Sp9k5FpABEdEH0tymcIJg8P6OxIk0iXL3CGctZlIw=;
	b=CEXw035fbs/5DMhLN3nIFpiPxVTjbNQtVkGUy8Y/aXUj04T/5wmeX9ma5bpdJF5EUTMGOq
	g5qxK7fqR7cmbpZP+W6ogprq9wzAih76oEsnYFfJwkYGsqay9pi4kiGOumDMQGICJ5RMfd
	fWAyDR/JFC5VXXU6t2puAEbaLUX5yWYvDxpCYAJx93ennjVFpfjhJK8u81U5ikInso1g7L
	i1ZG//LWt+phddEutUTE97/hrTWoV+qtvzVcxHnRj+4qQzoEhZXJ27YgMGBt2C2Ijftq+i
	76DTrU9awMbYLL224tOr4DssfVk+z36yqFmfw8grmKmLDqcrjn3kMiSzKa1uyg==
Message-ID: <d3734c188c165f186905101802ef7d5bfc8cda14.camel@lexina.in>
Subject: Re: [PATCH 4/4] firmware: meson_sm: use meson_gx_socinfo for
 compatibility
From: Viacheslav <adeep@lexina.in>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org,  linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,  devicetree@vger.kernel.org
Date: Thu, 02 Nov 2023 13:02:25 +0300
In-Reply-To: <e1fe390e-e0d4-475a-a83b-31c2d179e009@linaro.org>
References: <20231102074916.3280809-1-adeep@lexina.in>
	 <20231102074916.3280809-5-adeep@lexina.in>
	 <e1fe390e-e0d4-475a-a83b-31c2d179e009@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3

=D0=92 =D0=A7=D1=82, 02/11/2023 =D0=B2 10:26 +0100, Krzysztof Kozlowski =D0=
=BF=D0=B8=D1=88=D0=B5=D1=82:
> On 02/11/2023 08:49, Viacheslav Bocharov wrote:
> > Use meson_gx_socinfo variable for chipid compatible call
> > from meson-gx-socinfo driver if available.
> >=20
>=20
> So we are back to something like ARMv7 platform/mach-code with
> drivers
> tightly coupled between subsystems. But it is not 2007 anymore and we
> have Devicetree for this. Use it instead.
>=20
> What's more, your commit msg does not explain at all why do you need
> to
> do it. This is some "show" callback, which does not exist in current
> code. Adding code in one patch and then changing it, looks like you
> add
> incomplete or buggy feature.
>=20
> Best regards,
> Krzysztof
>=20


Fair enough.
This patch is related to an adjacent one where the socinfo data
supplements the result of executing the chipid version 1 function.

Indeed, with the introduction of chipid v.2, we now have a second
option for obtaining soc info (the first being implemented via register
reading). And I'm somewhat contemplative: whether to move the meson-gx-
socinfo entirely to the secure monitor or to duplicate the code from
there.

As a driver, meson-gx-socinfo does not carry practical information
apart from outputting status in the boot log, and it cannot be reused
without modifications to the driver.

--
Viacheslav Bocharov

