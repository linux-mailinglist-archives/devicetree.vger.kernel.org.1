Return-Path: <devicetree+bounces-98773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BB39672ED
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 20:11:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 257881F217FC
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 18:11:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22A0C74C08;
	Sat, 31 Aug 2024 18:11:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="ylVd4Od3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF6106E611
	for <devicetree@vger.kernel.org>; Sat, 31 Aug 2024 18:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725127907; cv=none; b=bLk3+lRFf4aTcVU6DG9atTqfj0a1H8ezPURrTRctXwO9mxJ6HoohG2sfSa2s7JXeQ6e7Tz4bhFFn4dxOdX7kv+byBWTJpnCWDx+XpJla40cA0mxAenAUspUPzjizMYQiB1EUgHnmCc6fAp8bm68gE5M2jtRuHdoXWQ3+b2RCM2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725127907; c=relaxed/simple;
	bh=JyNaWK9K0s83lLJcoD0b4TQy7rpDyJf4ZrqoMGJ3XMQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FZwOHHnmUqWrDFXTs6woQHR2MLP/ThSl5AqtwQaxKb1waIxaLBRpZ5SnI7GMrmqsu/znKzSIrILLOr64HhVe5OoKIKlZAKrZjQAVAVeuWFpCMm+iGJUiSdzNNbu9O95VrKmusT6Mpbm5OLo9vx5mPb3nllIPVhB5AWCA/VhBzzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=ylVd4Od3; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-2021537a8e6so24502855ad.2
        for <devicetree@vger.kernel.org>; Sat, 31 Aug 2024 11:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1725127905; x=1725732705; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C+5XzVjLCMuTjYv9Ok00f+cf4AkYWNfkNc3fqTvrp/0=;
        b=ylVd4Od3VL+WmqB1I4T0C2lG7VDHTntSF72nV4SGHvOC2LHkUjywoXw0Fp3i4gK5cv
         7zU3f61uWRP75a1Wz2xBjbm26zW5Sc0qqDK14UCLf3wLachsJp/JaN/3V9YdLHD662in
         VwX9HvlvYhDI0BHxiH+ICK0aUwqmWcrK58bRbNu3HWJRL6Oopm9HRAYYzsb+Q3nDRVPe
         ziJFKLiD/oN04DR+AEkcEthpjujMqZs24girL6KlAe+8JvxLFjOUBsBvPEXfkwYXmJ5P
         VUWIKkz+egpSJ+YuMGmcv6bN5mQYzT2EIIlHWYPG/PKbzf06UQuJACgfOaCHf0mcFVZ9
         xq+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725127905; x=1725732705;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C+5XzVjLCMuTjYv9Ok00f+cf4AkYWNfkNc3fqTvrp/0=;
        b=A5QUPrZ/T5vXSmXbcL8a2GFMDQTLKeQSjuwpgNnxS7SoRkmVXYI9HPcM17gWEb2IK1
         crp8NlmNBuwdxRrp69hTP3h+IeoHcjcqKo2t29OTJmu8SjjATqAlOLlVQmDc0KPNlvVO
         1yN8o9C2uChkbUKX6lX9Y/O9W+/Y1qPoKCbyyVgwzFv/gpEKX7HjoHLgRNUM6ZCfkmYg
         O7h+S41vAkgzSlBfoXCGPotSjgf7GEQxSQtwFCNpjuwc+RmSRplco13dOboB1tr2KK2s
         Cd7oCZSqYWIzxTaPKGP48GW/DLIV28sKeCmYpy1lpYHTQyQ9hzeSCw8fcAi4f9FE20+M
         xoYw==
X-Forwarded-Encrypted: i=1; AJvYcCWQigaWtE9Snr4oQPsfIyWFop4+DxQ7Jucd5UDJ4BqZx+0x1+ZxZXIjuy/716tL459FYXdqoVn970Sn@vger.kernel.org
X-Gm-Message-State: AOJu0YwS+FQpYz5Frs6qfg/qALJfanWivOZOwRiNJrAxX65pNTsbu2dD
	VwUjl8xdnsJerl3dKcx1AEOwKgQizaqJaRyb978gBaR8e3GX1672mKx9oarMxA==
X-Google-Smtp-Source: AGHT+IFQNwjO5fnCQzoxZ9MZgPdmCvdFiQl6lsMfwMOKhxYBfGKuDEbEGB1vFlHxRZvrR2ve39znhw==
X-Received: by 2002:a17:902:d481:b0:202:45a7:84d1 with SMTP id d9443c01a7336-2050c46e83amr105743905ad.52.1725127904987;
        Sat, 31 Aug 2024 11:11:44 -0700 (PDT)
Received: from [172.16.118.100] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-205152d03fasm43302265ad.114.2024.08.31.11.11.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Aug 2024 11:11:44 -0700 (PDT)
Message-ID: <e2558820-f36f-406d-8f83-95c7188c0ce3@beagleboard.org>
Date: Sat, 31 Aug 2024 23:41:35 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/7] dt-bindings: connector: Add mikrobus-connector
Content-Language: en-US
To: Michael Walle <mwalle@kernel.org>, Mark Brown <broonie@kernel.org>,
 Vaishnav M A <vaishnav@beagleboard.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Derek Kiernan <derek.kiernan@amd.com>,
 Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Andrew Lunn <andrew@lunn.ch>, jkridner@beagleboard.org,
 robertcnelson@beagleboard.org
Cc: linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20240627-mikrobus-scratch-spi-v5-0-9e6c148bf5f0@beagleboard.org>
 <20240627-mikrobus-scratch-spi-v5-1-9e6c148bf5f0@beagleboard.org>
 <D2AYUH4XY0SK.1SYOUCT0PLAKT@kernel.org>
 <e0f9754e-4d84-4ab4-82a4-34cb12800927@beagleboard.org>
 <D2AZMD2YYGAQ.1B3AGXIC7B44@kernel.org>
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <D2AZMD2YYGAQ.1B3AGXIC7B44@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

>> But here you can have subnodes, no? These could then be just
>> enumerated as usual.
>>
>> &mikrobus_board {
>> 	mikrobus_gpio: gpio {
>> 		gpio-controller;
>> 		#gpio-cells = <1>;
>> 	};
>>
>> 	spi {
>> 		cs-gpios = <&mikrobus_gpio 1>;
>>
>> 		spi@0 {
>> 			compatible = "mydevice";
>> 			reg = <0>;
>> 		};
>> 	};
>> };
>>

Hi, I am now working on an approach for mikroBUS based on the apprach 
described here: [1]


I am thinking of the gpio-controller approach you seem to have used 
here. So I wanted to inquire if there already exists a gpio-controller 
driver that can create a proxy controller that forwards stuff to the 
underlying actual controller. So something like the following:


&mikrobus_gpio: gpio {

     gpio-controller;

     #gpio-cells = <2>;

     gpios = <&gpio1 0>, <&gpi2 1>;

};


spi {

     cs-gpios = <&mikrobus_gpio 1 GPIO_ACTIVE_HIGH>;

};


There does exist gpio0-virtio, but that seems to be for vm context.


[1]: 
https://lore.kernel.org/linux-arm-kernel/20240702164403.29067-1-afd@ti.com/


Ayush Singh


