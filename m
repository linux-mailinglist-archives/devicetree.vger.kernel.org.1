Return-Path: <devicetree+bounces-98877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1386B967CF6
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 02:26:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A785B280CD6
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 00:26:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DA7115C3;
	Mon,  2 Sep 2024 00:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="EBhEap3A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.18])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDFA210F1
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 00:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725236771; cv=none; b=Boji573bwZ03cs8ou2+38Iv0A1GNV6crYBkdKoGcA1RcclsKvzw1rzLJTgm+8hu3rUWV59iDRCt+EZ8OpT6tUFvmGXmxY4KVQoZYWuMyvh1DJ6yaU/m5ZX1bVtCMGKKF7NgGrQfu586lMbMIc79o8K2OLi1dfkFs0lNAfdzuL+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725236771; c=relaxed/simple;
	bh=g/4s+qHXxOsysO6eynh4cB22sWVXNTzEiIdYi73HQ+o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ufjuPoqWx2iRXTDsuGyDuBFY1/xLhOXdwCXhUPSD8c+JK6YulioW4X99mv2NVKjGVS57vZngYN/H48xhvpeZMJHwDHm0vfXrCNh86dwpFFwMHW6oA+D0ymGxtnPMjxrSzBnZ+8wQ5agX3p+qOwF9WoJBr54Yw6TrVKCU98lQRMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=EBhEap3A; arc=none smtp.client-ip=220.197.32.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=hm/w/4XF5v+5DsNcH2gVkJQfbCVMb7gfC1yLRAIIlNw=;
	b=EBhEap3A2kSYSnc74D8EweWUE40eQB0f9UuS4XxOn0SOkQwAGcVSwBQZzK2Rav
	SCFNGRaqDIfS+cg5kGEt/B6Yjg0mjqZqK5dmm9Ob1QUEeFXKdAxetksviRUZrCsG
	uPyrLQMuiuxEZhkDRGJ9GgYnQwQJAiyIC5dd3M0DbX7xg=
Received: from dragon (unknown [114.216.210.89])
	by gzsmtp3 (Coremail) with SMTP id M88vCgA3B9IDBtVmj39KAA--.17585S3;
	Mon, 02 Sep 2024 08:25:40 +0800 (CST)
Date: Mon, 2 Sep 2024 08:25:38 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, lukma@denx.de,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: imx23/8: Rename apbh and apbx nodes
Message-ID: <ZtUGApRTZNF/5zn1@dragon>
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
X-CM-TRANSID:M88vCgA3B9IDBtVmj39KAA--.17585S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUcPfHUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiBAJOZWbU4VY-2AABsO

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

Applied, thanks!


