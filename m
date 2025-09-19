Return-Path: <devicetree+bounces-219200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1934B88779
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 10:48:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 95779565C3C
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 08:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8247B2C028E;
	Fri, 19 Sep 2025 08:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="YTD5LzHs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8911224EA81
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 08:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758271692; cv=none; b=l89E+sfhTZrgsl/D/UeAXrUhj53vjMEtGNgFuqvMZa9xqzCqENn/8rceaCk4IJXZsKS1bEy6F7yc6to844ns+wVVfGW+eeqpl7KtgM6IhVUpuG/5m+UAjZSvDn71MSjw3KiR3TVwBFM/znInl3kMGkrCrPVVqHv/ljLonagTVwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758271692; c=relaxed/simple;
	bh=DRKQQo7E0XXI5t1Nl2xKgdV9ZjFBGXh+yL905d9NgOY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rRaiyTHh6iH1rAKQzcqVZB3Va3qJnWTSUur+LOVWN9/OJgaafvPG+q50Bhc/h/KQssNFBgwWETDgg3nshOdxD1PTl8hAv7oLhF35KFJW1mljZmxekdZESBRX8f9Z4SSgXTFk8SL961E67Q50iMMX9G8S2f/WHIyo52NBWoeUkvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=YTD5LzHs; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-45f2cf99bbbso10246385e9.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 01:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1758271689; x=1758876489; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eeKy21799Hcr7FkiQNz9qpF/GKHks2yWa5KvVvnnvBs=;
        b=YTD5LzHs/2JghmXjuOtJLVaVWPiSNLYgNIeuGJ8sHtXycY/v5FjZCotRh2WKCxEFEo
         JraQFBcpSLdvPh2MYd9mzXDnyc12btnHSYK5qoHZOSsxtrf8YR7iyBAC7HQaD4VDS7hv
         w66rlaqAAwVGwdXf+ckp2C5J1lPFLNDQwQxh2sMG50TOAqKF/qneRLtAAlsVrwzn7fBJ
         1VptB56yQW2oL7+mTi9gY31Nu+OO4728nQs58ZFA2WcJ7/ZdlQLIppWUFYiOKkDE+TLU
         3G4J5xzfgF0WLGb2wwzBoUk4MA4RpHXdL4dRqrv6tkLd+jkejk4JVJJ8rR7Hp3wVEoel
         0JEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758271689; x=1758876489;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eeKy21799Hcr7FkiQNz9qpF/GKHks2yWa5KvVvnnvBs=;
        b=V6JeJT9ShU7ykw0uWAvX4SwNNXcK8mYNY5yWzfZhSGL9T0QZQtiJ9/QFDFJ08rwcrV
         L9LEsAUi5AKwMeJpUAAfQ+WKL1HA6KfSMy8LGH6UNlZ6A1KGKL3J76T9nJDUIl/O0+ZG
         64SXVFUT54OnHGC9rRIWhaC3Mx5IDnovq1UIWvYt70Nvl2ebaMmZ/HUT5OnZXWYFNVEv
         e1R8qQaZ7aJQ3JlOYAQGK7NsujiMMtGdpzrFx3alkk4Oj9tOqyLquAW//ADikg6cwEqu
         Bu/VQoMccD0s5QYtDmQBuk/cE2FcS0gHjC8vFwKFfXGTNnlNsVSsJvpKacZ3zYxMZ3D4
         QMtw==
X-Forwarded-Encrypted: i=1; AJvYcCVEjzqO9SVhnEhjJ3A8gVH/Lg8Gug01SMYPuWH9159UsyH43Q0SAlN9UJCd/aw/u7TKrFjNdZq3i/MP@vger.kernel.org
X-Gm-Message-State: AOJu0YySUb03dvRMv7D64e10CidQnL7FsiWYK8eV+O4F30+PS0qcT7f+
	yHppzJOn1rJDG06dTD30r1IoUXeM05Dyqpziw0P0q20icG+720dGdmml8qvkPYifrHA=
X-Gm-Gg: ASbGnctMS49C3u9OmeST2iVUTtNciOisYEwhYAUIEIOqm7Bq85bhpSpU3xkFzLzEjbg
	WEzDh6/u52jMkWGl45sbKhvAVuJOkNbvqftLAeZJ29HURf1SZO778qmafwk6JOP57oJ6TU9GJhT
	bAxU1K2b9wPVPpsdX6kM546o7cvJY5hGBLqBsy1PHXm/uaxOGCST7pZVj4eVBCoB5ofGr0MuS5h
	+IsqlU0UukUXlATQ3VIZvGPKczfw8XlzWvDiaVluxex+vV3a44t2D8Y7+ojxK/Kcvnfjuj/MuSc
	wfAaY9a0rvA+3aYG5eeU7K1goELy5TNt4PO0uaF1Xszy216Zn7PYeAS9FMTX77BxlnsbGHSYB5i
	w9ZUWlDgo82kgitL4lVZsY2KfPoExNNg=
X-Google-Smtp-Source: AGHT+IEcfSBKA6EVtbz44CtdpDIr7jJoD+o0et3ddP2anoSqvYQpa11KA6TpHEkqTDry3s/PDolXgw==
X-Received: by 2002:a05:600c:c4aa:b0:45b:8f5e:529a with SMTP id 5b1f17b1804b1-467e7120cf3mr18971265e9.14.1758271688605;
        Fri, 19 Sep 2025 01:48:08 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.153])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4613e849a41sm115536495e9.20.2025.09.19.01.48.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Sep 2025 01:48:08 -0700 (PDT)
