Return-Path: <devicetree+bounces-136517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDA3A05746
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 10:47:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 58E09161E92
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 09:47:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 043331EE7D5;
	Wed,  8 Jan 2025 09:47:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="iZIO5axX"
X-Original-To: devicetree@vger.kernel.org
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ECCA79FE;
	Wed,  8 Jan 2025 09:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736329647; cv=none; b=CZmxmTAnqAFMYkskWBJ4d/n1xqdG6svJt/rIg8Q5cS8LGsuFqRAj8Q3NAi6ADppOHB9aJ0fleN3rGxvtRKJ0+puqZeAKPOhtx8B9wdqx1F7EsY1wZR9Cw8nBDAdopw7Wmpq66u+hwm//2r5gVgLhGwn+IWQ7ROGbF7YJ8Z0lJgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736329647; c=relaxed/simple;
	bh=1D7ZC0rHwNo/nas3TA0kqG1f7+uEOZG4Yl5PtuHZDXk=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EheYSoAd74grFLUhjg1Ll9/ovkLZPEvQ+bLUHUnPxdagKM6A0G9gx7JTS0Wowl6HvVc8GTjunKFWj0q3CvMSTiG4G+som9pv9OoX3P0bDZCn8NBFE7UmqlGXVR9s63oN3X9DeHlwWTizj3TeUhC+hteUnprG97/7mwq2Tyti2VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=iZIO5axX; arc=none smtp.client-ip=217.70.183.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2786460003;
	Wed,  8 Jan 2025 09:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1736329643;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dt3WALCVLJCRW2cde7nrz+vlEW88l2pHvW21cOkQCWE=;
	b=iZIO5axXsc/E5bA8k613vrh/0SQXeF8McKHH2Q/SJZYE+zWwFrhm8hNH0vsfZ2ZIRlbxlE
	DWCNgQdDUNO7v6Nz4f1HoNiefjy57JGhiz8UTjkD4HZW6MX0GaEm6c+Ab3Hrc2Ahn8O2R0
	10fyRgYSbGZVSNF2uCGSRESH+t3C1pAKkRzYI8/0nk5Gb2baoPmbb9rLiQsMecA4M2sseo
	mPP6jN7xbKGitxvqgzgTzBEQ57n1kdyQJugDKeDzN/3B5VOc4NkqWM5Q/k4j3jIaXnCjJy
	APt/tU5OvkUF/7mJgAAzpRtRWCUpNqKJSlwXfEDGmGTEmrX3AzUixBnkAFyfwg==
Date: Wed, 8 Jan 2025 10:47:19 +0100
From: Herve Codina <herve.codina@bootlin.com>
To: Ayush Singh <ayush@beagleboard.org>
Cc: Andrew Davis <afd@ti.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Saravana Kannan
 <saravanak@google.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, David Gibson
 <david@gibson.dropbear.id.au>
Subject: Re: [PATCH 0/7] of: overlay: Add support for export-symbols node
 feature
Message-ID: <20250108104719.0412ad94@bootlin.com>
In-Reply-To: <d25572fa-8f0c-4f19-874c-6698a1db40ae@beagleboard.org>
References: <20241209151830.95723-1-herve.codina@bootlin.com>
	<33c61b28-c0b8-478d-8107-c6ed1ff9e466@beagleboard.org>
	<20241210104141.39acffb1@bootlin.com>
	<bab9f277-a366-48ec-acdd-0896c8307ad9@beagleboard.org>
	<20241210115515.1886f73f@bootlin.com>
	<6d48095d-59b1-4439-8e2a-927aa1aa1b55@beagleboard.org>
	<20250108090750.45685a50@bootlin.com>
	<d25572fa-8f0c-4f19-874c-6698a1db40ae@beagleboard.org>
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
X-GND-Sasl: herve.codina@bootlin.com

Hi Ayush,

On Wed, 8 Jan 2025 13:58:04 +0530
Ayush Singh <ayush@beagleboard.org> wrote:

...
> 
> I will experiment with adding support to dtc and see how things look. 
> Hopefully, 2025 is the year of addon board support.
> 

Also one point different between fdtoverlay an runtime loading is
that runtime loading allows to set the target node of the overlay
at runtime.

For instance, on LAN966X PCI driver, an overlay is loaded and
applied on a PCI device node.
The overlay loading is done by the PCI driver device:
  https://elixir.bootlin.com/linux/v6.13-rc1/source/drivers/misc/lan966x_pci.c#L131
The overlay loaded is the following one:
  https://elixir.bootlin.com/linux/v6.13-rc1/source/drivers/misc/lan966x_pci.dtso

For addon boards, this feature is also useful because without any
modification in the overlay itself, it can be applied on the correct
connector. This allows to support, without any overlay modification the
following cases:
 - A base board with multiple connectors where an addon board can be
   connected.
 - An addon board with its own DT overlay used on different base board

This feature is not supported by fdtoverlay. Maybe something like
  fdtoverlay --base=/somewhere/my_connector
could be implemented in fdtoverlay in order to choose the node where the
overlay has to be applied.

Best regards,
Hervé

