Return-Path: <devicetree+bounces-175676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FF1AB1773
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 16:31:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1BF15A23826
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 14:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E66621CA17;
	Fri,  9 May 2025 14:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="Z2j/FoMm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E9721B9D6
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 14:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746800994; cv=none; b=dg+Z4BTbo6js0U5tvKowUsFIdClUFkaG9BdEwSPDWuGm/GiPmN+pG2In/V49qU8gmi4lhVeiQhwfPRb0eqUsVJ/kSIn60M3NBpxWMIFxHFUOf1YCWV4hBSkfT2fVop0uErW9fwkMgJ5GG56opHyGUFGxDiSvFkOwhAzMQL05FN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746800994; c=relaxed/simple;
	bh=UkL+Tbb3pLryT8QwK18QVZZkkTDUt4vUN1WoTUSl1wc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OheocOIVWtqF9PolwZxYYBZAKejjUfHTyDaDtxKaY6n0Qp2+gVgKRy0NKa/YJiEtOqdLmXb63cw2LVNbS/gIvYW5zneK1UYffy0KVZ4Sztse7sQ3CNXbvz06Vdbdx3sMOvxvL3fX6K2CmjEoWoZE/k4WcBslEZCH0D8bLeSkcJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=Z2j/FoMm; arc=none smtp.client-ip=220.197.32.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=C5AYazuPd/fcyYmxz8UgX2gUqYJg68sV7yEDZF6Ac8k=;
	b=Z2j/FoMmM1B6nMqmxTXkyKpKI1Q23ZHbBAaxFckG0nJ2anf2wLhIBhq3YFfBlE
	0kWq6EuW1yarP2Rffn7hCp5dc8WnhHfoiVfmNkyjY46jbD4YOsE3RQ+7FZw677a8
	dZ1qiS4Bg8jLwWRYdrc1K6qCs0FI4GPdv2htUFge1Bn/Q=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgD3D_Y4ER5o8mGoAA--.35470S3;
	Fri, 09 May 2025 22:29:14 +0800 (CST)
Date: Fri, 9 May 2025 22:29:12 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Efe Can =?utf-8?B?xLDDp8O2eg==?= <efecanicoz@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: imx7d: update opp-table voltages
Message-ID: <aB4RONqJI4Gdf/tF@dragon>
References: <20250425091853.54437-1-efecanicoz@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250425091853.54437-1-efecanicoz@gmail.com>
X-CM-TRANSID:M88vCgD3D_Y4ER5o8mGoAA--.35470S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUO7KIDUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiEh5IZWgd+axyowAAsQ

On Fri, Apr 25, 2025 at 11:18:40AM +0200, Efe Can İçöz wrote:
> Update accepted voltage levels according to IMX7DCEC Table 9 Operating ranges
> 
> Signed-off-by: Efe Can İçöz <efecanicoz@gmail.com>

Applied, thanks!


