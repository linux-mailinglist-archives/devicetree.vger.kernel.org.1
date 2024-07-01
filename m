Return-Path: <devicetree+bounces-81873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8155091DC58
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 12:23:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1370BB24FB1
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 10:23:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D06B12D773;
	Mon,  1 Jul 2024 10:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nKMVrknX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C960812CDA8
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 10:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719829394; cv=none; b=H/+xgq2d79LNcORzvQLfXGwmJR1TijvVexqxhQnOdtae4LyhIOfKDigdf31bB5Gk17OGIRaFp8KDLrtVrz6jzfD1A8SGjkwFH7PQ4frKu3pviYe7eOPBNLLRaBWm+O+8AooxWxUSym+jgwIJ5F/aL4JFcab+TkMKKBpIQpapMFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719829394; c=relaxed/simple;
	bh=oehHj9FkeJZ5B3gLsstjBGUSPx9PQYiE1Ctx3x47C3A=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=Q2gU2Z0A6i+92xlaSvJmvag8Si02eftkk0K5LJ0OBT2s43i1Rc4TlcCzW6WMu4ntGbJ8Ea53ODLAzrOVXJ6HlvqiU98L0/Kr0jxaj7GLNRfK7iPSCFMk2oMtHAAYVLtDGJ/9A26+ZrABGLwl1A/CuBA3f53ODRBQbMm6qb7QNwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nKMVrknX; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4257d5fc9b7so9408115e9.2
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 03:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719829391; x=1720434191; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=es72ued27T4MScFVaYol2Tr8ps+FK1gW8G/gs4qGvrk=;
        b=nKMVrknXl/Fby6bCuw8EhGEeRp2wdWB6w6SHbCvl44VuPB1yLUZCTIMENS9Yg1Wq50
         dqnBcI4OR65xyFjzL4Bzz0FG+Q0cHAYgn/lnVkPaZr7gZshCdYVdmeEMiRG9Uvsay/JE
         p7mBGwuTOQCCFr1oSCcFyhmA09pE8iGUOfuRdphBVj32SXvjD83YQR75LsPl+IGDYrJB
         ZG0hVhPsYRV5xb9EYavQSXMr7cs8PUTe5ysDgY5coedZutvbHbQG9wftnN0cvpSqicDK
         BTFXGXp92vR9bg6b6j/eGJB6TLfo8WQNa6FyHCof4jsOmGl4i/+uqMXXGdto9dq6h6Ya
         4yUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719829391; x=1720434191;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=es72ued27T4MScFVaYol2Tr8ps+FK1gW8G/gs4qGvrk=;
        b=vZWB7H/n5H1qcrgrpswoEJ9HIS/+F+YjRO/f1PvY6g/6LJuSDdH2PcFdYggcnRdQUo
         AOAKZ0efQP4/cVBIs4tLnpC+GlXzm/6xfAdLAHljR9NiAZ9/sZOnnTJxZQkkXBZebIi9
         z5tDMyrrhP0cKdAA1TSIVmRmFpNmu7BKHZFEvpJO6hE2DcPe1WVps8U3mKbmFfbjE9om
         oq8A4Xdyhkh3T8YKyCB6mrLIElm/Eybv8TdrgLdJeu0fhOWZW6WaviaDij4aCx7BvQlD
         ITaIyR6FccLwWKeGHepPOoK6zOnfk2GBh2delVKKPaay3yUuedHay3ZliIbTC+NrqqGT
         NhbA==
X-Forwarded-Encrypted: i=1; AJvYcCXONa9fOAA51bnPxaqzhQ7DKpls2vqPRRTv4fWH4UrD3uCrJgsshdSk8CtVja99VfKN8PibutXkW/HxaZ5cEj8UxmT2/WNq3CSTBQ==
X-Gm-Message-State: AOJu0YzjktDvlvB/M8FCXQ5GIJ0v1Nv8VxcMtrIPVblAliIwcG8Q3/O0
	xDulXdNIN8hHjRPn4Up7hZ+f+TGqmBHPBZqCc7Qr72kbBwJP8JruikBcZD1rAm8=
X-Google-Smtp-Source: AGHT+IFwf8NGDtaFlS7TXsmaKZFBedPeQ9EYRZFjtGYPSpWoAoCiJI6iD0t3kI8k4Et64t0vGIvb7Q==
X-Received: by 2002:a05:600c:4804:b0:425:7784:56e6 with SMTP id 5b1f17b1804b1-4257a007729mr43982445e9.11.1719829391130;
        Mon, 01 Jul 2024 03:23:11 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.178])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256af557fesm148418925e9.11.2024.07.01.03.23.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jul 2024 03:23:10 -0700 (PDT)
Message-ID: <04f5162d-8a95-45ce-a891-3f711b27a469@linaro.org>
Date: Mon, 1 Jul 2024 11:23:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] dt-bindings: mtd: macronix,mx25l12833f: add
 SPI-NOR chip
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: Erez <erezgeva2@gmail.com>, Esben Haabendal <esben@geanix.com>
Cc: Erez Geva <erezgeva@nwtime.org>, linux-mtd@lists.infradead.org,
 Pratyush Yadav <pratyush@kernel.org>, Michael Walle <mwalle@kernel.org>,
 linux-kernel@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
References: <20240629103914.161530-1-erezgeva@nwtime.org>
 <20240629103914.161530-4-erezgeva@nwtime.org>
 <1c457520-07b7-4bde-b040-e8bca959a4f5@linaro.org>
 <CANeKEMOODBNZA6efh0E0Ga_KaVs5Y3WLcUftRhNwYHhnXO=GNw@mail.gmail.com>
 <CANeKEMO42rJt5Ob4_HDcZ3eEMvuMOPvRaFaLwL8SA65NtxSV7A@mail.gmail.com>
 <1d56c3b2-7adf-45b9-a509-956340f3f17b@linaro.org>
Content-Language: en-US
In-Reply-To: <1d56c3b2-7adf-45b9-a509-956340f3f17b@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 7/1/24 11:15 AM, Tudor Ambarus wrote:
> 
> 
> On 7/1/24 10:46 AM, Erez wrote:
>> When using mx25l12805d, we do not read SFDP.
>> As it uses the no-SFDP flags.
>> When using mx25l12833f hardware with mx25l12805d driver, it did not
>> try to read the SFDP.
>> Yet mx25l12833f does have SFDP, when I remove the no-SFDP flags, the
>> driver fetch the SFDP.
>>
>> Secondly SFDP does not contain OTP information.
>>
>> mx25l12805d has two OTP regions of 128 KiB and 384 KiB (yes asymmetric).
>> While mx25l12833f has two OTP regions of 512 KiB.
>>
>> How do we handle it?
> 
> You would first try to parse SFDP and initialize the flash based on
> SFDP. If there's no SFDP then you fallback to the flags declared at
> flash declaration. Esben had a try recently, see [1]. I don't know if
> there's any progress in that direction.
> 

And you can then decide which OTP org to use based on whether SFDP is
present or not.

> Also, you haven't mentioned anything about the testing. Do you have the
> flash?
> 
> [1]
> https://lore.kernel.org/linux-mtd/20240603-macronix-mx25l3205d-fixups-v2-0-ff98da26835c@geanix.com/

