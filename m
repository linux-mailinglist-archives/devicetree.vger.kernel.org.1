Return-Path: <devicetree+bounces-128965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 667949EA223
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 23:53:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3F1E528181B
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 22:53:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2481C19D075;
	Mon,  9 Dec 2024 22:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="ABs8xeTj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D3B194A54
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 22:53:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733784784; cv=none; b=eCH096yt89wtF7IVcSbcreduk3zgVP1fvoxbh2Kd7NPsemA8AnwzU9PgzUiKExwM9cJl89ICjBQIYeli+7u2TTMAUeEC62fJKaXE9lV9lgBerX1DUphhwH4mtnTksTyR8WMml2tejav34Ad+Lw35O/aRe5b9OXdd050QUKsByuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733784784; c=relaxed/simple;
	bh=0Cd5t6AbuSumjOV8U1Mf/ckYNfEYdQIkaHYYi6lwYh4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZQEPAllknFHpGdl7kOmlSukMOwWrNZNkIupXpuZ8QZZCdkrCJfXHxCMPSIhuVFLZPOMEmIAPOCe+P5jmm/O56chlsFTPdhMFdEJWCY4/khEkRW19eVr/60iNyEYlTUsUMEXXfJTaWBR5gTP/rNZtEDjZRlUd708l4+WUvCOo1C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=ABs8xeTj; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-725f4025e25so1032705b3a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 14:53:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1733784782; x=1734389582; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=zc1tZla7GT2zk88my1I8M5VJv9K00rL3kFfx9cJnLRs=;
        b=ABs8xeTjm5dlA1VPppDz3H2ArW418iXfdxgwJWTOgOlJVWeg1bkDBaf+oVh1hc7SJt
         nj7DiL/M3M3F+BSniJs7IEIt+Axvicrz/rABin+73+oLohjsCl7ak4Idzo9XG4ndED0y
         MQ3YGlzbL+urrgdLooF6zhO9kaEWoJTl/0tfE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733784782; x=1734389582;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zc1tZla7GT2zk88my1I8M5VJv9K00rL3kFfx9cJnLRs=;
        b=j/NfFRqAHdCxczifR0dtyN5JtvQee9hg/bmdzudnMZgN+rfWcHiM583Thk3QsHBD8v
         ZNg9UujeQChgIhQuajp0no+oW03euWNTJKE0AJe3W+82BcMrKtm6P30qFYPGfAp6soyU
         6VndtEBL9SjbmR/RSaZ04G+YQaGZjqDM0DX0A+QlcE/gV9RZVNMoGY96ZO1fRKO28nkJ
         O7EjeCd5+YBCm30999WKY/hThIbJEfx5bLcuT3UxYMmABc/uZFBTNOB3KRhgFVEZj79h
         TF5dfHV/V/kiFfUZpNIMV3wFrb6GgDMqxpBKsJPXG3pVI2lMGC7rIyAI7CkROLgemXTR
         hung==
X-Forwarded-Encrypted: i=1; AJvYcCXl867w2Qru+TwRTd45lNObwmoYsl2sV9oS8gOcVTvBh/Z5Jlh83AdxK7GHbTyFWqAbAtYPpAzpzDzt@vger.kernel.org
X-Gm-Message-State: AOJu0YxtQS92z+c2NLF9AiSOb2bBW6V5cxsj7qJ+GPh0m9BvOxKziw+7
	J5e7S5b70NcAPl+Roe71M5vWVm+keLT3uqUXWwXZIWZ24YXmtIeRiEIp9LnnFw==
X-Gm-Gg: ASbGncuobJGugP/uRfW0ZCDCfHtqJAfowtWuqAlZeKyTm+C8WWcix0SUUP/zAGlNCEF
	IpiXbLFY5nqgDVsd2QJwjVMJjTHFSlTSuZAEXVYVSMmLA62u34/iJDjceIYcMcbxAwTiwaAIXcf
	QCyfSRQUiNznToQ4cfQJPIeOq2pWXJFq1M1N31mc5YNgMLnpjZN4T99ToBuv5mVwy5sInmsw25A
	ZN4WRIqKln/yhce7GSqcueXjjoL4D7wfmldcABq9Jtid7XNDqbdsid3oBQToMU9rxA1s7y8mK9h
	rfFsfB/aydwbx7k=
