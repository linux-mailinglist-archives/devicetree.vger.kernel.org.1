Return-Path: <devicetree+bounces-99312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A66299696EF
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 10:24:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 50F961F25234
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 08:24:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6698201246;
	Tue,  3 Sep 2024 08:24:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="MUQkk+NS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.17])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F091845003
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 08:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725351857; cv=none; b=OAZ8Yf/seQLvsy9kojnNzZ9xEK+Nab9UkfVu1Ziv4LEH5BouTJ+96Ev9y1R1nMQVEinuu3X9RJ/tlEIlilyeCET6YobQr4m+9nZLZfIaYXDMMYn2uYq3oXGKY2ln+N869A4VptubICovgjEp56UDDR4JAAp1sgJ4ICNJ1VLh4t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725351857; c=relaxed/simple;
	bh=UBRsMMFSNOoxQTn48bmNg+UTpYlav4KfZZr9VG/9Jmk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dyNnw4k/szIy7ehrEO2dwcuhz/DiYeVR6Ids5o1RFGb0lMFvQkGiLKBxfFjm3qYzNJ+xR8Pi+KHq6+4exIOSI+hrORb4BYT9ePSyJxa2PsHdFAU9FCs1pOYDgZrqHfW91sF7evwwdqLSzARwUL7YMSGfooxYXm9JdcmJPiyH6q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=MUQkk+NS; arc=none smtp.client-ip=1.95.21.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=hHIbKMU0eFVSQhOkA6x7aazhokgZoPN9lZRG1jFjLro=;
	b=MUQkk+NS2Fqisce3rXkZVzoeWHg2q8CI8WwxKsyCkM6ywdWtasfeXKDCeZE4we
	yrDYBXIJe4EhFkl+IJXInVYukCGkFjDtu1KZqqyAcNU0o7qgzAyMfMjMAOWxspHH
	S/aSPf8NkzL58UcWAno2Zme6FMuOv7/CS8guGJ/PVTkSY=
Received: from dragon (unknown [114.216.210.89])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgD3D1mLx9ZmnJ9bAA--.64487S3;
	Tue, 03 Sep 2024 16:23:41 +0800 (CST)
Date: Tue, 3 Sep 2024 16:23:39 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, lukma@denx.de,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: imx23/8: Rename apbh and apbx nodes
Message-ID: <ZtbHi+vWQHIhBM3X@dragon>
References: <20240828194919.3192996-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240828194919.3192996-1-festevam@gmail.com>
X-CM-TRANSID:Mc8vCgD3D1mLx9ZmnJ9bAA--.64487S3
X-Coremail-Antispam: 1Uf129KBjvJXoWxJryrZF4fWr1fCF4rWF18AFb_yoW8Gryfpw
	17ArZrKr4xGFyfKa4DXrWvgF15Aa1rAFn5ZFs8tw17Jrn3ZFyYqrn2yasxtry8WF4rX3WI
	9wn3u3WIyw15u3DanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j7db8UUUUU=
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCxtPZWbWfG72ggAAss

On Wed, Aug 28, 2024 at 04:49:19PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> According to simple-bus.yaml, apbh and apbx are not valid bus names.
> 
> Rename them to apbh-bus and apbx-bus to fix the following dt-schema
> warnings:
> 
> 'apbh@80000000' does not match '^([a-z][a-z0-9\\-]+-bus|bus|localbus|soc|axi|ahb|apb)(@.+)?$'
> 'apbx@80040000' does not match '^([a-z][a-z0-9\\-]+-bus|bus|localbus|soc|axi|ahb|apb)(@.+)?$'
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  arch/arm/boot/dts/nxp/mxs/imx23-evk.dts           | 4 ++--
>  arch/arm/boot/dts/nxp/mxs/imx23-olinuxino.dts     | 4 ++--
>  arch/arm/boot/dts/nxp/mxs/imx23-sansa.dts         | 4 ++--
>  arch/arm/boot/dts/nxp/mxs/imx23-stmp378x_devb.dts | 4 ++--
>  arch/arm/boot/dts/nxp/mxs/imx23-xfi3.dts          | 4 ++--
>  arch/arm/boot/dts/nxp/mxs/imx23.dtsi              | 4 ++--
>  arch/arm/boot/dts/nxp/mxs/imx28-cfa10037.dts      | 2 +-

I think imx28-cfa10037.dts missed the change below.
@@ -14,7 +14,7 @@ / {
        compatible = "crystalfontz,cfa10037", "crystalfontz,cfa10036", "fsl,imx28";
 
        apb@80000000 {
-               apbh@80000000 {
+               apbh-bus@80000000 {
                        pinctrl@80018000 {
                                usb_pins_cfa10037: usb-10037@0 {
                                        reg = <0>;

I fixed it up.

Shawn

>  arch/arm/boot/dts/nxp/mxs/imx28.dtsi              | 4 ++--
>  8 files changed, 15 insertions(+), 15 deletions(-)


