Return-Path: <devicetree+bounces-55836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5B88968C4
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 10:33:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 61E7E1C2650B
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 08:33:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62C615C909;
	Wed,  3 Apr 2024 08:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="dvAhXkPe"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44072F873
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 08:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712133187; cv=none; b=aF9DXMp3ZYOAQ9nnQbTdh1Zo/zxyi5DhoU82cBZcd04z9xwkwL8b7N5jdfCH/4DknVUeUSacl96lrcalwoL2ZsW/Na0I/d6Xlr8I1Oke9q/kijR4FWhAvTg8y8d26PuGfkgcbEb7tdIm/PA2AdRR9aWlNFPL5iucZNZ8IV0e28o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712133187; c=relaxed/simple;
	bh=2Z+Ejko7FofGkIpI4wJ7ZPsjyB8mCnSvFfx+1YEfT4M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VQksMHsHdpOzgSrSxtbTdQtEiQB7zX/aGvl0mTShDR78YrzFkJ4uI5xAOleN/8lrJ+/SeDvHm4zD2yVo7MIEc4bwHvq0DCsqvluSCbrP5NmlL3wJAtm1QPi9+tNDfeSlejyHx9C8XUIEzsiA/F95TqbLdhNtI8oWj4JzRqGY8nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=dvAhXkPe; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1712133185;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9hBwVccZBg0Fl5p97DfphA9YXGRXtnSdOSqA1Wworgs=;
	b=dvAhXkPeEAGLimG4yfkzc0ys/A3P7CsDjBp/NsoImne3rU2t01oD5dnn6QckZ52EeZGcs+
	6lcBnrpv460Gg49QgH15hNRrS0r05NeA/qbvIk3TkbQuxoe+93bVoYmQK0Ihq3eJHapqGr
	f9RuJr/vYBmluVeawNUn4c8mW4Mz4s0=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-433-l1mdvBM0M6OXoGsZ3Q8Nuw-1; Wed, 03 Apr 2024 04:33:03 -0400
X-MC-Unique: l1mdvBM0M6OXoGsZ3Q8Nuw-1
Received: by mail-ej1-f71.google.com with SMTP id a640c23a62f3a-a4dfdbdaf06so347714666b.3
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 01:33:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712133182; x=1712737982;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9hBwVccZBg0Fl5p97DfphA9YXGRXtnSdOSqA1Wworgs=;
        b=ihZAJ9SXwsgWzwpbwwIg2QEuLH3AHfkJJ+oEdzHCnHqPwhbMB2dbWU7KCQhOR8AVI9
         3wjx+9tM6Md1NFEbq2o6aM73DA6OJ61qltSyQuhG58aiC99XYtIEtJroTo3d9Ndy0o3x
         FlgsExbXgZhVa7aGTO441LowZtHUmrUwXXWpk1ArDzz4ENWEhPbPmO67Ca2K9KGOcn2k
         omKRJqUqcOBgrALnqwvz2sovVoZAe9JQd2sfdp1E5ZzJCJzrTA8EVfey+YBH0mBQLr2E
         Gw3crROjAVcb+KOkI/YPTd+wwzvSJFL6U2uKUWgAWLUaB/D2QspCBkP/WFgBaUj8+jsD
         FbiA==
X-Forwarded-Encrypted: i=1; AJvYcCVPT9hkZBRYIVOMTbqZB5E9TTcfPhZ5CYhcyBjhCa91uFao9ywUKD/N1BQLy+/q87votuisBIS1JfnOLqD9FCbGXGjDAG2bKhhh+A==
X-Gm-Message-State: AOJu0YxDgnwbEaMJHlRJW95T039s3PK33EqxvNO5fe/EIsCY45k/KnJ7
	F94nKAx6S9p1rdvUDSoFBA8Jk98JZMwBSpjXxf2M6Z7N9iRuRKb1CweuZup8vyaK+c2oISG/arM
	mcIC4k6AA4ycrXrqu2rra2go0OpAYL12kFl6znVPANxe6xrIMtSg4jA6qERs=
X-Received: by 2002:a17:906:1157:b0:a4e:6414:5afd with SMTP id i23-20020a170906115700b00a4e64145afdmr5759440eja.52.1712133181936;
        Wed, 03 Apr 2024 01:33:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFUYrX1YOrnmR10vdbq+ufbRk4BHlYYJBSP3DuH1BuQ6YlKfpjx3idfoB6rTEHjFrNn1Q5mmA==
X-Received: by 2002:a17:906:1157:b0:a4e:6414:5afd with SMTP id i23-20020a170906115700b00a4e64145afdmr5759429eja.52.1712133181648;
        Wed, 03 Apr 2024 01:33:01 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id jx24-20020a170906ca5800b00a47152e6d10sm7426027ejb.134.2024.04.03.01.33.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Apr 2024 01:33:01 -0700 (PDT)
Message-ID: <283b5056-29df-486f-8a4a-5271af8a5b8c@redhat.com>
Date: Wed, 3 Apr 2024 10:33:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: leds: add LED_FUNCTION_FNLOCK
To: Gergo Koteles <soyer@irl.hu>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Ike Panhc <ike.pan@canonical.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-leds@vger.kernel.org, devicetree@vger.kernel.org
References: <cover.1712063200.git.soyer@irl.hu>
 <8ac95e85a53dc0b8cce1e27fc1cab6d19221543b.1712063200.git.soyer@irl.hu>
 <6b47886e-09ac-4cb9-ab53-ca64f5320005@linaro.org>
 <5864594aa47ecfeb23d5d05a3afc02393f84b44e.camel@irl.hu>
 <a19688d3-5402-41c0-b10a-131cefed5b91@linaro.org>
 <2710283677cf12ca6b826565ec39652f560a43d8.camel@irl.hu>
Content-Language: en-US, nl
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <2710283677cf12ca6b826565ec39652f560a43d8.camel@irl.hu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi George,

On 4/2/24 8:50 PM, Gergo Koteles wrote:
> Hi Krzysztof,
> 
> On Tue, 2024-04-02 at 20:08 +0200, Krzysztof Kozlowski wrote:
>> On 02/04/2024 16:36, Gergo Koteles wrote:
>>> Hi Krzysztof,
>>>
>>> On Tue, 2024-04-02 at 15:55 +0200, Krzysztof Kozlowski wrote:
>>>>
>>>> Do we really need to define all these possible LED functions? Please
>>>> link to DTS user for this.
>>>>
>>>
>>> I think for userspace it's easier to support an LED with a specified
>>> name than to use various sysfs attributes. LED devices are easy to find
>>> because they available are in the /sys/class/leds/ directory.
>>> So I think it's a good thing to define LED names somewhere.
>>
>> You did not add anything for user-space, but DT bindings. We do not keep
>> here anything for user-space.
>>
> 
> The LED_FUNCTION_KBD_BACKLIGHT confused me. Ok, this shouldn't be here,
> I will remove it from v2.

I don't believe that is necessary, see my direct reply to Krzysztof first
email about this. According to Documentation/leds/leds-class.rst
you did exactly the right thing.

Also thank you for your interesting contribution. I have only briefly
looked over your other 2 patches, but I like the concept.

I'll hopefully have time to do a full review coming Monday.

Regards,

Hans