X-Google-Smtp-Source: AGHT+IGe4kkZFYNtM/Cux6Bf8yb3vZ5Nyl9682Gb3RCRmdywch6ChfmAS6cqWKy9Aj9Txs4lJzjKWg==
X-Received: by 2002:a05:6a00:3d43:b0:725:e4b9:a600 with SMTP id d2e1a72fcca58-725e4b9a8a5mr9522779b3a.16.1733784781695;
        Mon, 09 Dec 2024 14:53:01 -0800 (PST)
Received: from [10.28.17.173] ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-725d911615asm4518875b3a.147.2024.12.09.14.52.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2024 14:53:01 -0800 (PST)
Message-ID: <4bbdf9ed-f429-411b-8f5f-e51857f0f9d0@broadcom.com>
Date: Mon, 9 Dec 2024 17:52:56 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH v4 08/10] PCI: brcmstb: Adjust PHY PLL setup to use a
 54MHz input refclk
To: Stanimir Varbanov <svarbanov@suse.de>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>,
 Jim Quinlan <jim2101024@gmail.com>,
 Nicolas Saenz Julienne <nsaenz@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>, kw@linux.com,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Andrea della Porta <andrea.porta@suse.com>,
 Phil Elwell <phil@raspberrypi.com>, Jonathan Bell
 <jonathan@raspberrypi.com>, "Jim(248)Quinlan" <james.quinlan@broadcom.com>
References: <20241025124515.14066-1-svarbanov@suse.de>
 <20241025124515.14066-9-svarbanov@suse.de>
