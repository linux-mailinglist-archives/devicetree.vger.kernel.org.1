Return-Path: <devicetree+bounces-134674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 063619FE362
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 08:44:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DA2D3188108A
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 07:44:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A43619F13B;
	Mon, 30 Dec 2024 07:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="d92MefF6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.17])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F2B61547F0;
	Mon, 30 Dec 2024 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735544637; cv=none; b=tsirjCBdS10xdzOFkvU1hWFK53qD0bFF5SXzaSOD1bXVip3jqPZKhLo5j++ol/hHRIpZyyJfu13hO1zdUgQvCg51RwAbIiWn/ASHDa4QjQw4hNubFGxtXZ9xKHmKj2O5m272JsWeRXZiFIC3DQnHk2G16yow3EBWoFGEoPP1f0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735544637; c=relaxed/simple;
	bh=EC5UT1z0IgKwoO8Ixq/bu8hGWGM31xEuDEzz7LISNRk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p8peKvvg1xVtm4zv7DgvHN1QwjctJrKRlLIdGlrgjg7NUDqgY9EhaDA9uVQ9oELjZkyt/JgrQ715+z2MzWMRc12gNs0dX0+xgUJ4WModBc8YvrhteiWEZFMn0qwKP/i9ni29/5l16rcDpMZYBwrdSgcw9HZ8lwfpkcaLlPczmCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=d92MefF6; arc=none smtp.client-ip=220.197.32.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=gy54HaJtZV3aXuq/5zN+MYA9MTDJ14jB3IIBVXkWUo4=;
	b=d92MefF67V5RbQfyJ1F0o4q0fhIqz2KU/9C5/xXRCXqz8SUysw7qjWUhYpOnek
	/BkVWTuMhpPgMXEEyfdw8N6D1AGd9LpRUgJdDx22kHvCxWvfRjug0y00jQiGP/fR
	QViJqf7Npi3LYg5/U/PPXDPCMkj26SwhGtXA3L+43633E=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgB3XBXKTnJn1T74BQ--.60267S3;
	Mon, 30 Dec 2024 15:42:04 +0800 (CST)
Date: Mon, 30 Dec 2024 15:42:02 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Ciprian Costea <ciprianmarian.costea@oss.nxp.com>
Cc: Chester Lin <chester62515@gmail.com>,
	Matthias Brugger <mbrugger@suse.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	NXP S32 Linux <s32@nxp.com>, Christophe Lizzi <clizzi@redhat.com>,
	Alberto Ruiz <aruizrui@redhat.com>,
	Enric Balletbo <eballetb@redhat.com>
Subject: Re: [PATCH] arm64: dts: s32g: add I2C support
Message-ID: <Z3JOyuehpLSfT+RL@dragon>
References: <20241206123119.1688712-1-ciprianmarian.costea@oss.nxp.com>
 <Z3IkYGFGb12LCVIO@dragon>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z3IkYGFGb12LCVIO@dragon>
X-CM-TRANSID:M88vCgB3XBXKTnJn1T74BQ--.60267S3
X-Coremail-Antispam: 1Uf129KBjvdXoWrtF1fAFy3tF1fZFyUKFW8Crg_yoWfGFb_uF
	WSyr1kCrs8JF1xKr1fXws8G342g3yUGr93Zr4fGa93X3Z3JrsxGFsIqr10van8X3y2vr9I
	vr15JrWIkr9rXjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU0IdgJUUUUU==
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCRvFZWdyEULbFgAAs5

On Mon, Dec 30, 2024 at 12:41:04PM +0800, Shawn Guo wrote:
> On Fri, Dec 06, 2024 at 02:31:19PM +0200, Ciprian Costea wrote:
> > From: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> > 
> > Add the I2C Devicetree nodes and pinmux for S32G2 and S32G3 SoCs.
> > 
> > With respect to S32G2/S32G3 SoC based boards, there are multiple RDB
> > (rdb2 vs rdb3) and EVB (for G2 vs for G3) board revisions. These versions
> > are quite similar. The common part for the EVB revisions will be
> > centralized in 's32gxxa-evb.dtsi' file, while the RDB commonalities will
> > be placed in 's32gxxa-rdb.dtsi' file.
> > 
> > This refactor will also serve for other modules in the future, such as
> > FlexCAN, DSPI.
> > 
> > Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> 
> Applied, thanks!

Dropped.  Just noticed that review is still ongoing.

Shawn


