Return-Path: <devicetree+bounces-165215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4488A83BA7
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 09:50:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA3699E023D
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 07:46:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9838C1E2613;
	Thu, 10 Apr 2025 07:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="JGqG+vMh"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E615E1DF985
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 07:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744271165; cv=none; b=iC7UTSyDdK70UtnSZhM1hrk6K/2Q54pi31v3PCF3+7IaFQK0/qAtQowtohKE245khNy0Ikj1sNOzC+CX/hNmWeJQntwuY+oh+eO57iwtoSk2SC9TTMeX/C0OatOFitlvVmdxfU4v+6IBUIvP9zv+u4vUSKp9p1O2+W0ujckPimo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744271165; c=relaxed/simple;
	bh=9KkuM3PxR3O/kSEkhfLpDrsgcymd6VI76hN32SdMmuw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QGnLznLCnmagCjz1dAxbgrz86X6xIFgOsTLydRKZAqbiFyOVjtcBJ1z62HnBIT+qEF8Y+i0sH6YHmpNPUA+PQC9DZ4S4BCyNPo9VJ2KxzWEzvQd2zqQDTaEpljaTvGU88A8QJbAlzHUT3sqdw6NIcYfagRzeaAagzqUNnSKz1Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=JGqG+vMh; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744271162;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=F58ZWliydz3U6uMmvLSlm0nGnQbwI4yd1xZW1tjL3iY=;
	b=JGqG+vMhqnhqDXcKDPzquFWItvFnMcFmRLhtXLtskRO8vx29ByXS6/FTdk1QuvVw01Smhm
	p0BX6v1NfDlK/JKUBjaue8RJvdByYsRHx71YZ4Kuoc3qxce7c9dyGupW6vlEwntCIOrvJm
	vBZ53V2cHBwKzGAjzym+QJfu54lu2Ro=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-379-gl3OVORbO3iDtlv_t2Huzg-1; Thu,
 10 Apr 2025 03:45:56 -0400
X-MC-Unique: gl3OVORbO3iDtlv_t2Huzg-1
X-Mimecast-MFC-AGG-ID: gl3OVORbO3iDtlv_t2Huzg_1744271154
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4C48C19541B1;
	Thu, 10 Apr 2025 07:45:54 +0000 (UTC)
Received: from [10.44.33.222] (unknown [10.44.33.222])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 1F81019560AD;
	Thu, 10 Apr 2025 07:45:48 +0000 (UTC)
Message-ID: <1a78fc71-fcf6-446e-9ada-c14420f9c5fe@redhat.com>
Date: Thu, 10 Apr 2025 09:45:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/14] dt-bindings: dpll: Add support for Microchip
 Azurite chip family
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: netdev@vger.kernel.org, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Prathosh Satish <Prathosh.Satish@microchip.com>,
 Lee Jones <lee@kernel.org>, Kees Cook <kees@kernel.org>,
 Andy Shevchenko <andy@kernel.org>, Andrew Morton
 <akpm@linux-foundation.org>, Michal Schmidt <mschmidt@redhat.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
References: <20250409144250.206590-1-ivecera@redhat.com>
 <20250409144250.206590-3-ivecera@redhat.com>
 <20250410-skylark-of-silent-symmetry-afdec9@shite>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20250410-skylark-of-silent-symmetry-afdec9@shite>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12



On 10. 04. 25 9:06 dop., Krzysztof Kozlowski wrote:
> On Wed, Apr 09, 2025 at 04:42:38PM GMT, Ivan Vecera wrote:
>> Add DT bindings for Microchip Azurite DPLL chip family. These chips
>> provides 2 independent DPLL channels, up to 10 differential or
>> single-ended inputs and up to 20 differential or 20 single-ended outputs.
>> It can be connected via I2C or SPI busses.
>>
>> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
>> ---
>>   .../bindings/dpll/microchip,zl3073x-i2c.yaml  | 74 ++++++++++++++++++
>>   .../bindings/dpll/microchip,zl3073x-spi.yaml  | 77 +++++++++++++++++++
> 
> No, you do not get two files. No such bindings were accepted since some
> years.
> 
>>   2 files changed, 151 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/dpll/microchip,zl3073x-i2c.yaml
>>   create mode 100644 Documentation/devicetree/bindings/dpll/microchip,zl3073x-spi.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/dpll/microchip,zl3073x-i2c.yaml b/Documentation/devicetree/bindings/dpll/microchip,zl3073x-i2c.yaml
>> new file mode 100644
>> index 0000000000000..d9280988f9eb7
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/dpll/microchip,zl3073x-i2c.yaml
>> @@ -0,0 +1,74 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/dpll/microchip,zl3073x-i2c.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: I2C-attached Microchip Azurite DPLL device
>> +
>> +maintainers:
>> +  - Ivan Vecera <ivecera@redhat.com>
>> +
>> +description:
>> +  Microchip Azurite DPLL (ZL3073x) is a family of DPLL devices that
>> +  provides 2 independent DPLL channels, up to 10 differential or
>> +  single-ended inputs and up to 20 differential or 20 single-ended outputs.
>> +  It can be connected via multiple busses, one of them being I2C.
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - microchip,zl3073x-i2c
> 
> I already said: you have one compatible, not two. One.

Ah, you mean something like:
iio/accel/adi,adxl313.yaml

Do you?

> Also, still wildcard, so still a no.

This is not wildcard, Microchip uses this to designate DPLL devices with 
the same characteristics.

But I can use microchip,azurite, is it more appropriate?

>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +
>> +allOf:
>> +  - $ref: /schemas/dpll/dpll-device.yaml#
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    i2c {
>> +      #address-cells = <1>;
>> +      #size-cells = <0>;
>> +
>> +      dpll@70 {
>> +        compatible = "microchip,zl3073x-i2c";
>> +        reg = <0x70>;
>> +        #address-cells = <0>;
>> +        #size-cells = <0>;
> 
> Again, not used. Drop.

Sorry, will do.

>> +        dpll-types = "pps", "eec";
>> +
>> +        input-pins {
>> +          #address-cells = <1>;
>> +          #size-cells = <0>;
>> +
>> +          pin@0 { /* REF0P */
>> +            reg = <0>;
>> +            label = "Input 0";
>> +            supported-frequencies = /bits/ 64 <1 1000>;
>> +            type = "ext";
>> +          };
>> +        };
>> +
>> +        output-pins {
>> +          #address-cells = <1>;
>> +          #size-cells = <0>;
>> +
>> +          pin@3 { /* OUT1N */
>> +            reg = <3>;
>> +            esync-control;
>> +            label = "Output 1";
>> +            supported-frequencies = /bits/ 64 <1 10000>;
>> +            type = "gnss";
>> +          };
>> +        };
>> +      };
>> +    };
>> +...
>> diff --git a/Documentation/devicetree/bindings/dpll/microchip,zl3073x-spi.yaml b/Documentation/devicetree/bindings/dpll/microchip,zl3073x-spi.yaml
>> new file mode 100644
>> index 0000000000000..7bd6e5099e1ce
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/dpll/microchip,zl3073x-spi.yaml
> 
> No, you do not get two files. Neither two compatibles, nor two files.
> Please look at existing bindings how they do it for such devices.

Thanks Krzysztof for comments.

Ivan


