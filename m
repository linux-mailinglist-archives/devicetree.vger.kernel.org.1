Return-Path: <devicetree+bounces-242501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 61100C8B2B4
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 18:18:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CFFBA357A67
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 17:18:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 805BD23F41A;
	Wed, 26 Nov 2025 17:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nzFn56Kq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85A8223E25B
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 17:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764177479; cv=none; b=tEQC0upsysA/CxrugtFj/fFE7ph5S385f1lr8R2OokDn/t7MziLdqUMmiydEujBj6UEscNPNB2NztRX51Y9VENl3XbA+38wXwhhfPN44VDffNuHkf86Up7MX86iHiU7tZbvP6i0vkCPeiGsZ4sWHAAcO1LkoWidcxB+tZK3jRXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764177479; c=relaxed/simple;
	bh=3y6SB68ie0txKnHoViDfxbae5Abh2qcvNZUSo+HHpU0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mM4bNGFBUsyysn1JrAxjETKG9whZlrlrhcNI+Pn4UAja02DOCdS53Qk9GwSxMZuTLOlR7JyJat9Cu64/bDGvgxwAt2GZRihlNmntnYjODnwIagJqAz4QnP/mrdKXjRT358fnNmFbZ0Lywg8SNrdFER5pY+b1D5O2+h1QgKoDIp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nzFn56Kq; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-37b657f6e24so44241fa.0
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 09:17:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764177476; x=1764782276; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jjVjPsI8gv3VbQ72UKGcVzIQLX4fJScv+tZF2KJrJwk=;
        b=nzFn56KqAJP+y3Jx2tzHx3IW3n3MmEwK+Hrfe4gZDwrBqhYF75EpKpLZD5zg5E6v+x
         tYddU6zOAASgvgCiwoM7lKKDFV6YQe4tQMABmg5MECFLtF06nTFRiCWs5LLmTpOhoJQB
         9ikeE8sFxE0+lH8AmRTYQmBSW1ZBAtlVFyfsjBJjHYWXtEESVPRNgY6yTkfhjGVJnyQ7
         EdqPZ8U0y9d/+xVWrnG6CD18ARfBkDTDKIfOiznP8w2loahGcXvtZ73idJO+hOlItVGF
         uM4zwIHfXPL9FT02ZQENzsaPvUC3YEpD5gHjFYDW+wqY4QOQRU4+ehVBsWvG5Am6F76l
         5c0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764177476; x=1764782276;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jjVjPsI8gv3VbQ72UKGcVzIQLX4fJScv+tZF2KJrJwk=;
        b=b3CS0OPNUADCI613VxgKNvH+tNsjjVqJYYf3MsVs2l1jbC6Q3NCuHKiOVvSK4HKbAE
         6bRFoWPynwKg4q5M837BW3yN0rBBd3jF0ePZYz5DnPwumHSX1/w6m9ZvNkJgyzM864nn
         igkgfPivm6Or1SsIYVkfk1Sn3AFkm8bZ3B3sdsHdAxoAcZeOX8IS1y2Wa0taLUIkrYW6
         zzxjdTmtgG9I83g91lGpiMvulw/xx+9ia48gKuB+re/ex7Y1wMkagG0c2dQlr2AZftGB
         l0Hr+KCTyY54vdpq99Ce/cv5l1NVswY0shmvkyLiSbKNSMqvrUP7qTavF6KF5YBK5GrI
         +XBA==
X-Forwarded-Encrypted: i=1; AJvYcCVaXxZthgtDu466j662qaGvqa1dkfV6qEOVnTxHijM6RShdbDblVMrDuRZtcrMnkGLYzxuGtenROJ9r@vger.kernel.org
X-Gm-Message-State: AOJu0YzF7v7MoqvLcMnljKrp4TnQqneqh7JMQNnVj0CoMI/JZXr848pS
	sf33fkTigB+z7BI4VLeIyCeZkh/7CoeoRdNQpVmX3/5DelgXvyXpDFM3LVBuac3+IZw=
X-Gm-Gg: ASbGnculQaXOBVKjXz+FBCVTsTdQYFxrU5MC1OfRYFgNhb5hUwXvfz3s/EKovL17NQJ
	2L177ATLoB8rrpoKY9stLNLopKrrCoYLPM3UNmMj9jZpUPxzECZtsiOfKwNay8f9r/cv/8RBwPH
	XofAY2OL2Q2x/bdyAnYHXmNCfqPoGB5MI6Q6/oBSSFWJjKH1Oe4qE+dO721ISGzSwIi5H03Cj1U
	+GcPzQS/i6WEKhSGsBBBjHz3KmqzTOx+N2AqeEiD6UtRHt4E2+N6BreubLLh9W8KZkos9F6T1Rt
	mjKdA93OTr4OjmNN55sVuVxa3f6uEdq0zAvWOzQ5Ccv93AkENflPCwgvfMEnp672WXL3dvFq2E1
	5wZ5MkUdJN0t4NJ4xiDlWlvDR9hM1SJn07k/ol6wbTeYXUzhG0G0JeUnyPhKirlKdq5845RB7ji
	ufAl14ERltL+2pKso0nEwxF2AKTa+dzRhhsrIWtxiZ61gCTjH9Y8C5CdAEEC4HBHr/Hw==
