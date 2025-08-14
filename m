Return-Path: <devicetree+bounces-204496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 875C5B25CCC
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 09:13:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B402585B21
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 07:12:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92482265CAB;
	Thu, 14 Aug 2025 07:11:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2E526561D
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 07:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755155494; cv=none; b=jBiIG5zvWXj7jFM1/f1xYOQn6RsZSYZSMQXlAo7UPO9EHhgL4d8pYCP0oNpmB9VGdhXl5VZ1rr+kCbtZGIb5CFhHlPPbVj3u9Oj+6ffUOxjjd+1TeVcdZnzO+DENtW9M6JVAnfK3mKO8WLGC9ecvfY/y7AIVGRwiZNaq+DCDdqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755155494; c=relaxed/simple;
	bh=TpZELQc4+3aumXfCv2BaVBa9vE2V9E/st6PsIM/RXSc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=gkKkFIvX8Jw9d9hGSiywb9Yh9wAwXLFXZmzZnegiGPRIluf9Zok52EVl7KHgw6/HIAPhPnIeSP4Qhs2+5RZnJn/cxwUBAkUF6wRdaeZ0AqhRW5tme+F0W6pMT5tLe7qT5Y8P5j3CvOYfQmVpep1/0j+zWT/87C/qe38cZHV4h7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1umS7G-0005i4-1i; Thu, 14 Aug 2025 09:11:14 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1umS7E-000DJQ-31;
	Thu, 14 Aug 2025 09:11:12 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1umS7E-0002mN-2m;
	Thu, 14 Aug 2025 09:11:12 +0200
Message-ID: <d256d4a9aed3cca70917391db3b187f73f9be74d.camel@pengutronix.de>
Subject: Re: [PATCH 2/2] reset: th1520: add resets for display pipeline
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Icenowy Zheng <uwu@icenowy.me>, Drew Fustini <fustini@kernel.org>, Guo
 Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: Michal Wilczynski <m.wilczynski@samsung.com>, Yao Zi
 <ziyao@disroot.org>,  Han Gao <rabenda.cn@gmail.com>,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
Date: Thu, 14 Aug 2025 09:11:12 +0200
In-Reply-To: <20250813081716.2181843-3-uwu@icenowy.me>
References: <20250813081716.2181843-1-uwu@icenowy.me>
	 <20250813081716.2181843-3-uwu@icenowy.me>
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

On Mi, 2025-08-13 at 16:17 +0800, Icenowy Zheng wrote:
> The VO subsystem of TH1520 contains a few resets for the display
> pipeline -- display, MIPI DSI and HDMI controllers.
>=20
> Add support for them to the reset-th1520 driver.
>=20
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

