Return-Path: <devicetree+bounces-201984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12812B1B89C
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 18:35:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 483487A585D
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 16:34:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB41C28BABE;
	Tue,  5 Aug 2025 16:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MF+YFD4f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E625259CB1
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 16:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754411733; cv=none; b=dd/YkKBaeIahqMAIN0NSvfRXVlObJLnyMlnKFhovuIa52HEZgRu5+Vb2CxmqtFoJxiHhgyXXlu/b+lj+h80x3BtZYuXNYVBl2LDARzdeT0SJm5VlatQMcN47xq+iecW2wDJEcSHCgfjnBjcQfm4lLBbvDkBGfqRznuIHFEvPwG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754411733; c=relaxed/simple;
	bh=PIBhZdO238ZvHLBX3rQTGOO8coLsWI3R3RgIsssqLNM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bC6sJwRoIQqRU9Kq1RTTELYcaKHqf5IcJS9uAfhTcKFyNWn5cVS1ZuaFTxEMqyy+bPsSsye6ldjoP38Ex8KgvcixY5Km9BXWM7Ql1neSqFx90g/xXEd5l/hctzPetCnEOPN/6C9SpLfEyObdyX59UKCvWwTlwemFwx5On1ELWm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=MF+YFD4f; arc=none smtp.client-ip=209.85.161.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-61b50eddbc8so315160eaf.3
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 09:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1754411730; x=1755016530; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jtUgL/kOLZJGMiSwsdGyte+QD2BT5vIBoeVeTYduHPY=;
        b=MF+YFD4fpZTEXaurr304BsEf457BRWfUm4sgUvQTvXQ8MXePGChr2AkVN3sRpb4eG2
         4GZE8r3zRZE6GRFUjRRlGqxjeu6pM57niWZilhLJpfP5rRFmdcuPQSD00fsdOVxkJNuG
         InxHwDtVjyZMBy1Bk5S7TZIpAQYkLa8hMJx+CXlbXc1us1fg2tH76UcoSFlFFBOW9F9L
         gVUEv+rjYCmBzcjOTORrUxWMlk3nFX91/bEW7uUUJD0WPVQUApHwqVjcHyWCnISKsEkG
         XxSKX+on9GRUrDNZ8FyCBnAxjMHFfd/VjDUsm/84K4tn7pvgIU5o17W2uG2bf8SbAx39
         xkMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754411730; x=1755016530;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jtUgL/kOLZJGMiSwsdGyte+QD2BT5vIBoeVeTYduHPY=;
        b=tARQskeuvUSmY14X11qtnAKU+lYcly6rssI3KbQIuv/u3+dhqOYQ+Ra4VudCI1DTc6
         e/RIbeC0wrXo+ggHshlO3xdZvQn83a6sYL+KG3qVM3rnyyMh7uxx6s1nBM6Kw9HqhktK
         o6CX4xSJZfFs7GOYGdEobzGAzCn1kJnV+QXTKf08+kQtCcPeUMGsxWllcnWy5kEVEonm
         USlc7gFT5Nd67XgNyi5JcSLS9t0OriNbAuP7tjK1Z1eSsW4SeRVI1YumBoiEyqWiLLab
         vWjCzUJpI1VQ7gtZ18Ue3Nc43DuoykEd5WaRjriZpyUyiagqF5Lu4xmrPIQSAayV8lON
         2iDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUntoiObbtcKTRCgSQ55guGdQDLfPCa4O6AXZdvn8B/8VzrCIVVfGjmM/QnIuWvkICrG5237zkBV+SM@vger.kernel.org
X-Gm-Message-State: AOJu0YzdL3civgD9VKdWqTwKXYkU8tVG170zhk77FJgTglfTb/h+74Sk
	j4v+TZhP7FEodoZVSIIXPXqgnuFQhpGjzKQomQJSFy9dxHsv9BJek7+5G2EOhQ+hKG8=
X-Gm-Gg: ASbGncsTBV7Cjj8pCYMUN+0zHrFTOVg6valZHcEAoqYutDUVGQxXrBRiYNczolt5MEH
	JqVVgmmAtEw0l9t6lV+53WeuI70k8pyWK1/WhfJXW2Fl0dX1Nzh21P0gpj7GrhqssW/u+Uw4sth
	C5DiwD9XijEJoFFkxR8WSPkcOvzuaUuHqOaEd3mh9ESaf6HUG4gr0c97Y0XKAgOp4pGY0K2f9u/
	x/hSSqJZ5tXv27sfkBiryVkE2eTOZLO1gEnDaIqI7X5RfvOmEJQEfH36p4xqA4ryAcnoWOzxrxP
	WyOY6FVcOUd722uYVusyKL3vGOpqPZCqvUAK/42eeVUuh4GfHQu5h96RGuNGXr87d3imRSk5G5t
	Fty7lRAg5C1MT0RPJlk3X+Tm6Eosbr/xvIR7LM09mH0M9g6is348NoCcloqlbMh2ddlnjC8VaK/
	R0bf1LRHELjg==
