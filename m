Return-Path: <devicetree+bounces-251671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D1887CF5720
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 20:59:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 04076309EE27
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 19:58:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FA6F2D7DF2;
	Mon,  5 Jan 2026 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="hNKsoOtV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B92F629D29C
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 19:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767643114; cv=none; b=E1YPbbQrSjz7N96r9CxeSnUVepfpKrgy+ucr3PxmUSmJ8sqG5akPICaDqU89TaX5IMXhsDwQc1YdVdvuOuy+/pZgHu0HLvVs+sq/9lZ1lLgjG/sINt4wMSQFnlL2b+1bAQN98BseID1XOh/HeCLN8BGi79JBTzdV2RVCoStOFn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767643114; c=relaxed/simple;
	bh=M+mgHPLZQJfA6q4BXgM2dcEStPY5JylfnRcjT3LMCio=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WA7WgOPq1I7TDJdMZgWeLuT3eVHuGnhjCFm5bOLJWOmX/HJpwMWy7JVa+NyIeSBTEm9OntAkFJQYpydeIJVm25tN/nuiCpNhN8D6DgTKYOebVcslTo9eV7gK2qDEOCT/o41qRT2fwq1ZIb9ISiT218aiFtqfWxkt0a4nQiAooOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=hNKsoOtV; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7e1651ae0d5so286526b3a.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 11:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1767643112; x=1768247912; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F8DuddcYEOiefRlBzZKrtL15qZCqx9WVAFvprpXIUBQ=;
        b=hNKsoOtV2WQth0XJ1aFVqKGepQRtZY++pRh5LuGYdtlUCsaHASl0WsIS8y2Iassvfp
         VC7lKG8sMMwa5Cuis4KRaQEIZOiE/Dr6jLIitaa7NFp3hZR23g8wBPK3N8wjCNDpb77c
         r/muJ5PpcdAJr4NEqkl52eIUHJ29Qx4T5jzbIq1ZmBQrZLQLDTCB5FMHpq5oAETrWWgY
         fRSUwTVtTDl0mUeMw/92w6kR/1HQ6alLAA6KaIC6cC6LgQc1DJMQ/b/pZ3A6r0x6cz+C
         2xfeHy99HQxIYFfE4M9Uh5aA42jJeqAnXczEwHgGEer2afgktysxLP1kySOe7umad/o1
         ZekQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767643112; x=1768247912;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F8DuddcYEOiefRlBzZKrtL15qZCqx9WVAFvprpXIUBQ=;
        b=lLHRA0Tfkw3wfhnfu5V4vVsALdON2V8WqjAeRgdpL5kldf1F7Bh4cgLgIe9s/s381U
         Qy5JeQZuaNQJJApTXNp+POreyNlMsqPOO709Or6keFhL3CPby1qw6ZCICadsUhcFIth8
         IFGYYmtHpS1dP4ZdX9M5KaQlEeHFh5m3DmTKUEKrygiz3ZvJEwsxgOsCCqg5Rs3lbPxB
         nMvi9aUVNN7XBMKd7MVI4S0V8cowOxgfmxbmwX6lGyYmC2AfKS1+1HUKwo0PvrBHcO3J
         iWIfM8kNC943cP5AYFM5qVEx1rrY+U0cziSS9DJknRZCRxO3LGRTgPVC1yxgGSXzx+Xr
         aQ2Q==
X-Forwarded-Encrypted: i=1; AJvYcCVkX9pPFrWA3rgh0FAdT2guF8yX167sN+0uxr62zVHsLagI0aEj/wvIHzER94Z1AKGysjGLBYlaK70Z@vger.kernel.org
X-Gm-Message-State: AOJu0YzEtBXc6pTGfH6XM7gfXMKAMUwpbljKEqV2k6aMPOq1Kr1nKa82
	Nwa4h0TwRIoFbE8YEwm7+wih21IDMSKOPefYdibrPO+hfNL5/qiPSd+HBIfcVgI8VA==
X-Gm-Gg: AY/fxX5Ht+BzFatSbp/DX5cupLfUGIuJjGmSkVPJemGDW1m9ql4n8YLNxBNkVrzWJ5z
	mNVjOZxzQFOmdrRkW+3fxF1dANtz4iC0SCgRlFjNin/6Qd5QZdaOFMh2x3Z0OTo5ShtfeWb7+rO
	vhjHYTMip5KcD+pzZ8eEQM1FrxxW6Z6W+Ofbu+ZBzB/jZTbOs4KatCJajzfyr9Vsq/SJ1BQ50wT
	xJSI3Ulvq1dEwEtqvrQZxbPPnfkjx0TKSb5e39iJwmcy9MltUdQ452KJd7fRpdXWTMsdPQtvXD5
	rczRQo6nvX0DPzyUw+kB+QAcLEpLIcQ+ckfLgeXXnD3KhUe8hGaZCUcUPfnySzaxCboyPip34uC
	FIuRQzFnsO9lvKte49Hfj8xUVpdpCdPmfyH9ifEeC8BwZrSfKhhV4MhJVsq3KCKnovAD/W0Ljcn
	I6KvimIpBBxXW3fpUUpJZ3XSJ+pJlUTLAnLLVTpjR/H3T2ihuQSVycmGE2CDsRZUGZV86CswCM6
	5waPdOAsK/AabV2GQTLGWI4
