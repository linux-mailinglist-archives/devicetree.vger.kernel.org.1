Return-Path: <devicetree+bounces-134657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A7E9FE26D
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 05:44:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E1DC1619E1
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 04:44:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C4961531C0;
	Mon, 30 Dec 2024 04:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="kQzYwbRG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.15])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDD522AE8D;
	Mon, 30 Dec 2024 04:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735533892; cv=none; b=S6tZgsPCECteUmUmZ1AetSp9AFKbCIBIUwz4BVD8rPAR8kjP/l+FB6mZU5tbHP3uAyP/17NPaY4JCaMPmmRtsr5fHr7RuOUmQ8Cvl/wFhP1mOmbfvwFnON6tcqr2AYvoprxxCcevmQoC2ru+QWd7eFE0Uk5IlfMDfKMu4PtnTFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735533892; c=relaxed/simple;
	bh=01AEnGO9TM16o7SKHfLWZaq1gvfyVrFYBYCzXmijilY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xspf4l7YoAUbo2FJybL8u2N7CH0FfzmNvjbSTjtJ+oIGTSWLYmxy/jyk42eSYRP0W6zskdsQHmGo+OmEvAUnRBLjQicswr8Gsh9OUjwCFlJRrnyj9o8ltkHGsWlFIs0RfMdeeu1pZuz4Zg90Rk+ytYz2jLvpVVHavsNhP2C4MHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=kQzYwbRG; arc=none smtp.client-ip=1.95.21.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=byvfiLkLHPQubLRAWzosDVyl6ug4veFdMUvKeRG1Mgo=;
	b=kQzYwbRGvjebhm7dSfWJz53E+xjqhVOpw2A5AY1Oc2e4KzaSVjn6Mp+SlrtiUo
	+AG1q50CCEAF11eBSeD5PdbOkcx1LnZt5jUNuZXIaZqgB0GRt0phigiQhpjBrg/p
	Cxcd2uKl7JFrmjZC2WegXb0B73gB8bN4tY2SkzU0zwAZ0=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgDX3ghgJHJn9CX2BQ--.60471S3;
	Mon, 30 Dec 2024 12:41:06 +0800 (CST)
Date: Mon, 30 Dec 2024 12:41:04 +0800
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
Message-ID: <Z3IkYGFGb12LCVIO@dragon>
References: <20241206123119.1688712-1-ciprianmarian.costea@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241206123119.1688712-1-ciprianmarian.costea@oss.nxp.com>
X-CM-TRANSID:M88vCgDX3ghgJHJn9CX2BQ--.60471S3
X-Coremail-Antispam: 1Uf129KBjvdXoW7XFWDtr4DWr43Zw15Cw1xZrb_yoW3Jrb_ur
	WSkr1kCrW5JF4xKr4fXws8Gw1I93ykGrn3Z3ySga93Gas5Jrs3GFZIqFyjqrsxX34xZr9I
	vw1DJF40krZFqjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU0wYFJUUUUU==
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCQXFZWdyEUJH+AAAsV

On Fri, Dec 06, 2024 at 02:31:19PM +0200, Ciprian Costea wrote:
> From: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> 
> Add the I2C Devicetree nodes and pinmux for S32G2 and S32G3 SoCs.
> 
> With respect to S32G2/S32G3 SoC based boards, there are multiple RDB
> (rdb2 vs rdb3) and EVB (for G2 vs for G3) board revisions. These versions
> are quite similar. The common part for the EVB revisions will be
> centralized in 's32gxxa-evb.dtsi' file, while the RDB commonalities will
> be placed in 's32gxxa-rdb.dtsi' file.
> 
> This refactor will also serve for other modules in the future, such as
> FlexCAN, DSPI.
> 
> Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>

Applied, thanks!


