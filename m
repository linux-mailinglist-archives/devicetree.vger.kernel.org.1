Return-Path: <devicetree+bounces-238453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 055E7C5B56E
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 05:42:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8737D3491C6
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 04:42:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 460C12C21CA;
	Fri, 14 Nov 2025 04:41:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nqknAvL9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B88292C15A6
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 04:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763095317; cv=none; b=gP2wajujAM7LK07gpirQYIP0lhcoigKZUXPwasIeacouYiYfPbghNSEifs5HE+N8vKyeP/+PSrwSJMSQuGV3/+LoifY9ivdA8r5q8p0htP34MROdrf8CZfj3biVNC9sEiEaKp1MN8Gw2SzGQCdAOCgi2U0AerJjUWVRsueOUuCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763095317; c=relaxed/simple;
	bh=3RN92yVVMcDs0OkX8b1S7hfcpAmebIIdaWYB5oeNg5I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=II6xYI8KoXdJ9eagfgfF5XDvQQpQ2ViH3FoVG/Sx8bVyKZ4qDQSUciJ/ICuI+ZhCK57KtKolWvD8stesYAatqtMo/8KBXnElXCSR/iAhxubz4Aenj2HInsJec3yugukwysHg49yzY9BvJ52HW13/oahBndzGyUheC51D4cg1cNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nqknAvL9; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-b994baabfcfso1010334a12.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 20:41:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763095315; x=1763700115; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jYITvpqCiW1DtaQqw+zoQjW9fGy8Lts1f9UcjxkD50s=;
        b=nqknAvL9g+iOC75oYMJN09LCyYLSBaHMWM8BOSeQQJwPEutSsj2RF2C60WRtmEp6MO
         A7/nKcCOgjnCnAEJHiWpq5jzDOd5JJzjSx88aUuXsHyXbSFj2+9pyhUS3btiftiya0mB
         QSokG4baP/zhWULpwVtpXc/6paXik0UFxwzj/xVh5f2ilYSl3u7uxKwAYC7qqODtJDI1
         sfNcnbUx5eROY2hAQDu0xeMvASLKjxYaD6gLjzAXP7Rml0O9ygL4YrzwFP+ihht1y2+5
         pTIyRUncK02cUR01CqEqXQiH+B9QlDdYnMrZNNC/aKjBAc5BvflkpkawnB8jTxrgBWl6
         UA6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763095315; x=1763700115;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jYITvpqCiW1DtaQqw+zoQjW9fGy8Lts1f9UcjxkD50s=;
        b=EEOhgkKZZ3nxh4Vgc1K3iQEhJm+xf0RSIgp7wb/2AiP2zlp8a7NXP76I5L6VQjawRN
         dW9GI9SHmuy/7gZkpP7yTEC24faF8qn5B5Y82UIfdPEQPr7TV7XTJCAC9RfDq7ZF2LoA
         24JVISPm0xZHlwvSRZO1KpohPvIH5crzwxaudamKa3YmNiMb8k+1ugRrWRxcVLehjDtt
         VaW7Y6cJCqP52loOCqSD6YDzFlwCZebxqbs9vNFlHh0X8cLQyUfECrAkC+BY5pEFIRM+
         mvrksI9/CRYLnfUe8RJOKBf69AElIlzbzcAqljju5klOTS9WAolY1vp/o+hyovi0g/7K
         afNg==
X-Forwarded-Encrypted: i=1; AJvYcCW/TCPdXRl+/XoVxzM180Hu6Rhia2f2wNIMgRtZDm7k1YApf3eydZeTQk1JaadF8MKotwJ5Rp6MEFO9@vger.kernel.org
X-Gm-Message-State: AOJu0YxPImL+6gdllZb7beJOhzuDC/mui5GvNTaBZfZCOdI6QAHyBnyO
	+6Tk67yd795oSo353Ma+7KULNwTS67lmW72mc4YalZfPDWmaQAujmpvq
X-Gm-Gg: ASbGnctkJp4LklARNE6mnQ05V8nxEZFvzWxJZg+CeweA6EIOmGOLHRBFXoZPVOBHJTr
	HQLbi/Cb6kqTMnUanpulAFsCE58F9JYNxuMMC6Sy7fpF5HwS236JrjMla8FDioT1eG2i1WnfDW3
	YDUpCZu4N3aWE+/ytjdCuuICpQJdlAI6pW2JV4mJ81xynxNenk1wfZlb5+ohl1OThXHG3Z1jl5W
	slaWhRUMOLeXWEB7H5L3tsiVf63ea5sj/cPjTynuDH/7uB05HMUxqBXVhXe1NoQfjt1KMqlLAgz
	pOGcAsWApCNoOGblXUGD+Yzpb+WT2lKdCLiQus1txC68TwqBOWbSmzXwFtmClEFcbu/wonMi4i9
	+8EXOPXHBzH0wumpONonizzgBquxN1pzMJNanlEsP7vkHmg+F0MOl1itU3gUk2z61Ws9XELq0zD
	idaKWB67f7
