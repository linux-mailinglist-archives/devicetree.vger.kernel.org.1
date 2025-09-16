Return-Path: <devicetree+bounces-217934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB80B59C35
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 17:35:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 02CBD7B3159
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:34:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA2793568E2;
	Tue, 16 Sep 2025 15:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="HMWlFPh1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2682C345754
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758036931; cv=none; b=ZakIrjMgTKV8tyIFmfFBy/9Y6eERK8IxKkl5JJ4zTx7nl62XgRSYOv13BV2FKacrH+3g1wRBYiiYHsLq96GM1kIfxRWiGGRJnNgG+0JVIRbcI3b3CH7fi0JPFQPXVYcDEwfbmPx+cud+dlw/LBHFjn+9c7/MmmWMYdobT3ai+aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758036931; c=relaxed/simple;
	bh=/aJpVV51WhshekAh4G74McxBVjQTGN/5Xp6JBZxdalM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Fmu8bwGv1q1ospBh9kM2Fz2OkxsNcquqa51wJreZy58tjFoTy5hm7mUjk6uyN9Jny+SVuyhHpszuJmxh/wJyxq+29fGNYly4OzQtydGCBdEJ3Y+AzOALIk/oe3HixYVyVy33rW/lPUKoiruw4kPwYbHljOYCqAXr/pxS1a8J95E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=HMWlFPh1; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-24456ce0b96so63707115ad.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 08:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1758036929; x=1758641729; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=349kw2w44V5W/lEoEpIqTdAnk1LM93T6f+1lgC6rCnI=;
        b=HMWlFPh1K26ndgdANHIZXkrJPU0dqCs5yEMhHD4NReQ2zoYGBgoH45EH00ZCuH00u2
         pUGrweekiTxK14sCo/A1rCTskxc9U5S0lD5mnzVbCIDkLtd6nOfSawvZzNGVBYPN4ROK
         TFFnK8pgz1Z32R0IJMpmXcAeatEIcQ1as4bto69pNGtXE5Gu+Dat5hRK7S8yNcgz6N6m
         MWtRTsVUOWYuyvch+Vfs7WH9bKgbKLP6hN4s0ZM0wzk+GiUjo1jt4cVton7cDKVIxIeU
         S5Ezr8zRN0xkW1VDH79mQWLxXa32e5XM3BWfyO57f79/KwQNJUXREmkKDXBvkhn4353t
         7ehg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758036929; x=1758641729;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=349kw2w44V5W/lEoEpIqTdAnk1LM93T6f+1lgC6rCnI=;
        b=TQyPYV6vxqIM3+DRSAzSCCsYVfcV12xTKkz3dI6DL6CEpIfR62Y2MoK+ACDAEV7pNL
         qdA8JN2rEE8Ioi2gNhwWLth9BEybJToSh5V5uyZ/98z75flAkC2XJy4EqL+P2mu5mLZF
         KTiTioa/0YTMa6/GbK4keeAct5niOuMG/pW762jcTfA7vfYz0aYkp91FruJ6MPrXAquA
         ZVZ9KKce4ePpCM8qE2NTQ+wJEuP+emxxKv+DyjP9IBa4xg1P0kI0nTYA/CZm46EaZ+3a
         Z0ng6yKEvBtwm7qXpPz7yzaeXfjyYWXmiXFGYlrksWCy5Nj8jLR1QbahK0jFHD+1hq1C
         V6hQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9IRPWzM2qB7BMVpPz+x0QHlIWlIj6+y05qXE1og8ZmJ1a5VJHq8k2fFIiNnR6xuhZmIfQHAhxUUWo@vger.kernel.org
X-Gm-Message-State: AOJu0YwAlfdwX+EVd7/niG6pTTfLSxtNN7ypo90n+rdwYp/38X4DXA3p
	NjYg2JHfm5S5X5Pvl1XPivPkXB+2MegU2M2Q/yaEUC8ZsYrolvk4WZcBhCXXA5mnvg==
X-Gm-Gg: ASbGncuTezrLIYa5L3wWT4bIlI8qOb1+BcUMrF/K+eY8QeOdj4c/B7xpq2MCHVEwLAr
	6Dm0WV4Iuyvi0EvwVVOvIvuxlwUbe5FL35V5x4FGrK3USiIQI17O2nRO/k03QItfRR/Di26oE6K
	8RKyNnn4myWYGbClFAFJbd4+nQMNyNSmSPA+A74olQly9Njl7kEg10mJWUP4+U7S6yI0rKeszxM
	05s5lD9YfEN7R/d2cI0k0ScadUkG2U1vC5PoT58H0a3As/dxquRX9qtIc7WjSbz1g3CPZXmzYMV
	UINQP/BNYK2zD1VyxpH22w9YXagGErg4p4frOvngEP3MdMICu85F8hUGepRQWfTn2LR9LB7bC3+
	mlW2yWbHFPKmmcUPLJnrUYxlWx1jb6UPat9P2ojneu3Uy2PWCysPbi5uYALRk+CFdx7tmeMADcA
	kL
