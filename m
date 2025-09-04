Return-Path: <devicetree+bounces-212816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73ACCB43CFD
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 15:22:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 492BB17DDBB
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:22:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 347B62ECEB8;
	Thu,  4 Sep 2025 13:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="ANIvYDKC"
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE853002D8
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 13:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.161
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756992150; cv=none; b=WX00uBcZsXTAoNlRE7Rx0skhroRLDwytxyR0VhJte68ztU5icwEDB+9m3Gis0JyQI5yOq8tCThw1px8tWlFlMrR4wTOeJsIazRlUiF1x3DhGfCKSFLEk8ajPok4bgt+HOtDvOJsDh7RwLiXGyDpdvrrtS1xZgVqEt6KIyByMCWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756992150; c=relaxed/simple;
	bh=RsWh05uC5lR3sho55vyl9b8++qMmNkd3wJbF1aUAkBI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B125IgnF1JhUwlHvj/BlZ1zwXdwaIInuMFLGaG9LlVQ7w9daEyKVEMFykIO7eZgT6Tb3hxURt7h2asOSL+VF85pmGMYBCwuROHw0NFzMQukXAmI22UShjoztjnbWO4SLKvyurKZE7GkxU/1KfU6bXB/qs2O7/OrF9hlTCM+uHA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=ANIvYDKC; arc=none smtp.client-ip=80.241.56.161
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4cHgBS3z9qz9tDy;
	Thu,  4 Sep 2025 15:22:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1756992144;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=P14jZkTZ2+u7vI7hYdRXpcT9fXkr0x5aIO0upkvLBic=;
	b=ANIvYDKCbjfVCwXbxl//QcpZCl00FYQAsZeTQhF/42edtJJGpI09Vfl7JMYSBlaP9pxHWS
	fBaYazKItq1Ofg+Qrq6zBaF/Da+HWWCzGhVMqhUETpHZsYZvgx+89lC2TUvn/9yDC+W4ig
	jKPXkccLdZUoUkBzfnJMETQeNntPyI9AQRUUJc9hDWWlQ48lmRUJeu3RRedhkN+4bhtBYn
	r8AMQiULzbktNaDG8XnmbJWGS7ENypY0VJ+mrABI2vocgz/dD8sR8TBonw9n5HacupYuwq
	ivFBCujJ5KRXJplhjItVx5tlfDFkJu4Nl4ZA9dxv1MUCleM8mSdb1VVvGrkDlw==
Message-ID: <ff353bd9-500b-4d73-86d3-32283774082c@mailbox.org>
Date: Thu, 4 Sep 2025 15:22:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v2 9/9] arm64: dts: imx95: Describe Mali G310 GPU
To: Peng Fan <peng.fan@oss.nxp.com>,
 Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sebastian Reichel <sre@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Simona Vetter <simona@ffwll.ch>,
 Steven Price <steven.price@arm.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, devicetree@vger.kernel.org, imx@lists.linux.dev
References: <20250321200625.132494-1-marex@denx.de>
 <20250321200625.132494-10-marex@denx.de> <6144881.lOV4Wx5bFT@steina-w>
 <20250904095435.GD13411@nxa18884-linux.ap.freescale.net>
Content-Language: en-US
From: Marek Vasut <marek.vasut@mailbox.org>
In-Reply-To: <20250904095435.GD13411@nxa18884-linux.ap.freescale.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-MBO-RS-ID: 9f0efbf0e2d99046b6c
X-MBO-RS-META: 9wx1ezgab7qjqngeykn69ohkyf1cs1n1

On 9/4/25 11:54 AM, Peng Fan wrote:

Hello Peng,

>>> @@ -1890,6 +1919,35 @@ netc_emdio: mdio@0,0 {
>>>   			};
>>>   		};
>>>   
>>> +		gpu_blk_ctrl: reset-controller@4d810000 {
>>> +			compatible = "nxp,imx95-gpu-blk-ctrl";
>>> +			reg = <0x0 0x4d810000 0x0 0xc>;
>>> +			#reset-cells = <1>;
>>> +			clocks = <&scmi_clk IMX95_CLK_GPUAPB>;
>>> +			assigned-clocks = <&scmi_clk IMX95_CLK_GPUAPB>;
>>> +			assigned-clock-parents = <&scmi_clk IMX95_CLK_SYSPLL1_PFD1_DIV2>;
>>> +			assigned-clock-rates = <133333333>;
>>> +			power-domains = <&scmi_devpd IMX95_PD_GPU>;
>>> +		};
>>
>> With the SM release lf-6.12.3-1.0.0 AP does not have any access to
>> this BLK_CTRL anymore. See [1]
> 
> Right. In configs/mx95evk.cfg, BLK_CTRL_GPUMIX is assigned to M33P, and
> System manager will automatically handle this reset.
This discussion will get interesting, because there are systems in the 
field where this is not the case, and they cannot easily update their 
bootloader. How do we handle that ?

I can still update most of the systems I care about, but this really 
isn't the way to handle this, because this reset part is part of 
firmware ABI, which has changed now.

