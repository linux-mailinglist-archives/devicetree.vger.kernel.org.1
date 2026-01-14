Return-Path: <devicetree+bounces-255257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 503E1D21A31
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 23:42:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A16683092835
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 22:37:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B3B73AEF55;
	Wed, 14 Jan 2026 22:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ed8/hl5G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5902472AA
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 22:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768430235; cv=none; b=WYfTkPe4EJVZTKcBMqE4AkXw3eRdwkR9FkhG+bQLsYTHStpCaxWTkeX7bwHfLyQer/9GpcgbDewfQfhI2xrzAopTCubrYQOdq1hPKVy5wBxj/Q9CTk1wpOMm2cvSVc7DQFXqAn285HuOVz+p/QvLTWnQ/WAYgGTH1tExPyf9IsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768430235; c=relaxed/simple;
	bh=Pap9Hrw9sCOWF6kQ/n3lacCHfMkKgmDgfgqp3WjtKLg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oEWIRrv+o6uAt0m5tez2sO/qEHYHX58O9fwDaov7VL/AgLu3FKUNqTg3lKowkv5xQVrmEm1zuyFUyanXUxRm3GoPYK6ScTixiTrxkCGRsoY+O+vcKnOsGwOQDvjlqpt5p4zkmTjUZOTMH2vsg82Gg097Z0kvXUNFlFFzLhFi2Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ed8/hl5G; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-64b7a91f9daso37422a12.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 14:37:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768430229; x=1769035029; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=11kECEzSebBpOV9cxC6Ool0wSvyZx2KWiMTg0SiIkhU=;
        b=ed8/hl5Gi4mdLF2b9YXsKYZL3s4dH0FymKGamqBHU/AvYYgE8jMPFeEEnEguK+OFO8
         t/NIxX5RAMRSqpEG6nFxwDAh51UuaDD5LvUjlRc9W7jtsVX4eKqMfV6/mv2pbd1cipJ9
         l3NvQYec9xcdeQHoVgc4XYviU6ngWKc4gDTkYJAMqL7ZUga2u4Lss8TglTyAepSp5V1x
         NeJudN0OkfPqvN/deydXb+R2JqeM72i1AzTb4ut4AdAkgKB4vNr11V1OtDu0Xaqjkg/X
         0wEZoMdCX4PTfZpItSwFY3EGAAA8kJSf94S2uw3Jc87CL2fjIn3dcQCEoPS2lxc6nR37
         nWSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768430229; x=1769035029;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=11kECEzSebBpOV9cxC6Ool0wSvyZx2KWiMTg0SiIkhU=;
        b=KEyPnY6nrfLPCNuSkjOuwmhWVmqrXD5TE62CPLlsWwmOicQd1W38M3xi5qtYpM4ENb
         OZI/65l+V9FhASXQ2xt1jRMxf5/x1+Z6nDCEQFR5eEX92MNqsB0PzWFotsXa5cUo4UIa
         05a+2AhF0wKktkNWZ/k7qGuwoWZUIQvyHEH5KxRS42Jp8w8F+L2/ULUIPYVVO9Hid8Mf
         Wj5XPz6bKOspFwHYP/k/AxgsOckQMTJG7R6wnyIGz4XTvzIfCNiOC4MDE+jA+LVtK83s
         yYkZ/lb2spE1O46KpHt5SpSFWZxHqqvFUJZrXSxL0jDXlH8uVuI5Kp85sZxszVJC4Xju
         hQQA==
X-Forwarded-Encrypted: i=1; AJvYcCUVzE9kvkyfOLaW/d9Gaj5Abzrav8kTa+SVvdQgcL51YL4eIGwoU/6lWNWfkSJ7kd93kVjBfQP24TmJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz93vBPtJA9F5wvQeNk9f8fBL9Gc2bFSBpEzCsK6tI3DDCrvk12
	QwHIRjIJOCdvFR8MMwRHNnuiXLPknecCrkblYMq2V3u2RA4+ILRR5icT5ygFZw==