X-Google-Smtp-Source: AGHT+IEPj9WGncyEEwV8zCSGGOL8c8u23+Kwz+ZdJ9c7mTbLm+37ER2spgJtBiQCyb7d39tvDl8XQA==
X-Received: by 2002:a05:6808:1b0e:b0:41c:8cba:1ac9 with SMTP id 5614622812f47-433f03438d8mr8283663b6e.28.1754411730347;
        Tue, 05 Aug 2025 09:35:30 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:cc63:6a65:89f9:fe4a? ([2600:8803:e7e4:1d00:cc63:6a65:89f9:fe4a])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-61b4e4ac995sm244569eaf.18.2025.08.05.09.35.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Aug 2025 09:35:29 -0700 (PDT)
Message-ID: <a36d35b8-0f11-4a57-a20c-b00e16f293f9@baylibre.com>
Date: Tue, 5 Aug 2025 11:35:29 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] dt-bindings: iio: magnetometer: document Infineon
 TLV493D 3D Magnetic sensor
To: Dixit Parmar <dixitparmar19@gmail.com>,
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, linux-iio@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Andy Shevchenko <andy@kernel.org>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250802-tlv493d-sensor-v6_16-rc5-v2-0-e867df86ad93@gmail.com>
 <20250802-tlv493d-sensor-v6_16-rc5-v2-2-e867df86ad93@gmail.com>
 <175423802305.483875.12095436762674457962.robh@kernel.org>
 <aJAd0k-PGbQJqD_R@dixit>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <aJAd0k-PGbQJqD_R@dixit>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/3/25 9:41 PM, Dixit Parmar wrote:
> On Sun, Aug 03, 2025 at 11:20:40AM -0500, Rob Herring (Arm) wrote:
>>
>> On Sat, 02 Aug 2025 12:14:28 +0530, Dixit Parmar wrote:
>>> Document the bindings for Infineon TLV493D Low-Power 3D Magnetic Sensor
>>> controlled by I2C interface. Main applications includes joysticks, control
>>> elements (white goods, multifunction knops), or electric meters (anti-
>>> tampering).
>>> Drop duplicated entry for infineon,tlv493d from trivial-devices.yaml as
>>> its documented in infineon,tlv493d.yaml now.
>>>
>>> Datasheet: https://www.infineon.com/assets/row/public/documents/24/49/infineon-tlv493d-a1b6-datasheet-en.pdf
>>> Signed-off-by: Dixit Parmar <dixitparmar19@gmail.com>
>>> ---
>>>  .../iio/magnetometer/infineon,tlv493d.yaml         | 45 ++++++++++++++++++++++
>>>  .../devicetree/bindings/trivial-devices.yaml       |  2 -
>>>  2 files changed, 45 insertions(+), 2 deletions(-)
>>>
>>
>> My bot found errors running 'make dt_binding_check' on your patch:
>>
>> yamllint warnings/errors:
>>
>> dtschema/dtc warnings/errors:
>> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/iio/magnetometer/infineon,tlv493d.yaml: vdd: missing type definition
>> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/iio/magnetometer/infineon,tlv493d.yaml: 'example' is not one of ['$id', '$schema', 'title', 'description', 'examples', 'required', 'allOf', 'anyOf', 'oneOf', 'definitions', '$defs', 'additionalProperties', 'dependencies', 'dependentRequired', 'dependentSchemas', 'patternProperties', 'properties', 'not', 'if', 'then', 'else', 'unevaluatedProperties', 'deprecated', 'maintainers', 'select', '$ref']
>> 	from schema $id: http://devicetree.org/meta-schemas/base.yaml#
>>
> Ack.
>> doc reference errors (make refcheckdocs):
>>
>> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250802-tlv493d-sensor-v6_16-rc5-v2-2-e867df86ad93@gmail.com
>>
>> The base for the series is generally the latest rc1. A different dependency
>> should be noted in *this* patch.
>>
> I did not get this fully, is this concerning?

Nothing to worry about in this case. This is a new binding with nothing
unusual, so there are no dependencies.

>> If you already ran 'make dt_binding_check' and didn't see the above
>> error(s), then make sure 'yamllint' is installed and dt-schema is up to
>> date:
>>
>> pip3 install dtschema --upgrade
>>
>> Please check and re-submit after running the above command yourself. Note
>> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
>> your schema. However, it must be unset to test all examples with your schema.
>>
> Thanks,
> Dixit


