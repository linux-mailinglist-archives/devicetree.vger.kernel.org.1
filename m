Return-Path: <devicetree+bounces-68443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F32F8CC495
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 18:00:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC6801F22C44
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 16:00:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9757F1CD26;
	Wed, 22 May 2024 16:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="dWILjTSr"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A2D1E517
	for <devicetree@vger.kernel.org>; Wed, 22 May 2024 16:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716393627; cv=none; b=rJmZSAkR8G62h35r6SnighTrndxKgE0jD/YBj5Qb81ydgo/yaqn516lC7U6fHM7BY5fV7MBsuS9KdUFLyyY+n8o+VQfB1kAtF78WrsRr4HYYLxorFXwEPsyPCz/C4dhma3hiSqnujFaz4oxAMbx6py6uS13O6nhXZMeggvnEyo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716393627; c=relaxed/simple;
	bh=2C9fNAU+Yg3t9+muOOfWc9qfe3e2oqVbk6lel/Tnsrg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZF5onzRFAfKV0nBjnsGc/Nuxb/qrgqWjUsStRKQbp5+TVnANomfLOr7HDp652NhXnCh7gRWEhtP/vC0UkO4JOvWLlMTWMfekSo4V2mdv/Q7Zx14XYCFwYkwbH4LlOlQ0pZetLKMtejcFrWOTeakny0SJef9PIEz0k/auseEJqbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=dWILjTSr; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1716393624;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ajxqgjEKnMOrF68kO1CKH80QE6nlB/0C/WuHcK2TQAo=;
	b=dWILjTSrBfrCtu/cUMSxkr6dbqNawx/tlVdLIiyDsvBPIdiDsuvfIVX4vBHX2rvIKFF02t
	ftLTQmdBEHYGX/NtRZXLoyj8UmEHEcYjJXmScFP/Vzl4gCUU44FH0mzVkRjutg0P+EyfoB
	mvSFi33FIGA1hfhcG5Kts+mI5mjXUyc=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-364-kUOkuvVgM8WwcKNTAnfcBQ-1; Wed, 22 May 2024 12:00:22 -0400
X-MC-Unique: kUOkuvVgM8WwcKNTAnfcBQ-1
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-351d13dd8aeso4228218f8f.2
        for <devicetree@vger.kernel.org>; Wed, 22 May 2024 09:00:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716393621; x=1716998421;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ajxqgjEKnMOrF68kO1CKH80QE6nlB/0C/WuHcK2TQAo=;
        b=VEo56YnXH9tODKknu51/pfMn9QSPMPLe+w8MtWOH7djJ1ecpXOOjU/vexGKn84OrgZ
         mOQK9an74RbvjI441zSanOowWLPRQzbeDnh4I/GHIW6HER6BhqCei3gAh0JedJxqew1T
         9CIvHP2vBTlKheo6gXvzfdOUGykZ/j7ePNTtaXJiOmlwYfGe11gvrQ7x45kRW/VwaMGf
         YLEh7vWjNx/6Bw/uB3i+Sj6E39dWhtlaID3BOm7EY6DB3bfB+AD0RcctSaLGiCxOxQKK
         vRmiRXgVFMbNSpl/2phOH29y9FWUMx4xCQMtGudxTQkfp8xDc5zuK35p+umJG2/m7LgB
         Ny1g==
X-Forwarded-Encrypted: i=1; AJvYcCXXTki45cnWGKdu/R9aif3kwJmM2BzSUTcd6HLNhkFALFLZiHL81JZvRsbejRgXrSwu1ect8hj++WyfY0C1yEYP10CC25PGMFwXLg==
X-Gm-Message-State: AOJu0Yww/hIG4K/d3LSwnxv94Ya4UmgKmSs1TcdetcZSjLK0xvXqlxBj
	xLxw/dqnYLinQS/tTZUWOSUryYMhzRE7ZD3mfu+3J6AYbOZzUdE6r84wk1VLyEdDGQwgqR9nHDc
	Q3GLU/hFa6bpfc7MH5jzB1vZ2SGClvGktYR0iAuegsTtnqDXjQllv+MgB6CM=
X-Received: by 2002:a05:6000:1b91:b0:34c:4d98:d6f7 with SMTP id ffacd0b85a97d-354d8cc565amr2110454f8f.26.1716393621167;
        Wed, 22 May 2024 09:00:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfuleeGHEI9v8Iu/zrWS0ge+CrdIoZVA0jmvF/ETV9r/10v9dT2bd72KAoHuP4ZL+cVSkHmQ==
X-Received: by 2002:a05:6000:1b91:b0:34c:4d98:d6f7 with SMTP id ffacd0b85a97d-354d8cc565amr2110410f8f.26.1716393620727;
        Wed, 22 May 2024 09:00:20 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a1787c63bsm1798036266b.51.2024.05.22.09.00.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 May 2024 09:00:20 -0700 (PDT)
