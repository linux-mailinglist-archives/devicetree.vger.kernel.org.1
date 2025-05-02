Return-Path: <devicetree+bounces-173069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D04EBAA75B2
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 17:10:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 12795171D65
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 15:09:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C821A2571C3;
	Fri,  2 May 2025 15:09:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B1F43169
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 15:09:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746198578; cv=none; b=CVBorw15aDtDcNndHoTvn5gAt+AqOpLyE5JFz1iP61d9HbivIxUvGJrqQN4Qfnk0hiutnchVHAyCpVqNO9711QJIJ5PYb5YVQvO9j2eIQhr7KfgNGS6/xCRHbIiXBZp67kbq+2gJVQ4DFrgg5ZskY1D76DFOENKXBlLwEcZKqWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746198578; c=relaxed/simple;
	bh=KLiW+3GE3O9BJ9iffWg/gBq91dbbgNVRFBgQRgd/3eM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NUBtxUNjbms7vvdVpT42GaG95q/I5q3ej5by3Z3aEYqVe5w8X81H61dLYQbsWm6dgJn0KPsfnc2hnCYEdhn8ui9JvD50zmHEQBuHDc1fGfS1lWRprIwivgvtArs+POJhc+VZoRItY/xbMkJE47KpfDQk6YrVmuJOto6zBmy0vRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uAs0u-0006q9-EC; Fri, 02 May 2025 17:09:20 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uAs0u-000lq1-0A;
	Fri, 02 May 2025 17:09:20 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uAs0t-00GZW3-2r;
	Fri, 02 May 2025 17:09:19 +0200
Date: Fri, 2 May 2025 17:09:19 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: nicolas.dufresne@collabora.com, benjamin.gaignard@collabora.com,
	p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org,
	Sascha Hauer <s.hauer@pengutronix.de>, kernel@pengutronix.de,
	festevam@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, paul.kocialkowski@bootlin.com,
	hverkuil@xs4all.nl, laurent.pinchart@ideasonboard.com,
	sebastian.fricke@collabora.com, ming.qian@nxp.com
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: [RFC PATCH 00/11] VC8000E H.264 V4L2 Stateless Encoder
Message-ID: <20250502150919.e7656nft7yciqfco@pengutronix.de>
References: <20250502150105.4167289-1-m.felsch@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250502150105.4167289-1-m.felsch@pengutronix.de>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On 25-05-02, Marco Felsch wrote:
> Hi all,

[ ... ]

please ignore this mail as my setup messed up. I've sent it again.

Regards,
  Marco

