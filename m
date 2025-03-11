Return-Path: <devicetree+bounces-156361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A09C1A5B665
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 02:58:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DDB4E167FA1
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 01:58:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10A731E0E13;
	Tue, 11 Mar 2025 01:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="WUHI9WuP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.14])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0D151DE2DF
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 01:58:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741658295; cv=none; b=mGqlm95WIvvg43sBpnOjZXp70JxwM7xG4EKxJQxa4JQyp9QTbrVfSb+JMUWPIlt10aCYiI/meyRc03smvpcpE6t/Xi5Y6uYrSpAAIecRm3woS+Wf3L6/pUUi1xCoC86TjF7Nu5YIvBiuLRki+O+pFg/b5dNkkpeKOgIj3JD1i7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741658295; c=relaxed/simple;
	bh=pn1RWmi2D+cJ951TGqgZCS63gPaDbFP5mmi+yCy+pbc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GHBMo26KISbum+lxvMrI/ZQG2ZiCLz9kQXT2uNSpvRkTmIOthDDv6dh9YUwnVdzBXodql72os5EOTiHb7q6JA/1eZ+Ynl9B7/Y5Eaa7sXQu+XjYOfL2EW0xzPQeCndpLzGlp+YM4NtUNVrDO8mb8nzZD7XIdhP1WiajOdO4vamI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=WUHI9WuP; arc=none smtp.client-ip=1.95.21.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=Vu8ImCGFXxixxPjXVj8rCcNTzrcJTAnVmtD+X7Jq1DU=;
	b=WUHI9WuPN7rT1+u1uLXB/B7G2OXGNzSnKPBG9QaC9MH9mW7YKu9TSowR1cSTxL
	Nk3c2Ba6yw5gYTSzza1xUMw2JJbCEL0f62GPSiWKHjo2FCr2nCwKucnaoEk4mRKt
	ziVFN5ENCE0UaOhPDWb4HHHljpo2EXPQgnFsUbKm6yqac=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgDnj9SemM9nu9OuAA--.43884S3;
	Tue, 11 Mar 2025 09:57:52 +0800 (CST)
Date: Tue, 11 Mar 2025 09:57:50 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: imx53-mba53: Fix the PCA9554 compatible
Message-ID: <Z8+YnsJ20SJe7YhC@dragon>
References: <20250220133153.2380248-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250220133153.2380248-1-festevam@gmail.com>
X-CM-TRANSID:M88vCgDnj9SemM9nu9OuAA--.43884S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU7Vc_DUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiEgkNZWfPVKnC7wAAsL

On Thu, Feb 20, 2025 at 10:31:53AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> gpio-pca95xx.yaml documents 'nxp,pca9554', so use this compatible
> to fix the following dt-schema warning:
> 
> failed to match any schema with compatible: ['pca9554']
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!


