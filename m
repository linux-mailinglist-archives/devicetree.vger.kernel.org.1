Return-Path: <devicetree+bounces-87736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8C993AD28
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 09:29:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0EF571F21715
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 07:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A1626D1B9;
	Wed, 24 Jul 2024 07:29:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.3ffe.de (0001.3ffe.de [159.69.201.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FD834C84
	for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 07:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.69.201.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721806171; cv=none; b=C3RCXCCXxtLPyrOzdOlfJu5nNwI7XK+Z/0VO2H9Fqsb0a2akmJClX7fiVN6nH31Kg2KYEuvcgSLyAb8GrAot7oy9W+oC/eMSZMsaT3EGH2zntw06B/oiQ0pu2ZXHExSYHblrMIlHyD7Jj0V+AJ3MUHMr1Hd8+g7xQDzU7Y4jaFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721806171; c=relaxed/simple;
	bh=pmiDjXi/fiKbc7Jtko58aRmfIQRDEH9csMNPpE38A+s=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:From:To:
	 References:In-Reply-To; b=r6zLzkUcBPPJrE4IKKpKpopQS+H4K0deL14qaDglg0SLHDZozITtyvrXZdgkFw50WskTl5SJcXRhyL2OjGzstQSHCigG93hpWQXU1hN48xEqQzlghW9LLm3iv8cmEdSrjWwftRvUYKvFkKeAMxrCkDQx2ZL0Cn6QKvCWcj5EpNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=walle.cc; arc=none smtp.client-ip=159.69.201.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=walle.cc
Received: from localhost (unknown [IPv6:2a02:810b:4340:4ee9:4685:ff:fe12:5967])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.3ffe.de (Postfix) with ESMTPSA id 1DC9C4FEC;
	Wed, 24 Jul 2024 09:22:21 +0200 (CEST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 24 Jul 2024 09:22:20 +0200
Message-Id: <D2XL71L5TEZ3.3UXFSWKGQ0KBE@kernel.org>
Subject: Re: [PATCH 2/2] drm/panel/panel-ilitek-ili9806e: Add Densitron
 DMT028VGHMCMI-1D TFT to ILI9806E DSI TCON driver
Cc: "Conor Dooley" <conor+dt@kernel.org>, "Daniel Vetter" <daniel@ffwll.ch>,
 "David Airlie" <airlied@gmail.com>, "Jessica Zhang"
 <quic_jesszhan@quicinc.com>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Neil Armstrong" <neil.armstrong@linaro.org>, "Rob
 Herring" <robh@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>,
 <devicetree@vger.kernel.org>
From: "Michael Walle" <mwalle@kernel.org>
To: "Marek Vasut" <marex@denx.de>, <dri-devel@lists.freedesktop.org>
X-Mailer: aerc 0.16.0
References: <20240724005700.196073-1-marex@denx.de>
 <20240724005700.196073-2-marex@denx.de>
In-Reply-To: <20240724005700.196073-2-marex@denx.de>

> Add Densitron DMT028VGHMCMI-1D 480x640 TFT matrix 2.83 inch panel
> attached to Ilitek ILI9806E DSI TCON into the ILI9806E driver.
>
> Note that the Densitron panels use different TCONs, this driver is for
> the later panel, use panel-ilitek-st7701.c for the former panel:
> DMT028VGHMCMI-1A - ST7701
> DMT028VGHMCMI-1D - ILI9806E
>
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Michael Walle <mwalle@kernel.org>

-michael

