Return-Path: <devicetree+bounces-100123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC4796C4F2
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 19:09:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 301731C24D48
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 17:09:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DAB71E0B8A;
	Wed,  4 Sep 2024 17:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="Mhe/hP29"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com [209.85.216.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 015D91CC171
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 17:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725469741; cv=none; b=bduHp+ZpJ6jf4si43+s4J8pyqLrMkTQOhnZurWiKeWwgZgnY54cuelKjxNxN7YtrI0k/is1IYndh29SBEGezBYgTU7V6uL+DjEzzISX8C9XtQu4kxHS4iJwjfuydoEMSE7vqA7ViDO6ux0tv7C7hAZFea2W/8UWaXMaP9A905pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725469741; c=relaxed/simple;
	bh=u3ZvcL8BPrB68a4X9IwgbjbbkL0CyD0guw83BJC/mas=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M3QRMVMRppMp0M0M9kAEhg4JTrR9to8Nqa6sFz2TpriVCrsXGLTTm47xkT6z43fmS6j1AZDkn4rZfsbJYWsQJXNAu2bORPfegT3NwaEFSerKQq3TDa59rpguXVSJqICisgV+JE0OFTbNYlujuQhkmqeuadS9Z6S5PyPimfA+Cd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=Mhe/hP29; arc=none smtp.client-ip=209.85.216.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pj1-f66.google.com with SMTP id 98e67ed59e1d1-2d88c5d76eeso3118777a91.2
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 10:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1725469738; x=1726074538; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Iqt+zesRFHLpIS/hqFROtrd7FMYxHqBTvOuaNxUX9g0=;
        b=Mhe/hP29imZ79Fo8IH34TSYWvx4qT7LTBX6c5mx81738ZmhitHViJQWimjnJMMVGCg
         2G7AycooHthozzA4uqZd3e2OJU67mxlO2/EbSPKqMFyxxNcbJIoWsHbJhOmxd5qDNsiq
         JgypQUTTevzpGdXA2ZeauSdlTVnJH5FcFMu7BFohq0JCGd0A0f9ui5bIAixWiqw9GjxU
         40As5GkePD63sgDH7AP48nYmHx2FpjURmcTS5e+gRm3fVCIVlnkGTxPEVOKH3kRRmJVy
         cb9zqalguDakMGOLMVLTNBhZMx9U/dG3zs9AVoVV2lhaKWi7xy/dSTzFjdybP6cC7XIW
         ejGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725469738; x=1726074538;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Iqt+zesRFHLpIS/hqFROtrd7FMYxHqBTvOuaNxUX9g0=;
        b=HhwKVLpPUDZQAjVetyQvbkplBdV6JLJ7rFuVYBi0ybg9c6D54ACrZ49pQ+FOJ8RjC0
         XYEeU+0mEODF+9yDkW1BgzwzEv+9P3oHJQ3Jb0ZLgJeymY/j1/BVXVIwJF9sMK4G7Gie
         UrA71WOKQWvi6pqfHgi0xp2pWtn3mr8dPKVVLMaeEha46Pa2NdmaIOmd7Yzav34GWA/F
         VwXspXnBzQY6tNBXz/vTm0z/2sVp/2KcbGOU6RSMfDhNO/4Nu6zpdA9/+ZZNU+Ud2ecg
         HaQNJKaLriumbQz73dE1ZXEkbN+eWaiV0ShCpVmG5aG8KbLJRfTZYLq6xXUq/WpSTY1C
         Tu9g==
X-Forwarded-Encrypted: i=1; AJvYcCUzpbkdFdGby3F/TZBeAJrQjFyNrYaQVMdj6IKULJvp9RVuRHEn2UyxdKTEW1XD3etz6v5rJ3dtSAS/@vger.kernel.org
X-Gm-Message-State: AOJu0YwdEyzBbwlQt2WvwGxDWLLhH11KWqLHmA7wOw/9l7nVuBkYUucH
	y6PiDdR7KrK9p/96gfO61w1KsC7feoOLq96I149PKuONVSXIP33aEvvmtJSLSg==
X-Google-Smtp-Source: AGHT+IF3Kb+pDTWTbCuoLq+gGygGJqsbJK48Dtfc4WBRAMElYtzZVRlYr9KBQ5TwDHvV7PFjVCf8Ww==
X-Received: by 2002:a17:90a:4d85:b0:2d8:f7c6:e1dd with SMTP id 98e67ed59e1d1-2da55a78a6cmr7812790a91.37.1725469738084;
        Wed, 04 Sep 2024 10:08:58 -0700 (PDT)
Received: from [172.16.118.100] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d84462afb6sm16246387a91.33.2024.09.04.10.08.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2024 10:08:57 -0700 (PDT)
Message-ID: <2d3fd95f-6f4d-49d9-a473-b4c5631a4fee@beagleboard.org>
Date: Wed, 4 Sep 2024 22:38:48 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/7] dt-bindings: connector: Add mikrobus-connector
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
Cc: Michael Walle <mwalle@kernel.org>, Mark Brown <broonie@kernel.org>,
 Vaishnav M A <vaishnav@beagleboard.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Derek Kiernan <derek.kiernan@amd.com>,
 Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Andrew Lunn <andrew@lunn.ch>, jkridner@beagleboard.org,
 robertcnelson@beagleboard.org, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240627-mikrobus-scratch-spi-v5-0-9e6c148bf5f0@beagleboard.org>
 <20240627-mikrobus-scratch-spi-v5-1-9e6c148bf5f0@beagleboard.org>
 <D2AYUH4XY0SK.1SYOUCT0PLAKT@kernel.org>
 <e0f9754e-4d84-4ab4-82a4-34cb12800927@beagleboard.org>
 <D2AZMD2YYGAQ.1B3AGXIC7B44@kernel.org>
 <e2558820-f36f-406d-8f83-95c7188c0ce3@beagleboard.org>
 <CAL_Jsq+6ruu23UrwJ=NUUrh-9R_E5tKREv1AyU24op_uUigpNg@mail.gmail.com>
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <CAL_Jsq+6ruu23UrwJ=NUUrh-9R_E5tKREv1AyU24op_uUigpNg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

