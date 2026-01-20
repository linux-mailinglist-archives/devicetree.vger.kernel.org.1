Return-Path: <devicetree+bounces-257123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 96360D3BCF3
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 02:34:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E59093008F6A
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 01:34:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8DE123E356;
	Tue, 20 Jan 2026 01:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SX5ryuac"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80849235C01
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 01:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768872890; cv=none; b=UBm/pLXnOb1umKwukK845v76nVvWjKTmoDRtXTCR7d8rBuzgxKwSIU6qp0/43LY5cCAgpsezb1IZDph8lU3ZZ7u9Idk8nYJItyMV6TSM/C+y8iy/QSREHUZbfOT7z2Dml8JIDiV1x6Mji4clyELMu10PkhwVy8Ugb5wEN/47P2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768872890; c=relaxed/simple;
	bh=1I0hYB2Z1ZSz2CEv0rmui0vLDSp/UK+vYwUnat+Zg00=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TXB3Yu+xG6OBGFt0Ec0g94DzS6eh+mDrNgMvWIJt9mRcclo7lLJXZMdT1PyGBh+eSgSRzDHH+cZev9SXtOG1ClheSOhaputjTfAQK348QC5EPGY+u+/a7DjCWDGEJxSbH5tfBm1SnCfL4zHJAFf5YzyY98MWQInVTdDQQmpjDdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SX5ryuac; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-352c5bd2769so73953a91.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 17:34:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768872889; x=1769477689; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RrH9sDwa3QtPj5gSU1d7cy8zDFpQYEGB5vrm976c5QE=;
        b=SX5ryuacBAyon+/mamd9tOhqqNmBb9km+ZSZmER02XBAbhiiBTfkPeRGMXVPhEGzPT
         uW5XAcanzd50N9dXzRklTT0QYmj1mGisIy+k7eRV/0sT9D1BFr91qXSocfE/PqEMXUUU
         sKaL1/fgFqimYIkaG/w1MKb0EnKPKOhVtCeVkNhh1IqFF/EAvzdtz7vqtz8fvLbWosfU
         zr/8WvO1RO5pvQiW7WeTrdyZdnv2q+S3TqNVP9rbt9dNnWuLvf5v2zeVN5caK9J/LV0c
         UXb37p5hmjCNxqh32fsAn4OmihpLp66jiC7mioQxeK6FavjIe/6KWJb+a4Iot+DhL2xn
         NXEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768872889; x=1769477689;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RrH9sDwa3QtPj5gSU1d7cy8zDFpQYEGB5vrm976c5QE=;
        b=bgnxTU5EgTLUrPYsCglqma1agq1iKW65btXk7rosB2FW/xX8COVDsu9ngDWGLi7OvE
         fTMiAV3ZofLaI0d3r82Yed9uk5vZVjspBJWANi9WYHdadKlbEtlhejeygfycNv8ikc3b
         23A4C2xiAwIcEcyyJyOC0bH6RfNYh/jQgSYnUOReSMo4UXftNPslJGb4dal0nAobfiTJ
         P4x/entaYZZOYk0tIuZ0UTsH/vksefn1OXzeFr4PKiyqykUHhXl/m9+nx+wBor64FW8h
         REZnpIOcFA/YAU8fhXdAlNQXTOGu02012usAQytrwpuWbWFafPlAui3GMbkWGcCFSH8K
         eIuA==
X-Forwarded-Encrypted: i=1; AJvYcCUkC7dnHkz3o8oGToriGrhg8P82mqvnUqn5PMWkUSiuxysNqty4kIvz8PSOInA99ja+PfywrMJIixhC@vger.kernel.org
X-Gm-Message-State: AOJu0YzqROsPWe3KSyNrPx1+Ur+1/mJxzWBmOgHzdU0xKXY371kGPnhM
	bU9mWHCOFlu7ihanQxRPHncSDVjnkRw1Kg9kshSwuowiIkqTPci4IJcz
