Return-Path: <devicetree+bounces-197768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCFDB0A909
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 19:06:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E66431C2249B
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 17:06:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20B422E6D1F;
	Fri, 18 Jul 2025 17:06:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="btLWISyo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE172E62A9
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 17:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752858370; cv=none; b=lq7mgEgxl/orGH6M8NlOrvpwt2tnUcrvR0EH28VAJFaKCw6NkeGZgjI8WZROXgaD7gipGAMV61ctsjvKYGQE12J52M5GJhcn/Ag+R/zh76csnwFcnVgytuC+NGB+e5dIxBxeiJoAfvX2vBauXxtT2lCFFby/kmOkRbLEPwhlJKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752858370; c=relaxed/simple;
	bh=Z/CQGPwaBrdNdHSZhJcrgxbK3pbQdpjyWovr+/jbCCM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fjWBoiURxtzqRxaBKCGwUUEB817/j2LRD2UbCtOUgBqPTXSfNzt+Kpi2M8OMj/o4jFmarcaWIZs+DXr96ItCak/W/4UhZC2yGCNpZPJLI5QppD1wF5LC2oRDvc09C2C5UiNZ14gP+aAsXqG01684cL+Aa/ZKpyvDvWiVTuIrMFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=btLWISyo; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-b321bd36a41so1854157a12.2
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 10:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752858367; x=1753463167; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vhurBa5mwUKpezcbMzv1+OspD1kqhRvpFJ2L8Bz2kqU=;
        b=btLWISyoKSzTqBm6VzUVwcX+eaOg+lPS2l+/AtVGMBmpBPfuZw2exl1NlJX04GFU6y
         Ls8k04EjidbMf3IXdgq4WbikTwW8UyMWzNEpSHDol9u8El/xIKfZhU30sRcgZkCBhCqi
         T59HtVnRF1YYF0shpC7X/X/pCfEMkEvVQAKWPTJrst8jyB+vPSCfPgTO9GyXF39cOCFb
         XZXNu1Z6+0FIgAaQQiFcknf4lgK8GKN7Cquz8ZUDfcY1mWKZyepv8zzoJOQ+a0QI+I3I
         p6MNAE8pTr2S2KolPkxJYWF+AuQZKeGpUkKJ7ATl3nvJZ+VrD+o6scU4s8gJLdYWAiW1
         ugag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752858367; x=1753463167;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vhurBa5mwUKpezcbMzv1+OspD1kqhRvpFJ2L8Bz2kqU=;
        b=vjo4/5oFYCbHYcQa97n+9lwPM+Go7gWWbk1EzyaC76mG7dN+x4VtyJ1ZxWSXZh8eA4
         HA7rIku94Au7QoOfrnTMDt2To/ZxaruhIFAmQmqNZwsOMc5F9bv8XiYs53+irQrIQJpY
         ffozsQYkK5Ss0j1+l0vxvLGWQCHEHIhK6eIiLIgQHPystBE1t2nLOVz6Fe1KrQ0lVoMj
         05QkPpKpFvkhMRVA95nvvmGapB4osggvZesP58wrZS98xQEeqza8VoUUKI+wPigziaTM
         P/TfBxrwpdTM5dHfRFSyZP/HyQcwShnFiMn2aGE/9564DXDHaEwIeq2Y0ticJuqrP4A2
         xdrQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMbDxhJ2sUK+dhE/rUinvX9wGrV54UY8RYdeBfFARymkeVP6LqZAnxpv4kFDD91+FY1ur84bBR5ByS@vger.kernel.org
X-Gm-Message-State: AOJu0YzTCukuBguvoH8TIDSc5c6pSzUNu3VdMALmCG379JCJ8tUe3+sV
	2mKp/yZDSiedHjwbjT9Izjb88OYbRf0weFMabMwQbHZVgyiXAHgtIlosyrLufQm5LDk=
X-Gm-Gg: ASbGncutGdObdQR1XJpkWpJcYL7mVBgQ0Qkl86feDogx81XRqLcZn91zn1SesNbDSeh
	JeRwBJEDcTyUGnRTEj6YG/hYFygg8x60npRqpbF5vyw4llenxThBYu04aIK0KGOoPQs6P4f595V
	fIB1A1z/mXT5cBfp/6sB9bbDYyw+BQMXqqwi1Mb1SDNh+wdR2xPBofDhoWksMNhlx8qlaoG5erK
	ikINvYvzzqdzni5Re+WqJFH32/0bzapR8svaB7bjzl1gt0+Qdwus//MmWstRM6JsP8jemeeX0iw
	FxzrX4avK8yE5AXGaiC4IjViPXU9ZOoRmm7KwnRcFX1Z+WsYtAD3OKesKKsasilMkS1vTQKQZ+E
	tqHQmOA1ehR+xEcOWZ2MaLVXfBqftIlQXA8GZ
