Return-Path: <devicetree+bounces-233889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A9BC26837
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 19:02:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 290E9402DC6
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 17:59:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E58F3502A4;
	Fri, 31 Oct 2025 17:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hvTPjRhV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363173271E9
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 17:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761933587; cv=none; b=m8GpMiMK9hKlfmTZ+gEdWfLHgg3cCgqB4+N3A7sPgl1A1E9z4ol9spb5jjMjyYlwyOQsglK1ecst2ueZ2fEYJyjhvUIRgnFjxgjHiQb5kOYWe2xNoJ6Tf1Z0xA605kGdMfC2+6H/4zMAX/1Cecjc+4EjvCNUGIw/fVpZ7lks9dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761933587; c=relaxed/simple;
	bh=iOnu8YXSm0hYmgtxCKnYF6BGiSqmzUrc4a0lLm+asfc=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=fBITm8Y2ML1wHj0/I/5LNtEjLPxERqeTwH/pXn9uu0J+5VXe4OFfSFe4akLIZqmPnYaunIbhwerL0/TJpWGJXQq0HZ3xqrXFQ17Cv7PhqLT2TjwA1y2OCkA4XKDI62xYQzuBptZEKIZVNaM4iAgY/96Mn63f2x/uFdQc64WzPAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hvTPjRhV; arc=none smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-88e51cf965dso364720485a.2
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 10:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761933583; x=1762538383; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=C9TvLVEpUHB355SxMPUsmkhK3XU3SxzE+SMxZSn+ZNc=;
        b=hvTPjRhVFlGpZiVnMX3mQb8kzi4Vcjx5eYucVtRoun9kRWZH+ZODffzNS3m42Pcuhh
         32UVXzxRF9LkgYlvPygw5SP3gmtyzYZ4LMLcguU+y7z2v6arRsM67InRvsZ13GIuoOQe
         4swanEh00FKFwcXkv7bglKBgv87mfycPA8XfFSNMaS8BCn16BdOAj9H3TKRvtcuVQzgq
         Z6K+RGoDNv3byAPNiw5xwtc+pjUaNKtxAW3NPNi+Yp7s+fxBrmAkqTzK8fOGmKz/cy7j
         nlOrHP/v1YJTI9sVwOOZcjf5sWcNd5z+6n1vF15bzdzorSmGd+wk4gvTBNTAznmGpsKz
         8vQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761933583; x=1762538383;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C9TvLVEpUHB355SxMPUsmkhK3XU3SxzE+SMxZSn+ZNc=;
        b=WqW13+5zLzFcsewV2E3rRk/8TTQtm4QaIzZnbkrZxRnpY9rts3tTOPJrq6RevWDpQ4
         ogT+ZIrYHPAORrToI2KypT82Jkq26Wd+h4Oov0K4645RQ8DCca1v2En+Anf7+ym2rlof
         h4OIJuJxS9SkQFxkZKq593ZLSiy0p7DMYxGEFjYNvmlkByVq4PJt9B1dvWDcJ6hV7p/0
         ODnO2hpa9mDP8agjtkR0MoU5Gwv0QwZwmDaFJwsiNvz0nRq5gGse05H+Z6FxZ1nEdG8k
         kD7mxrwBroPKB/2pB90DSu9QsaTZhTz9U7Ej//ZMXNylI1TEb0FHSKi/RXBARhVmSsH5
         m4cQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYB/ogiTi2qlv0FRcBZrVnFtik7kPbqq7wI9N5ff+ns8LYZxmgjcr3KGlq0uaKjLMQb2zklwUb/YOB@vger.kernel.org
X-Gm-Message-State: AOJu0YyLhFLkFPGpV0LGRWzigJjNWRFq/NDvIsH714zvhCge0C8iYHC8
	w1J7undYwpyuCogoSghv+d2YX2xi9RiBFk+T3JkwJTtXq0Tp7BONwspv
X-Gm-Gg: ASbGnctn+rGhStGdCuidFJq4iy1Gs4UtKjJLgKBsxTLh9k1M6lYzfUEaWTkmCp0z0L/
	OcB9S+WGmw6b4g5BFFW0ytHdZRRr8tpDM7NDxEOt0Kk08Go0yOCamS//rK4U6vXjE+1bLC66Awf
	b9jIikdJq33ncX5bqQONdUPmPqgCyQ8jH0cqR0C2xAQg3jTOLBbSiLMS06qHC2YgdBoJxyOhkxp
	qKbGW8mrUueZg+NuiEDHfsbHNL3CMgQqrT2CoQM/BoBXG6gS3kSg7o/H796/gwaf1B6vA6aJfcj
	LxbcQNC8IuXdl4nR922EjJowgG0aqQfxhM40UN0zyWw5ZslBke8k0VPbTsvB8sXae5VDV0wcDsT
	1NlmQ3NVyTp9GFzrArFE/0+44ZHk+ZkNq0yKQo0Rqhi/u8xtVF9pop6Xw0+ukw2KJ1D1MUFEH+I
	lovwSl/n8MbNmoARMbd8JU8/p8LQhsL8Vr4U91kl+CWo1qhHAjp/sQh7NEnTE=