Content-Language: en-US
From: James Quinlan <james.quinlan@broadcom.com>
Autocrypt: addr=james.quinlan@broadcom.com; keydata=
 xsBNBFa+BXgBCADrHC4AsC/G3fOZKB754tCYPhOHR3G/vtDmc1O2ugnIIR3uRjzNNRFLUaC+
 BrnULBNhYfCKjH8f1TM1wCtNf6ag0bkd1Vj+IbI+f4ri9hMk/y2vDlHeC7dbOtTEa6on6Bxn
 r88ZH68lt66LSWEciIn+HMFRFKieXwYGqWyc4reakWanRvlAgB8R5K02uk9O9fZKL7uFyolD
 7WR4/qeHTMUjyLJQBZJyaMj++VjHfyXj3DNQjFyW1cjIxiLZOk9JkMyeWOZ+axP/Aoe6UvWl
 Pg7UpxkAwCNHigmqMrZDft6e5ORXdRT163en07xDbzeMr/+DQyvTgpYst2CANb1y4lCFABEB
 AAHNKEppbSBRdWlubGFuIDxqYW1lcy5xdWlubGFuQGJyb2FkY29tLmNvbT7CwO8EEAEIAJkF
 AmNo/6MgFAAAAAAAFgABa2V5LXVzYWdlLW1hc2tAcGdwLmNvbYwwFIAAAAAAIAAHcHJlZmVy
 cmVkLWVtYWlsLWVuY29kaW5nQHBncC5jb21wZ3BtaW1lCAsJCAcDAgEKAhkBBReAAAAAGRhs
 ZGFwOi8va2V5cy5icm9hZGNvbS5uZXQFGwMAAAADFgIBBR4BAAAABBUICQoACgkQ3G9aYyHP
 Y/47xgf/TV+WKO0Hv3z+FgSEtOihmwyPPMispJbgJ50QH8O2dymaURX+v0jiCjPyQ273E4yn
 w5Z9x8fUMJtmzIrBgsxdvnhcnBbXUXZ7SZLL81CkiOl/dzEoKJOp60A7H+lR1Ce0ysT+tzng
 qkezi06YBhzD094bRUZ7pYZIgdk6lG+sMsbTNztg1OJKs54WJHtcFFV5WAUUNUb6WoaKOowk
 dVtWK/Dyw0ivka9TE//PdB1lLDGsC7fzbCevvptGGlNM/cSAbC258qnPu7XAii56yXH/+WrQ
 gL6WzcRtPnAlaAOz0jSqqOfNStoVCchTRFSe0an8bBm5Q/OVyiTZtII0GXq11c7ATQRWvgV4
 AQgA7rnljIJvW5f5Zl6JN/zJn5qBAa9PPf27InGeQTRiL7SsNvi+yx1YZJL8leHw67IUyd4g
 7XXIQ7Qog83TM05dzIjqV5JJ2vOnCGZDCu39UVcF45oCmyB0F5tRlWdQ3/JtSdVY55zhOdNe
 6yr0qHVrgDI64J5M3n2xbQcyWS5/vhFCRgBNTDsohqn/4LzHOxRX8v9LUgSIEISKxphvKGP5
 9aSst67cMTRuode3j1p+VTG4vPyN5xws2Wyv8pJMDmn4xy1M4Up48jCJRNCxswxnG9Yr2Wwz
 p77WvLx0yfMYo/ednfpBAAaNPqzQyTnUKUw0mUGHph9+tYjzKMx/UnJpzQARAQABwsGBBBgB
 AgErBQJWvgV5BRsMAAAAwF0gBBkBCAAGBQJWvgV4AAoJEOa8+mKcd3+LLC4IAKIxCqH1yUnf
 +ta4Wy+aZchAwVTWBPPSL1xJoVgFnIW1rt0TkITbqSPgGAayEjUvUv5eSjWrWwq4rbqDfSBN
 2VfAomYgiCI99N/d6M97eBe3e4sAugZ1XDk1TatetRusWUFxLrmzPhkq2SMMoPZXqUFTBXf0
 uHtLHZ2L0yE40zLILOrApkuaS15RVvxKmruqzsJk60K/LJaPdy1e4fPGyO2bHekT9m1UQw9g
 sN9w4mhm6hTeLkKDeNp/Gok5FajlEr5NR8w+yGHPtPdM6kzKgVvv1wjrbPbTbdbF1qmTmWJX
 tl3C+9ah7aDYRbvFIcRFxm86G5E26ws4bYrNj7c9B34ACgkQ3G9aYyHPY/7g8QgAn9yOx90V
 zuD0cEyfU69NPGoGs8QNw/V+W0S/nvxaDKZEA/jCqDk3vbb9CRMmuyd1s8eSttHD4RrnUros
 OT7+L6/4EnYGuE0Dr6N9aOIIajbtKN7nqWI3vNg5+O4qO5eb/n+pa2Zg4260l34p6d1T1EWy
 PqNP1eFNUMF2Tozk4haiOvnOOSw/U6QY8zIklF1N/NomnlmD5z063WrOnmonCJ+j9YDaucWm
 XFBxUJewmGLGnXHlR+lvHUjHLIRxNzHgpJDocGrwwZ+FDaUJQTTayQ9ZgzRLd+/9+XRtFGF7
 HANaeMFDm07Hev5eqDLLgTADdb85prURmV59Rrgg8FgBWw==
