Return-Path: <devicetree+bounces-221481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E9725BA0398
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 17:20:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7E171560BBF
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:15:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0D8B3009EF;
	Thu, 25 Sep 2025 15:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="D+zFVvp5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA4B3009DC
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 15:09:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758812953; cv=none; b=ai8D8dgEM8IbU9ZtyUc8dY0VClTR24q25y2SIKybYUiV6JLAem/KJHNDIJSSfPRrB67fftHxpdiWZS3mB+tNEkRthvcZZChD9VhGSXcGSIMRKmOcFqioanvi2xIP9nMzuNhHHcUUrYuBHWesRdX1T7vOOoXwCC5FSY7Hi783KPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758812953; c=relaxed/simple;
	bh=2ZcsocJUJZTAl0jWulvq7AOkfB4p3colpDpTehh8nvU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l6A8lBLECQqNr9OH3fuLhduWQUHrAaXLt+hAw6dyTPS+coKayS6QV6L6WasNhTS56ltw6zVvNDHW1P5PVMARF7B+cjdlicJajs02ccENhyfXhkFaN7lE/RRgzW/drYz7kxMygPt5cN5j/uQDXJp4z5lrBv8auwA4JN0RydfABNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=D+zFVvp5; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=DlMI
	+igi+LUMuQTqkSmm+VJAddaRP7bPzXdlAl4mAb0=; b=D+zFVvp5d2xB7jpplLVU
	hqWybUKO1wDY4FwXn2fJREtMIql6+iXhMLvYIlE11blKhEwl893U5gbPRpAQrepf
	sv4XJZuHE0psDeLJShsht6T1pigvCLYLbEmzk4sC5VvXhgsJ9uCWan1YyrDU2MhM
	0rc4tXMy0R0l/v5Cs+y8QwVNRUADfgLi4wggO7war9QMxavXLt21OdO4pgdGXu2s
	od3cECpPMpHzKY3fd4gXqE+Hckp9JOuv15178UZrLcMbWoCaHUfUDdAAwbiaSEah
	075zBeoasHdDz/r6+UhgIawd5L3NvjKyi/dVH0VXoRQ7LgifaNSgqEkp1h04nHhm
	4g==
Received: (qmail 1914123 invoked from network); 25 Sep 2025 17:09:07 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 25 Sep 2025 17:09:07 +0200
X-UD-Smtp-Session: l3s3148p1@mu3tjKE/spQgAwDPXwQHAL/S9V79e5yL
Date: Thu, 25 Sep 2025 17:09:06 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v3] arm64: dts: renesas: r8a779g3: Add Argon40 fan HAT
 DTO to Retronix R-Car V4H Sparrow Hawk
Message-ID: <aNVbEvSRCpQSXT4W@shikoro>
References: <20250907161130.218470-1-marek.vasut+renesas@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250907161130.218470-1-marek.vasut+renesas@mailbox.org>

On Sun, Sep 07, 2025 at 06:10:53PM +0200, Marek Vasut wrote:
> Add DT overlay to bind Argon40 fan HAT, on Retronix R-Car V4H
> Sparrow Hawk board. Fan RPM control and full RPM on reboot has
> been tested.
> 
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

As the dependencies are in, can we have this patch in -next now, pretty
please? :)


