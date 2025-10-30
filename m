Return-Path: <devicetree+bounces-233239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFE2C20219
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 14:00:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90C6D420F9A
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:55:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EABDF2D1F44;
	Thu, 30 Oct 2025 12:55:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9DD77B3E1
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 12:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761828900; cv=none; b=sp31aCuG6Ax//g3P7ACJcVWrToY408/tooqKxcaRpnf4G4nAU4mZpkGXRoFnS7zP9zhoGhRllKJlaNmVJfxGorCyv2MEwqKbzZdA3bVU8PFM1ZsQ42080ieRpCo8crz4g3W+NC1VYwSV+pcIqS3Z7nQ9WGF/ji2g8DOD7gsFUmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761828900; c=relaxed/simple;
	bh=LDhXHstGizu16iZpiJKzApvDo297JYrOQsKCAq1BTAQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=MRu7IfM6h+iQmEc7YKU61KINeXBUvEaoWnjPVjf2EsIuSd5tHVPWCkQBT1qivR+8752lzl9eptuLF/fjXhFF1u3foFtNvAs7K9KxbXRpNQuLAfdScO9gVznAabE9sgLu/4hFMJ0clXIzvBG01QHYAN1lgFTLLmoG2K/VXZxkdWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vESAl-0004dc-QN; Thu, 30 Oct 2025 13:54:35 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vESAl-006DFL-0u;
	Thu, 30 Oct 2025 13:54:35 +0100
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vESAl-0000000099K-0qda;
	Thu, 30 Oct 2025 13:54:35 +0100
Message-ID: <0cd212879b8fedf0edb574cb17bf7a3603a84310.camel@pengutronix.de>
Subject: Re: [PATCH v3 1/2] dt-bindings: reset: microchip: Add LAN969x
 support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Robert Marko <robert.marko@sartura.hr>, robh@kernel.org,
 krzk+dt@kernel.org, 	conor+dt@kernel.org, steen.hegelund@microchip.com,
 lars.povlsen@microchip.com, 	daniel.machon@microchip.com,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org
Cc: luka.perkov@sartura.hr, benjamin.ryzman@canonical.com
Date: Thu, 30 Oct 2025 13:54:35 +0100
In-Reply-To: <20250922142813.221586-1-robert.marko@sartura.hr>
References: <20250922142813.221586-1-robert.marko@sartura.hr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1+deb13u1 
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

On Mo, 2025-09-22 at 16:27 +0200, Robert Marko wrote:
> LAN969x also uses the Microchip reset driver, it reuses the LAN966x
> support so use a fallback compatible.
>=20
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>

Applied to reset/next, thanks!

[1/2] dt-bindings: reset: microchip: Add LAN969x support
      https://git.pengutronix.de/cgit/pza/linux/commit/?id=3D0616ef5e16ed
[2/2] reset: sparx5: add LAN969x support
      https://git.pengutronix.de/cgit/pza/linux/commit/?id=3Df764bafcdf58

regards
Philipp