X-Google-Smtp-Source: AGHT+IEosKF/hSeBeiZp/vvJLPozX0TbNwZj+ymvZVV1kTVbfgpxF7BbWMYqF93HykWROEe4RFcMSQ==
X-Received: by 2002:a05:620a:4004:b0:883:7309:c0eb with SMTP id af79cd13be357-8ab9acee443mr519487285a.41.1761933583004;
        Fri, 31 Oct 2025 10:59:43 -0700 (PDT)
Received: from ehlo.thunderbird.net (modemcable197.17-162-184.mc.videotron.ca. [184.162.17.197])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8ac03f4d585sm148632985a.56.2025.10.31.10.59.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 10:59:42 -0700 (PDT)
Date: Fri, 31 Oct 2025 13:59:39 -0400
From: =?ISO-8859-1?Q?Jean-Fran=E7ois_Lessard?= <jefflessard3@gmail.com>
To: Rob Herring <robh@kernel.org>
CC: Andy Shevchenko <andy@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v5_3/7=5D_dt-bindings=3A_auxdisp?=
 =?US-ASCII?Q?lay=3A_add_Titan_Micro_Electronics_TM16xx?=
User-Agent: Thunderbird for Android
In-Reply-To: <A137AD5E-2D4E-4C1E-8A71-EF90E60D8F14@gmail.com>
References: <20250926141913.25919-1-jefflessard3@gmail.com> <20250926141913.25919-4-jefflessard3@gmail.com> <20251002024431.GA2926696-robh@kernel.org> <A137AD5E-2D4E-4C1E-8A71-EF90E60D8F14@gmail.com>
Message-ID: <7F647662-59AF-467B-8998-E870F114BDAE@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Rob,

Thank you for the review and Reviewed-by tag=2E I've addressed all your fe=
edback=20
except one item that's causing validation issues=2E

Le 1 octobre 2025 22 h 58 min 38 s HAE, "Jean-Fran=C3=A7ois Lessard" <jeff=
lessard3@gmail=2Ecom> a =C3=A9crit=C2=A0:
>Le 1 octobre 2025 22 h 44 min 31 s HAE, Rob Herring <robh@kernel=2Eorg> a=
 =C3=A9crit=C2=A0:
>>On Fri, Sep 26, 2025 at 10:19:04AM -0400, Jean-Fran=C3=A7ois Lessard wro=
te:
>>> Add documentation for TM16xx-compatible 7-segment LED display controll=
ers
>>> with keyscan=2E

=2E=2E=2E

>>> +
>>> +allOf:
>>> +  - $ref: /schemas/leds/common=2Eyaml#
>>> +    properties:
>>> +      color: false
>>> +      function: false
>>> +      function-enumerator: false
>>> +  - $ref: /schemas/input/input=2Eyaml#
>>> +  - $ref: /schemas/input/matrix-keymap=2Eyaml#
>>> +  # SPI controllers require 3-wire (combined MISO/MOSI line)
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            enum:
>>> +              - fdhisi,fd620
>>> +              - fdhisi,fd628
>>> +              - princeton,pt6964
>>> +              - titanmec,tm1618
>>> +              - titanmec,tm1620
>>> +              - titanmec,tm1628
>>> +              - titanmec,tm1638
>>> +              - wxicore,aip1618
>>> +              - wxicore,aip1628
>>> +    then:
>>> +      $ref: /schemas/spi/spi-peripheral-props=2Eyaml#
>>> +      properties:
>>> +        spi-3wire: true
>>
>>You can drop properties=2E
>>
>
>The issue is spi-3wire is defined in the child node of spi/spi-controller=
=2Eyaml,
>not in spi-peripheral-props=2Eyaml=2E
>
>Removing properties did not pass dt validation=2E Am I missing something?
>

You suggested dropping "properties:" in the SPI 3-wire section:

then:
  $ref: /schemas/spi/spi-peripheral-props=2Eyaml#
  spi-3wire: true
  required:
  - spi-3wire

However, this causes dt_binding_check to fail with:

'spi-3wire' is not one of ['$ref', 'additionalItems', =2E=2E=2E 'propertie=
s',=20
'required', 'then', =2E=2E=2E]

Unevaluated properties are not allowed ('spi-3wire' was unexpected)

It appears the schema requires "properties:" to recognize spi-3wire as a=
=20
property constraint rather than a schema keyword=2E Should I keep the prop=
erties=20
wrapper, or is there a different way to structure this that I'm missing?

>>> +      required:
>>> +        - spi-3wire
>>
>>With those nits fixed,
>>
>>Reviewed-by: Rob Herring (Arm) <robh@kernel=2Eorg>
>>

Thanks for clarifying=2E

Best regards,
Jean-Fran=C3=A7ois


