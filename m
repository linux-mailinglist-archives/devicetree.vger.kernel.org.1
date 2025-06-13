Return-Path: <devicetree+bounces-185580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3E6AD8788
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 11:18:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B4BE17A2BB
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 09:18:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14FCC28135D;
	Fri, 13 Jun 2025 09:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b89QU2XC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBDB2DA753
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 09:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749806303; cv=none; b=ee1efJHuWGlm36ZUgk+DCFQ4ivApPmIV91hyBoHfjB6OBetwpGqkrVZkIhAPd7xVfgXq4Q6xZQRBZUrfAQTU42YGTSDc/LZ2dvwzG7vjDaCXcwyNF33V/WIwyfvnSW7rnGHdvcpqtE2s64twongilLSvusbmx8XVKVysl0a2UZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749806303; c=relaxed/simple;
	bh=0tYHCUc86v4VDFvmyJ+IiAirGPTxKi9QIYg15seG3TM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=aRyrJIvhGqRg5fR3JIMrl3FzI0hvvTyU10cb/xC32GK6YPF+hMgpyCcd1/v9bGceeMFHjT4l5bkvEN9fse1bWzTx7BzetXjvaMg94Ij/+ED6zlwjU02VmggJ2F3w27vImCeZnPclBmHFduYPWSbxUTxOvMEC3ZdtTrmH1fDMxZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b89QU2XC; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-451d7b50815so15629455e9.2
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 02:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749806299; x=1750411099; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EZezB8dUdKZQC1klqpxG0ZCPkOkCrr9wOd6SwONA76E=;
        b=b89QU2XC4QPXMwXpEcnyUt62VZE4emjd1rJW2WN1nkAxjegsDgxkMXNYU1Rn3eCQ9h
         1d5v9pzjfKm9bm80pvEemDe8d0Neav5/Wzg/2QI7PIR8VXFvUKD284s8tzfvJx3e/zi+
         ZsJmBpvl4q/SKRICPFbr3xcJQGLhndGA9cJQZUsASe+79MDZteHe+ljefDkzLJC/8FOD
         PEF2iUd4CVxa26QjbbNzVoEt5lPRXHKEZ93Np9IxrddB4UTGyLpR6Uh6iHQX71h2p4ID
         CD1TLDbj1ZOqH+0Rs4QIia3eF3Z+YNDwt/O3QDlyQ8aWAnF1tVZNidcUJM0KFZ5RDpNW
         xx8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749806299; x=1750411099;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EZezB8dUdKZQC1klqpxG0ZCPkOkCrr9wOd6SwONA76E=;
        b=E4iZqiA3H5jIKwupD2fwKQEhMNvAjdPu0meNcg/0wfz9ITWjDesHFVtLlHCt0e/VdM
         AA7rNtIXMDmGhVyDUHQDVwith2pQQsmnYU130tqn/emI6WeBUcEWSilY4OSgaeMrZPWq
         VK6Cdkx2OVvA8Pf/M06a2RLst+nS8e3tEWDWja8uvRe5fBB2x2XI+dnjsjbBwUVZi3zr
         EO/toUXbKTaJvjATUo2G4EmxOWnMvJ2b2GdlJSEzPEIJ7CfILS6K3G3rIfeklv+dr5Ty
         VzNpJY3NRxhdEOpfWHqOI1ghZaY31ooytNWTlWoWZclWInAvuc9YpbeiXSp/fsnDjFGp
         9JMw==
X-Forwarded-Encrypted: i=1; AJvYcCVhjuWsGQr5MSWsJx+PIfGOA5T4dOS2Brz7slH2vcacZ/PYV5O+Uh4vhwIG1bjvAgh8Y2kHcQF5Hb61@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6LZGi2ufo8dysWQeCkXyUyeQvbiFhBBIq7Oxt1p8+8Cb3DgXH
	Em+UV2x11JNOqA1nIiz5rouQU8UFHWxGExJPWmcOKVL5ol6QqR4cdX4HoOvcnWEWJdA=
X-Gm-Gg: ASbGncsGDHOTQr378eRR4SY9jNU/06W1U2/66PfIvUzc6IcjS0W5/BirTj11UbGRtys
	Wdfzedrx027WrPg9LObwT6SkSjUrf5nv+vKfAcT8Sl271wpWIgzSWLHTbptI5ephLdONioyIJuh
	CoHiIy8oLB4tmefZS/QTP+DvdQ9CMjbDtbAYcSrxSxTJfUv4BDqTR/5iwprSwFyvw6FCqB6RXtQ
	xJDSO24J6AOxbkFb10nzqY0TFk1vpsxcdnIL/Ui5NESvilHZH73WpCYi552X03YKbgOdYef832V
	N6CPmgEIOkTUz7QyfMZHH3biAK44VmLBKE8hVOcBPsx2Giio37rN3zovpWRZ9R6kc/QcEX6Qt++
	sCnxs9UpKpvBZC/shQcF/OU3RI5G0uDqtJyJ7NnRxe2fTvQ+p0g==