>> gpio-map is what you are looking for. It's documented in the DT spec.
>> It was created exactly for this purpose of remapping GPIO lines on a
>> connector.
>>
>> Rob


Hi. I found docs on nexus nodes [1] and tried using it for mikroBUS, but 
it does not seem to be working. Here is my connector:

```

     mikrobus_gpio0: mikrobus-gpio0 {
         #gpio-cells = <2>;
         gpio-map =
         <0 0 &main_gpio1 11 0>, <1 0 &main_gpio1 9 0>,
         <2 0 &main_gpio1 24 0>, <3 0 &main_gpio1 25 0>,
         <4 0 &main_gpio1 22 0>, <5 0 &main_gpio1 23 0>,
         <6 0 &main_gpio1 7 0>, <7 0 &main_gpio1 8 0>,
         <8 0 &main_gpio1 14 0>, <9 0 &main_gpio1 13 0>,
         <10 0 &main_gpio1 12 0>, <11 0 &main_gpio1 10 0>;
         gpio-map-mask = <0xf 0x0>;
         gpio-map-pass-thru = <0x0 0x1>;
     };

...

&main_uart5 {
     status = "okay";
     pinctrl-names = "default";
     pinctrl-0 = <&mikrobus_uart_pins_default>;

     gnss {
         compatible = "u-blox,neo-8";
         reset-gpios = <&mikrobus_gpio0 10 GPIO_ACTIVE_LOW>;
     };
};

```


After some fdtdump, I can see that at least the dtc compiler does not 
seem to do the forwarding at dt compile time. Here is the dump:

```

mikrobus-gpio0 {
         #gpio-cells = <0x00000002>;
         gpio-map = <0x00000000 0x00000000 0x00000025 0x0000000b 
0x00000000 0x00000001 0x00000000 0x00000025 0x00000009 0x00000000 
0x00000002 0x00000000 0x00000025 0x00000018 0x00000000 0x00000003 
0x00000000 0x00000025 0x00000019 0x00000000 0x00000004 0x00000000 
0x00000025 0x00000016 0x00000000 0x00000005 0x00000000 0x00000025 
0x00000017 0x00000000 0x00000006 0x00000000 0x00000025 0x00000007 
0x00000000 0x00000007 0x00000000 0x00000025 0x00000008 0x00000000 
0x00000008 0x00000000 0x00000025 0x0000000e 0x00000000 0x00000009 
0x00000000 0x00000025 0x0000000d 0x00000000 0x0000000a 0x00000000 
0x00000025 0x0000000c 0x00000000 0x0000000b 0x00000000 0x00000025 
0x0000000a 0x00000000>;
         gpio-map-mask = <0x0000000f 0x00000000>;
         gpio-map-pass-thru = <0x00000000 0x00000001>;
         phandle = <0x0000000e>;
     };

...

serial@2850000 {
             compatible = "ti,am64-uart", "ti,am654-uart";
             reg = <0x00000000 0x02850000 0x00000000 0x00000100>;
             interrupts = <0x00000000 0x000000b7 0x00000004>;
             power-domains = <0x00000003 0x0000009c 0x00000001>;
             clocks = <0x00000002 0x0000009c 0x00000000>;
             clock-names = "fclk";
             status = "okay";
             pinctrl-names = "default";
             pinctrl-0 = <0x0000000d>;
             phandle = <0x00000081>;
             gnss {
                 compatible = "u-blox,neo-8";
                 reset-gpios = <0x0000000e 0x0000000a 0x00000001>;
             };
  };

```


So I am a bit unsure. Is the dtc parser in the kernel supposed to do the 
mapping, or is it supposed to be done by `dtc` at compile time? Maybe we 
do not have support for it in upstream kernel yet? Or maybe I am missing 
something?


[1]: 
https://devicetree-specification.readthedocs.io/en/v0.3/devicetree-basics.html#nexus-nodes-and-specifier-mapping


Ayush Singh


