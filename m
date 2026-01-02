Return-Path: <devicetree+bounces-251028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1029ACEE2B1
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 11:31:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C2282300A1E6
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 10:31:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5965F23D7CD;
	Fri,  2 Jan 2026 10:31:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JB0Gaxm/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E02B915E97
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 10:31:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767349870; cv=none; b=ZBqGXfmOO6BYY4nSdyz6dawNRLwpvfEB4CXKeXX1ammq77sUfbbw34F63/1B4WM1gmarOnRqZP8GXgYFrmZbZvaV/X6IgXsVojNmP/VHCniTYSSJZYLKn2tdzsTSwAA9Dz6DDBU8oTCrFZgmKrO8u97QLkskuy99XtICyyjVzD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767349870; c=relaxed/simple;
	bh=pBq39yYl7mFp98GMk9qFpx276aeWd6DGVPyDYBnN7RU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UAXeiFY67MLE4p5okQfr0tAth0ukRmQZuITswDhdhgeAoF/pJBccelkH47IJocm3EpWHL/oZ25AuWsYDJd/4GR8/4S3Er3UdAkWByesFgDHWfKPQmNkFAsyYN5YzHGmXkXuaU7M3XpLZm7EFgMJbJ8uezIeY8e/8w79Jr7kc5mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JB0Gaxm/; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-29f30233d8aso138830765ad.0
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 02:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767349868; x=1767954668; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TKEBOHU1OTn7j5uqcfYXSCBQDYOd+pIPDRtQ6wvDEbY=;
        b=JB0Gaxm/opK+dR4s0DPrfYqR0/74aPtluAELwCESJGpEJ6VCNYRdp7mEHVeuZF/FHW
         KXW+Lv3n1VcnZI7cnhhHQpFVklnm+MLwr6xJpWg4xZxUADmkdGEVsZQdmrfbOR+Ci+ym
         UBn44gveJZV3P3eM5O5ycqQ+isTdjAlcrCk7hQhUMiUS4kWEptx2ZeWeHnoGEoJX8Qef
         CURUeJ8M07acdbHi6c9zIHSSjixuCKh6/dcTS4QIz0zZhb7Sz/LVSXPlt5crDarjwv7Y
         ARfJGng0ECBwwvrbQnitiYrxDuMag04h6Fee3ynbFX3HTtcRY1uw0z92FgjvphRvkO77
         tuHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767349868; x=1767954668;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TKEBOHU1OTn7j5uqcfYXSCBQDYOd+pIPDRtQ6wvDEbY=;
        b=Whw1DiAbb+/IOLcpyP5ctT9tiiib5VQqCcVO8m1J0Lff1W0oQBA3/Amz479H8OBHUa
         smwi0tGgi2FLnYM51PgbuQPxZV96majhMLxUTKfHwAdm05Eyd5u09KVmU9RwZHhulotJ
         xa3WMbxXiml4YZyMJELvUgfqbyiL6kQiXUf/RKOpsgTQwRqXwpqy2RZzmlnPoDtIBecs
         T1TpeYDUa0pFXZNoDNy5P8AlTI1M/XzlawX7zH+ySdrkhnyjrNQ4mu6f7ebi6Ra2TlOs
         rvKIlDxxQGFEAKzZlApikKOiGcSFWDRggYyOTfe9UEHMEFNuzGmRm7n4sR7hy00dAhY2
         MFlQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1aYkAiraVgCKR01i0zZZMN3BJs7DxWgWB3dVzusHHhhbxdItcF8kdBX/No11gsqXxyYZK6Mwb9bfx@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6aDX0yejYHi6XSp3SgFiAZ805G7UZLGeI+fh9UvRBVM7sSqEQ
	OWHpNLfp7cIV5GRGqZJ/axTEPax5kPJ8S88izSmdBV3muaxm+xQGLVaU
