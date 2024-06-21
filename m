Return-Path: <devicetree+bounces-78333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CE657911EE0
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 10:36:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B61D1C21AEE
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 08:36:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B02C116B3B9;
	Fri, 21 Jun 2024 08:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bf6A26ab"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C2B1126F02
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 08:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718958965; cv=none; b=jenrZFOBnNR7N4ojOj/a8NoxHuEvBl72I3T1V41TfNNEkzrVncgIv6p2efh5Dj9GFDcIycL+GDiD67Kz6Y7d+pucOQIWs/mN3wzhLSwVp6YdcTXQlxFSBjPz2ZTuvweRJwB+K1twdcRDWEW+P+ec6pNEpcGluMhO3ObBSkIPaFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718958965; c=relaxed/simple;
	bh=YIxf2v7PXe0qm7GK2saOC7yphClAuCAtGSPPVbPL1co=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=S3+fz9+mkwjBORRKNaOAUSc4hcDwBweah3jJohgor0wKuUjekiWDp6DfKNESPOYAvaaXZU6bl3LILJh8QrzUv84y7G48jculIzurHXh8Y3z/pFnZ+uy0LEfR24zodlbfD8fol4kn9sBtUs05+xl82wNNr7g0R/BTQ5Xq9cNSdks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bf6A26ab; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3FD8C2BBFC;
	Fri, 21 Jun 2024 08:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718958965;
	bh=YIxf2v7PXe0qm7GK2saOC7yphClAuCAtGSPPVbPL1co=;
	h=Date:From:List-Id:To:Subject:In-Reply-To:References:From;
	b=Bf6A26abLMa64pK3Io0zbjmfJGCFAY1Ec/wLF3Sppdh08ZQTX6+xm2rYDMohDFQ5v
	 iECAukB9pNc02QpB7u+Oh9iUX8f9/RTsHyZSmKDXoK+p9tRbORRxTdeLoMVuCtyQLA
	 GFyO/Ji6v80iAktqq0nuksnkzEvnsh1cSfxHXnBFelSccUy0uZrjnBYdC30Z0a8HAT
	 wy243OMtIWLTercZfdLp/OwqaK1GRvIRmCQ21BxWzkyn5D1opzh4hJTUK2DuA61owt
	 jyHVLSml2/wIWhA0al2bu2pFufUUbQwoeVfLE2DABn9vNvGfksQG2mkg1G/MXi8b4c
	 fSD05Lr1avXFA==
Date: Fri, 21 Jun 2024 10:35:59 +0200
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>, Gregory Clement
 <gregory.clement@bootlin.com>, Sebastian Hesselbarth
 <sebastian.hesselbarth@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, soc@kernel.org, Thomas Gleixner
 <tglx@linutronix.de>
Subject: Re: [PATCH 2/2] dt-bindings: interrupt-controller: convert
 marvell,mpic binding to YAML
Message-ID: <20240621103559.3a816f2f@dellmb>
In-Reply-To: <20240621082313.6605-1-kabel@kernel.org>
References: <20240621080719.20380-1-kabel@kernel.org>
	<20240621082313.6605-1-kabel@kernel.org>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, 21 Jun 2024 10:23:13 +0200
Marek Beh=C3=BAn <kabel@kernel.org> wrote:

> +required:
> +  - compatible
> +  - reg
> +  - interrupt-controller
> +  - msi-controller

Hm, #interrupt-cells is also required. Will add in v2.