In-Reply-To: <20241025124515.14066-9-svarbanov@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/25/24 08:45, Stanimir Varbanov wrote:
> The default input reference clock for the PHY PLL is 100Mhz, except for
> some devices where it is 54Mhz like bcm2712C1 and bcm2712D0.
>
> To implement this adjustments introduce a new .post_setup op in
> pcie_cfg_data and call it at the end of brcm_pcie_setup function.
>
> The bcm2712 .post_setup callback implements the required MDIO writes that
> switch the PLL refclk and also change PHY PM clock period.
>
> Without this RPi5 PCIex1 is unable to enumerate endpoint devices on
> the expansion connector.
>
> Signed-off-by: Stanimir Varbanov <svarbanov@suse.de>
> ---
> v3 -> v4:
>   - Improved patch description (Florian)
>
>   drivers/pci/controller/pcie-brcmstb.c | 42 +++++++++++++++++++++++++++
>   1 file changed, 42 insertions(+)
>
> diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
> index d970a76aa9ef..2571dcc14560 100644
> --- a/drivers/pci/controller/pcie-brcmstb.c
> +++ b/drivers/pci/controller/pcie-brcmstb.c
> @@ -55,6 +55,10 @@
>   #define PCIE_RC_DL_MDIO_WR_DATA				0x1104
>   #define PCIE_RC_DL_MDIO_RD_DATA				0x1108
>   
> +#define PCIE_RC_PL_PHY_CTL_15				0x184c
> +#define  PCIE_RC_PL_PHY_CTL_15_DIS_PLL_PD_MASK		0x400000
> +#define  PCIE_RC_PL_PHY_CTL_15_PM_CLK_PERIOD_MASK	0xff
> +
>   #define PCIE_MISC_MISC_CTRL				0x4008
>   #define  PCIE_MISC_MISC_CTRL_PCIE_RCB_64B_MODE_MASK	0x80
>   #define  PCIE_MISC_MISC_CTRL_PCIE_RCB_MPS_MODE_MASK	0x400
> @@ -251,6 +255,7 @@ struct pcie_cfg_data {
>   	u8 num_inbound_wins;
>   	int (*perst_set)(struct brcm_pcie *pcie, u32 val);
>   	int (*bridge_sw_init_set)(struct brcm_pcie *pcie, u32 val);
> +	int (*post_setup)(struct brcm_pcie *pcie);
>   };
>   
>   struct subdev_regulators {
> @@ -826,6 +831,36 @@ static int brcm_pcie_perst_set_generic(struct brcm_pcie *pcie, u32 val)
>   	return 0;
>   }
>   
> +static int brcm_pcie_post_setup_bcm2712(struct brcm_pcie *pcie)
> +{
> +	const u16 data[] = { 0x50b9, 0xbda1, 0x0094, 0x97b4, 0x5030, 0x5030, 0x0007 };
> +	const u8 regs[] = { 0x16, 0x17, 0x18, 0x19, 0x1b, 0x1c, 0x1e };
> +	int ret, i;
> +	u32 tmp;
> +
> +	/* Allow a 54MHz (xosc) refclk source */
> +	ret = brcm_pcie_mdio_write(pcie->base, MDIO_PORT0, SET_ADDR_OFFSET, 0x1600);
> +	if (ret < 0)
> +		return ret;
> +
> +	for (i = 0; i < ARRAY_SIZE(regs); i++) {
> +		ret = brcm_pcie_mdio_write(pcie->base, MDIO_PORT0, regs[i], data[i]);
> +		if (ret < 0)
> +			return ret;
> +	}
> +
> +	usleep_range(100, 200);
> +
> +	/* Fix for L1SS errata */
> +	tmp = readl(pcie->base + PCIE_RC_PL_PHY_CTL_15);
> +	tmp &= ~PCIE_RC_PL_PHY_CTL_15_PM_CLK_PERIOD_MASK;
> +	/* PM clock period is 18.52ns (round down) */
> +	tmp |= 0x12;
> +	writel(tmp, pcie->base + PCIE_RC_PL_PHY_CTL_15);

Hi Stan,

Can you please say more about where this errata came from?  I asked the 
7712 PCIe HW folks and they said that there best guess was that it was a 
old workaround for a particular Broadcom Wifi endpoint.  Do you know its 
origin?

Thanks,

Jim Quinlan

Broadcom STB/CM

> +
> +	return 0;
> +}
> +
>   static void add_inbound_win(struct inbound_win *b, u8 *count, u64 size,
>   			    u64 cpu_addr, u64 pci_offset)
>   {
> @@ -1189,6 +1224,12 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
>   		PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1_ENDIAN_MODE_BAR2_MASK);
>   	writel(tmp, base + PCIE_RC_CFG_VENDOR_VENDOR_SPECIFIC_REG1);
>   
> +	if (pcie->cfg->post_setup) {
> +		ret = pcie->cfg->post_setup(pcie);
> +		if (ret < 0)
> +			return ret;
> +	}
> +
>   	return 0;
>   }
>   
> @@ -1761,6 +1802,7 @@ static const struct pcie_cfg_data bcm2712_cfg = {
>   	.soc_base	= BCM7712,
>   	.perst_set	= brcm_pcie_perst_set_7278,
>   	.bridge_sw_init_set = brcm_pcie_bridge_sw_init_set_generic,
> +	.post_setup	= brcm_pcie_post_setup_bcm2712,
>   	.quirks		= CFG_QUIRK_AVOID_BRIDGE_SHUTDOWN,
>   	.num_inbound_wins = 10,
>   };



