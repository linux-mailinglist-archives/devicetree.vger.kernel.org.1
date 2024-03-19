Return-Path: <devicetree+bounces-51735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B830880213
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 17:23:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5918FB23769
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 16:23:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1151F82D72;
	Tue, 19 Mar 2024 16:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DneJ/nvX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CC11E4A9
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 16:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710865011; cv=none; b=KyawP4ufwOhKB2i1+Lv8V2IHWmamyTvt28RpEjCIHMEtVuH7SshiaiQ2g95/oUdSusAFMuNWSJl9n0+EQyFRRr/kAjrJI6n8Yw9N/0WeFt+eGbI1+9TJead3oLwWfO6s3qoBmyTgGNleHWUD92/AvzneHUiiTc8cPbA7x6C+Zs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710865011; c=relaxed/simple;
	bh=jt/z4E2fl/MmVcNLQbE3dr/YDP5CaljyhC9bWYkStRQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ch3h3Cvg4dRb+eNUMdz2xs6y+G+9KkQRp3GdIhKCzS1eBdQlkoQ4wZ2xJittZc0bHBip3tUtz3mAdTDHbTaI8u5o3+hOI+9q9G2BwOVNa5vSoAq179KzJjeBiN8wU4Rgwl7Xm4qQdOp+aLH8VgbpLvZvOFgRZt5DDjuxRdl5GsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DneJ/nvX; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2d228a132acso81631431fa.0
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 09:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710865007; x=1711469807; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zkkIJgJaurA9K8QokEebR7bixjWgXEoceQbAEPubtN8=;
        b=DneJ/nvXqnQFc2si0xLZ9xQjeTkceqMzK+AK0eDYIQeKIcSxftaRneC5MR4Ge4lu03
         5F/SzhI5o3DyJmD/hDLEoFb++nghh13uNtL4NEUakGzOd6ynKrUsJ7MGO4dtrbbVAyEY
         gu+oHZJexLnEDTY9Jk+lggYKDReIw7bJuWo+E01vI9ynlWQ29R6AEJKQqEtid3SKLlyM
         BZn+WbGLCDpalK/HnykEg3sGkAT+zYkbBeiAkIG2UYlKdea8QKnbUpjlYJyFP9NA9MrY
         l8stUThCfjgx1wfETJ0dux9EJlAupLkHQxmUkLolGrVKsb5r6JL6CiyUfE0f59XxzwoS
         tmEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710865007; x=1711469807;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zkkIJgJaurA9K8QokEebR7bixjWgXEoceQbAEPubtN8=;
        b=UPM57vtfBhdbamiwuQusaxpz9VQ516n917FDp4xPvH3gYjAn4/BXEfEL+XY28aeRsW
         NTe3JTHOsVKzW3YiM/LG5r0P3Xm97T+AQMlqTvBFUqERu5RxFAAZlr/ZlOghICvtAVDu
         TZHOhAx+rveytNPZ48GVC/FchPShdyytSvFI9cbSQxYpQn5iQaC1PxK5z2qSz2LU1sWb
         lwmXSgkPVaHos48oedmHS4MNM+6yeJpmN1cysQax+3Jqq6PSCSDBiy0hAewb1+n2csNM
         4NE0LUU85tsFwrMpmhUoaNN6GeicKa3Xge4uNhajff5Nwwb03sUWVPJfyy/89fyWBGQ2
         ZjmQ==
X-Forwarded-Encrypted: i=1; AJvYcCUvs/teVnKtX2qBNF5nr1BgHoWH50XFR37JVvEIDeB1Lm0nEwImRB5mFRuSMb+n4HoZ/uyni1Xvu8+ghtQXOSiHhd6DE1msBoKDng==
X-Gm-Message-State: AOJu0YykPHjrkYaiEGqi74BGygFf9H8yLbjm3zycrtyzwPcHGe4SavLy
	/iYRi1NlHsKbxR9zznBpT1YUp5k5Rkl+Eqx8SsRYUO6k8bfgakyfvlJmkaa6d7Q=
