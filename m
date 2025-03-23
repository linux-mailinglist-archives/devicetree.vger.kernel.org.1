Return-Path: <devicetree+bounces-159921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CEEBA6D03E
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 18:31:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 75CFA7A58C4
	for <lists+devicetree@lfdr.de>; Sun, 23 Mar 2025 17:30:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BEE9146013;
	Sun, 23 Mar 2025 17:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="WnKYfybj"
X-Original-To: devicetree@vger.kernel.org
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B98137E0ED
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 17:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742751099; cv=none; b=rGa25dQycF6qP8GH+VnLKtxkhbPm7J3Ui6K80dnRNXxPkHkESj2EmXEfev21mw8AnKUk0LVTQXHfEhYvE76mtXFg/QPRYdjWpTJyMDOJ7ZVDpu3lucdHXYSR6HTe7eVT0Jg5FzzSsx276fw4MAxD1zemqESTCKBEGohDXpLexRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742751099; c=relaxed/simple;
	bh=OurAn6aCCufPe8wONOg+FSpmWM5jwOYj7w2wk4Opzkc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=THVDL7IYs4cwFHKmqRMFAbudOisaIBQk6TJri5e6xIYunWO+9rY5pkyYQkSKsaUPg3ziCjtnJrzfFN8nvdNw6puubJiec8gAH/GBvZjSMpaMqJ5tF4FicpgALNvisvp7RhKta409UKXaNrBzZBBWo0kmuWNcLe+XOwu1HMDn8Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=WnKYfybj; arc=none smtp.client-ip=185.67.36.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id B900B240028
	for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 18:31:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1742751094; bh=OurAn6aCCufPe8wONOg+FSpmWM5jwOYj7w2wk4Opzkc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:From;
	b=WnKYfybji/HGiiOvQNgoYKehMkZv98JXM8cOIgvbWVB6NHOEWumkElbr+vot+vq+7
	 zCj1S3mHG02IFLc9jxYsEEUHXrlvhcuW15Rz7O9t2d+wOUSl/2iFHJA5A1757RsZwP
	 jX485Qiw234LJEXZiCbWXVFP9Z1tYeAPJ5R1f2h7effTBbd60wwu2lUPWGirby+iQk
	 VRE1eY55jzZ7xSDNN1yOECUofgJDSQt/dkKuvSE58Ay7NO5sJ3yR/AHQ9GilL2QH7E
	 Rrf/l433IpY9zaYOxGD7Iso7gSbAWPm/6kVnTvnQ2grh1zf4aHDmMX2pmgh9cEPXyV
	 0FPx7mG18jCQg==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4ZLNX531ncz9rxG;
	Sun, 23 Mar 2025 18:31:32 +0100 (CET)
Date: Sun, 23 Mar 2025 17:31:32 +0000
From: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
To: j.ne@posteo.net
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org
Subject: HDMI output (Re: [PATCH 3/3] ARM: dts: amlogic: Add TCU Fernsehfee
 3.0)
Message-ID: <Z-BFdMfqVCX4T3NB@probook>
References: <20250323-fernsehfee-v1-0-2621341cd37a@posteo.net>
 <20250323-fernsehfee-v1-3-2621341cd37a@posteo.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250323-fernsehfee-v1-3-2621341cd37a@posteo.net>

On Sun, Mar 23, 2025 at 01:37:52PM +0100, J. Neuschäfer via B4 Relay wrote:
> From: "J. Neuschäfer" <j.ne@posteo.net>
> 
> Fernsehfee[1] ("TV fairy") 3.0 is a set-top box with HDMI input and
> output ports. It originally ran Android 4.4 and a Linux 3.10 kernel.
> 
> The following features are tested and known to work:
> 
> - Ethernet
> - Power LED (switching between green and red)
> - Power button
> - eMMC
> - SD Card
> - USB
> - Wifi
> 
> The following features are untested or not working:
> 
> - HDMI input and output
> - Infrared remote control input and output

FWIW, with Martin Blumenstingl's meson-mx-integration-6.13-20250112
branch, HDMI output works (albeit not at all resolutions).


Best regards,
J. Neuschäfer

