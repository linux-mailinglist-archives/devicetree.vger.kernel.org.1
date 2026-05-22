Return-Path: <devicetree+bounces-301737-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6D9mF7Q7EGrUVAYAu9opvQ
	(envelope-from <devicetree+bounces-301737-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 13:19:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 650E75B2E1E
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 13:19:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0238F3020BE3
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 10:54:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A27E3D34B2;
	Fri, 22 May 2026 10:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YW4b9h+a"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78603CC304;
	Fri, 22 May 2026 10:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779447274; cv=none; b=ie3fSD+M7Tyjp/F8D4pKPY+h2Yf1iM0URNYsnu6zNCX85G8Zo1a3Ficn1b4iigkNBIBbe7TuPP2FjoV76mxDObCQ5M/A3vTP3cOLmbfd/3DbSfT9oTPpiEcM4CgnN7oquUIVAgludt7PWrNMCuyzVu9VM5kZOtMfpntK3B9xy3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779447274; c=relaxed/simple;
	bh=VoqSSr6SFCd7KX19yU/Ythf5usTFnX7TNdYxdaGmlEU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZCyCU5ZaP9/q/rO2E+G39wykAo2oSw1+SQUxgJ9RvwHX7FtfLtMiwzI689fgpy2Wi+KZwLJtKF5q1kLr6G1T/voHzgK0bU5qFAu/fFQGmBihmoIqvvBd0URxsaJ4f62hv0GF6QowqLwTgVRmle3QjQP1zPufvO/HGtCamTgNz40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YW4b9h+a; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C1321F000E9;
	Fri, 22 May 2026 10:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779447273;
	bh=zo7xZVZuaqNUtAJ4AFiwelE3O6ioLTV60tcoTNmKXEs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=YW4b9h+a+Z6HzD1qgVqNfQKy+HO6hkwS3FXSphq6qkZOJOc6r1y8i2Lpt7uElgXmv
	 Xavot82qkPMfHMJUpJroElhuqqRclOul7YFpM0mzcW45qtAPNcqmWyHJLe62WGsl/s
	 6HxX3A+b3U7tG/PVyfWG/K3oKfEHclvMWOc4EWX7wAkxjxqSwp8CfZVOjFcxqtk7PQ
	 saGQzC+lUrFurtRjtSgtt6WwVkWD9DU4EA3negswERMfF8Nm9VVBDiv6aIm+0gGmPR
	 6Vpc12ud6azAnaVa69m+eb2Z+zcEL9t5qXeal7Q/6Zv/rgfKYjpXnSzN6PmfJiXKIC
	 mbceIvo8X5veA==
Date: Fri, 22 May 2026 11:54:23 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Chris Morgan <macromorgan@hotmail.com>, Chris Morgan
 <macroalpha82@gmail.com>, linux-iio@vger.kernel.org, andy@kernel.org,
 nuno.sa@analog.com, dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Krzysztof Kozlowski
 <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH V8 02/10] dt-bindings: iio: imu: icm42600: Add icm42607
 binding
Message-ID: <20260522115423.1b30d4d4@jic23-huawei>
In-Reply-To: <20260521-challenge-flaccid-26b6f5d2d0bd@spud>
References: <20260518200526.458421-1-macroalpha82@gmail.com>
	<20260518200526.458421-3-macroalpha82@gmail.com>
	<20260520174217.6ca98524@jic23-huawei>
	<20260521-premium-afterlife-0d7a22b77517@spud>
	<PH0PR19MB99733879756FFB321CDCDD9B81A50E2@PH0PR19MB997338.namprd19.prod.outlook.com>
	<20260521-challenge-flaccid-26b6f5d2d0bd@spud>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-301737-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[hotmail.com,gmail.com,vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,intel.com,oss.qualcomm.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Queue-Id: 650E75B2E1E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 21 May 2026 21:08:07 +0100
Conor Dooley <conor@kernel.org> wrote:

> On Thu, May 21, 2026 at 12:43:09PM -0500, Chris Morgan wrote:
> > On Thu, May 21, 2026 at 05:44:21PM +0100, Conor Dooley wrote:  
> > > On Wed, May 20, 2026 at 05:42:17PM +0100, Jonathan Cameron wrote:  
> > > > On Mon, 18 May 2026 15:05:17 -0500
> > > > Chris Morgan <macroalpha82@gmail.com> wrote:
> > > >   
> > > > > From: Chris Morgan <macromorgan@hotmail.com>
> > > > > 
> > > > > Add devicetree binding for the Invensense ICM42607 and Invensense
> > > > > ICM42607P inertial measurement unit. This unit is a combined
> > > > > accelerometer, gyroscope, and thermometer available via I2C or SPI.
> > > > > 
> > > > > This device is functionally very similar to the icm42600 series with a
> > > > > very different register layout.
> > > > > 
> > > > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > > > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>  
> > > > Note that Sashiko has highlighted that the binding this being added to
> > > > has a potential problem.
> > > > 
> > > > interrupts are required but interrupt-names are not.
> > > > That would be fine but the binding doesn't say there is a default
> > > > ordering for the interrupts - so if we don't have names we have no
> > > > idea which interrupt it is.
> > > > 
> > > > This needs fixing - probably by adding a default  
> > > 
> > > Worth pointing out that this isn't an issue with this particular patch,
> > > the problem exists in mainline.  
> > 
> > The driver I lovingly borrowed this code from seems to have fallback
> > logic, basically picking the first interrupt if it couldn't find one
> > named "INT1". I was told early on not to do this that way, so in my
> > case the interrupt-names would be required (but not for the existing
> > driver because of this fallback).
> > 
Ah, so it  has a default that we've elected not to document.
I can't remember the history of that - probably similar discussion about
there being no right default when there are two (near?) identical operating interrupt
pins.

> > Should I make the requirement conditional just to my compatible
> > strings?  
> 
> Sure, sounds like a good idea to me

Agreed - that closes this for this part without spitting lots of warnings
for the older one.

J

