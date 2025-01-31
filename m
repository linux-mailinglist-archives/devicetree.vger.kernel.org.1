Return-Path: <devicetree+bounces-141981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C49BEA23949
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 06:23:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 359141689F9
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 05:23:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 088A253E23;
	Fri, 31 Jan 2025 05:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="LF+vZ1T/"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2271620EB
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 05:23:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738301020; cv=none; b=C504NBNM1y0Uj0Ub5nZxf4HHkzHWdTKH7e1bBumMEn6dfPm2/kRe13o2YLI6sv8CFR2DxghWQaRG8wRnR2AcvkhRTEQ2kxIdZAcJhp9hb8AjrfnwfPNGfw3+jzWiFltsu9uOH2N6WyPP5FJuPQu/zQly9FvXw103M0se1VJYkYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738301020; c=relaxed/simple;
	bh=5R4kgqlXYFsQ6u2ocViruNA/UmxNdNx5ZzUpE5euGRg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=dz/w/mccCZoV9Q56MONaDJNMGhOjnC9kkJtnfvJmRLclaV//N5358LVG4Xx9avPwNnaIbDJyTy7zdsCJT+EgZPcXXNsImu5MexFCnaHVvvDXsddm46erK7NY+PMFZFEeMAUAtVx0N5r/T0KIhleHX5oYzhRQxJ6N2tMsYHQSOqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=LF+vZ1T/; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1738301016;
	bh=nHzzpFNmIfwWdlNXYyTx0iN7gtiOz4Jj1PJOMYHhhLI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=LF+vZ1T/ZDcs6L36WCIVarRu4CvhnOcCgHa6gtqNOQE8Ky+De6rWDcomVCauqHenr
	 pkWATCkD1EcEKItAiBu+WfRiKmacMuOUddotmMn1znrwT7rbCosVoHVn0ENhMsqiyk
	 ilo+8Lrkj75Rp/IgscW+kRlQusQoCjnbobzl6TOmBGTcnp+0MLSKNYDjwOp6CnaegA
	 8moI301FtJieCFeMKA0rzympQE/b6EZyRL0s9lcEpstwqcHFRGjeh5m6Wc5h4S+Pq9
	 4hlPmzr3HSsA/TBMRx9oB3+lWHQGJbOLGS2t3zdTJhgMkNT68Sl1/FoIVwoBXFkU8f
	 r3jNVrNCJwBHA==
Received: from [127.0.1.1] (ppp118-210-186-162.adl-adc-lon-bras34.tpg.internode.on.net [118.210.186.162])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id DC97171747;
	Fri, 31 Jan 2025 13:23:34 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Joel Stanley <joel@jms.id.au>
Cc: linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
 devicetree@vger.kernel.org, Andrew Geissler <geissonator@yahoo.com>
In-Reply-To: <20250115112239.430636-1-joel@jms.id.au>
References: <20250115112239.430636-1-joel@jms.id.au>
Subject: Re: [PATCH] ARM: dts: aspeed: Remove swift machine
Message-Id: <173830101484.93883.6382944476465968904.b4-ty@codeconstruct.com.au>
Date: Fri, 31 Jan 2025 15:53:34 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

On Wed, 15 Jan 2025 21:52:38 +1030, Joel Stanley wrote:
> This machine is no longer in use, and support was deleted from openbmc
> in March 2022.
> 
> 

Thanks, I've applied this to be picked up through the BMC tree.

--
Andrew Jeffery <andrew@codeconstruct.com.au>