X-Google-Smtp-Source: AGHT+IFYi37OgBvlreLAlI6opJMukcl64WhdUNqoIdTxzRCBTYpyF7jQRnopByzdWT0cS1RWXEtYww==
X-Received: by 2002:a05:7022:2215:b0:11b:c86b:386a with SMTP id a92af1059eb24-121f18a3909mr496909c88.5.1767643111325;
        Mon, 05 Jan 2026 11:58:31 -0800 (PST)
Received: from ?IPV6:2a00:79e0:2e7c:8:7c3d:6070:7e67:29c5? ([2a00:79e0:2e7c:8:7c3d:6070:7e67:29c5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121f12209efsm1739565c88.3.2026.01.05.11.58.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 11:58:30 -0800 (PST)
Message-ID: <f1f2a382-64d9-43dd-bed1-8b1ac9e53470@google.com>
Date: Mon, 5 Jan 2026 11:58:29 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] mfd: max77759: add register bitmasks and modify
 irq configs for charger
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 RD Babiera <rdbabiera@google.com>, Kyle Tso <kyletso@google.com>
References: <20251227-max77759-charger-v3-0-54e664f5ca92@google.com>
 <20251227-max77759-charger-v3-3-54e664f5ca92@google.com>
 <d2c50afe586956ef3a60f17eb77b20fc73fe8dc8.camel@linaro.org>
Content-Language: en-US
From: Amit Sunil Dhamne <amitsd@google.com>
In-Reply-To: <d2c50afe586956ef3a60f17eb77b20fc73fe8dc8.camel@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 1/5/26 8:45 AM, André Draszik wrote:
> On Sat, 2025-12-27 at 00:04 +0000, Amit Sunil Dhamne via B4 Relay wrote:
>> From: Amit Sunil Dhamne <amitsd@google.com>
>>
>> Add register bitmasks for charger function.
>> In addition split the charger IRQs further such that each bit represents
>> an IRQ downstream of charger regmap irq chip. In addition populate the
>> ack_base to offload irq ack to the regmap irq chip framework.
>>
>> Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
>> ---
>>   drivers/mfd/max77759.c       |  91 +++++++++++++++++--
>>   include/linux/mfd/max77759.h | 202 ++++++++++++++++++++++++++++++++++++-------
>>   2 files changed, 256 insertions(+), 37 deletions(-)
>>
>> [...]
>>   
>> diff --git a/include/linux/mfd/max77759.h b/include/linux/mfd/max77759.h
>> index c6face34e385..e674a519e782 100644
>> --- a/include/linux/mfd/max77759.h
>> +++ b/include/linux/mfd/max77759.h
>> @@ -59,35 +59,65 @@
>>   #define MAX77759_MAXQ_REG_AP_DATAIN0            0xb1
>>   #define MAX77759_MAXQ_REG_UIC_SWRST             0xe0
>>   
>> -#define MAX77759_CHGR_REG_CHG_INT               0xb0
>> -#define MAX77759_CHGR_REG_CHG_INT2              0xb1
>> -#define MAX77759_CHGR_REG_CHG_INT_MASK          0xb2
>> -#define MAX77759_CHGR_REG_CHG_INT2_MASK         0xb3
>> -#define MAX77759_CHGR_REG_CHG_INT_OK            0xb4
>> -#define MAX77759_CHGR_REG_CHG_DETAILS_00        0xb5
>> -#define MAX77759_CHGR_REG_CHG_DETAILS_01        0xb6
>> -#define MAX77759_CHGR_REG_CHG_DETAILS_02        0xb7
>> -#define MAX77759_CHGR_REG_CHG_DETAILS_03        0xb8
>> -#define MAX77759_CHGR_REG_CHG_CNFG_00           0xb9
>> -#define MAX77759_CHGR_REG_CHG_CNFG_01           0xba
>> -#define MAX77759_CHGR_REG_CHG_CNFG_02           0xbb
>> -#define MAX77759_CHGR_REG_CHG_CNFG_03           0xbc
>> -#define MAX77759_CHGR_REG_CHG_CNFG_04           0xbd
>> -#define MAX77759_CHGR_REG_CHG_CNFG_05           0xbe
>> -#define MAX77759_CHGR_REG_CHG_CNFG_06           0xbf
>> -#define MAX77759_CHGR_REG_CHG_CNFG_07           0xc0
>> -#define MAX77759_CHGR_REG_CHG_CNFG_08           0xc1
>> -#define MAX77759_CHGR_REG_CHG_CNFG_09           0xc2
>> -#define MAX77759_CHGR_REG_CHG_CNFG_10           0xc3
>> -#define MAX77759_CHGR_REG_CHG_CNFG_11           0xc4
>> -#define MAX77759_CHGR_REG_CHG_CNFG_12           0xc5
>> -#define MAX77759_CHGR_REG_CHG_CNFG_13           0xc6
>> -#define MAX77759_CHGR_REG_CHG_CNFG_14           0xc7
>> -#define MAX77759_CHGR_REG_CHG_CNFG_15           0xc8
>> -#define MAX77759_CHGR_REG_CHG_CNFG_16           0xc9
>> -#define MAX77759_CHGR_REG_CHG_CNFG_17           0xca
>> -#define MAX77759_CHGR_REG_CHG_CNFG_18           0xcb
>> -#define MAX77759_CHGR_REG_CHG_CNFG_19           0xcc
>> +#define MAX77759_CHGR_REG_CHG_INT                      0xb0
>> +#define   MAX77759_CHGR_REG_CHG_INT_AICL               BIT(7)
>> +#define   MAX77759_CHGR_REG_CHG_INT_CHGIN              BIT(6)
>> +#define   MAX77759_CHGR_REG_CHG_INT_WCIN               BIT(5)
>> +#define   MAX77759_CHGR_REG_CHG_INT_CHG                BIT(4)
>> +#define   MAX77759_CHGR_REG_CHG_INT_BAT                BIT(3)
>> +#define   MAX77759_CHGR_REG_CHG_INT_INLIM              BIT(2)
>> +#define   MAX77759_CHGR_REG_CHG_INT_THM2               BIT(1)
>> +#define   MAX77759_CHGR_REG_CHG_INT_BYP                BIT(0)
>> +#define MAX77759_CHGR_REG_CHG_INT2                     0xb1
>> +#define   MAX77759_CHGR_REG_CHG_INT2_INSEL             BIT(7)
>> +#define   MAX77759_CHGR_REG_CHG_INT2_SYS_UVLO1         BIT(6)
>> +#define   MAX77759_CHGR_REG_CHG_INT2_SYS_UVLO2         BIT(5)
>> +#define   MAX77759_CHGR_REG_CHG_INT2_BAT_OILO          BIT(4)
>> +#define   MAX77759_CHGR_REG_CHG_INT2_CHG_STA_CC        BIT(3)
>> +#define   MAX77759_CHGR_REG_CHG_INT2_CHG_STA_CV        BIT(2)
>> +#define   MAX77759_CHGR_REG_CHG_INT2_CHG_STA_TO        BIT(1)
>> +#define   MAX77759_CHGR_REG_CHG_INT2_CHG_STA_DONE      BIT(0)
>> +#define MAX77759_CHGR_REG_CHG_INT_MASK                 0xb2
>> +#define MAX77759_CHGR_REG_CHG_INT2_MASK                0xb3
>> +#define MAX77759_CHGR_REG_CHG_INT_OK                   0xb4
>> +#define MAX77759_CHGR_REG_CHG_DETAILS_00               0xb5
>> +#define   MAX77759_CHGR_REG_CHG_DETAILS_OO_CHGIN_DTLS  GENMASK(6, 5)
>> +#define MAX77759_CHGR_REG_CHG_DETAILS_01               0xb6
>> +#define   MAX77759_CHGR_REG_CHG_DETAILS_01_BAT_DTLS    GENMASK(6, 4)
>> +#define   MAX77759_CHGR_REG_CHG_DETAILS_01_CHG_DTLS    GENMASK(3, 0)
>> +#define MAX77759_CHGR_REG_CHG_DETAILS_02               0xb7
>> +#define   MAX77759_CHGR_REG_CHG_DETAILS_02_CHGIN_STS   BIT(5)
>> +#define MAX77759_CHGR_REG_CHG_DETAILS_03               0xb8
>> +#define MAX77759_CHGR_REG_CHG_CNFG_00                  0xb9
>> +#define   MAX77759_CHGR_REG_CHG_CNFG_00_MODE           GENMASK(3, 0)
>> +#define MAX77759_CHGR_REG_CHG_CNFG_01                  0xba
>> +#define MAX77759_CHGR_REG_CHG_CNFG_02                  0xbb
>> +#define   MAX77759_CHGR_REG_CHG_CNFG_02_CHGCC	       GENMASK(5, 0)
> Small nit - there seems to be a stray TAB in this line.

Will fix it in the next revision.


BR,

Amit

>
> Other than that:
> Reviewed-by: André Draszik <andre.draszik@linaro.org>