X-Google-Smtp-Source: AGHT+IEBB9ywUGsZdvYCVjtmtHQkpGExa7GrziZsw3x4zQJsI/QdTZqEjSoQFCogPgMJnvdqJmoa2A==
X-Received: by 2002:a05:651c:3151:b0:37a:84e5:a0e8 with SMTP id 38308e7fff4ca-37cdc38c2d9mr22822131fa.6.1764177475598;
        Wed, 26 Nov 2025 09:17:55 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969dbcd225sm6216283e87.93.2025.11.26.09.17.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Nov 2025 09:17:55 -0800 (PST)
Message-ID: <ffdeca69-baf8-4c8e-9b48-244255211f9b@linaro.org>
Date: Wed, 26 Nov 2025 19:17:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] arm64: dts: qcom: sm8x50: Enable UHS-I SDR50 and
 SDR104 SD card modes
To: Val Packett <val@packett.cool>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20251126012043.3764567-1-vladimir.zapolskiy@linaro.org>
 <bdf3f54d-a223-4eff-aa71-0d74a83ef46d@packett.cool>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <bdf3f54d-a223-4eff-aa71-0d74a83ef46d@packett.cool>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Val,

On 11/26/25 18:14, Val Packett wrote:
> Hi,
> 
> On 11/25/25 10:20 PM, Vladimir Zapolskiy wrote:
>> The reported problem of some non-working UHS-I speed modes on SM8450
>> originates in commit 0a631a36f724 ("arm64: dts: qcom: Add device tree
>> for Sony Xperia 1 IV"), and then it was spread to all SM8450 powered
>> platforms by commit 9d561dc4e5cc ("arm64: dts: qcom: sm8450: disable
>> SDHCI SDR104/SDR50 on all boards").
>>
>> The tests show that the rootcause of the problem was related to an
>> overclocking of SD cards, and it's fixed later on by commit a27ac3806b0a
>> ("clk: qcom: gcc-sm8450: Use floor ops for SDCC RCGs").
>>
>> Due to a missed setting of an appropriate SDCC clock operations in
>> platform GCC driver the workaround of dropping SD card speeds from UHS-I
>> to high speed was spread to SM8550 and SM8650 platforms, and since
>> the fixes in the clock controller drivers are ready [1], it should be
>> safe to remove the speed mode restrictions from SM8450, SM8550 and
>> SM8650 platforms.
>> [..]
> 
> I see you have tested with dd on the raw block device, but have you
> tested hotplugging SD cards that have partition tables and filesystems
> on them?

the test results given in the commit message are for demonstation purpose,
the test do serve right the same purpose of performing I/O reading from
an SD card as reading a partition table.

An important point is that if there are some issues with a filesystem on
SD card, it just lacks a justification of "forbidding SDR104/SDR50 due
broken SDHC hardware".

> We have this kind of issue on Hamoa where we get I/O errors early, right
> after the card is inserted and the partition table / filesystem headers
> are being read:

Hamoa is X1E80100, is it right? Unfortunately I can not test my set of
SD cards including one Transcend UHS-I SDR104 speed mode SD card on this
particular hardware.

> [  714.057106] mmc0: new UHS-I speed SDR104 SDXC card at address 0001
> [  714.060567] mmcblk0: mmc0:0001 EC2QT 59.6 GiB
> [  714.503873] I/O error, dev mmcblk0, sector 0 op 0x0:(READ) flags 0x0
> phys_seg 1 prio class 2
> [  714.505660] Buffer I/O error on dev mmcblk0, logical block 0, async
> page read
> [  714.513632] I/O error, dev mmcblk0, sector 0 op 0x0:(READ) flags 0x0
> phys_seg 1 prio class 2
> [  714.516469] Buffer I/O error on dev mmcblk0, logical block 0, async
> page read
> [  714.516512]  mmcblk0: unable to read partition table
> 
> and b1f856b1727c ("mmc: sdhci-msm: Avoid early clock doubling during
> HS400 transition") did not help..
> 

I've checked that this particular change [1], and it's unlikely that it
has an impact on the issue reported above due to the fact that the
problem is reported against an UHS-I SDR104 SD card, and the fix does
not touch this mode. So, it's kind of expected, and for further analysis
I need more information.

Note what is the originally reported problem, which workaround is supposed
to be reverted now:

9d561dc4e5cc ("arm64: dts: qcom: sm8450: disable SDHCI SDR104/SDR50 on all boards"):

       mmc0: card never left busy state
       mmc0: error -110 whilst initialising SD card

This is very different from your fault report, and this is fixed by
my recent changes in the SM8x50 GCC drivers, and this one series
setteles the fix.

[1] https://lore.kernel.org/linux-mmc/20251114082824.3825501-1-sarthak.garg@oss.qualcomm.com/

-- 
Best wishes,
Vladimir

