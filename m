Return-Path: <devicetree+bounces-251917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 78144CF84C4
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 13:23:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E49663003840
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 12:23:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66FF2308F30;
	Tue,  6 Jan 2026 12:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V5OGs6yV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFA6030FC2A
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 12:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767702197; cv=none; b=ERK4YFKVdw89jtDKp9+h4UusNjmGBgLi7dqIAwUM2G0cMBOo5DUTdMi/sUgv/Rm2amuQS2FwV7Gqkn88LLz6xQ6rsaU2YaRDXOVK67hmDXCdXbJJBeoPfZI0ySb7CXsRQtNviNT/k215N5dL/ltqFtBDSKrQ2O5fkNRrZFD4A4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767702197; c=relaxed/simple;
	bh=qmoYrGwK869+L4ydLFPMCseSgI3lR8zdeZQWySxan4k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CkqdRbLMhryzZfFm9aR7klQsNgjBjdaH+oIZueB2yu9RiqLtI/ehCzZoWgX+R9az4IaJxSx0cAMyeR5+SkxUtMjClD0lNQwIavGLJW8KG9nTxJlVKuDVye4yIXwiGreLBLj8gbItDJenQlVjTpyeQAqSHgZqSBcPP/LdZqXgQNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V5OGs6yV; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-bd1b0e2c1eeso698642a12.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 04:23:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767702195; x=1768306995; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kq3C2EX5go7tonSsueKHleKcgx8MdpUmDsXaRxdCcZY=;
        b=V5OGs6yVrP33V7fmYDX4bwBfnD6TtOKbxVp116CXxndkeoFCKavvcRzKaGyZohJWQ1
         qwiU+f6aZSvDgpH58bC8f+HrliRsujwGU55lpaWeKD5zykNwtvfx4WWZB4BwHaWPavNc
         texVOro3+NBRImvYd5Ss08fzTbF7dsP0B5Sax5TMxI+tr0KueLr9FTtrTO7o3PNwJFzc
         i/45lN9hFmViL9HebLqooxXGUdDEkrn24SE6ZT1cdH4Oa76AMP8ATy+fM2ro7IIRw1tI
         7ogntURAlOjKveJLjXDbDKhBelIKWEQdOHGDByUHNK49pkDlZrGzbuavTrMZmcJ/lj+N
         yknQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767702195; x=1768306995;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kq3C2EX5go7tonSsueKHleKcgx8MdpUmDsXaRxdCcZY=;
        b=uHnvhZRK35sJFAhheCRE5HlP82DJE5ND8jXDd1gn0hcnmD8tccHywdvsDjBFrq74ej
         wqzLTYtcv/0+hQEEXAH7jXSpXzmqUHtWzhy05h5muvSkBaTyBgJ+CuPuw8Sjl1ZJ5r1V
         u7cCmncrngY2Qxfwi38vEWF6fI71vCN8cQsqhLQbPJCb7ZqnGhqX060m4CvoqSXO5W6f
         9TmCX3mnUzeiIgqWh2FZ0v1lEehJDD/MFwGrFq1Mf6SMw0Rq1l79Zk0vMVeoBtJ20ywk
         9KkoVqSRpUfDu0MfPHQ0GGJZqelWvrXTWufGiUVEJDhZs9tu7oH2CGqehHSScV9Dwwqb
         R2CA==
X-Forwarded-Encrypted: i=1; AJvYcCV1hLYkBjsAgAdq4qMhEpqnAx1+Z/nlxMNljse2jl7iTk89h5tz96QsTFgzXSWPXya/+hmg/FnwkkWh@vger.kernel.org
X-Gm-Message-State: AOJu0YxtbJmrwI68xZgtgqKmOa2jx3sRsq+mNMM0Oxr5tDJbUV71Kb0w
	ZutUJjk4BJ4fkYw83ZheDik5crgXWsBSWWZ3CFL67muGS/v0Hrt27Tz0
X-Gm-Gg: AY/fxX6eAkzd75/4xWcJ1eCf5qeBWoaLIVkrl9uBPXoBfQStYnGDKQYz/LBZCsXl6ty
	cms8j9HURDNo5fvKYPQWISs1iT9WwbEdDd8/MRtFZCBXJHz19ST4Y9QNQszfJASbBymLlKLCk7E
	YKCd9TSf/mwmurJMTRbOPsvUcsYlhwVwfiVDZdHXGk1hH9huHe0CPghRKEFWzutd3UI8unyYUfy
	BO+yMNm07K1FbWshX3WTx17BlSKntkc9IVtcOyxlEKP5i3VIf8F+mpKy6Hvo2B9CBodCQ4souE0
	jsxsXeX++jdB3vCoKrHOOZpkDdYEdv81i12t8NWpcmm6MO7QYZAyuldDCulZ8NNqNRQB4rovIfJ
	FtRXXXUE1gTBncP4NiyllP2Vq8YOQ2hjlIX9aVqacGjhD91NIWE/N8Te6/jXDOON0No8zR17ZTt
	hOrWAHCNrKY9E6XkOZcD2htG7OgNWd5ukR
X-Google-Smtp-Source: AGHT+IHCXWckuv1AxdRWanWDxivNrmKr0XWM9dXpBTiU3chSVncH2Joe2Ulg4UuoyBz40JzMDf/qag==
X-Received: by 2002:a05:6a20:3d81:b0:2e5:655c:7f93 with SMTP id adf61e73a8af0-38982336877mr2593001637.33.1767702194775;
        Tue, 06 Jan 2026 04:23:14 -0800 (PST)
