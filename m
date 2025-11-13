Return-Path: <devicetree+bounces-238192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D4182C5890A
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 17:06:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D51474A733C
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 15:33:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32F112FC86C;
	Thu, 13 Nov 2025 15:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="GpdDsCqr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2EB62CCC0
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 15:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763047488; cv=none; b=gM1HpCbUTW/3hk5rMV+FLjKESQ/rLfbh8DhLXSGuUThYOEPjetcoaZ37NFsNPTite1rq8Y3vbbc5+w3OY1H6npCpZ6CfHBDmpnwGp2e4f2A2EI3WJz4LngvYdC0OeoSkWnGORMg7O7KLVhNBiquNLN9zZ1+pnk/jPbEpqC1ZHnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763047488; c=relaxed/simple;
	bh=a8Oh4ByEmIDtGdZ8h4OuLqjW5FkDttrFXTOx2NT4iss=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=vCJWb7le6393YYjYrONT9ZgiG2jzxnOGC19v3UzdP6eBZih60HhS9iA/rG/Y7h9P6DXqrFAuJaea4NROVLIsf6fXEwJHGdZ+v8v6hF9Qkg9NQGsIhkR1X6Rm8wmU4wmOY6d9V1xgRoyABZG3tJxuIbY1JDalFptuFJS+23CrYyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=GpdDsCqr; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4777a9aeedaso8357405e9.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 07:24:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1763047484; x=1763652284; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iB+JT+rAjTzk5qbj4tgjSnTjnda4G40CL0DtaEMW97s=;
        b=GpdDsCqrLIix28BI6t007HUPegFO3MBRZgB+SsxTYwALow5rm66zBh7t9qjBFivPWE
         9aejZSa4HfhABOr6MBT/H42UMdfZ+lXTQnVFGpLhbdaJ5Uu0o87PxRV6xE4HHyJdDRyr
         hZMlg2jqpoPlhE4vKjAeIumZrnEF+uShmuoRgQitPSYH3UfskwS8yLLUqn1WBrHwV6hp
         Jg52+FUe8trj5HkWCpWirpK17M1P2A/T0h5OtgIZaOdGx1WSuCevnkJu0vZMSgBnjU0Q
         w1sU4r2Hwzyk91khCOMvNt/KezqretHovC9HFa4DHXOffv3WQB2j5AcbCfbLxmloQy1n
         ENyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763047484; x=1763652284;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iB+JT+rAjTzk5qbj4tgjSnTjnda4G40CL0DtaEMW97s=;
        b=rUBLFdhlm6J8My//eM1NbRQuPwut14OyyWdTret18/L+0Bbtf1A0XxJT7n5UWr6N+B
         DFg2L1/Ej2Or+OfISFMsYyay9YFzv3yO8o3AZp7RvDshXutXinn8hjD1G0XKg4Ml9vV0
         63fg0uIT1WXIQhtKmFeGhIq80i6qNKKIX0DGDeQqg3K1VfL2LGs0iOeKAFXJqfzAl3KL
         rKnTZIyn4aZaI9wEoyhTDLsivsHPv2LN/6ykau2rq2YV2pmxBC3HUygqA/MLzLCnCRIq
         ATNeQ4+w5MxNcYedfipF+bovpHYZK46FLlUfi5srnRZ7AXJUNaPXSlkuagy3NOtkJfCj
         pfvw==
X-Forwarded-Encrypted: i=1; AJvYcCVOIboQaKEA7v4WweAoJgV141Sij46UXYJ+ChOjO/dmO4MqJ5EeaWVfYAhGDsnVbbgNPBuCtWHIRLMp@vger.kernel.org
X-Gm-Message-State: AOJu0YyesT2nz9AU9yu0kWxl6bqPRJfMwg7Z+2Y0kP+42c90V1O2GDFq
	DZ/2MhPr9+MP/eC9ldQuuGSpPtwIxhJXxkTELCzIRou3Hp4B6t86HIe8ls7ozCfGbUY=
