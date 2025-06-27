Return-Path: <devicetree+bounces-190468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 66675AEBCF2
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 18:17:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB64F647AFA
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 16:17:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01B2E1A239D;
	Fri, 27 Jun 2025 16:17:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91D3D2904
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 16:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751041043; cv=none; b=LNn/NzoptOPMVwjdhzPElmXaFHbn/uelam3UXz2W3WMM6zRO/b+yyubqHL65pL8/HLyL8Pp6xmWNvr0FDCwQddQ0j6AHZ+v+h3hLObIKCHDIohURh9PslmbwGQv3FJ1MsBSLJShkKWqHEquaSD1iy0QMPB6JtTbDJW45G0C/zdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751041043; c=relaxed/simple;
	bh=2EDYynSAKdcNkoTKt2Z1SNAswFEK8/5Ov1+wsGM+KF4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=RUKMnWqB0Ky2/oNYsbhT5tvRK9rQD31TUIltnZkTp681bbx5JYBnaSiQIGAubZV5BdMqfXQy1vaX0wFNxBsQmZrXXLomDGmU814B9rd/3w5RAOrfoN5io3sixQWwS8NevpBQiyswqsqMeeR/aeG0um7zC18iAf2mWyh2NA0vIJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uVBlM-0000VN-W7; Fri, 27 Jun 2025 18:17:17 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uVBlM-005e4c-2D;
	Fri, 27 Jun 2025 18:17:16 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uVBlM-000QIt-1v;
	Fri, 27 Jun 2025 18:17:16 +0200
Message-ID: <6b9d0c3d9c5a0338b16f32e37a759df836f2c004.camel@pengutronix.de>
Subject: Re: [PATCH 1/1] dt-bindings: reset: convert nxp,lpc1850-rgu.txt to
 yaml format
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Frank Li <Frank.Li@nxp.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "open
 list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Cc: imx@lists.linux.dev
Date: Fri, 27 Jun 2025 18:17:16 +0200
In-Reply-To: <20250602144046.943982-1-Frank.Li@nxp.com>
References: <20250602144046.943982-1-Frank.Li@nxp.com>
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

On Mo, 2025-06-02 at 10:40 -0400, Frank Li wrote:
> Convert nxp,lpc1850-rgu.txt to yaml format.
>=20
> Additional changes:
> - remove label in example.
> - remove reset consumer in example.

Applied to reset/next, thanks!

[1/1] dt-bindings: reset: convert nxp,lpc1850-rgu.txt to yaml format
      https://git.pengutronix.de/cgit/pza/linux/commit/?id=3D25ef956349a5

regards
Philipp

