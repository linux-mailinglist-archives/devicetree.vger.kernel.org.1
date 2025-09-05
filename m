Return-Path: <devicetree+bounces-213643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B13B4623A
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 20:26:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 718E817FAD5
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 18:26:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9731D255E40;
	Fri,  5 Sep 2025 18:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lr94/cIu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0BB33E7;
	Fri,  5 Sep 2025 18:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757096797; cv=none; b=PD2/wrqw3heI9zxBsR9jqF2HeXHsSkxWgzK8bj+ws04t3IMqs/hToqavSFaNRtxTkbo+7hqWlypYZhX7wK8QEkr1dIT+61dYM3/TR5GTlDGj3aV3VUhGJDOqd2a9lz6ggxyjzLrnt2BRs3q5rH6vlBqmukUd0IjW7L+ebO+wyro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757096797; c=relaxed/simple;
	bh=LyeDu2i+o9HDa3/kwwKLQ3zkEkc/YK3lZMNTzfpm8EU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M1tPWOdl59OqdrdGPP/KhJ5Vh+zSLFKv1h0QznL+VuwvEBUq3Y27SXZpt8qkAt8zJMSX5xoauzi5JBZYTF4KF7bC666Sa77jlmblBUi/kuosDcp4Bhe9fLG1Q6Y/e3b/jldEOa5HR6n+i4lKXdl1UHpZLSnmaEVWBKagE7MCgbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lr94/cIu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2770C4CEF1;
	Fri,  5 Sep 2025 18:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757096797;
	bh=LyeDu2i+o9HDa3/kwwKLQ3zkEkc/YK3lZMNTzfpm8EU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lr94/cIuJT3cZOFrv+NriZvDh0IBH7VOJn7CT/KUMfAUQDE8iLCaJtLXo4eT1m88d
	 AZHs84jECVBUSd+0oFEPmter5XOTuZdNlaaHKbmKunMTFPEDeg/WNHYUeRelnaWvQq
	 E89pKiOCUVfEC19gjzIgWORGIM+aHE9OoQUG+hyQkhEMwn+SBrtfvaJk5mERqGRobt
	 mrEyfLa4PNybctRdzkie6d19QhJJxUnLa6ORrl1VcjnjD6GPWgV3FUCOYoObIU428b
	 QKqIVGv2LYyhYl+qkrLfh1eDnLaGhWUxwk43oLyUkS7/tFVDmqVTyb1194vWvSK+oG
	 fWlmeHZSW9ypg==
Date: Fri, 5 Sep 2025 19:26:32 +0100
From: Conor Dooley <conor@kernel.org>
To: WeiHao Li <cn.liweihao@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 3/4] dt-bindings: phy: rockchip,inno-usb2phy: Document
 rk3368 usb phy
Message-ID: <20250905-crumb-district-ca69a00cf6ee@spud>
References: <20250905125318.7956-1-cn.liweihao@gmail.com>
 <20250905125318.7956-4-cn.liweihao@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JICgwRvRS9Ky+b8v"
Content-Disposition: inline
In-Reply-To: <20250905125318.7956-4-cn.liweihao@gmail.com>


--JICgwRvRS9Ky+b8v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--JICgwRvRS9Ky+b8v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaLsrWAAKCRB4tDGHoIJi
0l5zAP9FcI/1JClbYyW8Ww/u1FjWaaTZPlI37QTxc3eyTNDk1gD/X+NwruBP7g7o
k0a2fGxRECLLi6BGWP4ublx6JyltjAw=
=gGkB
-----END PGP SIGNATURE-----

--JICgwRvRS9Ky+b8v--

