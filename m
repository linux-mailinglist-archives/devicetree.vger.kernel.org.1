Return-Path: <devicetree+bounces-187002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A2ECBADE77D
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 11:54:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CCF0B188EEDC
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 09:54:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C2B928466C;
	Wed, 18 Jun 2025 09:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="q+BXvvVc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA44B27FD40
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 09:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750240458; cv=none; b=acwjah1Tokn0Nq9kt/+AHpoWFP7MrtgXz+Ik878BR2c6to22KRTslHkIUBgFrmFeBMkigdXiwfshQaLyw+WgEavXaLxLsHxOOVYBebjPCwpD02yPja6OBvwVYzxHnyqImkiW2MZup5pySmKtTt/fQKgMrWV0PwkOvyVg/UMwm98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750240458; c=relaxed/simple;
	bh=rDGQP2zCSI3Kq8k2nJx7sTz5HituVm2R46poLrOXUCg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aFf3gddxYOAwLWxYhtvRcJ5OAjbO+NXh52C9Gv99/zSQhZoEC+QTieaSmet6tU7TspT1NZ5lPrHcpZwJQ9T0s/2UxtwO0MO+pLbIgIHUNzS74+tpRdUblTf6PiCdoxieyBecs0XgOFjAWIHWwsDSWOtmdG1CX8TjPYLDMsFLE4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=q+BXvvVc; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-b1ff9b276c2so4350641a12.1
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 02:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1750240455; x=1750845255; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z7OM2ZSW1/KdTPjxcHsJwOgBjGchYE7u2a2qkQ9RN0Q=;
        b=q+BXvvVcU9FAemX77HEnPsDobCc0eYyAMYVU6/ZxHZuv81og2Au4qhNFa1N6lWwzbD
         KeBf7451acytjEJhC1nUUx78oCMoRoCxivYyPReOOrS30jahfjZ0CpvVQ43IwJdcZ407
         RLtl9P4g+MhgiDRHHg91QV52KKJcKm0QBF1MvOjUjiOfey5cZ4S1v+1d61xdu66/TBJQ
         prXdzjwoV4LDHAA3+ZmkagDVNa5Ivs5VV36GOvaz2DQjPorHnAOiZ3z7jrxmTA5/2hzx
         9vxSBxASB7J9AMNZa4BgMfXQGij/lwRF+tXr8+W/9tFjxmOdFcmsyoYzVRwkHS+wmzdi
         CGiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750240455; x=1750845255;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z7OM2ZSW1/KdTPjxcHsJwOgBjGchYE7u2a2qkQ9RN0Q=;
        b=fXXa5LMwwx67v9KB0iG6544meH915qU2HOrQ+m0bH5wlQgasI5DGY5ZnghL4FPRHYD
         S63Sw60WPPeR2kBCYVMYkeHfDAVg4lZfCW4qPFNKFH5Et4azRaH6Djd8k+kkDWKs1lDt
         1WuyyGwEi4GRDKKI2+D9w1H5dRkQEFtDz0YQ3E1IZJfGJDDsqlSb/aoONSYoZHVDq+Yu
         +OUN6QT66DldkvUJqTUiCWnvi6+o9xejg0VFSCm2Qr/Kz+2spibj5e1t5rEQVEnFa4Ag
         CKxnml6WlXOmuaQv0RpeMA2dtQt3p2Krsn4l83uYH6lzsRX5WhETP8LWeXg6K2kdWBCt
         fEXw==
X-Forwarded-Encrypted: i=1; AJvYcCUI5QehnxcGYjWYSUER02Py5MBI8lF01ROPSiGku9mHiGRb5qgLOJPBn3pGHuNYpKvrq17HzLReWvC5@vger.kernel.org
X-Gm-Message-State: AOJu0YyEYKX7rjT4QQkWTn5he/uUBpPAoW3mcHhdBZq90WBwf+LXbwqV
	2RbUjG3A9v5F3hm/F48TrU82Pf1McltIEBAn3bVVwMLN/+tT7Ei45gL1hlW12zt9Tg==
X-Gm-Gg: ASbGnct9QTmwmQMmo7lUZJW5LbLqpyPNhXGWeoazcszfxpNWUNvYv0kY53vSnSSfynh
	TEse/BsxO4a6+rNrxOUBPuXbFKLLG6p6QRJEaO/Ife/TKVx4SczebL4WJlpN97kKdGR5rL87D3/
	QkxcEjXmC4ZekHZjd2KfvkfcmjsE/ZEc4F3fcj/qIKnTiAZlyjsw3rLhHyaI0Qm6rFW43xN41Sj
	zwYQt+FIvpESOITlwlMveBGOiZulolOnSovv6ZgNxLxf2oZDxaY5kknuTAeVGjBWDpUgAXep4pG
	3+TZPiQz9yjO0iippJ01yafgvO+c+Ov4XuMkK5iYma7Y+XiS1LmVrF3z0zTa2iGo23Md+ops86W
	TjVVxYla5fIMUP1iCatTipdL5PKiERkUGH6GO
