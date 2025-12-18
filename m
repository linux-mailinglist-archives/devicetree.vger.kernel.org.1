Return-Path: <devicetree+bounces-247841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 22394CCC07A
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 14:36:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D2C773058328
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 13:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09436338925;
	Thu, 18 Dec 2025 13:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="RW+q1c3V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA310224891
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 13:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766064207; cv=none; b=ehmbbn6J9I0974454MVMV7XvPOkora40OR2Vbyprik0GQ9/9vtqOpWVrS8RQz50IIdsHH5StaHqekwi/aTBb3gC5MgiDFmDOkvqmbId0BiKjkK4YzWyYNI1wkRbG1LGZoWrmuIBM0pfRkyXfYpaMdXLUdqdxhxDfgVtgP/P/lEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766064207; c=relaxed/simple;
	bh=AePUaCKR4z314F+q761RLyHuglpBexbgdEh3FT/9sLY=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CE5K3J5CHrXM4fy2gS7VKOl9Zvo+EQ7fRz2XyNSU22d79g6dzHsBPRNvTWXQ4w3szpIv7z3EAgy7tGLF47nfJl/PYvxRQpYfG33puKe6/VMycxQ8olMEirBmztDU7KOQ00YFJ3UrVFThZApFINUzDb/KvXHsp5yKy9s1DkT2DMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=RW+q1c3V; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b79ea617f55so127699366b.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 05:23:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1766064204; x=1766669004; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oCudBcw5akO4madupDYz73GUtrdMHgyCBVg+ab8JlvI=;
        b=RW+q1c3VfOs1F2BAFOBH69WJVcq2HQXC7SEi6KEf9k0L+ZM0gW57A5mSiGjsaICJx2
         JZpbfgRlDZ5L27ZKQtB9oYJvSCJUo0IEcSQwXcJacovY9lKy1zglXKqMkENbvMpchNds
         t+9TgGPymUVeqpKccfaSe432Zs6Zbz/fR0qmI1tOaGqx8hlXD7OI6kgU/f5KGTV8Lf/k
         Qrp1WCsO7WrAXAeiGc2UdPCW7ny9AU2VuPXZfjaBX3aqRVqntF7higfSicn9Hnk4G7hU
         XEICBRJ8L8TgJm694NsYmGBWPzKSv9wHgWNIDXUhfn6rOoRNA8S24Ea/vNh3puediJF1
         KlZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766064204; x=1766669004;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oCudBcw5akO4madupDYz73GUtrdMHgyCBVg+ab8JlvI=;
        b=C3+bF+mE32s9mmSQ7X4VYtjXoWsfajX+uSFwZJrmmEV8GTYvYhVHJ4SGpF8Ns/hMSo
         CEyvo642L2gtfA6jd6eKAzM7/0edSd/S60dFUmxKNhTQxxIaINv9OO7W628ImCsqHRMr
         zjdJNZjmJObk3RavesYElxoQahhyggELKXqDr1AA5mS8Rwq6+/uznUioQBl6oJ/jEIR4
         0OsO5nlbX4TYGiL4VSRg2vctrfG3g97KPD/c+IHlqqzruZgWwuUjvYRQIHB5M/LVy43V
         3wD5QwfAHQ3KWwTD1fNkr48Q6pWDXQpDA+6zSvGvTijReU/9dmwIpUb+RU93Ce6+8qwn
         Kbpg==
X-Forwarded-Encrypted: i=1; AJvYcCUhA3k+TC66ZgtqzwfU6JYSK41p4qrj9D7221vu5LCNvebcfzVYhA0x9uWQ4dfLiXS7z1WZcHgyoVCW@vger.kernel.org
X-Gm-Message-State: AOJu0YxSerE/KctkbBcbxrB/ACCgleF3/3lfI6+cmlchKndH3uT45UUV
	uOi+uGG8WXbp5u2790cVmmyOe3SZW8/8u2N303KtMOBGUoH79hsT+QFMoBVZw1qZbYFV+oo2Cw/
	D/BtJ
