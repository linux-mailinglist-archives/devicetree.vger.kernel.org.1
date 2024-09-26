Return-Path: <devicetree+bounces-105535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EF18A98705D
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 11:36:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB0CE281330
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 09:36:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A036156257;
	Thu, 26 Sep 2024 09:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="EwByxsTc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.17])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3C5838FA3
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 09:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727343370; cv=none; b=ipLVGDEtuYmLO451ynn6T6mDqW4/KBiGVw/sDh6LuY1zpO6bLEEPQSyUVAZvgLZE52rjOTAW6aiKa9jD1SrTaVm3LNqh27r92OkDHlbzRXutuxwNHUcANXXSJfXFeqhVvFxUi0s1L4ecR2FCuqoKTAKWlxU9HbWfuwyzmObRxn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727343370; c=relaxed/simple;
	bh=0WIOXwh6NxwZTYWeO/StqiCB1FMCUjG4qYyje+4DacI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YKK/mrKhZ593GghOWMTp4s1gyGNpk0FLM01rfG3m2CgYJTsr1P4KfyuOqEqTi7K8ddxH8Ijswe9auNt5b5jUj6MT4go9KUltY7F+BJRUfVT60fedV4YCSkKRaNF4BDwNpjjLTzKBmaFX3eOtuVadSpYUrF+/aHP5peOCA5KbilI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=EwByxsTc; arc=none smtp.client-ip=1.95.21.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=0WIOXwh6NxwZTYWeO/StqiCB1FMCUjG4qYyje+4DacI=;
	b=EwByxsTcd0e58tLdLMbTjebpnjs8SD/d5u7CvdHTZbf2j2j47yiWXkvSesvn2N
	7ECl4RD+nMDRuvoBnovC0rrWgsjMwtd0QlLLPV/FKhtIjacV3YEp0Pc4XuQlGcyZ
	P1UwOfCHJCRcYp+8lur2U7EKOP7wtr0yEBinjzEjJ/1EI=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgDnvMSnI_VmBtwoAQ--.24117S3;
	Thu, 26 Sep 2024 17:04:41 +0800 (CST)
Date: Thu, 26 Sep 2024 17:04:39 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Conor Dooley <conor@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Frank Li <Frank.li@nxp.com>,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, krzk+dt@kernel.org, robh@kernel.org,
	shawnguo@kernel.org, festevam@gmail.com
Subject: Re: Device tree node order sort tool
Message-ID: <ZvUjp5uSo0SSyPAZ@dragon>
References: <ZumjueKy+tvkODnB@lizhi-Precision-Tower-5810>
 <2fdfmn7wjt5tr6lsxee2qubjgiphys5n2fivlracaksilvvgmi@od6t76mpd3co>
 <20240918-igloo-unspoken-45443a52e338@squawk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240918-igloo-unspoken-45443a52e338@squawk>
X-CM-TRANSID:Mc8vCgDnvMSnI_VmBtwoAQ--.24117S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUVG-eUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiAgFmZWb01VLumgAAsh

On Wed, Sep 18, 2024 at 09:17:37AM +0100, Conor Dooley wrote:
> That said, I'd not enjoy getting a bunch of patches for the platforms
> that I maintain redoing things in this order, so it is worth asking the
> platform maintainer for their take on whether it should be used for
> anything other than new code, before sending a rake of patches.

+1

I do not like to receive tons of patches churning the existing files
with such order changes.

Shawn


