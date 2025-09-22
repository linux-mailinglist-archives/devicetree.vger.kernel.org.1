Return-Path: <devicetree+bounces-220122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 070ECB92031
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 17:42:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 08AEF19026D1
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 15:42:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB0CE2EB844;
	Mon, 22 Sep 2025 15:42:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="QEZAokHc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E652EB5B9
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 15:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758555738; cv=none; b=jMjpN5AjsFGr7kzPSJ3SHlvjjPB4RsBe7MJpBgAa/bJxwHynem7TSE8WViShMbfVhN2txd+7lmesByjREGiRLy+274WXOmnKZIdmX5Fbhxg7wRNNsVAdk8B5mywcbfa6STzE/VcS7fNiTvM/9nrFp7KGGOHqMOSlj7GuiOt9h64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758555738; c=relaxed/simple;
	bh=46Fwa5GH7T8G+aDL/8NwZ8OeukXWlDLBDbwbkFuA9QA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jyaL6Al+iNEAhriVs/hDKujDcp1IPl6QOxeoC64pG9HIZ1Zn2BKZvdSlCA903G8Sc1J5BxAKDTqmAwgLDWqNFg+n5PlSzUxGQi8bTKpJTtxp21dhexpp7UBe2zubU4ornfIMdKOH/PTR9YzeufoFXgQm6tNaSihejOt/BqRdxDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=QEZAokHc; arc=none smtp.client-ip=209.85.166.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f169.google.com with SMTP id e9e14a558f8ab-4248b13dc1eso28412035ab.3
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 08:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1758555734; x=1759160534; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fCb28mlSlNfcpBhhz89Sqz+h4hruBEOLY8zc9ehwxLQ=;
        b=QEZAokHcuvwKWdf5WXh4nhGBq4pPH2+tuWs/W34rzRFuP9oRXhfORzSVbubMNlY8RU
         xm/DY9BPw4xRKfPlpzSclaPWgJ8wTeyB0QzVF6cVsMAfmaQA1m8hUrmfSqhc7USD8SwL
         yb42RRkt36Ga78QdBQPZIcQ8U5klulG0OdQVRcluMoVMBrdenl/z8EK7CGyE1BseRObW
         LG62UxJlc3y/dwFt9Mo+tq3d3HX6n3WzPCVeZuutcAU+UqDYf6RUmqsQxGdQ8cVrRW2/
         05oS886aYzkgeVZKWCz+zqkmGEdiZPICzORRU9QEIB/Ej8ZeD6a0gloYKwGCbPtJtI8u
         uNyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758555734; x=1759160534;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fCb28mlSlNfcpBhhz89Sqz+h4hruBEOLY8zc9ehwxLQ=;
        b=HQR+bl02ryMvb/wVrBzhMnxiQ6x5CJxoH88TPmPaEynaLKEMfJSghlEa6D+j7X8GyS
         RAE4+4fVOo326PUpQc/7iGS4Eu3c3KadtB7Mu4lDV5ktTfZzKPjoEghxk4EQNHe4zPwU
         9PYdh5Vivj1VAKnLoR9skAoqe+Gm2K3Y1kaEQxe1ZrqM8c6Of/1WL/NZqw6MaWVbQUHy
         ZWNWsLnles9AKo2OKF4hcOs/eFtqWCxCnR+1eIgFoHKW7NgMRmU2+VnbnJzj1wXWRbvJ
         hBKsMtaDikjGkt8+zydAt6jH1Z00qFZXzgd8U314JY63OhQDadl1401bivuRBIf8lioR
         iKCA==
X-Forwarded-Encrypted: i=1; AJvYcCU/Zbe8VoFd7eY5odRiasQHNcTYtjJ5cxN/40Xl4d0Bf6TG2MD3f3qQislapJVigsZSyE82Qnj4S05P@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3gaJZzgem73NB8FaXhRFf5OhC/4iSISU1k00TMNbEVhusd1ux
	95W6vPW+DlfN7vInvT41MeBhAotuMDgT1hiomT/ABTyeecUw08XVjQjzmlMidLXyGpg=
