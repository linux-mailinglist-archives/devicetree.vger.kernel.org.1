Return-Path: <devicetree+bounces-126002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1933C9DFE06
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 11:02:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D2FA82812CA
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 10:02:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D120B1FC0FC;
	Mon,  2 Dec 2024 10:02:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7551FBCA0
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 10:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733133757; cv=none; b=cgckN+0qKvDYWfV2V/cFFk7YqvtfZk7zOolfARIkjX4uJZvMcwqh0h8QnC8Pi0h/iE0ljXhzx/bevHht+oip3Bj0EOsjUCpXbBkwkktpd3I3TIExxJ7q1676rcb+g0wwDU1wW62Ez4EJ98in8pbIBRXvg/D2yiJQ8uXyFRoCqLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733133757; c=relaxed/simple;
	bh=JmOHdWVPZK+SYdxLHmJ+zkEBSL0B+i18Tm19vMQpGYw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FOMzVHACl4nSjkyVQuKL83w4FK7NoeTuPdgR1L+Q49/noo5WWmLl1ZROiRWVdEIRd2TpCy5tXVJz5r0UBQMQrsUhwIq0XeArDfxdNLwDu/3l1+ar24onBOowHV97g2jBLYeh4NU4k6H2fWop3gguQ7Wo5nQtpK0np9n96ulEqL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1tI3Fy-0002ba-LY; Mon, 02 Dec 2024 11:02:18 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tI3Fw-001HKF-23;
	Mon, 02 Dec 2024 11:02:17 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tI3Fx-00AXiw-0w;
	Mon, 02 Dec 2024 11:02:17 +0100
Date: Mon, 2 Dec 2024 11:02:17 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Luis Chamberlain <mcgrof@kernel.org>,
	Russ Weight <russ.weight@linux.dev>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Kamel Bouhara <kamel.bouhara@bootlin.com>,
	Marco Felsch <kernel@pengutronix.de>,
	Henrik Rydberg <rydberg@bitmath.org>,
	Danilo Krummrich <dakr@redhat.com>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-input@vger.kernel.org
Subject: Re: [PATCH 5/5] Input: Add TouchNetix aXiom I2C Touchscreen support
Message-ID: <20241202100217.v7znemsurtgpgdf3@pengutronix.de>
References: <20241119-v6-10-topic-touchscreen-axiom-v1-0-6124925b9718@pengutronix.de>
 <20241119-v6-10-topic-touchscreen-axiom-v1-5-6124925b9718@pengutronix.de>
 <20241202094434.b7ozyfazbfgjv5ks@pengutronix.de>
 <2024120248-barbed-dwarf-fa73@gregkh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2024120248-barbed-dwarf-fa73@gregkh>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 24-12-02, Greg Kroah-Hartman wrote:
> On Mon, Dec 02, 2024 at 10:44:34AM +0100, Marco Felsch wrote:
> > Hi,
> > 
> > gentle ping after the rc1 tag was released :)
> 
> 
> Where is the Documentation/ABI/ entries for your custom sysfs files this
> driver is creating?  That's required, right?

Good point! I forgot them :/ I will add them in my v2, thank you.

Now the last feedback I'm waiting for is the one for the actual
driver :)

Regards,
  Marco

> 
> thanks,
> 
> greg k-h
> 

