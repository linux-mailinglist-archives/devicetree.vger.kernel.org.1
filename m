Return-Path: <devicetree+bounces-108918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC3F99446E
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 11:36:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 23F701F22746
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 09:36:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E70617A589;
	Tue,  8 Oct 2024 09:36:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="L8AhmHnE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.17])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDE75537E9
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 09:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728380186; cv=none; b=d2ZndG1wLCVEFdzLGa+7yQ0mkeK5af0iv9oFM3faBBPVm19BPQNGRsyx7kyJMUVApyhZmBEAXn2p2YZV361VcOzYZ8GBuTx4CW39VaJCkrt2HYpGebO509ieY9sP/znPfrhKIncwbAk5D7+QPqppHPP6jch+UXXhShKdjdTsBwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728380186; c=relaxed/simple;
	bh=pRDCSX0h6sdWkOiRnpwocFiCrU0WtMoZWzS3wTV1y7s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t9eeRwcJBh4hK0uIXd6WOsM0eJi89n/NgncRO1tG0i5DZ6Dg4iMzBaTSiQCRpo+exvpWVogJehHdMcgn9V8nVNR+nTX2KDp17Yr39Cy46SjohYzKPA3Qz7voRXrZs3v7GIiRHL7eMntOuu/MzubRLAFbrFcnn3HZtVhgQT+MabQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=L8AhmHnE; arc=none smtp.client-ip=220.197.32.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=wq4sVQnYrhOzvSut9lo+69MINdVR5kfrnIHLBpaOyyw=;
	b=L8AhmHnE2MQ60hEweJcUPfgVYYVp4xIxUf9WMoo5oLn7CGvcMBxa41KsC5MibS
	4wlZab7S9mV50/9LvTGP5rho5k7mbhR6O0Ek1w7ZW2qtgLFNRCk6Zi4pR8ApF6yy
	3Ukucx1Z5tIcTNZ37zglb08GDprduinMJZw9jmzb1UjYw=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgCHpuXx_ARnbJHTAQ--.33511S3;
	Tue, 08 Oct 2024 17:35:46 +0800 (CST)
Date: Tue, 8 Oct 2024 17:35:44 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4] ARM: dts: imx7ulp: add "nxp,sim" property for usbphy1
Message-ID: <ZwT88GNbW8IOumEr@dragon>
References: <20240904071808.1565238-1-xu.yang_2@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240904071808.1565238-1-xu.yang_2@nxp.com>
X-CM-TRANSID:M88vCgCHpuXx_ARnbJHTAQ--.33511S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUxCJmUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiAgRyZWcE2BSCjwAAsz

On Wed, Sep 04, 2024 at 03:18:08PM +0800, Xu Yang wrote:
> i.MX7ULP need properly set System Integration Module(SIM) module to make
> usb wakeup work well. This will add a "nxp,sim" property for usbphy1.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

Applied, thanks!


