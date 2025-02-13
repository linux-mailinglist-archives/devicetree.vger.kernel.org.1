Return-Path: <devicetree+bounces-146226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D461EA33CA3
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 11:24:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22075188DEDD
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 10:23:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0447F213233;
	Thu, 13 Feb 2025 10:22:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A422212FB4
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 10:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739442140; cv=none; b=fRuILvMhc6fy4C2knPfBQS4JJceVMG04mZh0JYBO6WNpU/cob/TPpSTJFEP0ghWi+zsvn7GFjh95BhrtX4Xn/CLKbg06u0orM7pQqOs/cWCq4gvT2hMOs8pCzdahi7fNhoAqogU6w83F+uXhB0DUUykorVydjvnHKDY1uYvaKgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739442140; c=relaxed/simple;
	bh=p+GnX/qBn0tmrY1mpd3KjfQNTyibWtkyaubFDEJRmsI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=GRFfSdwXrxqUApMSUzWgEcbeA09QKPw6OIRkUre6VZP5dDJ4Uu9cMuSoC+syD7EYq4H5C7+AQLaxRlsP/sshc4evOPMfKNnOvLpEx4CyP6FoDmcHCeeYfUsiaBf6FdZ0xk1uOrFTwVoe+07FeaNy5dbvtY9SacMpsoKT+d3gIhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tiWMC-0000vH-7c; Thu, 13 Feb 2025 11:22:08 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tiWMB-000jZp-2V;
	Thu, 13 Feb 2025 11:22:07 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tiWMB-0003C6-2H;
	Thu, 13 Feb 2025 11:22:07 +0100
Message-ID: <619128481807b279e5d3b7967b00e7f094dae7ba.camel@pengutronix.de>
Subject: Re: [PATCH 1/4] dt-bindings: reset: add generic bit reset controller
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, Inochi Amaoto
 <inochiama@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Guo Ren
 <guoren@kernel.org>, Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?=
 <u.kleine-koenig@baylibre.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, sophgo@lists.linux.dev, 
 linux-riscv@lists.infradead.org, Yixun Lan <dlan@gentoo.org>, Longbin Li
 <looong.bin@gmail.com>
Date: Thu, 13 Feb 2025 11:22:07 +0100
In-Reply-To: <20250213-cordial-elated-grebe-57aaae@krzk-bin>
References: <20250213020900.745551-1-inochiama@gmail.com>
	 <20250213020900.745551-2-inochiama@gmail.com>
	 <20250213-cordial-elated-grebe-57aaae@krzk-bin>
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

On Do, 2025-02-13 at 10:35 +0100, Krzysztof Kozlowski wrote:
> On Thu, Feb 13, 2025 at 10:08:54AM +0800, Inochi Amaoto wrote:
> > Some SoCs from Aspeed, Allwinner, Sophgo and Synopsys have
> > a simple reset controller by toggling bit. It is a hard time
> > for each device to add its own compatible to the driver.
> > Since this device share a common design, it is possible to
> > add a common device to reduce these unnecessary change.
>=20
> SoC components are rarely that simple and even if it is just a bit,
> usually it is part of one or few registers.

Yes, in those cases (which are probably most of them), I would argue
this binding doesn't really fit.

> Anyway, there are already bindings for reset-simple and I do not
> understand why this has to be duplicated.

I think the motivation is to not have to add a new binding document and
modify reset-simple.c every time there is a new SoC. I wonder if some
of this can be mitigated by adding just the binding document similar to
trivial-devices.yaml, without the actual "reset-simple" compatible.

>=20
regards
Philipp

