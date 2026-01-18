Return-Path: <devicetree+bounces-256567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4BBD39866
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 18:22:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D0F63007C6F
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 17:22:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF65A23373D;
	Sun, 18 Jan 2026 17:22:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE9F16A33B
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 17:22:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768756939; cv=none; b=JoUeZMI5CyWDGrP0VC0G5peco2Dmj8b3IGFfHbrARteB4Q94eJ4kI9Si3UWoXUwexxLPTIz7k1fuxv5k96szwwZHFH3FjLCBxRZH+7CMLGvilP4/TceM/ivtc0spVNmXfLjiXfLVrIE+BwlfEPwW+WhtlFTX5/8KTYk/8LUFCKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768756939; c=relaxed/simple;
	bh=Cm8BRtjbI4KRypVsHvIczetlMnt9Vf7bDBtTbkhGxoQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ht554ID9w5jlCrIh/htAGkgcB3VcBmpKxTMdzTThyZpTdD8l8xB6FTBGzy5uvURk9cKIsgPOnXoT9sz7c51b31N6MJlVUM/U6yMZbjryUJ2tjVJSA3akdP0xsTjXdxqP5IWP/J/w7RSaJnpMXVrvbGd21A6SWd/ww+tp8D1PfIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhWTY-00067t-Pj; Sun, 18 Jan 2026 18:22:08 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhWTY-001HIk-3C;
	Sun, 18 Jan 2026 18:22:08 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhWTY-001bBb-0b;
	Sun, 18 Jan 2026 18:22:08 +0100
Date: Sun, 18 Jan 2026 18:22:08 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nicolas Schier <nsc@kernel.org>, devicetree@vger.kernel.org,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	Li Jun <jun.li@nxp.com>
Subject: Re: [PATCH v2 4/9] arm64: dts: imx8mm: add wakeup-source for usb phy
Message-ID: <20260118172208.h7yts2yuf2lkhd4n@pengutronix.de>
References: <20260117-misc_dts-v2-0-0f319c7e9b55@nxp.com>
 <20260117-misc_dts-v2-4-0f319c7e9b55@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260117-misc_dts-v2-4-0f319c7e9b55@nxp.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 26-01-17, Frank Li wrote:
> From: Li Jun <jun.li@nxp.com>
> 
> USB phy can be wakeup source to support wakeup system from USB.

Was USB wakeup tested? That beeing said, marking the device as
wakeup-src is fine.

> Signed-off-by: Li Jun <jun.li@nxp.com>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

