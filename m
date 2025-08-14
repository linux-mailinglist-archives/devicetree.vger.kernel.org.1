Return-Path: <devicetree+bounces-204781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5A8B26C91
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 18:31:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A11077BCE7F
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 16:30:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA058220F55;
	Thu, 14 Aug 2025 16:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b="FyvEj7Ya"
X-Original-To: devicetree@vger.kernel.org
Received: from mx4.wp.pl (mx4.wp.pl [212.77.101.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E4F1EB5FD
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 16:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.77.101.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755189107; cv=none; b=ldIyQ2BS0EC8FLPYqtLORzFmdacy4VruCNIb6hXlqiD3/H7UZ0hJBLos+w9qH9Z86mQe5qQ0RahOENFm9mLEofmwphS/1Wlg2OSBznnKi303DpZaCcfYNgQFrgDhKsuS2gGYUqRwIFJOmV6fE5QxGRs5GoEjOd12wFM5QCo0OQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755189107; c=relaxed/simple;
	bh=Sra3zqdrSyCf/DPo55eGEAAaaP0Sg76jyEtVaVy8EOM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KtkBIS9oij2ECKv5mj6r2bDqjQ/IeKWzyeTjRW5q81HriYwwzm7UObovqp2HKiTu8opoPUd0Q8mXem2bXJF12WeCN6i2whIstoEGq1ox8NPtPZZVWmcfp52L8wS1ZAdVN7AYQFC//hEIObBk/clQekqhuI24bQD4fJuuIIi/KIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl; spf=pass smtp.mailfrom=wp.pl; dkim=pass (2048-bit key) header.d=wp.pl header.i=@wp.pl header.b=FyvEj7Ya; arc=none smtp.client-ip=212.77.101.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=wp.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wp.pl
Received: (wp-smtpd smtp.wp.pl 20900 invoked from network); 14 Aug 2025 18:31:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=20241105;
          t=1755189103; bh=p1zMU3VZgZTuXF7e6u1Dm62IMFFK5dFwG8bTpA4zT0E=;
          h=Subject:To:Cc:From;
          b=FyvEj7YaRotvuHmtULpgbVmU56jpNeiSm1d8EozrsANu+h/WV4valrk4e787K3+p8
           irt5F604sPlwDsKRIEDH75roM3ap3TfJjdciY7OUpGN7E+/AVeBBGAY7huI7BD3Ut7
           oplWRkLNoL3eI5dHsKldabXzdJusI3TN8x/LaRo6c2ta+CRIR6vhy7GdK7QJwzPOGs
           VMqyo6HNtNz5opUIo9Np/eNwVRaQc+jxccQWiTcPGFayw24P24JbAwK6Gc5/DKTlc1
           lzegp1k+4OU5eJgeycRou8mx8t2RVRcOZJr2dOX4SpzdfOBSL/U9ufAV9i8VKsSd79
           XtdwkUVRzTyHw==
Received: from 83.24.134.210.ipv4.supernova.orange.pl (HELO [192.168.3.229]) (olek2@wp.pl@[83.24.134.210])
          (envelope-sender <olek2@wp.pl>)
          by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
          for <conor@kernel.org>; 14 Aug 2025 18:31:43 +0200
Message-ID: <d0d7afb6-65b8-4fef-ba4d-1c1320c33c22@wp.pl>
Date: Thu, 14 Aug 2025 18:31:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] dt-bindings: mips: lantiq: Add Lantiq platform
 binding
To: Conor Dooley <conor@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 neil.armstrong@linaro.org, heiko@sntech.de, kever.yang@rock-chips.com,
 mani@kernel.org, tsbogend@alpha.franken.de, john@phrozen.org,
 masahiroy@kernel.org, devicetree@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250813142917.2053814-1-olek2@wp.pl>
 <20250813142917.2053814-4-olek2@wp.pl>
 <20250813-overprice-pledge-2e3bd932992c@spud>
Content-Language: en-US
From: Aleksander Jan Bajkowski <olek2@wp.pl>
In-Reply-To: <20250813-overprice-pledge-2e3bd932992c@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-WP-MailID: c03865ba0398cd1504e28699d3d80d6f
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [URMh]                               

Hi Conor,

On 8/13/25 18:56, Conor Dooley wrote:
> On Wed, Aug 13, 2025 at 04:21:34PM +0200, Aleksander Jan Bajkowski wrote:
>> Document the top-level device tree binding for Lantiq MIPS-based SoCs
>>
>> Signed-off-by: Aleksander Jan Bajkowski <olek2@wp.pl>
>> ---
>>   .../devicetree/bindings/mips/lantiq/soc.yaml  | 60 +++++++++++++++++++
>>   1 file changed, 60 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/mips/lantiq/soc.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/mips/lantiq/soc.yaml b/Documentation/devicetree/bindings/mips/lantiq/soc.yaml
>> new file mode 100644
>> index 000000000000..e1708cd9b07e
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mips/lantiq/soc.yaml
>> @@ -0,0 +1,60 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mips/lantiq/soc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Lantiq SoC based Platform
>> +
>> +maintainers:
>> +  - Aleksander Jan Bajkowski <olek2@wp.pl>
>> +
>> +description:
>> +  Devices with a Lantiq CPU shall have the following properties.
>> +
>> +properties:
>> +  $nodename:
>> +    const: "/"
>> +  compatible:
>> +    oneOf:
>> +      - description: Boards with Lantiq Amazon-SE SoC
>> +        items:
>> +          - const: lantiq,ase
> Half these entries you have added say "boards" but there are no boards
> in them at all. Where are the boards? Only the homehub entry appears to
> be complete.
>
>
> Cheers,
> Conor.


Right now, I'm just adding one router with the Lantiq xRX200 SoC. The 
binding
is prepared for adding more devices in the future. I'd like to add devices
based on the xRX100 and xRX330 SoCs too. Should I remove the other SoCs from
the list now?


Best regards,
Aleksander

