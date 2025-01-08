Return-Path: <devicetree+bounces-136355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1273CA04E3F
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 01:47:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0D86A165E18
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 00:47:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05A796AAD;
	Wed,  8 Jan 2025 00:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="hI7UZIz6"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9276FC5;
	Wed,  8 Jan 2025 00:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736297261; cv=none; b=Tlp7Q1cVsq8UkUO3/vy66lNLvxNSAmGdHlQ0UPDFJsJAQ6dQx/kc06yf2F4zglOcfdDvfVHg/69HnQMvu/gF3TRLaAG5HtPWU7tOMN1nG9XwE3ZGimvueblX2HAextq1wrrXqz+bELh5wK7ob474X8sKUV/uvat1YtIfye4LJp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736297261; c=relaxed/simple;
	bh=0IuofUalrcy7DmrnwjI1oNb1zpstHlRi3sWa4Pj967M=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=mec1SqDy7fG4mn6fXvJtpwYGBY0Qc3FOqr18fZfSiA0jgbiwRpRo44GsofBdkW6VC+SOJzYXe4z9fFopYGTklajRL8aiFH2IFdYCH663Uhq+yljMRVJqg8LpLA4RSKMV27kaQLahVr2s1aau5DAaJW6fab8eQJaWZCNYnTsqyW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=hI7UZIz6; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1736297258;
	bh=0IuofUalrcy7DmrnwjI1oNb1zpstHlRi3sWa4Pj967M=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=hI7UZIz6k5JCRm4/XEc1M7tAqD0h06F+76ojQyZf13GXD5UAfzt7ZL5idIoSGMMnD
	 YMHibd8WZQDGdBy9+vYajCVCUx7+mO9ZdWG2QLbkBk/EOH2zEt6W3y7cK5jFGjNkwb
	 bsRdd0tp3ZOf5+4jdu6Gx8ewCGm+qfV2hDhf8JuBI93rBmMq7GV/GQ/8rmWpwRD/eQ
	 5PO1wUzuoDqbSFir8BpuZ9H/e6yg/MgieQy6t1PpdN4flhtwge0+xFfCylTSpObOXy
	 y57X4hgAUXa4An1bR09vJPT2oI8cr/nxSWyH4v0b7TCY4DEdTQtU/BYuxJ6xoqlvcD
	 1TSi9U9Acd2wA==
Received: from [192.168.68.112] (ppp118-210-64-24.adl-adc-lon-bras32.tpg.internode.on.net [118.210.64.24])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 65E0870801;
	Wed,  8 Jan 2025 08:47:37 +0800 (AWST)
Message-ID: <59b47269065db207c2f0f8268d958b3f647fe05b.camel@codeconstruct.com.au>
Subject: Re: [PATCH] ARM: dts: aspeed: catalina: update catalina dts file
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Potin Lai <potin.lai.pt@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	 <joel@jms.id.au>, Patrick Williams <patrick@stwcx.xyz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, Cosmo Chou
	 <cosmo.chou@quantatw.com>, Potin Lai <potin.lai@quantatw.com>
Date: Wed, 08 Jan 2025 11:17:36 +1030
In-Reply-To: <20250103-potin-catalina-dts-update-20250102-v1-1-b0b7a523c968@gmail.com>
References: 
	<20250103-potin-catalina-dts-update-20250102-v1-1-b0b7a523c968@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Potin,

On Fri, 2025-01-03 at 09:42 +0800, Potin Lai wrote:
> Update device nodes list below for driver binding.

The devicetree describes the hardware. I prefer we keep references to
drivers out of the commit message here.

>=20
> - Add IOB NIC thermal nodes (TMP421)
> =C2=A0 - 24-001f, 26-001f, 36-001f, 38-001f
> - Add FIO Remote thermal node (TMP75)
> =C2=A0 - 23-001f
> - Add Power sensor node (MP5990)
> =C2=A0 - 16-0022
> - Add main source fan controllers (MAX31790)
> =C2=A0 - 18-0021, 18-0027
> - Add 2nd source fan controllers (NCT7363)
> =C2=A0 - 18-0001, 18-0002
> - Add 2nd source HSC nodes (XDP710)
> =C2=A0 - 20-0013, 20-001c
> - Remove all ina238 nodes, move to userspace
> =C2=A0 - 16-0041, 16-0042, 16-0044, 17-0041, 17-0043

This seems to reflect the patch itself, which isn't terribly helpful.
The commit message should explain _why_ you're making the changes.

Can you please rework it?

Andrew