X-Gm-Gg: ASbGncsz7ikglPtGD2V01CHL+CyalXtyUKF3blS8j5OAbl/BNH79zKqh5E+F3BvFHr5
	Oy5+uFHTTkGx75TeOBZqIHx+z3KpcgotCROdMivTqLHIRmeOoRcnZVv9ZYouYn080iJzoy8Tz4m
	JqEpIvg01SUCSjk4CFgQ2hhgy2SVi5SXeng5ZihCWbhiPQbNNBWazkMmd20x+mGf+tVHZgS56S+
	PLOs6xw3ZM5fmdsMCtRaQY47KyUPsCqgiugjPWNC+tTW8RXAvGA5PioerPCnvWrRnvPAbGRj2Fh
	j7nLKdbps5Ue2IAwZOr8L4E6PBDansGgSFegUdwCPw+XUW54se5gFwXK8FtW7xT3gQBloRTkoJq
	7DisYB7WZUNy2qxDQC6ICcMirB6GLEbon573E+tlRnLxcwwuaXKODho5WjfjD9A==
X-Google-Smtp-Source: AGHT+IEN4LGz38AGZZTp4ukzEKIPIUkdoS/Gnv7RkPq76qCV6jt3rdGb1C+1QpNl8gxWwynbDMr/lQ==
X-Received: by 2002:a05:6e02:194d:b0:425:73c3:d25a with SMTP id e9e14a558f8ab-42573c3d2demr73984785ab.16.1758555734141;
        Mon, 22 Sep 2025 08:42:14 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-4244afab539sm59790485ab.27.2025.09.22.08.42.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Sep 2025 08:42:13 -0700 (PDT)
Message-ID: <3fe0ffbe-b4fa-4585-b2d6-2437ade84928@riscstar.com>
Date: Mon, 22 Sep 2025 10:42:12 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] riscv: dts: spacemit: define a SPI controller node
To: Vivian Wang <wangruikang@iscas.ac.cn>, broonie@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: dlan@gentoo.org, ziyao@disroot.org, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, alex@ghiti.fr, p.zabel@pengutronix.de,
 spacemit@lists.linux.dev, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250919155914.935608-1-elder@riscstar.com>
 <20250919155914.935608-4-elder@riscstar.com>
 <50456256-fc9e-4de5-a512-5749b832dc3a@iscas.ac.cn>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <50456256-fc9e-4de5-a512-5749b832dc3a@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/19/25 9:57 PM, Vivian Wang wrote:
> On 9/19/25 23:59, Alex Elder wrote:
> 
>> [...]
>>
>> diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
>> index 6cdcd80a7c83b..f8c37d16968e4 100644
>> --- a/arch/riscv/boot/dts/spacemit/k1.dtsi
>> +++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
>> @@ -856,6 +856,22 @@ storage-bus {
>>   			#size-cells = <2>;
>>   			dma-ranges = <0x0 0x00000000 0x0 0x00000000 0x0 0x80000000>;
>>   
>> +			spi3: spi@d401c000 {
>> +				compatible = "spacemit,k1-spi";
>> +				reg = <0x0 0xd401c000 0x0 0x30>;
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +				clocks = <&syscon_apbc CLK_SSP3>,
>> +					 <&syscon_apbc CLK_SSP3_BUS>;
>> +				clock-names = "core", "bus";
>> +				resets = <&syscon_apbc RESET_SSP3>;
>> +				interrupts = <55>;
>> +				dmas = <&pdma 20>,
>> +				       <&pdma 19>;
>> +				dma-names = "rx", "tx";
>> +				status = "disabled";
>> +			};
>> +
> 
> Is storage-bus the right place for SPI? I'd have thought that SPI
> wouldn't need its own dma-ranges if it does DMA though &pdma.
> 
> I know "dram_range4" is where SpacemiT put it but I'm not sure if that
> makes sense now.

You're right.  It belongs in the dma-bus region.  I will fix that in v3.

					-Alex

> 
> Vivian "dramforever" Wang
> 


