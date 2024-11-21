Return-Path: <devicetree+bounces-123460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB8F9D4921
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 09:46:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F3F1282BDC
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 08:46:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AB7E1CB9F4;
	Thu, 21 Nov 2024 08:46:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8555713BC3F
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 08:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732178771; cv=none; b=bpwGRIXcdnn5kdeH5AQMhzMwmI4NOE8HYyeVQhhHK08MTmF1MjyQQ9+nzlnr8xEDJhuUzPx7OWlz5gfney/amI2/VW8qVbkdULhhRDYvYlQs3DRTJZAKTLALPi+Ba+0pwrWYjAtoZ/0k2u9VlBdL5EIRFlzx+dd3wVOOMmh/a8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732178771; c=relaxed/simple;
	bh=LAnyrZMOFpDYlqYSjgosxXg0b1flItWfge5CO9J0Row=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fkq8AjdXvbM40W2m4Gj95o2XPZMz7WReMCaghvuCRUo/B7wYsWxpdnescO1T3Y5ZbET1/a4TFNK8lEeaz+NMeU1rI30srp3oDPK22hdBU5nhNzVhIZnxQbO8YcPAadT/c4Y78Kk09ymUH0lqzqqK7LXCE1TzVtW1Lv/BLsHZo0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1tE2ov-0001p6-No; Thu, 21 Nov 2024 09:45:49 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tE2ov-001sKj-0z;
	Thu, 21 Nov 2024 09:45:49 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tE2ov-00733L-0c;
	Thu, 21 Nov 2024 09:45:49 +0100
Date: Thu, 21 Nov 2024 09:45:49 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Kamel BOUHARA <kamel.bouhara@bootlin.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Luis Chamberlain <mcgrof@kernel.org>,
	Russ Weight <russ.weight@linux.dev>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Marco Felsch <kernel@pengutronix.de>,
	Henrik Rydberg <rydberg@bitmath.org>,
	Danilo Krummrich <dakr@redhat.com>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-input@vger.kernel.org
Subject: Re: [PATCH 3/5] dt-bindings: vendor-prefixes: Add TouchNetix AS
Message-ID: <20241121084549.4bzebpuusjreqiik@pengutronix.de>
References: <20241119-v6-10-topic-touchscreen-axiom-v1-0-6124925b9718@pengutronix.de>
 <20241119-v6-10-topic-touchscreen-axiom-v1-3-6124925b9718@pengutronix.de>
 <b5hjephfcvdu2jjchodaj5u4yltvatdgmse7xvwkhaepn5dinv@sfl4utyuz34g>
 <20241120081527.s6pfo5soa2tqvra4@pengutronix.de>
 <94c90aef-9807-473d-b71d-168282d87570@linaro.org>
 <3c072ad8e4a15cd23a195855f8e68bfa@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3c072ad8e4a15cd23a195855f8e68bfa@bootlin.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 24-11-21, Kamel BOUHARA wrote:
> Le 2024-11-21 08:47, Krzysztof Kozlowski a écrit :
> > On 20/11/2024 09:15, Marco Felsch wrote:
> > > On 24-11-20, Krzysztof Kozlowski wrote:
> > > > On Tue, Nov 19, 2024 at 11:33:52PM +0100, Marco Felsch wrote:
> > > > > From: Kamel Bouhara <kamel.bouhara@bootlin.com>
> > > > > 
> > > > > Add vendor prefix for TouchNetix AS
> > > > > (https://www.touchnetix.com/products/).
> > > > > 
> > > > > Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> > > > > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > > > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > > 
> > > > I think this did not happen (only Ack).
> > > 
> > > Huh.. I used b4 to retrieve the latest Bootlin version. According
> > > [1] it
> > > was already present :/ I can drop it if you want.
> > > 
> > > [1] https://lore.kernel.org/all/20240703142520.207066-3-kamel.bouhara@bootlin.com/
> > > 
> > Hm? This points to entirely different patch!
> > 
> 
> Hello Marco,
> 
> I think the last review from Krzystof is on v7 [1] ?
> 
> [1]: https://lore.kernel.org/linux-kernel/821ce1d4-bc15-4764-bbe0-315c57e8536e@linaro.org/

Yeah Krzysztof is right, I pointed to the wrong patch, but still I
didn't added the reviewed-by tag but b4 did. I ran it again and here it
is:

$ b4 am https://lore.kernel.org/all/20240703142520.207066-3-kamel.bouhara@bootlin.com/
Grabbing thread from lore.kernel.org/all/20240703142520.207066-3-kamel.bouhara@bootlin.com/t.mbox.gz
Analyzing 9 messages in the thread
Looking for additional code-review trailers on lore.kernel.org
Analyzing 137 code-review messages
Checking attestation on all messages, may take a moment...
---
  ✓ [PATCH v16 1/3] dt-bindings: vendor-prefixes: Add TouchNetix AS
    + Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> (✗ DKIM/linaro.org)
  ✓ [PATCH v16 2/3] dt-bindings: input: Add TouchNetix axiom touchscreen
  ✓ [PATCH v16 3/3] Input: Add TouchNetix axiom i2c touchscreen driver
  ---
  ✓ Signed: DKIM/bootlin.com
---
Total patches: 3

Krzysztof I'm sorry, shall I drop it from the next version?

Regards,
  Marco

