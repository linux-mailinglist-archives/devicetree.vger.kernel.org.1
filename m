Return-Path: <devicetree+bounces-270255-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qELLIfwxpmnKMAAAu9opvQ
	(envelope-from <devicetree+bounces-270255-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 01:57:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 825F61E76BC
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 01:57:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BA4903002F5A
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 00:57:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FB0B1BC08F;
	Tue,  3 Mar 2026 00:57:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NYwgVdul"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9257082D
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 00:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772499445; cv=none; b=XpwehUEFTkqFKXWQ2bR0jAwEWnox50XNAsfm5fwg3epQACil0LzwOddbmsSmwpHpS6Rcc6GaU6jASdUAlpie/9TBWwue6YRpRqGSFpFEZzVFYx1HRFqowRkaFIdAlfCHJWPxvINou8urnwnRL4A8gI2f5+oU8IYtyrlfATy/rAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772499445; c=relaxed/simple;
	bh=KBCyFDfourMtNMGwjDFRmZB31hD2+jEkHKTpEnDx5GE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=npaZ4d5+/6icjFuGb28efMyaWsCmosQPl6X46xp1pHqORde03H+0lFFHnNB7GXR5RfLJ1F3SGYliuGpcxaiHni929nj549XmcA6151OlY2Nn5wooLpOzo0ne4E7FFehXPrQEAlv7ceuNv4dhiSSGawVPbpWr6SY9BTjex+segVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NYwgVdul; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2ae505619baso9152065ad.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 16:57:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772499442; x=1773104242; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+DbRpP4pGqX3L3KGnHSAdJ16AaJ96EbWxB7jPQsFqMQ=;
        b=NYwgVdulSk/WfPGaSXH63OgfRIAVypjuzubpZ4A0eFbxWSRAAk3oz6zlqNnDPTycWb
         Wa2UdMDoL+qdEaoAFlaEI25TfaM2VSDe8mwoErFWK5NCsnLQ2IHsR23mdE0sN0aa1WZf
         kxxrfKI+mz/QVODvmOnGK/k3DL3wwpoSIggjy5WotMO2SsFZkB3VqMCYFMzixWe9i8kr
         abuoHC2fKhqkwLyGKmirtI3/oZgATVM6wgDSIw+mJ688Zv+sB3e5Z60Jyv1wzIOTjNIX
         8e3EKItkx9ZXLu2ZdQ9LgggceWH5pSXduSGoqrs1+Xalj7DBiouNeWcaPMQqo+HuZ5Cf
         870Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772499442; x=1773104242;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+DbRpP4pGqX3L3KGnHSAdJ16AaJ96EbWxB7jPQsFqMQ=;
        b=BC782Xd4swcnB6hijD4yS+aL9WSVCH5zIr+xGHhMS/tsY8ruBT2c91fONDzmcX1rOC
         UyOK3V13UzZdD5msInTQyikfjTzs9BWEMc8RvOpWG83YB/zpATF+htU5BCt5Ll1DP7i3
         tzvp285jEqLnKs7VGKHO4P3QFmbqRS6dCafud6ED9Ztt60o0HkYxyhAJ/3H6j1XdjYV4
         sEY0SIfAsoQDKNm12YI/LtV5uTH9RLQOyojFq9NerUDQoSb5BWHMXOwIBOv3IUSkdORd
         hA/t6+Uh9eKs4Bv3QCsLn+3GtlRAF2Zfl1UIXiOgqKImxm9j9hSMdQ2BysQTF/cYeqab
         97lg==
X-Forwarded-Encrypted: i=1; AJvYcCVkgv7EWitZDsH9lYM/uC1WXDthK6Z0VPxzzAcj4k5tosEDNbeHArMbBQH+VBpSi7uRbXLf4AFoT7T6@vger.kernel.org
X-Gm-Message-State: AOJu0YwA1jZSnSmUF0wpBO9KHmnvYq2bh4Zn+ZKugAxZpshFJLYQTpIp
	vxKbFTjSzzKDbIPLxUJ3wkLzS3TDAG20o8jZT/l9vg1OCH3cDHRVnX+d
X-Gm-Gg: ATEYQzwl5vj5C61nCD9JYp0GIlYohJYUBcAM8Zyz+EnTzQobXZVVdy3r2esAhXnYrcZ
	9GuExQT1VRO41JW4mGSiv/w3M8bc9NI9mFfftURO6r+s4U59azJEuaOdnENjBjLdnqW9KYZN9fC
	AgwfK40yLZYx1bPiKZT8z4wMEzjAKCKofmUdXSA2b2GsfrapbHUAcI8d/sLGLuqsTSqiQZo35Op
	dPxihBtX8nq3dQWrpmXD4MPvYetx16TWTSfYzIW6j0FKjgx9wkiTnpCnLGc+HqG3ellaP9L0UVH
	lZsLod1PR96M7r8FP5okwb1TF0Za92tP2elrHgvcIf8o+kX9/Z9Uqal3UV2eUPvLGWSNQxWAQqe
	uhbrP690OiG1vHYywA9KSmusYDcHYjvJT2hwKFPbhPt3uqprsm+OND4+y9r5uSMAWzOYp3RSDil
	TDMFlks5hu7n8MaPP6WtStrUHFeSOa338umn8OQ994BRFUO/ROagtU3vDGokB3A8h+4w59NoA=
X-Received: by 2002:a17:902:d484:b0:29e:c2de:4ad with SMTP id d9443c01a7336-2ae2e42233dmr126907975ad.24.1772499442458;
        Mon, 02 Mar 2026 16:57:22 -0800 (PST)
Received: from [172.19.1.48] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb5b22fesm207547505ad.2.2026.03.02.16.57.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 16:57:22 -0800 (PST)
Message-ID: <1a6cbd56-2e07-42e0-b7e7-959fa2bf6315@gmail.com>
Date: Tue, 3 Mar 2026 08:57:18 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: i2c: nuvoton,ma35d1-i2c: Add MA35D1 I2C
 controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: andi.shyti@kernel.org, ychuang3@nuvoton.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20260302020822.13936-1-zychennvt@gmail.com>
 <20260302020822.13936-2-zychennvt@gmail.com>
 <20260302-agile-mighty-cassowary-ed972e@quoll>
Content-Language: en-US
From: zychen <zychennvt@gmail.com>
In-Reply-To: <20260302-agile-mighty-cassowary-ed972e@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 825F61E76BC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270255-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zychennvt@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action



Krzysztof Kozlowski 於 2026/3/2 下午 03:20 寫道:
> On Mon, Mar 02, 2026 at 02:08:20AM +0000, Zi-Yu Chen wrote:
>> Add device tree binding documentation for the I2C controller
>> found in the Nuvoton MA35D1 SoC.
>>
>> Signed-off-by: Zi-Yu Chen <zychennvt@gmail.com>
>> ---
>>  .../bindings/i2c/nuvoton,ma35d1-i2c.yaml      | 65 +++++++++++++++++++
>>  1 file changed, 65 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/i2c/nuvoton,ma35d1-i2c.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/i2c/nuvoton,ma35d1-i2c.yaml b/Documentation/devicetree/bindings/i2c/nuvoton,ma35d1-i2c.yaml
>> new file mode 100644
>> index 000000000000..fa8b01e2c5b1
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/i2c/nuvoton,ma35d1-i2c.yaml
>> @@ -0,0 +1,65 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/i2c/nuvoton,ma35d1-i2c.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Nuvoton MA35D1 I2C Controller
>> +
>> +maintainers:
>> +  - Zi-Yu Chen <zychennvt@gmail.com>
>> +
>> +description: |
> 
> Do not need '|' unless you need to preserve formatting.
will fix in v2.
> 
>> +  The Nuvoton MA35D1 I2C controller supports master mode and optional
>> +  slave mode operation. The controller is configured via Device Tree
> 
> Use modern naming, not master/slave.
> 
>> +  and supports interrupt-driven I2C transfers.
> 
> Drop "The controller is configured via Device Tree", because it is
> completely irrelevant. Why telling in DT binding that you use DT? Can
> you use ACPI here?
> 
> And with dropping this it could be one simple sentence.
> 
Acknowledged. I plan to simplify the description in v2 as follows:

'The Nuvoton MA35D1 I2C controller supports controller and optional target mode.'
> With these changes:
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> Best regards,
> Krzysztof
> 
Thanks!

