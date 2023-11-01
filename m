Return-Path: <devicetree+bounces-13462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DC27DE293
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 16:04:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 530741C20C50
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 15:04:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EECAD134CD;
	Wed,  1 Nov 2023 15:04:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="bjJqP/9f"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F0D13FE7
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 15:04:17 +0000 (UTC)
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2211ADC;
	Wed,  1 Nov 2023 08:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=x; h=Subject:Content-Transfer-Encoding:Mime-Version:Message-Id:Cc:To:From
	:Date:subject:date:message-id:reply-to;
	bh=5Rgtl4jY4XuC5VOH6cnmAu96gsAv8rS62aa3LCpbYKI=; b=bjJqP/9fnVBCAHxrDwR7zD8HKQ
	/zvzx1KGh7sYQ5Lgyrp7oVJC+S3ijU2C7jDZEvEV3zppNmVuv3tJz+ded1jCBpoMLTrJd5uncE8/L
	K98xBwW3W89XzJM5PkozkUqfzZdNGlQDLGEq9X47pPTtOGincY96VRQHyQW3ci1XWIps=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168]:35224 helo=pettiford)
	by mail.hugovil.com with esmtpa (Exim 4.92)
	(envelope-from <hugo@hugovil.com>)
	id 1qyClI-0006d5-JX; Wed, 01 Nov 2023 11:04:09 -0400
Date: Wed, 1 Nov 2023 11:04:04 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Hugo Villeneuve <hvilleneuve@dimonoff.com>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Message-Id: <20231101110404.9f4c31d69c67d91e7be46387@hugovil.com>
In-Reply-To: <20231101-maimed-email-4decd11f1d52@spud>
References: <20231101144057.2653271-1-hugo@hugovil.com>
	<20231101-maimed-email-4decd11f1d52@spud>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-SA-Exim-Connect-IP: 70.80.174.168
X-SA-Exim-Mail-From: hugo@hugovil.com
X-Spam-Level: 
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: add rve
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on mail.hugovil.com)

On Wed, 1 Nov 2023 14:54:34 +0000
Conor Dooley <conor@kernel.org> wrote:

> On Wed, Nov 01, 2023 at 10:40:57AM -0400, Hugo Villeneuve wrote:
> > From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> >=20
> > Add vendor prefix for Recharge V=E9hicule =C9lectrique (RVE), which
> > manufactures electric vehicle chargers infrastructure components.
> >=20
> > Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
>=20
>=20
> Where is the user for this?

Hi Conor,
it is for a new board I submitted a few seconds after this patch:

    https://lore.kernel.org/all/20231101144303.2653464-1-hugo@hugovil.com/r=
aw

Hugo.


> > ---
> >  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/D=
ocumentation/devicetree/bindings/vendor-prefixes.yaml
> > index e48b0a02827a..8455d7f5cfae 100644
> > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > @@ -1161,6 +1161,8 @@ patternProperties:
> >      description: Shenzhen Roofull Technology Co, Ltd
> >    "^roseapplepi,.*":
> >      description: RoseapplePi.org
> > +  "^rve,.*":
> > +    description: Recharge V=E9hicule =C9lectrique (RVE) inc.
> >    "^saef,.*":
> >      description: Saef Technology Limited
> >    "^samsung,.*":
> >=20
> > base-commit: 8bc9e6515183935fa0cccaf67455c439afe4982b
> > --=20
> > 2.39.2
> >=20