X-Gm-Gg: AY/fxX6xrvgRBqJ+sjg+BNERlqJ+kmGjIUu1O7S9vkMVP5XPZCLfwLT+yHewnN1kB4s
	/U+7kWUk+VKo03OV+Aj6ViEmD3reyd3Wagq7ld67tyGEa3njBapFE+E21QRIwwtGgZG1NT0ic79
	aHRnfzpF3EQ0s8OYrKgH8oRLX90lP/u373LhN+VHaraAcXz2XOZxpIhiQlTIoLmUL/zT2q33hUF
	A/H6rWbG6DB37IEU9mCK5Q7zQBWNvnN2eQNxJuWqdwn/zhpjsHUtklt+K3hQzA1b5VsdY16KCh3
	SomPux8mNG08chYOquGc+lPQ9vx4l6leu//L6BuwPziYUlVrhFIpwu1vFfdKw5taiwfRtL887rg
	LEhu9hleh9ZIE2jp8m6oB9ofyBG3PX49UtM8vlnXrVnZ0P75dZy9LlX2anV8kwPRLrz/+/rxjrg
	RWgCIkH5ghPTxJNZjC6Yug8gcDrIxEpP4PNnZIgjmQmiwxFLiqbJ9WfQ==
X-Google-Smtp-Source: AGHT+IGEffrc7V99LBQekNjWi+jayFMaj4hzdwzei25erTP3Kr8QQXDpgbnbFwV3ifqZ4Xi+QZCiww==
X-Received: by 2002:a17:907:d15:b0:b75:8b9f:de3a with SMTP id a640c23a62f3a-b7d23b4d6cdmr2285321666b.59.1766064204083;
        Thu, 18 Dec 2025 05:23:24 -0800 (PST)
Received: from localhost (host-79-37-15-246.retail.telecomitalia.it. [79.37.15.246])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b80234a2786sm232719666b.49.2025.12.18.05.23.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 05:23:23 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Thu, 18 Dec 2025 14:25:56 +0100
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, andrea.porta@suse.com
Subject: Re: [PATCH v2] arm64: broadcom: bcm2712: Drop rp1 overlay
Message-ID: <aUQA5IKqqsrElzKP@apocalypse>
References: <20251211193854.1778221-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251211193854.1778221-1-robh@kernel.org>

Hi Rob,

On 13:38 Thu 11 Dec     , Rob Herring (Arm) wrote:
> It's a requirement that DT overlays be applied at build time in order to
> validate them as overlays are not validated on their own, but the
> rp1.dtbo is not applied to anything. The rp1.dtso overlay doesn't work
> on its own as there are additional settings needed as seen in
> bcm2712-rpi-5-b.dts. In addition, the 'rp1_nexus' node is applied to the
> wrong place in the DT as it should be under a PCIe root port rather than
> the host bridge. There's also a duplicate overlay in drivers/misc/rp1/.
> 
> For these reasons, just drop the overlay to fix the warning until all
> these issues can be fixed.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
> The missing applying of rp1.dtbo is now a warning in v6.19-rc1. This
> should be sent to Linus ASAP.
> 
> v2:
>  - Drop the overlay instead of trying to rework. The addition of
>    ethernet0 alias complicates that.
> ---
>  arch/arm64/boot/dts/broadcom/Makefile | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/broadcom/Makefile b/arch/arm64/boot/dts/broadcom/Makefile
> index 83d45afc6588..031875a277d7 100644
> --- a/arch/arm64/boot/dts/broadcom/Makefile
> +++ b/arch/arm64/boot/dts/broadcom/Makefile
> @@ -14,8 +14,7 @@ dtb-$(CONFIG_ARCH_BCM2835) += bcm2711-rpi-400.dtb \
>  			      bcm2837-rpi-3-b.dtb \
>  			      bcm2837-rpi-3-b-plus.dtb \
>  			      bcm2837-rpi-cm3-io3.dtb \
> -			      bcm2837-rpi-zero-2-w.dtb \
> -			      rp1.dtbo
> +			      bcm2837-rpi-zero-2-w.dtb

I'm preparing a rework patch that drops the overlay too, it will fix this warning
and the other concerns about RP1 DT hierarchy. Anyway, since this warning seems
to annoy a lot of people, feel free to apply it in the meantime and I'll adapt
accordingly, hence:

Reviewed-by: Andrea della Porta <andrea.porta@suse.com>

Thanks,
Andrea

>  
>  subdir-y	+= bcmbca
>  subdir-y	+= northstar2
> -- 
> 2.51.0
> 