X-Google-Smtp-Source: AGHT+IEYHLOamGM5/rhDQ8pIrx2agy7W4DgZWwY06i1uk7cuxizAxZJhIaEBAx3eQH7DJBOHIqA7NQ==
X-Received: by 2002:a05:7022:5f09:b0:119:e56b:989c with SMTP id a92af1059eb24-11b40f82b10mr512024c88.3.1763095314813;
        Thu, 13 Nov 2025 20:41:54 -0800 (PST)
Received: from geday ([2804:7f2:8082:36cd::1])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b060885cdsm5676123c88.6.2025.11.13.20.41.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 20:41:53 -0800 (PST)
Date: Fri, 14 Nov 2025 01:41:46 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: =?utf-8?B?5byg54Oo?= <ye.zhang@rock-chips.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci <linux-pci@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	krzk+dt <krzk+dt@kernel.org>, conor+dt <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	linux-rockchip <linux-rockchip@lists.infradead.org>,
	Simon Glass <sjg@chromium.org>,
	Philipp Tomsich <philipp.tomsich@vrull.eu>,
	Kever Yang <kever.yang@rock-chips.com>,
	Tom Rini <trini@konsulko.com>, u-boot@lists.denx.de
Subject: Re: [PATCH] arm64: dts: rockchip: align bindings to PCIe spec
Message-ID: <aRazCssWVdAOmy7D@geday>
References: <4b5ffcccfef2a61838aa563521672a171acb27b2.1762321976.git.geraldogabriel@gmail.com>
 <ba120577-42da-424d-8102-9d085c1494c8@rock-chips.com>
 <aQsIXcQzeYop6a0B@geday>
 <67b605b0-7046-448a-bc9b-d3ac56333809@rock-chips.com>
 <aQ1c7ZDycxiOIy8Y@geday>
 <d9e257bd-806c-48b4-bb22-f1342e9fc15a@rock-chips.com>
 <aRLEbfsmXnGwyigS@geday>
 <AGsAmwCFJj0ZQ4vKzrqC84rs.3.1762847224180.Hmail.ye.zhang@rock-chips.com>
 <aRQ_R90S8T82th45@geday>
 <aRUvr0UggTYkkCZ_@geday>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aRUvr0UggTYkkCZ_@geday>

On Wed, Nov 12, 2025 at 10:09:15PM -0300, Geraldo Nascimento wrote:
> Hi Ye, Shawn,
> 
> Here's more contained workaround without resorting to clearing DDR to
> INPUT for every GPIO:
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index ee1822ca01db..1d89131ec6ac 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -315,7 +315,8 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
>  			    PCIE_CLIENT_CONFIG);
>  
>  	msleep(PCIE_T_PVPERL_MS);
> -	gpiod_set_value_cansleep(rockchip->perst_gpio, 1);
> +	gpiod_direction_input(rockchip->perst_gpio);
> +	gpiod_direction_output(rockchip->perst_gpio, 1);
>  
>  	msleep(PCIE_RESET_CONFIG_WAIT_MS);
>  
> This results in working PCIe for me, pass initial link training.

Sorry for the inconvenience of more mail, but I'm providing as much
detail as I can.

This hack has been confirmed to work in U-boot also.

diff --git a/drivers/pci/pcie_rockchip.c b/drivers/pci/pcie_rockchip.c
index 19f9e58a640..5702b607ee6 100644
--- a/drivers/pci/pcie_rockchip.c
+++ b/drivers/pci/pcie_rockchip.c
@@ -329,8 +329,10 @@ static int rockchip_pcie_init_port(struct udevice *dev)
 	writel(PCIE_CLIENT_LINK_TRAIN_ENABLE,
 	       priv->apb_base + PCIE_CLIENT_CONFIG);
 
-	if (dm_gpio_is_valid(&priv->ep_gpio))
-		dm_gpio_set_value(&priv->ep_gpio, 1);
+	if (dm_gpio_is_valid(&priv->ep_gpio)) {
+		dm_gpio_set_dir_flags(&priv->ep_gpio, (priv->ep_gpio.flags & ~GPIOD_IS_OUT) | GPIOD_IS_IN);
+		dm_gpio_set_dir_flags(&priv->ep_gpio, (priv->ep_gpio.flags & ~GPIOD_IS_IN) | GPIOD_IS_OUT | GPIOD_IS_OUT_ACTIVE);
+	}
 
 	ret = readl_poll_sleep_timeout
 			(priv->apb_base + PCIE_CLIENT_BASIC_STATUS1,

So my report suggests this is not specific to Linux and because same
workaround works in U-boot simplified driver model I suggest you check
from your side.

Previously PCIe link training timeout, not working. Now I'm very happy
with working PCIe in Linux and U-boot.

Thanks,
Geraldo Nascimento