X-Gm-Gg: AZuq6aIUuI3CQQkGnxuxTeh7iAX7CUQmrX86YoPoQ6JRMYSa0Pq8B6Aqvs1YLCut/Pg
	I1+xe1vd1rHwMZLTTjme5DIqQa9fAkGaiDil2eNnrTtf0RvU41ydVFEDCYWJ4CyTduguXy/rJiG
	4coeO85E6g/vYdbeBaeIcLP7zM4vkXxOBKcp5yejhdKPKAradWbZK2+YlBIeY2RwKX3lit8bCdK
	9l9+ndvl5tCAZtxvm6bs62XUxl2BhvHI0pYi33xN/zLSGnXjnMuGwfPXtolnVpaKtXt+RMVd42/
	wr5RqMKDXOXt0vsasbucPYXxIrJBYhauBNq7hihEokKKv4OsvyKP+uCME8xrbLtl7bHmnOAP7sH
	qxFRfp1soDrVE2j4J5O066oHfIegbs7sW2yE2eUUkNchda6fxIVv7XkH+qn5JLempTiTJKrGAwC
	VYh40CX2lZZL7uQARa+nbosng4R89co+jrGrz9fKTCURRnd9eviAyR6rZwQTownn/bt3tTHiLGP
	FI=
X-Received: by 2002:a17:90a:c110:b0:336:9dcf:ed14 with SMTP id 98e67ed59e1d1-352c407a272mr335012a91.23.1768872888766;
        Mon, 19 Jan 2026 17:34:48 -0800 (PST)
Received: from [192.168.0.102] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-352677ca9acsm12931529a91.1.2026.01.19.17.34.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 17:34:48 -0800 (PST)
Message-ID: <a5cb949f-34c1-470c-bd04-0b35c249455f@gmail.com>
Date: Tue, 20 Jan 2026 09:34:39 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v8 2/3] arm64: dts: nuvoton: Add Ethernet nodes
To: Andrew Lunn <andrew@lunn.ch>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, mcoquelin.stm32@gmail.com, richardcochran@gmail.com,
 alexandre.torgue@foss.st.com, joabreu@synopsys.com, ychuang3@nuvoton.com,
 schung@nuvoton.com, yclu4@nuvoton.com, peppe.cavallaro@st.com,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, linux-stm32@st-md-mailman.stormreply.com
References: <20260119073342.3132502-1-a0987203069@gmail.com>
 <20260119073342.3132502-3-a0987203069@gmail.com>
 <04df4909-4fdb-4046-917f-2f2e47832c62@lunn.ch>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <04df4909-4fdb-4046-917f-2f2e47832c62@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Dear Andrew,

Thanks for the clarification.

In our design, the Ethernet PHYs are located on the base boards, not on 
the MA35D1 SOM.

The SOM base board routes two RGMII interfaces from the SOM to two 
external PHYs on the carrier board.

On the MA35D1 IoT board, there is no separate SOM and carrier board - it 
is a single integrated board.

I will update the DTS accordingly so that no PHY nodes appear in .dtsi.

Thanks!

Best regards,

Joey

Andrew Lunn 於 1/19/2026 11:22 PM 寫道:
> On Mon, Jan 19, 2026 at 03:33:40PM +0800, Joey Lu wrote:
>> Add GMAC nodes for our MA35D1 development boards:
>> two RGMII interfaces for SOM board, and one RGMII
>> and one RMII interface for IoT board.
>>
>> Signed-off-by: Joey Lu <a0987203069@gmail.com>
>> ---
>>   .../boot/dts/nuvoton/ma35d1-iot-512m.dts      | 12 +++++
>>   .../boot/dts/nuvoton/ma35d1-som-256m.dts      | 10 ++++
>>   arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       | 54 +++++++++++++++++++
> I'm somewhat confused with your naming here.
>
> A SoM generally needs a carrier board. So the SoM is described as a
> .dtsi file, which the carrier board .dts file can then include.
>
> Where are the PHYs? Sometimes the PHYs are on the SoM, sometimes they
> are on the carrier board. If they are not actually on the SoM, the
> PHYs should not be listed as part of the SoM.
>
>       Andrew