X-Google-Smtp-Source: AGHT+IEUrossJxJVwWBU+vfj+xukJOxxn0Gc50ke7zrjhbK13v9zCYmZziSm3yGa9wtgXShwZmF+uA==
X-Received: by 2002:a05:600c:468f:b0:450:d3b9:4b96 with SMTP id 5b1f17b1804b1-45334b07460mr22803915e9.13.1749806298856;
        Fri, 13 Jun 2025 02:18:18 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:4144:6a84:fe1d:3aae? ([2a01:e0a:3d9:2080:4144:6a84:fe1d:3aae])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4532063ebf6sm56506385e9.3.2025.06.13.02.18.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jun 2025 02:18:18 -0700 (PDT)
Message-ID: <7178e816-4cb4-49b3-9a1e-1ecd4caa43ed@linaro.org>
Date: Fri, 13 Jun 2025 11:18:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 0/7] Add ASPEED PCIe Root Complex support
To: Jacky Chou <jacky_chou@aspeedtech.com>, bhelgaas@google.com,
 lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, joel@jms.id.au,
 andrew@codeconstruct.com.au, vkoul@kernel.org, kishon@kernel.org,
 linus.walleij@linaro.org, p.zabel@pengutronix.de,
 linux-aspeed@lists.ozlabs.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 openbmc@lists.ozlabs.org, linux-gpio@vger.kernel.org
Cc: elbadrym@google.com, romlem@google.com, anhphan@google.com,
 wak@google.com, yuxiaozhang@google.com, BMC-SW@aspeedtech.com
References: <20250613033001.3153637-1-jacky_chou@aspeedtech.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20250613033001.3153637-1-jacky_chou@aspeedtech.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13/06/2025 05:29, Jacky Chou wrote:
> This patch series adds support for the ASPEED PCIe Root Complex,
> including device tree bindings, pinctrl support, and the PCIe host controller
> driver. The patches introduce the necessary device tree nodes, pinmux groups,
> and driver implementation to enable PCIe functionality on ASPEED platforms.
> 
> Summary of changes:
> - Add device tree binding documents for ASPEED PCIe PHY, PCIe Config, and PCIe RC
> - Update MAINTAINERS for new bindings and driver
> - Add PCIe RC node and PERST control pin to aspeed-g6 device tree
> - Add PCIe RC PERST pin group to aspeed-g6 pinctrl
> - Implement ASPEED PCIe Root Complex host controller driver
> 
> This series has been tested on AST2600/AST2700 platforms and enables PCIe device
> enumeration and operation.
> 
> Feedback and review are welcome.

So it seems all PCIe RC code is bundled in a single driver and there's no
PCIe PHY driver code, is there a reason for that ? If yes I think it should
be described in the cover letter.

Thanks,
Neil

> 
> Jacky Chou (7):
>    dt-bindings: phy: Add document for ASPEED PCIe PHY
>    dt-bindings: pci: Add document for ASPEED PCIe Config
>    dt-bindings: pci: Add document for ASPEED PCIe RC
>    ARM: dts: aspeed-g6: Add AST2600 PCIe RC PERST ctrl pin
>    ARM: dts: aspeed-g6: Add PCIe RC node
>    pinctrl: aspeed-g6: Add PCIe RC PERST pin group
>    pci: aspeed: Add ASPEED PCIe host controller driver
> 
>   .../bindings/pci/aspeed-pcie-cfg.yaml         |   41 +
>   .../devicetree/bindings/pci/aspeed-pcie.yaml  |  159 +++
>   .../bindings/phy/aspeed-pcie-phy.yaml         |   38 +
>   MAINTAINERS                                   |   10 +
>   .../boot/dts/aspeed/aspeed-g6-pinctrl.dtsi    |    5 +
>   arch/arm/boot/dts/aspeed/aspeed-g6.dtsi       |   53 +
>   drivers/pci/controller/Kconfig                |   13 +
>   drivers/pci/controller/Makefile               |    1 +
>   drivers/pci/controller/pcie-aspeed.c          | 1039 +++++++++++++++++
>   drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c    |   12 +-
>   10 files changed, 1370 insertions(+), 1 deletion(-)
>   create mode 100644 Documentation/devicetree/bindings/pci/aspeed-pcie-cfg.yaml
>   create mode 100644 Documentation/devicetree/bindings/pci/aspeed-pcie.yaml
>   create mode 100644 Documentation/devicetree/bindings/phy/aspeed-pcie-phy.yaml
>   create mode 100644 drivers/pci/controller/pcie-aspeed.c
> 