X-Google-Smtp-Source: AGHT+IFVqI0nXVkoEQngXSjkjuegEYBiji59FF7vwQ54VgfEUoJ8Wt8IiXYq3C3Z9jtQHMP6Vz4UKg==
X-Received: by 2002:a17:903:1c2:b0:262:3e45:4c88 with SMTP id d9443c01a7336-267d160b792mr39501175ad.18.1758036929222;
        Tue, 16 Sep 2025 08:35:29 -0700 (PDT)
Received: from ?IPV6:2401:4900:1f3f:4017:94e1:4956:54cb:7de7? ([2401:4900:1f3f:4017:94e1:4956:54cb:7de7])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32dd98b3e8fsm18103613a91.17.2025.09.16.08.35.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 08:35:28 -0700 (PDT)
Message-ID: <3b5b1b77-97fa-4eab-b5ec-7b4b7099c87d@beagleboard.org>
Date: Tue, 16 Sep 2025 21:05:23 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Device tree representation of (hotplug) connectors: discussion at
 ELCE
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Herve Codina <herve.codina@bootlin.com>,
 David Gibson <david@gibson.dropbear.id.au>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Jason Kridner <jkridner@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree-compiler@vger.kernel.org,
 linux-kernel@vger.kernel.org, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>, Andrew Davis <afd@ti.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20250902105710.00512c6d@booty> <aLkiNdGIXsogC6Rr@zatzit>
 <337281a8-77f9-4158-beef-ae0eda5000e4@beagleboard.org>
 <aL5dNtzwiinq_geg@zatzit> <20250908145155.4f130aec@bootlin.com>
 <aL-2fmYsbexEtpNp@zatzit> <20250909114126.219c57b8@bootlin.com>
 <aMD_qYx4ZEASD9A1@zatzit> <20250911104828.48ef2c0e@bootlin.com>
 <aMebXe-yJy34kST8@zatzit> <20250916084631.77127e29@bootlin.com>
 <CAMuHMdXXi97HN-G_Ozbs7vc141GmbMTPD6Ew6U_0ERj5wh6gvg@mail.gmail.com>
 <397483db-91de-4ff2-82e3-52ae785bc343@beagleboard.org>
 <CAMuHMdUgnw4Q90a5yzOcK30iBUAQTgUDgAauzSifnngQf7bwqQ@mail.gmail.com>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <CAMuHMdUgnw4Q90a5yzOcK30iBUAQTgUDgAauzSifnngQf7bwqQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 9/16/25 19:04, Geert Uytterhoeven wrote:
> Hi Ayush,
>
> On Tue, 16 Sept 2025 at 14:22, Ayush Singh <ayush@beagleboard.org> wrote:
>> On 9/16/25 15:44, Geert Uytterhoeven wrote:
>>> On Tue, 16 Sept 2025 at 08:46, Herve Codina <herve.codina@bootlin.com> wrote:
>>>> On Mon, 15 Sep 2025 14:51:41 +1000
>>>> David Gibson <david@gibson.dropbear.id.au> wrote:
>>>>> On Thu, Sep 11, 2025 at 10:48:28AM +0200, Herve Codina wrote:
>>>>>>   From the addon board point of view, the only think we can
>>>>>> say is "me, as an addon board, I need a connector of type 'foo' and a
>>>>>> connector of type 'bar'".
>>>>> Agreed.
>>>>>
>>>>>> Also, at base board level, statically defined in the DT
>>>>>> connA is described (type 'foo'), connB and connC are
>>>>>> described (type 'bar').
>>>>>>
>>>>>> The choice to map connA to the type 'foo' connector expected by the addon
>>>>>> and the choice to map connB or connC to the type 'bar' connector expected by
>>>>>> the addon can only be done at runtime and probably with the help of a driver
>>>>>> that have the knowledge of the 3 connectors.
>>>>> Agreed.
>>>>>
>>>>>> I have the feeling that the choice of physical connectors to which the addon
>>>>>> board is connected to is a human choice when the board is connected.
>>>>> Yes.  Although if the addons have an EEPROM, or some other sort of ID
>>>>> register, it may be possible for some connector drivers to probe this.
>>>> Right, I think we agree that a driver is needed to help in the mapping at
>>>> least when multiple connectors are involved.
>>> I agree you need a driver to read an ID EEPROM.
>>> But why would you need a driver if no ID EEPROM is involved?
>>> If the connector types on base board and add-on match, it should work.
>> How would a connector be disabled in such a setup? I guess maybe status
>> property can be used while applying overlay to check if the connector is
>> enabled. But maybe that goes outside the scope of fdtoverlay?
> Why would you want to disable a connector?

So a lot of embedded SoCs (eg. TI AM6254 [0]) have co-processors (M4F in 
case of AM6254). These co-processors can run full blow RTOS (most 
BeagleBoard boards like PocketBeagle 2 [1] have Zephyr support). When 
using a peripheral from the co-processor running such RTOS, it needs to 
be disabled on Linux side.

>
>> Also, I would assume that most such connectors would want to provide
>> some kind of configfs based API to add/remove addon boards.
> Yes, we need some way to configure add-on board add/remove,
> and on which connector(s).
>
> Gr{oetje,eeting}s,
>
>                          Geert
>

Best Regards

Ayush Singh


[0]: https://www.ti.com/product/AM625

[1]: https://www.ti.com/product/AM625


