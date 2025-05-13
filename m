Return-Path: <devicetree+bounces-176596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB13AB4AC2
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 07:10:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1D65A1B402F8
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 05:10:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEF701E3772;
	Tue, 13 May 2025 05:10:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="ksygQgw1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DE08BE8
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 05:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747113012; cv=none; b=bS8sB9dnXSyDcUtZ+Y0SgKI5Lx4q3aI9bAKjaTTWwNg+4UwcAEOZhwMNf1htb09nY+UmbpbNbRfs4sAw+kc0M2TLj/VQc8q6sCka0NndRY30gIVaQd4ohx0tZFLeQSoRU43fTbCcWSECktXBK9+lH1BoQgP/kfbvzms2zU6w2PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747113012; c=relaxed/simple;
	bh=cxqjrBx3kTpOHbacDXp/Fe0LkjauDwSUf53IzM3RIHM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aDm8970GugpdhM76nQfTcyBAKJo/wI/e+Lf/cCHDtFvAUIv4gNt08RGwvUuRb7NvkK47iDwvENim5CmQAJRVfCgsMWNs7QxLVwDZsceYUvgBIT3dYAUbEQZPwRhW7chQn5SVIDOh43GeHiFphmEBNp4elIf0FtfS4Ud865rbuOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=ksygQgw1; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-b0db0b6a677so4663711a12.2
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 22:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1747113010; x=1747717810; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=81hnT5JYAGOLBlSsNMic7sDzKs20VH/V/TIv7YvaGSs=;
        b=ksygQgw1+2CEWLR/9hyvr9MEND03eeP5drRyK6cN0tk5ciG5MwJ9RU52hp1h+lCllW
         jhQ2c65wQa20sTroWLD6y0YhdvO2m0IkHKX0VJbL6T6A0w6p8sV47F4PHWRcO78BNBrw
         KHxrs6FjToatxWxhLgiluitqj4ExQo8hzpCcyAG0o7WaWFh1pGkITKAdYvIV2iX+BGhb
         2oGxtjA4KLDe3jwD05vED9s1AR8Yg9YFfRcqQZPhehzpcHNDPQNTJQi5Snw+1hJjgXYH
         oAqUduZYE5D1/ZqMgqIxPSV5ZCVC7FZeDUIkU7P9zyqq0rms9/210rzFf7TjlFR70LaW
         DOgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747113010; x=1747717810;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=81hnT5JYAGOLBlSsNMic7sDzKs20VH/V/TIv7YvaGSs=;
        b=r731pc50t3z2In4Vjgv4LC2Tg/AvskW4zJUtQ6nL1HUZdlMmE5Cnz6XEbtPqS3VmTB
         ROpnE9hW0cEWH4sICmjkOzGyefolf5zXjyAaUL/OHzvj/VVgZnlw8Vlq76QO0Vgh3RSk
         oe+dNe6YbTGkoDpzITtujHjxeoz+EezrxRTugv19xyL/Z+UkKNRnkppkY3xYO4eKThLf
         fQefVYuSXwIkTlLrc6svuNKkLOfycYfmh8RfH8b/RrHpswkzPdyqS+cuQebrncVAjTos
         YuXdvtNELoUCxoB+6OUIJZ2Q+SCyEq1Y8SHZoDraLMMgb1OX+s7716fpnlVBEdfdAcJo
         J23w==
X-Forwarded-Encrypted: i=1; AJvYcCXNIAXnfPfv6ti9kvoErWuit7dKnVOPzxHAJiYu+rivVFPVtXsVtapYMdl79dOo7dBaN8aOtyFGjMfe@vger.kernel.org
X-Gm-Message-State: AOJu0Yzr0Iv+DunoGedlVX24K1th2t/6hg9CLzBCAw9yUA6kJq3JZiWh
	azZCmrLJoIzRnQxxW/z7gCCnrm53rMqpIqYiviXg+R9Xr5m2T9XpuCZvpBS+FA==
X-Gm-Gg: ASbGncvy21a2/naGCHU4dQ6Tu3Vj36d85W07ABmoIPrAzIU7tUJn9BJQdZJQ43On3+H
	Q/XvTzXe6y6H2JuCf2hoz4nfUVFjZr7DwAN+nHHFTxYWcmqWM8pcw1MNi5hhBCOJ6IxhBM/R1ar
	YeWb0hckp3q9iLTomRPOKEkHnQ/A/48FvqP10lvJJhX5u7f9Ph1pBb6F06kaoKlNU21e6DhGMhZ
	Lrmw4rmIlNtGjtk/L8UR5wfZ2fshePk1cEVFOojlurjVuobAvACsbTYLqG6oJ3Z8kTYzYvjdEmu
	FFhN9VEfXHDCBiNj2bnPK35mnc5eMJAB95x4w176aVAir8C/MTkOIpW/cavGM23HLvbDuN4S+tC
	aBZCeVS9qi133P3Q0PDnC
