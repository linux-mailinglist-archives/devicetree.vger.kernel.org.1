Return-Path: <devicetree+bounces-81936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DA00C91DFD4
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 14:48:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 907351F22744
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 12:48:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7179215A863;
	Mon,  1 Jul 2024 12:48:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D5915A84A
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 12:48:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719838087; cv=none; b=RShigm+8YzJbqIyaL4Z1ljEQiaN755AH58K2+/9VLR1D7cBBKvJAy57/kI+5FsGkHvgbnt8/aOWXlAfq2JxOzwq+bF8Q+xw4FE8aocAMPrEiQgPKuNsYJlIs0+ZZucftkEwEq8YJt+zyG+W9KF5+uv0utRjNLwgHruBhg3+bu5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719838087; c=relaxed/simple;
	bh=Pt1ou4Zca/Wj4epFL7dL1mbnEt3BYprXaD0ZHvhVv+o=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Z4E81ko4zBTmRCfXJ2OPE8ih6OYkDbk/ogHIfdy/FyshZIrqjZ9oN5RNZaQLmJrC5tFbZo9K6biPMuiQH3Vh482x3eqxMj3UvKUDzt6oXUnO0ebbzkL5rLLJRBU3hxYx7I++bvP9bWs+LWmswrCYf1CezJlovzmreHfF/rluO+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sOGRi-000460-T4; Mon, 01 Jul 2024 14:47:50 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sOGRi-006NK5-G9; Mon, 01 Jul 2024 14:47:50 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sOGRi-000UeT-1P;
	Mon, 01 Jul 2024 14:47:50 +0200
Message-ID: <150055844b8af2017fa721ff08bbde473354b2da.camel@pengutronix.de>
Subject: Re: [PATCH v2 1/2] dt-bindings: input: touchscreen: exc3000: add
 EXC81W32
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Conor Dooley <conor@kernel.org>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,  linux-input@vger.kernel.org,
 devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
 kernel@pengutronix.de
Date: Mon, 01 Jul 2024 14:47:50 +0200
In-Reply-To: <20240628-agonizing-syrup-fcd55c441b3f@spud>
References: 
	<20240628-input-exc3000-exc81w32-v2-0-c2b21a369c05@pengutronix.de>
	 <20240628-input-exc3000-exc81w32-v2-1-c2b21a369c05@pengutronix.de>
	 <20240628-agonizing-syrup-fcd55c441b3f@spud>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi Conor,

On Fr, 2024-06-28 at 17:21 +0100, Conor Dooley wrote:
> On Fri, Jun 28, 2024 at 10:35:51AM +0200, Philipp Zabel wrote:
> > Add compatible for EXC81W32 touchscreen controllers.
>=20
> Could you please mention in your commit messages what makes a fallback
> compatible inappropriate here?

thank for pointing this out. Actually, I'm not sure a fallback
compatible is inappropriate at all. There just is none currently, even
though EXC80H60 and EXC80H84 already look compatible to me.

To my understanding, there's EXC80[WH]{32,46,60,84} models, that should
only differ in ball pitch (W or H) and targeted display size (the last
number).
I don't know if there are actual relevant differences between what I
assume are model generations, such as EXC80 to EXC81. At least the
limited currently implemented feature set in the exc3000 driver is
identical.

Given that EXC80H60, EXC80H84, and now EXC81W32 all share the same 16K
resolution and the same message format (possible differences in
capability to measure touch area nonwithstanding), should I prepend
this series with a patch:

@@ -14,10 +14,13 @@
=20
 properties:
   compatible:
-    enum:
-      - eeti,exc3000
-      - eeti,exc80h60
-      - eeti,exc80h84
+    oneOf:
+      - const: eeti,exc3000
+      - items:
+          - enum:
+              - eeti,exc80h60
+          - const: eeti,exc80h84
+      - const: eeti,exc80h84
   reg:
     const: 0x2a
   interrupts:

regards
Philipp