Received: from [192.168.1.6] ([27.7.214.154])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cc95d5c66sm2299581a12.24.2026.01.06.04.23.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 04:23:14 -0800 (PST)
Message-ID: <35bc3e4e-5fc2-4578-85d8-33d20313cc86@gmail.com>
Date: Tue, 6 Jan 2026 17:53:09 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: phy: ti,control-phy-otghs: convert to DT
 schema
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260103-ti-phy-v1-1-8c3f5e2cbd63@gmail.com>
 <20260105220859.GA3498531-robh@kernel.org>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20260105220859.GA3498531-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 06-01-2026 03:38, Rob Herring wrote:
> On Sat, Jan 03, 2026 at 11:06:10AM +0000, Charan Pedumuru wrote:
>> Convert TI OMAP Control PHY and PIPE3 PHY binding to YAML format.
>> Changes during conversion:
>> - Define a new pattern 'pciephy'and 'control-phy' to match nodes
>>   defined in DT.
>>
>> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
>> ---
>>  .../bindings/phy/ti,control-phy-otghs.yaml         | 206 +++++++++++++++++++++
>>  Documentation/devicetree/bindings/phy/ti-phy.txt   |  98 ----------
>>  2 files changed, 206 insertions(+), 98 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
>> new file mode 100644
>> index 000000000000..830be2af5fb6
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
>> @@ -0,0 +1,206 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/ti,control-phy-otghs.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: TI PHYs for TI Platforms (OMAP Control PHY and PIPE3 PHY)
>> +
>> +maintainers:
>> +  - Vinod Koul <vkoul@kernel.org>
> 
> No, this should be a TI person or someone with the h/w.

Okay, I will look into it.

> 
>> +
>> +description:
>> +  This device tree binding describes the TI PHYs used in TI platforms.
>> +  Two types of PHYs are supported.
>> +  1. OMAP Control PHY - Simple control PHYs for power control
>> +  2. PIPE3 PHY - High-speed PIPE3 PHYs for USB3, SATA, PCIe
>> +
>> +properties:
>> +  $nodename:
>> +    pattern: "^(pciephy|control-phy|usb3phy|phy)(@[0-9a-fA-F]+)?$"
> 
> Only phy, pcie-phy, or usb3-phy are valid node names.

Yeah, but control-phy was defined in DTS, so included it here.

> 
> A-F is not valid for unit-addresses either.

Sure, I will remove it.

> 
>> +
>> +  compatible:
>> +    oneOf:
>> +      - description: OMAP Control PHY compatibles
>> +        items:
>> +          enum:
>> +            - ti,control-phy-otghs
>> +            - ti,control-phy-usb2
>> +            - ti,control-phy-pipe3
>> +            - ti,control-phy-pcie
>> +            - ti,control-phy-usb2-dra7
>> +            - ti,control-phy-usb2-am437
>> +      - description: PIPE3 high-speed PHY compatibles
>> +        items:
>> +          enum:
>> +            - ti,phy-usb3
>> +            - ti,phy-pipe3-sata
>> +            - ti,phy-pipe3-pcie
>> +            - ti,omap-usb3
> 
> IMO, these 2 bindings are completely unrelated and should be split to 2 
> schema files.

Okay, I will create 2 bindings in 2 separate patches then.

> 
>> +
>> +  reg:
>> +    minItems: 1
>> +    maxItems: 4
>> +
>> +  reg-names:
>> +    oneOf:
>> +      - description: OMAP Control PHY
>> +        items:
>> +          enum: [otghs_control, power, pcie_pcs, control_sma]
>> +      - description: PIPE3 high-speed PHY
>> +        items:
>> +          enum: [phy_rx, phy_tx, pll_ctrl]
> 
> Here's one example why.
> 
>> +
>> +  "#phy-cells":
>> +    const: 0
>> +
>> +  clocks:
>> +    minItems: 2
>> +    maxItems: 7
>> +
>> +  clock-names:
>> +    minItems: 2
>> +    maxItems: 7
>> +    items:
>> +      enum: [wkupclk, sysclk, refclk, dpll_ref,
>> +             dpll_ref_m2, phy-div, div-clk]
>> +
>> +# Optional Properties
>> +  id:
>> +    description:
>> +      Instance ID for multiple instances of same PHY type.
>> +      Used for multi-lane PCIe PHYs.
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    default: 1
> 
> There aren't any users of this that I see. Drop it (and note that in the 
> commit msg).

Sure.

> 
>> +
>> +  syscon-phy-power:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      Phandle/offset pair to system control module register for PHY
>> +      power on/off.
>> +
>> +  syscon-pllreset:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      Phandle/offset pair to CTRL_CORE_SMA_SW_0 register containing
>> +      SATA_PLL_SOFT_RESET bit (SATA PHY only).
>> +
>> +  syscon-pcs:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      Phandle/offset pair to system control module for writing PCS delay value.
>> +
>> +  ctrl-module:
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +    description:
>> +      Phandle of control module for PHY power on.
>> +    deprecated: true
> 
> I believe all these phandle props only apply to the PIPE3 binding.

Yes, I will add them to PIPE3 binding seperately.

> 
> Rob

-- 
Best Regards,
Charan.


