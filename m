Return-Path: <devicetree+bounces-268412-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cDzMGH8Qn2neYgQAu9opvQ
	(envelope-from <devicetree+bounces-268412-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:08:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA0E199375
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:08:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 51E2430A35CE
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:02:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5798133890B;
	Wed, 25 Feb 2026 15:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G80HbthW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A1D27FB3E
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 15:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772031759; cv=none; b=HkB5oRrpoX5dyqthjWhBy+8s9PlYn3/wK+EN/iMcCjhpRDlqZhtE7KJblMqUit7qWS+K3bNgdm98fMGutMqoYfzN0UG9EIv+Zt8lY/h05D84HO8DsP68WLLiv3bV5k68eHwdq7UBHrPHle4KjSnrR0H7+owzTMfQjkIptLthypU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772031759; c=relaxed/simple;
	bh=lduQr7bEL/ULGnbLgsCH/lSm/X2I9h8gm6HAiGrtPO0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jUN1ufCg3jXpURhLFKaZJUuXXY2q2Nmu0/hLuckh29OXYyVz9dVDkHH+NZsJMxUnWR9/bzT40C088+R9+Xxx88KgWDGrQgLOL8gtvjPs86EunEyBW70kpU1TeYpBPWzboRauIsUiruQRgw4hql4nCP9zxoW7MogmXBx4I42Pdvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G80HbthW; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-82361bcbd8fso3658796b3a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:02:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772031757; x=1772636557; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=39IJkvk2kX49TPaa7PDmuI2YnzriAyXRaiBPlWFy4J0=;
        b=G80HbthWRlTeD1GnYVbUJEMrDKKuzDfK5chzmOvm8Mc0vnLt91LA+WI5ggjMVYmnqE
         rS9LbEhMIw8S1j9qiITrkZuGf2Y6rwboRlZ8veFAyv1L20j0czDv7RCoV4f+txVqhUoa
         1iqNttmGBxAZ00oHnd9LQpsA2nz1+BfaNHganfXReVz7oYbTNHVlzyItdzC1AuJT7xSq
         d7Y6buri6LnXyGD3YNe92t+tDFKrhB0LkL01J/4hAqsEjM4wUXRP+Ru/WB2OZdgsROZB
         SDUonOWsGaxjxqZ5Su/y6vyeWkrBTXCeHQ05aIzt42ohkldkNex4tvaEURrOi9WVPU9b
         05+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772031757; x=1772636557;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=39IJkvk2kX49TPaa7PDmuI2YnzriAyXRaiBPlWFy4J0=;
        b=um6Z9cOhdXhw9iReMlITh1qZvxYGAfsu9ECr3/tWIXa8QkrFgm+OVvY2hy3SJmudsi
         4z52QtnNIEn207VagbbrdtOZmnhPSGOFVAKbWtwP32nTSNtCwWpRU5/PBvF91AHF5dr4
         zJU4R64nG1rAqOENlLH/M/dQolSbPtCedrg0OfVSNuTfmVPrTaR+lInRDLkLYIGgyj04
         p9qPeAOJwxp27hUmNGQfTa/nl3T10fYXQcuYhslMwmFL0xFYi68fVh1mxAQ0RVtwjR5J
         ZjPNx6RhiZ5yPOBX5bEk984ZzOgGf1kxRXZ63Evy2KUNvT+RZIyIRdmcPGGvnN45DA8T
         lLlQ==
X-Forwarded-Encrypted: i=1; AJvYcCVEXQL8hSQ3iHI7LP+DvOHqsc54Xasc7oO2ObWwJ+feCdySsi0K4vwdfKWUutKdptaP6erguuH5O+E+@vger.kernel.org
X-Gm-Message-State: AOJu0YzIA20TYBJsi/cH+7Lv1qa3EVBBAr/TSMAoI+8zjke3g1vABAY+
	FP3ixKjNx3fPz3kXM5VP77oS21ct1s0zuCsqSBzQaukxFKbtbfkTe09n
X-Gm-Gg: ATEYQzxz3QmwyAipC8rWpgpaXC+k9JRMKeYX8Yafnmo4sL0fXsurHhcrA8xMS3aBAVd
	MpKR88/P8pkVRKU0evC3RubiOTRmnrARLdD1Mphza9vulco482F6Od+zNWnWwlIj18au3N/mJzo
	h7DWCwTfhzD9laokTuwWWMIbMJeV5pw/oVaACiEaAI62QPaHxixZMaLkzj25gvM3Qw75K8mNipe
	yeDYjEPuLc9hA8L0iKN96Ec/c6N5Du7Kz1HXG4HVWl9fB8CSnzoBVUf1fF0fDt12tzwXzknBWoE
	knl2XX5AxkmNPmjGbbZIMOLwCBbceXRRdTfq91waC2tw7jhwEIs4mQwCMLHI5NSfeav+VFoxT7A
	RclOe0nav3IlEvb4yAkG9owrZ1hXA2fFb8/qQ2r80swar4CTziD2PICURNcuR/ErjZ+bglizIBw
	4R9WFbpMUs5vJJ8ThCXXhYdlmf9SDmDCIIfIhAr2CbazRnW3MxmOQPP+FWDSdt/ehNnjVdwuGTV
	oddG66CoiJPz5BlhbqMYg==
X-Received: by 2002:a05:6a00:301f:b0:822:bd7:e949 with SMTP id d2e1a72fcca58-827338ebb77mr601498b3a.57.1772031756996;
        Wed, 25 Feb 2026 07:02:36 -0800 (PST)
Received: from ?IPV6:2401:4900:892f:f52a:c575:426a:cd40:5f5d? ([2401:4900:892f:f52a:c575:426a:cd40:5f5d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd688aa7sm14631808b3a.14.2026.02.25.07.02.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 07:02:36 -0800 (PST)
Message-ID: <4f9f988a-5f3a-463f-aabe-aac1b018bd93@gmail.com>
Date: Wed, 25 Feb 2026 20:32:29 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mtd: st,spear600-smi: convert to DT schema
To: Rob Herring <robh@kernel.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-mtd@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260122-spear-v1-1-fd44bc79695b@gmail.com>
 <CAL_JsqJhnuWzPxUWywZkjt=zc0nSFKP7hM_ekmKKr7p_jXaaag@mail.gmail.com>
Content-Language: en-US
From: Akhila YS <akhilayalmati@gmail.com>
In-Reply-To: <CAL_JsqJhnuWzPxUWywZkjt=zc0nSFKP7hM_ekmKKr7p_jXaaag@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268412-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,fc000000:email,devicetree.org:url,nod.at:email,f8000000:email]
X-Rspamd-Queue-Id: DAA0E199375
X-Rspamd-Action: no action


On 10-02-2026 19:17, Rob Herring wrote:
> On Thu, Jan 22, 2026 at 10:23 AM Akhila YS <akhilayalmati@gmail.com> wrote:
>> Convert STMicroelectronics SPEAr600 Serial Memory Interface (SMI)
>> Controller binding to YAML format.
>>
>> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
>> ---
>>  .../devicetree/bindings/mtd/spear_smi.txt          | 29 ---------
>>  .../devicetree/bindings/mtd/st,spear600-smi.yaml   | 72 ++++++++++++++++++++++
>>  2 files changed, 72 insertions(+), 29 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mtd/spear_smi.txt b/Documentation/devicetree/bindings/mtd/spear_smi.txt
>> deleted file mode 100644
>> index c41873e92d26..000000000000
>> --- a/Documentation/devicetree/bindings/mtd/spear_smi.txt
>> +++ /dev/null
>> @@ -1,29 +0,0 @@
>> -* SPEAr SMI
>> -
>> -Required properties:
>> -- compatible : "st,spear600-smi"
>> -- reg : Address range of the mtd chip
>> -- #address-cells, #size-cells : Must be present if the device has sub-nodes
>> -  representing partitions.
>> -- interrupts: Should contain the STMMAC interrupts
>> -- clock-rate : Functional clock rate of SMI in Hz
>> -
>> -Optional properties:
>> -- st,smi-fast-mode : Flash supports read in fast mode
>> -
>> -Example:
>> -
>> -       smi: flash@fc000000 {
>> -               compatible = "st,spear600-smi";
>> -               #address-cells = <1>;
>> -               #size-cells = <1>;
>> -               reg = <0xfc000000 0x1000>;
>> -               interrupt-parent = <&vic1>;
>> -               interrupts = <12>;
>> -               clock-rate = <50000000>;        /* 50MHz */
>> -
>> -               flash@f8000000 {
>> -                       st,smi-fast-mode;
>> -                       ...
>> -               };
>> -       };
>> diff --git a/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml b/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml
>> new file mode 100644
>> index 000000000000..8fe27aae7527
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mtd/st,spear600-smi.yaml
>> @@ -0,0 +1,72 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mtd/st,spear600-smi.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: STMicroelectronics SPEAr600 Serial Memory Interface (SMI) Controller
>> +
>> +maintainers:
>> +  - Richard Weinberger <richard@nod.at>
>> +
>> +description:
>> +  The SPEAr600 Serial Memory Interface (SMI) is a dedicated serial flash
>> +  controller supporting up to four chip selects for serial NOR flashes
>> +  connected in parallel. The controller is memory-mapped and the attached
>> +  flash devices appear in the CPU address space.The driver
>> +  (drivers/mtd/devices/spear_smi.c) probes the attached flashes
>> +  dynamically by sending commands (e.g., RDID) to each bank.
>> +  Flash sub nodes describe the memory range and optional per-flash
>> +  properties.
>> +
>> +allOf:
>> +  - $ref: mtd.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    const: st,spear600-smi
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  "#address-cells":
>> +    const: 1
>> +
>> +  "#size-cells":
>> +    const: 1
>> +
>> +  clock-rate:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description: Functional clock rate of the SMI controller in Hz.
>> +
>> +  st,smi-fast-mode:
>> +    type: boolean
>> +    description: Indicates that the attached flash supports fast read mode.
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - clock-rate
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    flash@fc000000 {
>> +        compatible = "st,spear600-smi";
>> +        #address-cells = <1>;
>> +        #size-cells = <1>;
>> +        reg = <0xfc000000 0x1000>;
>> +        interrupt-parent = <&vic1>;
>> +        interrupts = <12>;
>> +        clock-rate = <50000000>;  /* 50 MHz */
>> +
>> +        flash@f8000000 {
> This is now a warning in linux-next:
>
> Documentation/devicetree/bindings/mtd/st,spear600-smi.example.dtb:
> flash@fc000000 (st,spear600-smi): Unevaluated properties are not
> allowed ('flash@f8000000' was unexpected)
>         from schema $id: http://devicetree.org/schemas/mtd/st,spear600-smi.yaml
>
> Please send a fix (and test your schemas before sending).


Sure, i will resolve that issue and send a next version.

>
> Rob

-- 
Best Regards,
Akhila.