X-Gm-Gg: AY/fxX7Kbk1Ggpdr/nckXQIqeSvtv0MRdSlXS7jiqZQupQNe12eqShAySHw2w0p7OsS
	b6nwzoVZBeegO3qg7N468kNi1rX2MGjqusSfIFfbgxhpsA1vfx8QB7Tw5JtkMzELs05s8OF7Y+9
	4l0x3QU34e/dDiZmM3zKIzEolNE/KsK+jw09pMV6SpXvTeetSAiDzH8dbt3C98cYNTMNYLKdzhv
	Jgs5bhSARkyhLnY0r2aydAcYSRs9fHVKzSf7be71Rls+wcqe3PE0y88DeAgVvu3VPbsulPKeS/C
	zMBRn4bPkS+GEg2HifjLZIHlUtS0r8HSJn7wdxC5cFUv0Lu/bl0h3ZI/UxJ93CpvrDElp5FF6pn
	HacOY8WlpQEHegjePDcxhnBFja56dSZ4Vszu5yku4/bGbMRQU8BNIcSxYj0peAgeoQW2WJuXAnI
	lZXK7kR56flNeDrlaLAiicJiB7mvpnu4gh6Jj5IeoydoqhTZnkqfJON193LKRcEcK8oCiz4Yo=
X-Google-Smtp-Source: AGHT+IEpEdWke4q2sIAs7xY6ekNENqiKkIEdw7so/gFmVP+bZpB5dWdqj/1/vSx5XDAA/98HJmjRZA==
X-Received: by 2002:a17:902:e785:b0:2a1:47e:1a34 with SMTP id d9443c01a7336-2a2f1f6a1c4mr412841345ad.0.1767349868080;
        Fri, 02 Jan 2026 02:31:08 -0800 (PST)
Received: from ?IPV6:2401:4900:883b:60a8:c545:bc1e:eac1:a2b4? ([2401:4900:883b:60a8:c545:bc1e:eac1:a2b4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d4cb25sm379067495ad.56.2026.01.02.02.31.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jan 2026 02:31:07 -0800 (PST)
Message-ID: <dd7fcfb8-a47e-4e3c-9769-714659e002a7@gmail.com>
Date: Fri, 2 Jan 2026 16:01:03 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mtd: microchip,mchp23k256: convert to DT
 schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-mtd@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251229-nxp-v1-1-a415fe0080a8@gmail.com>
 <20251230-kagu-of-scientific-enrichment-6fcd4c@quoll>
 <0363ac61-0872-42da-91b8-78966a2537ce@gmail.com>
 <baa3ff2a-6569-4b36-aed1-651f83fa175b@kernel.org>
Content-Language: en-US
From: Akhila YS <akhilayalmati@gmail.com>
In-Reply-To: <baa3ff2a-6569-4b36-aed1-651f83fa175b@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 02-01-2026 15:48, Krzysztof Kozlowski wrote:
> On 02/01/2026 09:17, Akhila YS wrote:
>>>> +properties:
>>>> +  compatible:
>>>> +    enum:
>>>> +      - microchip,mchp23k256
>>>> +      - microchip,mchp23lcv1024
>>>> +
>>>> +  reg:
>>>> +    maxItems: 1
>>>> +
>>>> +  "#address-cells":
>>>> +    const: 1
>>>> +
>>>> +  "#size-cells":
>>>> +    const: 1
>>> Pretty incomplete. Old binding and above cells claim there can be child
>>> nodes, so please add them and test. Works? No. Shall work? Yes... so
>>> either old binding was incorrect or new binding is incomplete. I did not
>>> check the driver, though.
>>
>> Size cells and Address cells are not required as there is no child node
> Then what is the point of address/size cells if you do not have children?
>
> Anyway, read carefully old binding and the driver code.


Yes, I will remove the above cells in the next revision.

>
> Best regards,
> Krzysztof

-- 
Best Regards,
Akhila.