Message-ID: <a3ce3fd1-6aca-49e4-b86b-75557526d62e@tuxon.dev>
Date: Fri, 19 Sep 2025 11:48:06 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/6] arm64: dts: renesas: rzg3s-smarc-som: Update
 dma-ranges for PCIe
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, bhelgaas@google.com,
 lpieralisi@kernel.org, kwilczynski@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, magnus.damm@gmail.com,
 p.zabel@pengutronix.de, linux-pci@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20250912122444.3870284-1-claudiu.beznea.uj@bp.renesas.com>
 <20250912122444.3870284-5-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdWP638eB_p9xMAqZmOnuc6n7=n31h6AqV+287uvqQEdww@mail.gmail.com>
 <c2fc5f6b-0e7c-464e-89a6-35dc76177d18@tuxon.dev>
 <CAMuHMdWeHoUe-=7TDetnDQbLQsKGf4pDGpSdz3xEVLs_Rst9qQ@mail.gmail.com>
 <0a20c765-ff72-4c03-af84-dff3f4850fa4@tuxon.dev>
 <lunqwki2orbf5gjyo4a5kz6ko3rs5w6fspbantqcv7b2vxe5ku@734remr6z4lp>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <lunqwki2orbf5gjyo4a5kz6ko3rs5w6fspbantqcv7b2vxe5ku@734remr6z4lp>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 9/19/25 11:25, Manivannan Sadhasivam wrote:
> On Fri, Sep 19, 2025 at 10:38:52AM +0300, Claudiu Beznea wrote:
>> Hi, Geert,
>>
>> On 9/18/25 13:00, Geert Uytterhoeven wrote:
>>> Hi Claudiu,
>>>
>>> On Thu, 18 Sept 2025 at 11:47, Claudiu Beznea <claudiu.beznea@tuxon.dev> wrote:
>>>> On 9/18/25 12:09, Geert Uytterhoeven wrote:
>>>>> On Fri, 12 Sept 2025 at 14:24, Claudiu <claudiu.beznea@tuxon.dev> wrote:
>>>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>>
>>>>>> The first 128MB of memory is reserved on this board for secure area.
>>>>>> Secure area is a RAM region used by firmware. The rzg3s-smarc-som.dtsi
>>>>>> memory node (memory@48000000) excludes the secure area.
>>>>>> Update the PCIe dma-ranges property to reflect this.
>>>>>>
>>>>>> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
>>>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>
>>>>> Thanks for your patch!
>>>>>
>>>>>> --- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
>>>>>> +++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
>>>>>> @@ -214,6 +214,16 @@ &sdhi2 {
>>>>>>  };
>>>>>>  #endif
>>>>>>
>>>>>> +&pcie {
>>>>>> +       /* First 128MB is reserved for secure area. */
>>>>>
>>>>> Do you really have to take that into account here?  I believe that
>>>>> 128 MiB region will never be used anyway, as it is excluded from the
>>>>> memory map (see memory@48000000).
>>>>>
>>>>>> +       dma-ranges = <0x42000000 0 0x48000000 0 0x48000000 0x0 0x38000000>;
>>>>>
>>>>> Hence shouldn't you add
>>>>>
>>>>>     dma-ranges = <0x42000000 0 0x48000000 0 0x48000000 0x0 0x38000000>;
>>>
>>> Oops, I really meant (forgot to edit after copying it):
>>>
>>>     dma-ranges = <0x42000000 0 0x40000000 0 0x40000000 0x0 0x40000000>;
>>>
>>>>>
>>>>> to the pcie node in arch/arm64/boot/dts/renesas/r9a08g045s33.dtsi
>>>>> instead, like is done for all other Renesas SoCs that have PCIe?
>>>>
>>>> I chose to add it here as the rzg3s-smarc-som.dtsi is the one that defines
>>>> the available memory for board, as the available memory is something board
>>>> dependent.
>>>
>>> But IMHO it is independent from the amount of memory on the board.
>>> On other SoCs, it has a comment:
>>>
>>>      /* Map all possible DDR as inbound ranges */
>>>
>>>>
>>>> If you consider it is better to have it in the SoC file, please let me know.
>>>
>>> Hence yes please.
>>>
>>> However, I missed you already have:
>>>
>>>     /* Map all possible DRAM ranges (4 GB). */
>>>     dma-ranges = <0x42000000 0 0x40000000 0 0x40000000 0x1 0x0>;
>>>
>>> in r9a08g045.dtsi, so life's good.
>>>
>>> +
>>>>>> +};
>>>>>> +
>>>>>> +&pcie_port0 {
>>>>>> +       clocks = <&versa3 5>;
>>>>>> +       clock-names = "ref";
>>>>>> +};
>>>>>
>>>>> This is not related.
>>>>
>>>> Ah, right! Could you please let me know if you prefer to have another patch
>>>> or to update the patch description?
>>>
>>> Given the dma-ranges changes is IMHO not needed,
>>
>> I kept it here as the driver configures the PCIe registers for the inbound
>> windows with the values passed though the dma-ranges. This is done through
>> rzg3s_pcie_set_inbound_windows() -> rzg3s_pcie_set_inbound_window(). The
>> controller will be aware that the secure area zone is something valid to
>> work with. In that case, if my understanding of PCIe windows is right, I
>> added this in the idea that an endpoint (a malicious one?) could DMA
>> into/from secure area if we don't exclude it here?
>>
> 
> That's true. But do you really have an usecase to setup inbound window for the
> endpoints? What does the endpoint do with this memory?

I don't have a usecase for this. I did this update just to be safe for the
described scenario.

> 
> - Mani
> 


