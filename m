Return-Path: <devicetree+bounces-277219-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CEsFvalummaaAIAu9opvQ
	(envelope-from <devicetree+bounces-277219-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:17:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C107E2BC0D9
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:17:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A9F01301CC7A
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:17:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9359D3D7D80;
	Wed, 18 Mar 2026 13:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VebEEn84"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A6F3D75B0
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 13:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773839859; cv=none; b=O/H1JoW73HoPbtfHvZ0ODh3kI7iTSMvh0SoTk+lV2/Ij2Xl4sIQ1cnUv6jc7gD4E4fUei6Mn10aCvSqgCASxS1pUGdS4oEa2UZcd3/3Vh06Py+WnLzE7x44lLtuHgzvtPs9CGXHaiJWZY85LVO6jOGg/9EPhq0B7Z0EV3ae7HRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773839859; c=relaxed/simple;
	bh=34vfCXW8oRGGcaBK9jaqcMWl8InMuT5iFBjmXmD8BI4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dz934kXycPMmP0oh7iF3M785PrvMIp0bcqi0BHCEF3yf7SySFFAgQ9LW1EeZb9toc+H4mpmKB8kJ8BE7DP0K+9EnTJWyMAkd8c1EGAPpXasxjmEUQFJn+9OI52SLHa0Bs6Q4XGMyT/GuY/OoLoItKsPo18J5Ml1In0yaxHndUUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VebEEn84; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4852c9b4158so60978535e9.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 06:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773839856; x=1774444656; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lY+vBk+jrr/WsrbU3NBPrdruLfUU1yCebVSPO/aA9bU=;
        b=VebEEn84oYgbCGvkB8OC74hU3WZiCDsgK50wX9AhQnk4KdsoaA4CxCQhv7Ccb+Rgv0
         P01egR1+KMxW87xi4+OZBorX1sQFmf6BT0PjuVzzdXvM1WoAhyfVSw/WJvNLqddmvuJG
         RbTc8gGPfbiGyZd1F7i1oHSBSk+BQFORiZwWzPMKUIwEXT5XCnNOi31047dujwAdd0gR
         ZokS7beMVDjPH9BP7VYzJfFcFfzj8HRt5L4Bk5sOUsrQdnvPIE0VkY1gBotfB0KcseF3
         Eo6Ifc5m20nftWM1EwIoXVSglueowgFwrETWMOBRJ1mtcxjCjgVV5yqKZbxsLLzv/VGy
         a0vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773839856; x=1774444656;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lY+vBk+jrr/WsrbU3NBPrdruLfUU1yCebVSPO/aA9bU=;
        b=HmGjIIllqVg0jv1nYjmKNClw8XDkW9B8/ceGxseDB73WcY+9MlgI0H3EWWeKlntxyJ
         NjpnQPVXFH5dSUOrLVv0urUunrOkbiIChJydyGdbr6pXL6XMbWQ+KZAgU0TuSDi3jvWI
         CDzReAZN8WUY8GOAmepX+mtTpHc/qw2jeSzuyBgamdOHMwxt5awnRlC9IrfgJaGWB7la
         olg0pcK95OzYpJWOzKuooEMSPTzBTDgfMB/5IVOyZUU8w7Nc1naAr7pKubePsFBIannm
         4y6XTTxbtKKsIj/7DT6Mn4CzQBUArwdga6utJ1+BrrmpDGHDG/3oPrTXI/c3E7V/kD7k
         n7Fw==
X-Forwarded-Encrypted: i=1; AJvYcCXS/mdf3gYvIbgf3h0g2U6BQnezwNSTR7bOO0g2ngnF1Fu0Ng42VgiaOdJd3dGHMClvfP5X2RMFvIli@vger.kernel.org
X-Gm-Message-State: AOJu0YyoS/g96yYcRlGnlb3P67JdNXGp4jVexLrG7QRXfZE4KPcV1atG
	+hx5WX/uZxFGZrY3uteBI/AP1MeYU+sn2zxIotdiLbycM+fCNBsR6fqnJMFjrFYuEKc=
X-Gm-Gg: ATEYQzzLCjUVJVnPnB0guZOwXhs1S63I0RGUdCDidLtY8oAPYO4Qqi4jbF/TmBUe9LH
	E45/Um4cEf9ybiVgPzMqIfviRj5UiCOFr845B0vMvBKmuogbsiHbyvKn5hJVBpXL9B3YstBygCA
	z9K/HWQFKR0SHop4OpVNWHrXQ8NhfUBdTYOeVqO2yVvcj5NGvPl1Si2A3otCS6FBELY88HsNERy
	DV0+8q1O3mR36TVc7DbxyIQX6/4ZRE3daijcw5XjKAvfmmNeNC7nS+QM+bHbZX+7s9xj9RTxbeg
	UsHsIVLENE0/5ptEvfJsUwwU4UyAu/UXLfZ+i2NkUc4LKa+Yoih3ikdYt1WoYEB311c+/Cq3FTP
	E2aerRDJP1gT9eQI6dQ8rbEIrkj+WQLXbRdO6AyVYdZ3ErCkVu3sDOuBhLXAl5ZLW1bdTbN9Ccm
	49BUfss0+PAWuGvwT9orpNIy9q2R0emMYPGA==
X-Received: by 2002:a05:600c:1d0c:b0:485:3cf3:1010 with SMTP id 5b1f17b1804b1-486f442e5d6mr56422235e9.2.1773839856267;
        Wed, 18 Mar 2026 06:17:36 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.1.114])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4b9bb2esm18004555e9.20.2026.03.18.06.17.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 06:17:35 -0700 (PDT)
Message-ID: <80ddc2b4-d6f8-4e8d-a45e-69c05d100aa2@linaro.org>
Date: Wed, 18 Mar 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
 <3f11de22-b729-4d06-b6c8-18e649e1979c@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <3f11de22-b729-4d06-b6c8-18e649e1979c@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-277219-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: C107E2BC0D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 18/03/2026 10:15, Neil Armstrong wrote:
>> +    /*
>> +     * phy_configure_opts_mipi_dphy.lanes starts from zero to
>> +     * the maximum number of enabled lanes.
>> +     *
>> +     * TODO: add support for bitmask of enabled lanes and polarities
>> +     * of those lanes to the phy_configure_opts_mipi_dphy struct.
>> +     * For now take the polarities as zero and the position as fixed
>> +     * this is fine as no current upstream implementation maps 
>> otherwise.
>> +     */
> 
> This is wrong since you loose the lanes mapping defined in DT, which is 
> still in CAMSS
> but is a PHY property. The lanes layout is not a property of the CSI 
> controller,
> CSI controller only need to know the lanes count, and not the layout.

Lane layout is a PHY concern but, the PHY API gives us 
phy_configure_opts_mipi_dphy which should be extended to provide layout 
and polarity. This would then be of benefit to more than just qcom/camss.

Right now none of the CAMSS users for this driver depend on any other 
mapping and I propose a separate series to fix 
phy_configure_opts_mipi_dphy rather than introduce data-lanes to DPHY.

---
bod