X-Gm-Gg: AY/fxX7hLvb55SSplLNg7Oz9qvNyvC/KVE2tQ/PuxrXCLny3Or35zJCz6pU+P2e4DOf
	ZBLrYYikMXNSBwsBt8bBeEtTcJfacpnNr9HdIgKcFwX8MvgMM7HIMVbXSHNGcTqXraSJT9fIwfo
	jLPcwbJbNc636ODCjTWICoe4YN6WpVdDkMLq2v71OjbsD9mB/MJxrV6vzKtAiHhM5hyxmfTgfow
	bFYm5E2bZycL5WWreppUY3HA0lWHZXkGLPfMxpiejiEfdFZHY0EYjzP63Rro2Kpn+h7g0iHJfCL
	QKmiLZT6CnArxsgmHA0GszTOlO3pJH6J5SWmKl/q1sI0IMptplSYtZVvc6nO0EWVW60PDq6+1Zu
	pg2tCXF1bR0AGobgQYBHw4Q0ErNdQ4zUSVgYhhWjazt8sFut5MMsQ51TrqOjAIEWGhYvtxjFt1q
	iTdg==
X-Received: by 2002:a05:6402:1441:b0:640:abd5:8646 with SMTP id 4fb4d7f45d1cf-653ec459b14mr2127866a12.4.1768430229105;
        Wed, 14 Jan 2026 14:37:09 -0800 (PST)
Received: from skbuf ([2a02:2f04:d703:5400:d5b0:b41:b5b3:8c4d])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65411882412sm737757a12.14.2026.01.14.14.37.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 14:37:07 -0800 (PST)
Date: Thu, 15 Jan 2026 00:37:04 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Andrew Lunn <andrew@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Chen Minqiang <ptpt52@gmail.com>,
	Xinfa Deng <xinfa.deng@gl-inet.com>
Subject: Re: [PATCH net-next 2/3] net: dsa: lantiq: allow arbitrary MII
 registers
Message-ID: <20260114223704.7qbcfop4fs67fqtm@skbuf>
References: <cover.1768273936.git.daniel@makrotopia.org>
 <78d3c0cca783d11ecbf837c959ff18b132bdf104.1768273936.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <78d3c0cca783d11ecbf837c959ff18b132bdf104.1768273936.git.daniel@makrotopia.org>

On Tue, Jan 13, 2026 at 03:25:16AM +0000, Daniel Golle wrote:
> The Lantiq GSWIP and MaxLinear GSW1xx drivers are currently relying on a
> hard-coded mapping of MII ports to their respective MII_CFG and MII_PCDU
> registers and only allow applying an offset to the port index.
> 
> While this is sufficient for the currently supported hardware, the very
> similar Intel GSW150 (aka. Lantiq PEB7084) cannot be described using
> this arrangement.
> 
> Introduce two arrays to specify the MII_CFG and MII_PCDU registers for
> each port, replacing the current bitmap used to safeguard MII ports as
> well as the port index offset.
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
> diff --git a/drivers/net/dsa/lantiq/lantiq_gswip.h b/drivers/net/dsa/lantiq/lantiq_gswip.h
> index 8fc4c7cc5283a..b87a68a1b3b67 100644
> --- a/drivers/net/dsa/lantiq/lantiq_gswip.h
> +++ b/drivers/net/dsa/lantiq/lantiq_gswip.h
> @@ -253,8 +253,8 @@ struct gswip_pce_microcode {
>  struct gswip_hw_info {
>  	int max_ports;
>  	unsigned int allowed_cpu_ports;
> -	unsigned int mii_ports;
> -	int mii_port_reg_offset;
> +	s16 mii_cfg[8];
> +	s16 mii_pcdu[8];

Why [8] and not [7] (the larger of GSW150_PORTS and GSW1XX_PORTS)?
I would prefer to see a macro holding the largest port count of the
supported switches, and the "7" also expressed as that value - 1.

>  	bool supports_2500m;
>  	const struct gswip_pce_microcode (*pce_microcode)[];
>  	size_t pce_microcode_size;

