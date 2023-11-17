Return-Path: <devicetree+bounces-16491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE0B7EEDED
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 09:57:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5490D2811DB
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 08:57:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BDEDD296;
	Fri, 17 Nov 2023 08:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="n/XiA9A5"
X-Original-To: devicetree@vger.kernel.org
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D67141A5;
	Fri, 17 Nov 2023 00:56:55 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id C5CD61BF208;
	Fri, 17 Nov 2023 08:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1700211414;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=leBuYmiuIsLgv0yNkP9hLoHkOgcVyrVhTX124DlAon4=;
	b=n/XiA9A5RLzOYcQ7AabAP58e6appuXIZiPT/cIAikp3A8eCCxbWFxXufGk8si2vkHTDy77
	fVAPmaAC2hXZCnqNQvBbxnLqK3yCCQkG7XitU4tyQp+iewHV264WrTZQeRAQo1J9+PBKmk
	sqoABxYhaJ5zD9zQ9ql5h4zRviGWkQGfciH0TEZup0N0PHksnYHqVHJog0mImow3J0IjCV
	kYR7me680jK9tlMgeW+2D7X7SBy2vilCeKqDlZtC4aPvVNXbYzos347SyC1l5UNgyvadqz
	XQrmgOpOIi+9x24KtDBmcXmRW8cx3OlEQTS6jUHmU0iMb0ae5lCx/5/KKN9Z9g==
Date: Fri, 17 Nov 2023 09:56:51 +0100
From: =?UTF-8?B?S8O2cnk=?= Maincent <kory.maincent@bootlin.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Conor Dooley <conor@kernel.org>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jonathan Corbet
 <corbet@lwn.net>, Luis Chamberlain <mcgrof@kernel.org>, Russ Weight
 <russ.weight@linux.dev>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH net-next 7/9] firmware_loader: Expand Firmware upload
 error codes
Message-ID: <20231117095651.5f569fcb@kmaincent-XPS-13-7390>
In-Reply-To: <014c6bb7-178f-44cf-872f-eb4d59a80756@lunn.ch>
References: <20231116-feature_poe-v1-0-be48044bf249@bootlin.com>
	<20231116-feature_poe-v1-7-be48044bf249@bootlin.com>
	<20231116-t-shirt-supreme-581c8882d5cc@squawk>
	<014c6bb7-178f-44cf-872f-eb4d59a80756@lunn.ch>
Organization: bootlin
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: kory.maincent@bootlin.com

On Thu, 16 Nov 2023 22:56:10 +0100
Andrew Lunn <andrew@lunn.ch> wrote:

> > This would be rather helpful to me for some stuff that I am currently
> > working on and was hoping to send to Arnd for inclusion in 6.8:
> > https://lore.kernel.org/all/20231020-series-uncooked-077b107af3ae@spud/
> >=20
> > I'm currently returning a "HW_ERROR" for something that this would fit
> > the bill for (in mpfs_auto_update_write()). What would the ETA for this
> > stuff landing via the net tree be?
> > Since I am not a netdev contributor its hard to tell how controversial
> > these patches are! =20
>=20
> It already has the needed ACKs, so it could be merged
> anytime. However, it seems like two different subsystems are
> interested in it. So rather than merge it via netdev, it might make
> sense to merge it via its normal tree, driver-core. Then ask for a
> stable branch which can be pulled into netdev and arm-soc.

Ok, I will remove this patch from this series in v2 and send it through nor=
mal
tree.

Regards,
--=20
K=C3=B6ry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