X-Google-Smtp-Source: AGHT+IEMnVT7pDGsySafCWfDKj7dS9ehW1PKUPyGsJqRXzf4ESkY6ATnWPC0NHRaxf2yidkrmVjupA==
X-Received: by 2002:a2e:a794:0:b0:2d3:1043:749a with SMTP id c20-20020a2ea794000000b002d31043749amr2801599ljf.21.1710865006770;
        Tue, 19 Mar 2024 09:16:46 -0700 (PDT)
Received: from [87.246.222.29] (netpanel-87-246-222-29.pol.akademiki.lublin.pl. [87.246.222.29])
        by smtp.gmail.com with ESMTPSA id a32-20020a2ebea0000000b002d42c91249dsm1895250ljr.16.2024.03.19.09.16.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Mar 2024 09:16:46 -0700 (PDT)
Message-ID: <c3a109b0-1672-484d-99ed-656a43143538@linaro.org>
Date: Tue, 19 Mar 2024 17:16:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/5] Bluetooth: add quirk for broken address properties
To: Doug Anderson <dianders@chromium.org>,
 Johan Hovold <johan+linaro@kernel.org>
Cc: Marcel Holtmann <marcel@holtmann.org>,
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org,
 Johan Hedberg <johan.hedberg@gmail.com>,
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
 Matthias Kaehlcke <mka@chromium.org>, Rocky Liao <quic_rjliao@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-bluetooth@vger.kernel.org, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20240319152926.1288-1-johan+linaro@kernel.org>
 <20240319152926.1288-3-johan+linaro@kernel.org>
 <CAD=FV=VUFodCAXEJgfpSqZZdtQaw5-8n_-sX_2p6LuQ2ixLRpQ@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAD=FV=VUFodCAXEJgfpSqZZdtQaw5-8n_-sX_2p6LuQ2ixLRpQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 3/19/24 17:10, Doug Anderson wrote:
> Hi,
> 
> On Tue, Mar 19, 2024 at 8:29 AM Johan Hovold <johan+linaro@kernel.org> wrote:
>>
>> Some Bluetooth controllers lack persistent storage for the device
>> address and instead one can be provided by the boot firmware using the
>> 'local-bd-address' devicetree property.
>>
>> The Bluetooth devicetree bindings clearly states that the address should
>> be specified in little-endian order, but due to a long-standing bug in
>> the Qualcomm driver which reversed the address some boot firmware has
>> been providing the address in big-endian order instead.
>>
>> Add a new quirk that can be set on platforms with broken firmware and
>> use it to reverse the address when parsing the property so that the
>> underlying driver bug can be fixed.
>>
>> Fixes: 5c0a1001c8be ("Bluetooth: hci_qca: Add helper to set device address")
>> Cc: stable@vger.kernel.org      # 5.1
>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>> ---
>>   include/net/bluetooth/hci.h | 9 +++++++++
>>   net/bluetooth/hci_sync.c    | 5 ++++-
>>   2 files changed, 13 insertions(+), 1 deletion(-)
>>
>> diff --git a/include/net/bluetooth/hci.h b/include/net/bluetooth/hci.h
>> index bdee5d649cc6..191077d8d578 100644
>> --- a/include/net/bluetooth/hci.h
>> +++ b/include/net/bluetooth/hci.h
>> @@ -176,6 +176,15 @@ enum {
>>           */
>>          HCI_QUIRK_USE_BDADDR_PROPERTY,
>>
>> +       /* When this quirk is set, the Bluetooth Device Address provided by
>> +        * the 'local-bd-address' fwnode property is incorrectly specified in
>> +        * big-endian order.
>> +        *
>> +        * This quirk can be set before hci_register_dev is called or
>> +        * during the hdev->setup vendor callback.
>> +        */
>> +       HCI_QUIRK_BDADDR_PROPERTY_BROKEN,
> 
> Like with the binding, I feel like
> "HCI_QUIRK_BDADDR_PROPERTY_BACKWARDS" or
> "HCI_QUIRK_BDADDR_PROPERTY_SWAPPED" would be more documenting but I
> don't feel strongly.

Yeah, I thought the same.. and the binding, perhaps could be generic,
as I have a strong suspicion Qualcomm is not the only vendor who
made such oopsies..

Konrad

