Return-Path: <devicetree+bounces-144055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB9FA2CAD7
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 19:08:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 232BC3A36C1
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 18:08:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 147AE19CCFC;
	Fri,  7 Feb 2025 18:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="VySGSFQI"
X-Original-To: devicetree@vger.kernel.org
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303ED175D5D;
	Fri,  7 Feb 2025 18:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738951705; cv=none; b=sdj4vhP3q8TiktYRc+IBEre2rCiNZ9v7SBJDkqM/SfJVfulNIxNMj/sBah59TfyC/MjzIThYHBV+BKeAoL1VylfI1eew4AeiegQ6+y1dY5TJXp9KMG39EWbO75GrQh50gLevArNEGT72wAdb1V2J+xx7MNWA8RT1/jJ9i4WxCa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738951705; c=relaxed/simple;
	bh=l5gPvJuaie6BQNZNUraoNgNpSMTQuZU0Y61YeIypiXM=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QkgM8DkTHnqfTW60HD8ccnYDUmMLzH7CPhy8MJfWWClo2eyeoyvKFeEv+GndKl3xeiVYm+O7sFyhiAGqGlICm8B+f9q94dUy3VOFefzJFMBrI+gUZV7atcbYQWluHI703F9+M2VTkvHbhbaV/ODtRH2yWceELl0lMALPCxUY0GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=VySGSFQI; arc=none smtp.client-ip=217.70.183.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 899AC20470;
	Fri,  7 Feb 2025 18:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1738951700;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=H1OMVSefMFWd6ppRXpZtaRvQrLC6TzyKHWCmUK/ezKw=;
	b=VySGSFQI2JF0F0mX/4hU9mrJj6yo7SOV49yDBTN/IJe56C7KFastFrzY7VWooJNvHTV4Wi
	pJZsi1tDkWbeRuK30WQ7RrL99wCu3+QedCWy2GDFRy/r2u4f3ZDcTv+EoPLENecKiuCNZ7
	rIYzWqW8v0ZMY29HroosdFY1mkGOuy+1qujfJtMrn4puJgOAfGrNhD/E2Fl0tSw3qHoQMM
	/sli9Itw28gbDwPQAuAiCdfBDUvAuHpdAskhr1Ln1Ckc6Yq6SZBaqOwPmX1SfFyvqPpr+L
	KxuukW2gTm5wkrJRa5x4AGLtJSR3hDVR3XTZ+kvHKf8asQVxYdYRPrXSZpShDw==
Date: Fri, 7 Feb 2025 19:08:16 +0100
From: Herve Codina <herve.codina@bootlin.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong
 <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Laurent
 Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie
 <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>,
 =?UTF-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, Raspberry Pi Kernel
 Maintenance <kernel-list@raspberrypi.com>, Marek Vasut <marex@denx.de>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Louis Chauvet <louis.chauvet@bootlin.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v5 4/4] drm: bridge: ti-sn65dsi83: Add error recovery
 mechanism
Message-ID: <20250207190816.2002d313@bootlin.com>
In-Reply-To: <8756830.T7Z3S40VBb@steina-w>
References: <20250203161607.223731-1-herve.codina@bootlin.com>
	<3605739.aeNJFYEL58@steina-w>
	<20250206162048.1f159ba6@bootlin.com>
	<8756830.T7Z3S40VBb@steina-w>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvleeliecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfitefpfffkpdcuggftfghnshhusghstghrihgsvgenuceurghilhhouhhtmecufedtudenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkjghfohfogggtgfesthekredtredtjeenucfhrhhomhepjfgvrhhvvgcuvehoughinhgruceohhgvrhhvvgdrtghoughinhgrsegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpeeviefffeegiedtleelieeghfejleeuueevkeevteegffehledtkeegudeigffgvdenucfkphepledtrdekledrudeifedruddvjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeeltddrkeelrdduieefrdduvdejpdhhvghloheplhhotggrlhhhohhsthdpmhgrihhlfhhrohhmpehhvghrvhgvrdgtohguihhnrgessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepvdehpdhrtghpthhtoheprghlvgigrghnuggvrhdrshhtvghinhesvgifrdhtqhdqghhrohhuphdrtghomhdprhgtphhtthhopegrnhgurhiivghjrdhhrghjuggrsehinhhtvghlrdgtohhmpdhrtghpthhtohepnhgvihhlrdgrrhhmshhtrhhonhhgsehlihhnrghrohdrohhrghdprhgtphhtthhopehrfhhoshhssehkvghrnhgvlhdrohhrghdprhgtphhtthhopefnrghurhgvnhhtrdhpihhntghhrghrthesi
 hguvggrshhonhgsohgrrhgurdgtohhmpdhrtghpthhtohepjhhonhgrsheskhifihgsohhordhsvgdprhgtphhtthhopehjvghrnhgvjhdrshhkrhgrsggvtgesghhmrghilhdrtghomhdprhgtphhtthhopegrihhrlhhivggusehgmhgrihhlrdgtohhm
X-GND-Sasl: herve.codina@bootlin.com

Hi Alexander,

On Thu, 06 Feb 2025 16:39:09 +0100
Alexander Stein <alexander.stein@ew.tq-group.com> wrote:

> Hi Herve,
> 
> Am Donnerstag, 6. Februar 2025, 16:20:48 CET schrieb Herve Codina:
> > Hi Alexander,
> > 
> > On Thu, 06 Feb 2025 15:38:42 +0100
> > Alexander Stein <alexander.stein@ew.tq-group.com> wrote:
> > 
> > ...  
> > > With interrupt configured I got the following stack trace upon
> > > reboot/poweroff:
> > > 
> > > [   91.317264] sn65dsi83 2-002d: reset the pipe
> > > [   91.344093] Unable to handle ke
> > > ** replaying previous printk message **
> > > [   91.344093] Unable to handle kernel NULL pointer dereference at virtual address 0000000000000000  
> > ...
> > 
> > Ouch :(
> > 
> > One question to help me investigating:
> > Do you have the issue at init/probe or when you start to display graphics?  
> 
> This is during shutdown/poweroff. I assume that regmap_reg() in
> sn65dsi83_handle_errors() fails and because of that reset_work is scheduled.
> 

Found the issue.

Can you give me following information so that I can validate what I
understood:
  - Is your interrupt line connected directly to the SoC?
  - Is there any pullup/pulldown on your interrupt line?
  - In your devicetree what is the configuration used for this interrupt in
    terms of level or edge.

Anyway, I will send a fix in the next iteration.

Best regards,
Hervé

