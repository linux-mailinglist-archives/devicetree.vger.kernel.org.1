Return-Path: <devicetree+bounces-221547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 69016BA0CB6
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 19:18:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2347C1646B7
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 17:18:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C22825F988;
	Thu, 25 Sep 2025 17:18:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D90435950
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 17:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758820681; cv=none; b=b4uCBvmMGVD4tg6caLCm0q3gyWlXKMGs4N6eg1hJVLiXLbpGK2RRTIxXL+nw2HhEuhaXYvN77FO/tD85ems+pA1NgCTOCxkAV78lD99KOAkif6I+6gwJn+RkYFotSxdlv3CM2i9axNDrHTRDHLMnfi4CL1SmCi8vvJv4fb3d6AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758820681; c=relaxed/simple;
	bh=ixPSXTmwhZtRkACpF9LlTsgH7Qo2qNi66hork6y/MU8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jrQTq2yUTRyUIUpzfuc0+o9Ek7pVh+G0YJXUO0hhYr4N+7MDOs8uqKYOQBHkPSTa6dU84AVbZAzvG8AtaMmY3r9nNGVtM3lyE+Gj1+f51WPvSx1Sh6/5ogHMB0lRZkfsarG7DaYw/zLeo8mANWsuZ08YfPvMfvILnC4nPWvSyzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1v1pbF-0002bj-8T; Thu, 25 Sep 2025 19:17:45 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1v1pbE-000SHH-2w;
	Thu, 25 Sep 2025 19:17:44 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1v1pbE-00CgJl-2T;
	Thu, 25 Sep 2025 19:17:44 +0200
Date: Thu, 25 Sep 2025 19:17:44 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <imx@lists.linux.dev>,
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: freescale: debix-som-a-bmb-08: Enable HDMI
 output
Message-ID: <20250925171744.5eyhqjlqp7skesqi@pengutronix.de>
References: <20250916144710.1285650-1-kieran.bingham@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916144710.1285650-1-kieran.bingham@ideasonboard.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 25-09-16, Kieran Bingham wrote:
> Enable the HDMI output on the Debix SOM A board, using the HDMI encoder
> present in the i.MX8MP SoC.
> 
> Enable and configure all nodes required for the HDMI port usage.
> 
> Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

