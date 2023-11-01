Return-Path: <devicetree+bounces-13478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 943837DE2FF
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 16:30:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4BBD1281369
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2CE71427E;
	Wed,  1 Nov 2023 15:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mailoo.org header.i=@mailoo.org header.b="aFrqabgR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E5A211CAA
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 15:29:53 +0000 (UTC)
Received: from mailo.com (msg-2.mailo.com [213.182.54.12])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 417D1DA;
	Wed,  1 Nov 2023 08:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailoo.org; s=mailo;
	t=1698852560; bh=8JZ/Xm93s6Pe/glm6UMFP8lzYw6hWMYZSLM5kQwh7A8=;
	h=X-EA-Auth:Message-ID:Subject:From:To:Cc:Date:In-Reply-To:
	 References:Content-Type:Content-Transfer-Encoding:MIME-Version;
	b=aFrqabgRUnYmfPLcc4RAo+sceWLlJhSTS7CUsuMz0ZNaAHMb1+lBfYda/F2ZVIZxt
	 /C+0/lgZh01wsVkqEC3oE2BRyi6NRxckkCxo6U3uInUb0dmojc+c4LEi1X0ya5Yi79
	 sVcW5uyxlgYPeRliyeKwVikhGgeV5FvcIbifUiZo=
Received: by b221-3.in.mailobj.net [192.168.90.23] with ESMTP
	via ip-22.mailoo.org [213.182.54.22]
	Wed,  1 Nov 2023 16:29:20 +0100 (CET)
X-EA-Auth: t+PrxXcdHtU8aMBIbHkhq1Jt0EX3B48jBFIYIdTMsBYBoMkLXopLisyWlBB7SBon7hEA1q+bEsEF03sZMfqvsOR2yvukLgFsLo4I9+AtKYg=
Message-ID: <0f294695fdfed60c385deadc9d030c225816b4f9.camel@mailoo.org>
Subject: Re: [PATCH 2/3] media: dt-bindings: ak7375: Add ak7345 support
From: Vincent Knecht <vincent.knecht@mailoo.org>
To: Conor Dooley <conor@kernel.org>
Cc: Tianshu Qiu <tian.shu.qiu@intel.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, Yassine Oudjana
 <y.oudjana@protonmail.com>,  linux-media@vger.kernel.org,
 devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org
Date: Wed, 01 Nov 2023 16:29:20 +0100
In-Reply-To: <20231101-wise-childless-ed44729657c6@spud>
References: <20231101102257.1232179-1-vincent.knecht@mailoo.org>
	 <20231101102257.1232179-2-vincent.knecht@mailoo.org>
	 <20231101-wise-childless-ed44729657c6@spud>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Le mercredi 01 novembre 2023 =C3=A0 15:10 +0000, Conor Dooley a =C3=A9crit=
=C2=A0:
> On Wed, Nov 01, 2023 at 11:22:56AM +0100, Vincent Knecht wrote:
> > Document AK7345 bindings.
>=20
> The commit message should mention why this device is incompatible with
> the 7375. Something like
>=20
> "Document the ak7345 voice coil motor actuator. Similar to the ak7375,
> this model has 4 unilateral phase detractors instead of 8."
>=20
> Otherwise,
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>=20
> Cheers,
> Conor.

Thank you for the review!

I don't know anything about phase detractors, nor any other details
(having found no datasheets for either of these ICs)
apart what could be infered from vendor/downstream drivers
like in the commit text for patch 3/3...

So I guess I'll send a v2 with a commit text along these lines :
Document AK7345 bindings.
Compared to AK7375, it has only 9 bits position values (instead of 12),
20 ms power-up delay (instead of 10), and no known standby register setting=
.