X-Google-Smtp-Source: AGHT+IEgJPUsk65beOkZu9M0cr+8y71f3ifPEHacorAq6usiSGZY6JEZWC/qRdPN6wX01NsRo8kQRg==
X-Received: by 2002:a05:6a20:5491:b0:1f5:8cdb:2777 with SMTP id adf61e73a8af0-21fbd48c508mr24739236637.3.1750240454808;
        Wed, 18 Jun 2025 02:54:14 -0700 (PDT)
Received: from ?IPV6:2401:4900:1c80:d33:6370:709d:bd1e:2cb9? ([2401:4900:1c80:d33:6370:709d:bd1e:2cb9])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7488fff68b7sm10498243b3a.7.2025.06.18.02.54.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jun 2025 02:54:14 -0700 (PDT)
Message-ID: <ed6beb97-12f1-4d71-b4dc-b34d4d611b81@beagleboard.org>
Date: Wed, 18 Jun 2025 15:24:07 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] dt-bindings: Add support for export-symbols node
To: Herve Codina <herve.codina@bootlin.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 David Gibson <david@gibson.dropbear.id.au>, Rob Herring <robh@kernel.org>
Cc: Andrew Davis <afd@ti.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org,
 devicetree-compiler@vger.kernel.org, linux-kernel@vger.kernel.org,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20250430125154.195498-1-herve.codina@bootlin.com>
 <20250430125154.195498-2-herve.codina@bootlin.com>
 <0770a47e-fd2f-4b6f-9a9a-b0d539ace30c@kernel.org>
 <20250528185740.4bf91bef@bootlin.com>
 <49e1e1fc-412d-4334-8337-16e352a34788@kernel.org>
 <20250618113232.6d237208@bootlin.com>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <20250618113232.6d237208@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 6/18/25 15:02, Herve Codina wrote:
> Hi Krzysztof,
>
> On Wed, 4 Jun 2025 20:35:51 +0200
> Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> ...
>
>>> Symbols are exported only when an overlay is applied on the node where the
>>> export-symbols node is available. Those symbols are visible only from the
>>> overlay applied. Symbols exported thanks to export-symbols are not global
>>> to the all device-tree (it is not __symbols__) but local to a node.
>>>
>>> If an overlay is applied at connector1 node, it can use the 'connector'
>>> symbols and thanks to export-symbols, the 'connector' symbol will be
>>> resolved to foo_connector.
>>>
>>> If the overlay is applied at connector2 node, the 'connector' symbol is then
>>> resolved to bar_connector.
>> OK, this explains a lot. Unless I missed it, would be nice to include it
>> in binding description.
> Sure, I will add something in the next iteration.
>
> ...
>
>>>>> +patternProperties:
>>>>> +  "^[a-zA-Z_]?[a-zA-Z0-9_]*$":
>>>> This messes up with coding style which I would prefer keep intact.
>>>> Basically these properties will be using label style.
>>> Yes, those properties remap phandles.
>>>
>>> Their names are the name of the label used from the overlay and their
>>> values are the phandle mapped.
>>>
>>> You already have this kind properties using label style in __symbols__,
>>> __fixups__, __local_fixups__ nodes.
>> I have them in DTB, but I don't have these in DTS. The exported-symbols
>> would be in the DTS and that is what coding style is about.
>>
> I think export-symbols has to be in DTS.
> Maybe it could be described in an other way in order to avoid the coding style
> issue you reported.
>
> Hardware:
>    i2c0 from SoC --------- connector 1, I2C A signals
>    i2c1 from SoC --------- connector 1, I2C B signals
>
>    connector1 {
>        export-symbols {
> 	  i2c_a = <&i2c0>;
> 	  i2c_b = <&i2c1>;
>        };
>    };
>
> In order to avoid the coding style issue, this could be replace
> with:
>   connector1 {
>        export-symbols {
> 	  symbol-names = "i2c_a", "i2c_b";
> 	  symbols = <&i2c0>, <&i2c1>;
>        };
>    };
>
> Krzysztof, Rob, do you think this could be accepted ?
>
> Ayush, David, do you thing this could be easily implemented in fdtoverlay ?
>
> Best regards,
> Hervé
>

Well, it is possible.

However, on connectors like pb2 header, there will be 50-100 export 
symbols. So it will start becoming difficult to maintain.

Additionally, the further away we move from __symbols__ style, the more 
difficult the implementation will become since we can currently very 
easily piggy-back on __symbols__ resolution implementation.


Best Regards,

Ayush Singh