X-Google-Smtp-Source: AGHT+IEx6ySB6V3hyKXChSRvGBgPCHaeNn+2Yrx9kNMJebeK99RUGW1gvTuZy2CawEeN7hsJkrecLw==
X-Received: by 2002:a17:90b:55c4:b0:311:9c9a:58c5 with SMTP id 98e67ed59e1d1-31c9f44b9c3mr16334749a91.12.1752858367484;
        Fri, 18 Jul 2025 10:06:07 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:2122:eb88:47da:7caf])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc3f2c708sm1623990a91.30.2025.07.18.10.06.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 10:06:07 -0700 (PDT)
Date: Fri, 18 Jul 2025 11:06:04 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Peng Fan <peng.fan@oss.nxp.com>
Cc: Peng Fan <peng.fan@nxp.com>, "Rob Herring (Arm)" <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	Frank Li <frank.li@nxp.com>, Bjorn Andersson <andersson@kernel.org>,
	"imx@lists.linux.dev" <imx@lists.linux.dev>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Iuliana Prodan <iuliana.prodan@nxp.com>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Daniel Baluta <daniel.baluta@nxp.com>
Subject: Re: [PATCH v4 0/5] remoteproc: imx_rproc: Support i.MX95
Message-ID: <aHp-_BRk7Iz81OFp@p14s>
References: <20250710-imx95-rproc-1-v4-0-a7123e857dfb@nxp.com>
 <175224423523.783161.17907302929832941912.robh@kernel.org>
 <PAXPR04MB845959EF2767C96794EAE6DD8854A@PAXPR04MB8459.eurprd04.prod.outlook.com>
 <aHkNS51jgV5ulsNB@p14s>
 <20250718082033.GA25126@nxa18884-linux>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250718082033.GA25126@nxa18884-linux>

On Fri, Jul 18, 2025 at 04:20:34PM +0800, Peng Fan wrote:
> On Thu, Jul 17, 2025 at 08:48:43AM -0600, Mathieu Poirier wrote:
> >On Mon, Jul 14, 2025 at 11:52:05AM +0000, Peng Fan wrote:
> >> > Subject: Re: [PATCH v4 0/5] remoteproc: imx_rproc: Support i.MX95
> >> > 
> >> [...] 
> >> > New warnings running 'make CHECK_DTBS=y for
> >> > arch/arm64/boot/dts/freescale/' for 20250710-imx95-rproc-1-v4-0-
> >> > a7123e857dfb@nxp.com:
> >> > 
> >> > arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dtb:
> >> > scmi (arm,scmi): Unevaluated properties are not allowed
> >> > ('protocol@80', 'protocol@81', 'protocol@82', 'protocol@84' were
> >> > unexpected)
> >> 
> >> Same as replied in v3.
> >> This is because [1] is still not picked, not because of my patchset.
> >
> >I won't move on this patchset until this is resolved.
> >
> 
> Not understand why hold on this patchset. I suppose you may not
> understand what the error means. The warning is totally irrelevant
> to this patchset, there is no dependency.
> 
> Others added a property to arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
> &scmi_bbm {
>         linux,code = <KEY_POWER>;
> };
> But this "linux,code" property not landed(missed to be picked up) to DT binding.
> 
> This patchset does not touch scmi_bbm. I could help address the warning
> in the other patch, but I do not see why "linux,code" under scmi_bbm node
> could block this patchset.
> 
> Please help clarify if you still think to hold on this patchset.
> 
> BTW: with [1] "remoteproc: imx_rproc: skip clock enable when M-core is managed by the SCU"
> merged in Ulf's tree, there is a minor conflict with patch 2. Please suggest
> what I should do with this patchset.
>

I was afraid of that.  The best way forward with this work is to wait for the
"linux,code" property to be picked up by Sudeep.  I suggest you make sure that
he, or anyone else, picks it up for the next merge window.  If that happens
everything should be set for you to resend this patchset when 6.17-rc1 comes
out.
 
> [1]https://lore.kernel.org/linux-remoteproc/20250629172512.14857-3-hiagofranco@gmail.com/T/#u
> 
> Thanks,
> Peng