X-Gm-Gg: ASbGncvz2PABD3flXnIdrhaq7cUuhDKyfR2gKrRwrfP2hITS/iMLTD19OUB962450wj
	J+WRzSh7bFL25G8vQtIeuIRDlNyxbARxAWlbyGpQ+Z8FUYQCR+uxxFMEidoRNQ+cpF9HOOH7fVr
	Zshh4vCboSSNnDIZ9qOb+VEOzfyjIuPrAbCtwhCde4ha747akP4TMwEyzuvhVvxnJBuPQePgbDo
	DFkfjKa9f0jTek5wz2H4ZlBkHAZx7a7e0OsMipaEh20G1njwikKZLCuO5aKHdq4cIS2J52i+6y0
	qnajKlaRAcLtfRqk6gOEaXrx+ypzVdxtSz8kNpOVT+k4/n0cTeea9BqOMxud+RBTIcbnjBs5hfN
	Bp8uqpSR+spMbbl8tIvmpF4GJ2C12ixJP5ltqucEOkeosmCiKvYIvMH1feKPX1HZ5u1xpoGQ9GL
	QRoQu1JUDH
X-Google-Smtp-Source: AGHT+IE4kSPN0NcyZr5YwaFByd3zY3e87tD0XqKRmf32VutndhscEu4TOszysUiok7ZPHwh1vTJRjw==
X-Received: by 2002:a05:600c:3546:b0:475:dae5:d972 with SMTP id 5b1f17b1804b1-47787095cc8mr69292105e9.23.1763047483038;
        Thu, 13 Nov 2025 07:24:43 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e97a87sm4923542f8f.20.2025.11.13.07.24.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 07:24:42 -0800 (PST)
Message-ID: <c8f7f55e-4229-49b6-8627-2a177ca85d5f@tuxon.dev>
Date: Thu, 13 Nov 2025 17:24:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/6] PCI: rzg3s-host: Add Renesas RZ/G3S SoC host
 driver
To: lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org,
 robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org,
 conor+dt@kernel.org, geert+renesas@glider.be, magnus.damm@gmail.com,
 p.zabel@pengutronix.de
Cc: linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20251029133653.2437024-1-claudiu.beznea.uj@bp.renesas.com>
 <20251029133653.2437024-3-claudiu.beznea.uj@bp.renesas.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20251029133653.2437024-3-claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 10/29/25 15:36, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> The Renesas RZ/G3S features a PCIe IP that complies with the PCI Express
> Base Specification 4.0 and supports speeds of up to 5 GT/s. It functions
> only as a root complex, with a single-lane (x1) configuration. The
> controller includes Type 1 configuration registers, as well as IP
> specific registers (called AXI registers) required for various adjustments.
> 
> Hardware manual can be downloaded from the address in the "Link" section.
> The following steps should be followed to access the manual:
> 1/ Click the "User Manual" button
> 2/ Click "Confirm"; this will start downloading an archive
> 3/ Open the downloaded archive
> 4/ Navigate to r01uh1014ej*-rzg3s-users-manual-hardware -> Deliverables
> 5/ Open the file r01uh1014ej*-rzg3s.pdf
> 
> Link: https://www.renesas.com/en/products/rz-g3s?
> queryID=695cc067c2d89e3f271d43656ede4d12
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
> 
> Changes in v6:
> - split the help message from Kconfig to 80 chars
> - dropped unused defines
> - dropped dot at the end of short comments
> - re-arranged the members of rzg3s_pcie_child_prepare_bus(),
>   rzg3s_pcie_child_read_conf(), rzg3s_pcie_child_write_conf(),
>   rzg3s_pcie_root_map_bus() to save few lines
> - in rzg3s_pcie_irq_compose_msi_msg() drop drop_mask and use
>   RZG3S_PCI_MSIRCVWADRL_MASK
> - merge INTx and MSI configuration in rzg3s_pcie_init_irqdomain(); with it,
>   rzg3s_pcie_host_setup() takes now only 2 function pointer for IRQ domain
>   config and teardown; also, updated the names of other functions to match
>   the most used pattern accross other drivers:
> -- rzg3s_pcie_msi_enable() -> rzg3s_pcie_init_msi()
> -- rzg3s_pcie_host_parse_root_port() -> rzg3s_pcie_host_parse_port()
> -- rzg3s_pcie_host_init_root_port() -> rzg3s_pcie_host_init_port() 
> - used dev_fwnode() instead of of_fwnode_handle()
> - used fsleep() instead of usleep_range()
> - pass "size - 1" to rzg3s_pcie_set_inbound_window() only and keep the
>   undecremented value in the calling function
> - added a comment on top of request_irq() to explain why devm_ variant
>   was not used

Could you please let me know if there's anything I should be doing for this
version?

Thank you,
Claudiu

