Return-Path: <devicetree+bounces-118078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC4A9B8ECD
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 11:12:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB41A28241C
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 10:12:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96826158870;
	Fri,  1 Nov 2024 10:12:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="CCDA4ecL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.16])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33D4E14F9F8
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 10:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730455963; cv=none; b=LPPFVTSZoU9ze37u7w8/Ebbw5X6zbA+HYScdUfWtCck+04vZuZQJqb5ivO+DGZw9099E1mUF9dsWPsJtoOdB1hBSJ6mcHRrMewiGfISPUa3ZifpSLBoXISWrfaWPf4NPWmKKEGoTEhKLxvvV/qZIMSq/seD9IQEPR0TwLGIteWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730455963; c=relaxed/simple;
	bh=yuIiWQIQVIhU7vfDuDnYdPcf5S5DWeWy2H04nw9lRHA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j+mgUqVgZ+JZF3q4hqbtwJT1yFA2uXpnQoRS28yAS4Ubr3F4ufaiQKn+KHNugH8VEQziDK7odVMioI8vGz6+7GPwsnUQ76/M+rQn7CSHt0jWL7IqmSffQ0GcSdJ1MeZCZ9qDOg0QG3VI6T37VzHYTofV+7OYMR+G5BVb/0cdWqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=CCDA4ecL; arc=none smtp.client-ip=220.197.32.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=TjoYgVMGF5dHOGsBOaliuNtTt9L/SIwKjdLYdKXPZmA=;
	b=CCDA4ecLAXN5DLV7fWt7bWHSjhTrvGKd2VAwGHgXaTyenV8kpYg98+xIi7+wq0
	OSOKZKjeow0MEcGSd3UqtdnZY4/m5gNvNeZMSsxt6EiTmhj8Cga+FUg2NNgM77kK
	vjNZ3ZZvzOGRGnhaZgmMPyRwDxYHJ+L6zrgoDURa51Xso=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgBHxFl1qSRnZUphAQ--.13690S3;
	Fri, 01 Nov 2024 18:12:07 +0800 (CST)
Date: Fri, 1 Nov 2024 18:12:05 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/3] ARM: dts: imx6sx: Remove incorrect mmc fallback
 compatible
Message-ID: <ZySpdcmTQDjIy5i9@dragon>
References: <20241023192638.1214045-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241023192638.1214045-1-festevam@gmail.com>
X-CM-TRANSID:M88vCgBHxFl1qSRnZUphAQ--.13690S3
X-Coremail-Antispam: 1Uf129KBjvdXoWrKFW5tFy8Zw4kXryxGr1xKrg_yoWxArg_Z3
	ZYga1kW3yUZF1DX3ZIyrs3KFWSga1kZrWDW3ZxK3yDWanYkwn0qa4fZ3yDZrWjvrZ0yrZF
	qr1DXryDuF1xCjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8RHq7UUUUU==
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCwCKZWckj-1HagACs6

On Wed, Oct 23, 2024 at 04:26:36PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Per fsl-imx-esdhc.yaml, the correct compatible string for i.MX6SX is:
> 
> compatible = "fsl,imx6sx-usdhc"
> 
> Remove the undocumented "fsl,imx6sl-usdhc" fallback compatible.
> 
> This fixes the following dt-schema warnings:
> 
> mmc@2198000: compatible: 'oneOf' conditional failed, one must be fixed:
> 	['fsl,imx6sl-usdhc', 'fsl,imx6q-usdhc'] is too long
> 	['fsl,imx6sl-usdhc', 'fsl,imx6q-usdhc'] is too short
> 	'fsl,imx50-esdhc' was expected
> 	...
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied all, thanks!


