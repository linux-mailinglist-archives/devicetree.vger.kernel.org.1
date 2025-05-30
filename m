Return-Path: <devicetree+bounces-181714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E63AAC89EB
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 10:31:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5E63A1BA5FDA
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 08:31:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33C81219313;
	Fri, 30 May 2025 08:30:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA5D02116F4
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 08:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748593855; cv=none; b=s6Hhi9tWAh6gfRzNOV01yK/ulwysAKx2Z/k680TpsYPuNY36fUfg2glkFxsLqIg93VviKOzBWE+42ZplqQD4Ih0IOJ8Aq0pbIf8qwzISo1lihYb3muXsANBTGDvBpXQeuB867EIj3ShcNqEpk9VyPEMhCNI31ZA+7NkaqanvwTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748593855; c=relaxed/simple;
	bh=64qScj2fNxS5xRxlTh1u81AIS0+t+p7HGyYWKUysbyY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nhiZCow5/5qW1iOEc1RLx/JJmZt8q1h/cvzSF8s3WqCkBtqvs75zznkTAuQLGyo3CLwS08Ugz2fi7hr1btvT6LztVtcTdrqpRAOXOtM7AgL/tQ5LGRZld8pwKIgjTwUHfL6wc+qKLadFrxzKE3JcZ8oM9/X20r2ss76pFgzW6/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uKv8M-0007q5-27; Fri, 30 May 2025 10:30:34 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uKv8K-000wm3-3C;
	Fri, 30 May 2025 10:30:33 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uKv8K-000oiq-2n;
	Fri, 30 May 2025 10:30:32 +0200
Date: Fri, 30 May 2025 10:30:32 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Luis Chamberlain <mcgrof@kernel.org>,
	Russ Weight <russ.weight@linux.dev>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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
Subject: Re: [PATCH v2 2/4] dt-bindings: vendor-prefixes: Add TouchNetix AS
Message-ID: <20250530083032.lszndbodo2tgixu6@pengutronix.de>
References: <20250529-v6-10-topic-touchscreen-axiom-v2-0-a5edb105a600@pengutronix.de>
 <20250529-v6-10-topic-touchscreen-axiom-v2-2-a5edb105a600@pengutronix.de>
 <1e5bd735-3eb5-40da-9e4d-12aa364e1cb3@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1e5bd735-3eb5-40da-9e4d-12aa364e1cb3@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 25-05-29, Krzysztof Kozlowski wrote:
> On 29/05/2025 00:08, Marco Felsch wrote:
> > From: Kamel Bouhara <kamel.bouhara@bootlin.com>
> > 
> > Add vendor prefix for TouchNetix AS (https://www.touchnetix.com/products/).
> > 
> > Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> How v16 became v2 is still confusing:
> 
> https://lore.kernel.org/all/20240703142520.207066-2-kamel.bouhara@bootlin.com/

As explained within the v1, I started from a fresh v1 due to the
complete rework.

Regards,
  Marco