X-Google-Smtp-Source: AGHT+IGfy5kPpmg1u05cDB23GMn6/iiBBg2PQjgjfT2slhmZBcXNsZ9nNvlTSHiycu8Z5JpPXl9tnw==
X-Received: by 2002:a17:903:3bc7:b0:22f:a5ff:ec67 with SMTP id d9443c01a7336-22fc8b3399cmr209564955ad.17.1747113010228;
        Mon, 12 May 2025 22:10:10 -0700 (PDT)
Received: from ?IPV6:2600:1700:4570:89a0:d077:eefe:6c8:eb65? ([2600:1700:4570:89a0:d077:eefe:6c8:eb65])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22fc7549200sm71543555ad.10.2025.05.12.22.10.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 May 2025 22:10:09 -0700 (PDT)
Message-ID: <bae35813-74fc-4a7f-bbad-a4744826bcdf@google.com>
Date: Mon, 12 May 2025 22:10:07 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: connector: extend ports property to
 model power connections
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Len Brown <len.brown@intel.com>, Kyle Tso <kyletso@google.com>,
 linux-pm@vger.kernel.org, linux-usb@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 linux-kernel@vger.kernel.org, "Rafael J. Wysocki" <rafael@kernel.org>,
 devicetree@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 Badhri Jagan Sridharan <badhri@google.com>, Pavel Machek <pavel@kernel.org>
References: <20250507-batt_ops-v2-0-8d06130bffe6@google.com>
 <20250507-batt_ops-v2-1-8d06130bffe6@google.com>
 <174667008518.3134866.16860556665392127379.robh@kernel.org>
From: Amit Sunil Dhamne <amitsd@google.com>
Content-Language: en-US
In-Reply-To: <174667008518.3134866.16860556665392127379.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Rob,

On 5/7/25 7:08 PM, Rob Herring (Arm) wrote:
> On Wed, 07 May 2025 18:00:22 -0700, Amit Sunil Dhamne wrote:
>> Extend ports property to model power lines going between connector to
>> charger or battery/batteries. As an example, connector VBUS can supply
>> power in & out of the battery for a DRP.
>>
>> Additionally, add ports property to maxim,max33359 controller example.
>>
>> Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
>> ---
>>  .../bindings/connector/usb-connector.yaml          | 20 +++++++++++------
>>  .../devicetree/bindings/usb/maxim,max33359.yaml    | 25 ++++++++++++++++++++++
>>  2 files changed, 38 insertions(+), 7 deletions(-)
>>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> yamllint warnings/errors:
I ran this and didn't see any errors on my side.
> dtschema/dtc warnings/errors:
>
>
> doc reference errors (make refcheckdocs):
>
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250507-batt_ops-v2-1-8d06130bffe6@google.com
Even the build logs don't show any error log.
>
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.

My patchset is based on v6.14-rc6 and I tested it on that.

> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
> pip3 install dtschema --upgrade
>
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
>
I did all of the above but make dt_binding_check still passes.

(.venv) amitsd@amitsd-gti:~/linaro-p6-image/src/linux$ make
dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/connector/usb-connector.yaml
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json
/usr/local/google/home/amitsd/linaro-p6-image/src/linux/Documentation/devicetree/bindings/net/snps,dwmac.yaml:
mac-mode: missing type definition

^ This is not newly introduced jfyi.

  CHKDT   ./Documentation/devicetree/bindings
  LINT    ./Documentation/devicetree/bindings
  DTEX   
Documentation/devicetree/bindings/connector/usb-connector.example.dts
  DTC [C]
Documentation/devicetree/bindings/connector/usb-connector.example.dtb

(.venv) amitsd@amitsd-gti:~/linaro-p6-image/src/linux$ make
dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/maxim,max33359.yaml
  CHKDT   ./Documentation/devicetree/bindings
  LINT    ./Documentation/devicetree/bindings
  DTEX    Documentation/devicetree/bindings/usb/maxim,max33359.example.dts
  DTC [C] Documentation/devicetree/bindings/usb/maxim,max33359.example.dtb

Please can you advise on what I may be missing?

Thanks,

Amit


