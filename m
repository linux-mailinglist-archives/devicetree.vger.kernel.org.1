Return-Path: <devicetree+bounces-5407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 898827B63F6
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 10:23:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 41F8728155C
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 08:23:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58D46D53C;
	Tue,  3 Oct 2023 08:23:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E85D313
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 08:23:27 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::225])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB01FB4;
	Tue,  3 Oct 2023 01:23:24 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2D8551C0007;
	Tue,  3 Oct 2023 08:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696321403;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jSGcSwAqUefKWmuimG5WT5sO8MU51Z7G0dHxsNTfhXM=;
	b=J8fnA1o8wn6xc0cQOA4aHjVfrhDtatLI15AwEqfkCmRZNmwQ+SHktd6U38GrZplOOvBKpH
	fD+SKVGxi/4rLFf/e/ygsfGdY5r5+ydbBux0xZ8mdWK9PGWMeQzi3ufBKF6+iaZFr2juwf
	aFU1xDdhouV1o6Ijw+N4gHhnr5aDP00flyo40GH778kB5EpZCnryuajnGo+LXYyrE6EVk5
	/keLPFJcVPRpQy+gnlc/KKYbSGddlJBTexnXDhX8tPBbM/qQGpIFapuAIdRwxObCbSdMqP
	GVYJbYQFlLV72qnt3FVo1nHt0CmDIBEM7lAmYs5W9Dndp4bEe11Nsd0IJA3CMw==
Date: Tue, 3 Oct 2023 10:23:19 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Matt Johnston <matt@codeconstruct.com.au>
Cc: linux-i3c@lists.infradead.org, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Conor Culhane
 <conor.culhane@silvaco.com>, linux-kernel@vger.kernel.org (open list),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS), linux-doc@vger.kernel.org (open list:DOCUMENTATION)
Subject: Re: [PATCH] i3c: Fix typo "Provisional ID" to "Provisioned ID"
Message-ID: <20231003102319.77fdf512@xps-13>
In-Reply-To: <20231003075339.197099-1-matt@codeconstruct.com.au>
References: <20231003075339.197099-1-matt@codeconstruct.com.au>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: miquel.raynal@bootlin.com
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Matt,

matt@codeconstruct.com.au wrote on Tue,  3 Oct 2023 15:53:39 +0800:

> The MIPI I3C spec refers to a Provisioned ID, since it is (sometimes)
> provisioned at device manufacturing.
>=20
> Signed-off-by: Matt Johnston <matt@codeconstruct.com.au>

Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

Thanks,
Miqu=C3=A8l