Message-ID: <3aef46dc-ab15-4f29-909e-bb7500b32cf9@redhat.com>
Date: Wed, 22 May 2024 18:00:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: input: document Novatek NVT touchscreen
 controller
To: Krzysztof Kozlowski <krzk@kernel.org>, joelselvaraj.oss@gmail.com,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240521-nvt-ts-devicetree-regulator-support-v1-0-8d766c639dca@gmail.com>
 <20240521-nvt-ts-devicetree-regulator-support-v1-1-8d766c639dca@gmail.com>
 <6f22e42d-8a06-4c24-93bd-25b6ac141cea@kernel.org>
Content-Language: en-US, nl
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <6f22e42d-8a06-4c24-93bd-25b6ac141cea@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 5/21/24 6:48 PM, Krzysztof Kozlowski wrote:
> On 21/05/2024 14:09, Joel Selvaraj via B4 Relay wrote:
>> From: Joel Selvaraj <joelselvaraj.oss@gmail.com>
>>
>> Document the Novatek NVT touchscreen driver which is used in devices like
> 
> driver? or device?
> 
>> the Xiaomi Poco F1 [1]. Also, include the devictree binding file in the
>> MAINTAINERS file.
>>
>> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-tianma.dts?h=v6.9
>>
>> Signed-off-by: Joel Selvaraj <joelselvaraj.oss@gmail.com>
>> ---
>>  .../bindings/input/touchscreen/novatek,nvt-ts.yaml | 62 ++++++++++++++++++++++
>>  MAINTAINERS                                        |  1 +
>>  2 files changed, 63 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/input/touchscreen/novatek,nvt-ts.yaml b/Documentation/devicetree/bindings/input/touchscreen/novatek,nvt-ts.yaml
>> new file mode 100644
>> index 0000000000000..7839c6a028e4a
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/input/touchscreen/novatek,nvt-ts.yaml
>> @@ -0,0 +1,62 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/input/touchscreen/novatek,nvt-ts.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Novatek NVT Touchscreen Controller
>> +
>> +maintainers:
>> +  - Hans de Goede <hdegoede@redhat.com>
>> +
>> +allOf:
>> +  - $ref: touchscreen.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - novatek,nvt-ts
> 
> That's too generic. Looking at your driver change, it is not even needed.

I wrote the novatek-nvt-ts driver for an Acer Iconia One 7 B1-750 tablet,
this is a x86 tablet which ships with Android as factory OS and because
Android OS images use kernels where everything is hardcoded the ACPI tables
do not describe this touchscreen. Instead the i2c_client for the touchscreen
is manually instantiated by some x86 platform glue code. Since it is
manually instantiated it uses i2c_device_id binding rather then OF/ACPI.

The generic "NVT-ts" i2c_device_id comes from me not knowing the controller
panel type back then. In the mean time I have learned that the B1-750 uses
NVT-NT11205 controller.

So what I think needs to happen here is add a preparation patch as first
patch to this series which basically does this:

diff --git a/drivers/input/touchscreen/novatek-nvt-ts.c b/drivers/input/touchscreen/novatek-nvt-ts.c
index 1a797e410a3f..224fd112b25a 100644
--- a/drivers/input/touchscreen/novatek-nvt-ts.c
+++ b/drivers/input/touchscreen/novatek-nvt-ts.c
@@ -278,7 +278,7 @@ static int nvt_ts_probe(struct i2c_client *client)
 }
 
 static const struct i2c_device_id nvt_ts_i2c_id[] = {
-	{ "NVT-ts" },
+	{ "NT11205-ts" },
 	{ }
 };
 MODULE_DEVICE_TABLE(i2c, nvt_ts_i2c_id);
diff --git a/drivers/platform/x86/x86-android-tablets/other.c b/drivers/platform/x86/x86-android-tablets/other.c
index eb0e55c69dfe..5ecee6e66fb4 100644
--- a/drivers/platform/x86/x86-android-tablets/other.c
+++ b/drivers/platform/x86/x86-android-tablets/other.c
@@ -40,7 +40,7 @@ static const struct x86_i2c_client_info acer_b1_750_i2c_clients[] __initconst =
 	{
 		/* Novatek NVT-ts touchscreen */
 		.board_info = {
-			.type = "NVT-ts",
+			.type = "NT11205-ts",
 			.addr = 0x34,
 			.dev_name = "NVT-ts",
 		},

This solves the too-generic ID problema nd can then be merged
together with the rest of the series through the input tree.
I'll give my ack as drivers/platform/x86 subsys maintainer for
merging the x86-android-tablets change this way.

>> +      - novatek,nt36672a-ts
> 
> Eh, we have already panel. Why there is a need for touchscreen binding
> (binding, not driver)?

I believe that the nt36672a identifier is an identifier for
a novatek display assembly which contains both a DSI display
panel as well as an I2C touchscreen. Since I2C devices need
to be children of the I2C controller we need a separate node
in the device tree for the I2c touchscreen-controller and since
it is a separate node it needs it own compatible I believe ?

Regards,

Hans




