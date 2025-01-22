Return-Path: <devicetree+bounces-140239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E19BA18F49
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 11:09:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1091A3A1E2E
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:09:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 326A920FAB4;
	Wed, 22 Jan 2025 10:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="KFzA9LSz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1851F7914
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 10:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737540564; cv=none; b=jsnzhC0Vle4zd2LzeOEoTe/q3ZLdfMo484pSJMVF+xwwUvZLuJIlWg8lhaP6NzH/xZzV6xQj2N1ecV7wDxNkyDQMSQ3tu8Vx2rJFMXs6fISZQE6Nbk++NYAnyxoNG7qrKj8327ffTozS5bzKQk+EL/s9Wi6gW98kmIeVcmgvyZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737540564; c=relaxed/simple;
	bh=yPq21HhdpDlsS14IAW4zQa5skvQJ+MdKpDAy9He2FlU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=flmDYJbxD7xUQeliYospe0pVcAR+VVRPKD1A83zXkw4uE2d7p19ATcs+U8LFRqxVK7RgUvnKE8wwuHwowVsjfFGj2abkK9hp3rbGBfKCi6sVaNr4JiD9znv0oeC/8ApH+CdG/uSYVEJ3rr1m7ZcUJx3IHnw6Wth14gqkZ1ZPMiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=KFzA9LSz; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ab2e308a99bso153037566b.1
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 02:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1737540560; x=1738145360; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wEJEd8faAZ8pH7yQQA5pi8eTwG/AqywjNq66uj965H8=;
        b=KFzA9LSzGHuyRlka6fwEMjxvVr3860d2TvLHD90/5cziuFiBS3V4zt60ktvNZBH6w6
         5CR8OsOR2D8FKMfWQYTsNgmNjUDaqUmbnQooxqXCsDS6dreovqO8xx9eLxwYdpIEQxdv
         26EfRSIjj5EfghdyxOV1ZfUgNgWrtOkuyocInLGEaHP4802Iw6SuUoxqMnfVbMwr6ol1
         cjd96EjmGUu0n3TXrczLwWmzaHlbHouFSUjjLAEE12BRXv3PLU9oE6sfdfDVsquJTpmX
         fbRgp36E8aDXedMkE/kkNjigbNzLV0hI7Qo6X1T+mPhOfklnROmQvDWpnmfBaJKcdDC7
         VzwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737540560; x=1738145360;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wEJEd8faAZ8pH7yQQA5pi8eTwG/AqywjNq66uj965H8=;
        b=ZLNC0h3+wceTwsHB2oS9mQ9ZcGH6GoLoZnGxFNZjJ6d0dAfjhsn2KvzwB9Fbj8uWuQ
         fQaw4rdDjJyhSq9AZZoIndgFj9ZW6AZYRf/LWq+cNEn06C6nEkB/5mUuVEAC8s3Oj4rK
         gwUK2ABqfgeYGBT5YSLyuqZV1md3qWgQBrVRy8GgcN55dsneAO7Osf/y8PhO50lb9ktL
         pikgeXWbLsaxFKFA0Mui10j8fMo4DK9SQffPnaTsP8WY6o2L0NmYA6QrNnjsRRTZ08DY
         9e05zm7IMy0+IwjezYAog1WT1y9Q6bE4l0F3bT4W64Poo4bfFW9Th3hJKD4LoX/fW8Xz
         UsCA==
X-Forwarded-Encrypted: i=1; AJvYcCVhgposNLKo7BunKQw7Pn1Gfj7u3mNc4toy0viLt4BRU899G87K+SrIt+b6WWdBwPoNiOeZI1Tu9RoF@vger.kernel.org
X-Gm-Message-State: AOJu0YyZicipOLvugPt8gUn63AzTIutlkzwxrPBdn0H1qAe0nCSb6elJ
	6fatC+ZJQaYk3Pr0yJgS0mbi3hmDRxSmk6IevE13V++gChZxP4psqjnW8JMkqyM=
X-Gm-Gg: ASbGnctGP6IQArtj4OqCEzkCybShymZSCU4q7UsVo17Oe5KqOapg3CKt104W4Vi3KQ3
	vNOYvwlfUxXkfyE/S9FYu0wQUxy7DRSZhbgx2eS9UtY/PLtf0khL4AMUERoCeRBuroZud2TVbVY
	MwniPdN6ih4WErlMzAYuu3CO/AtXYMZYFlykXsXwOzPYzewS5YoJ2B92mBINZieFp3CVODXAABC
	70yLd0G431tpQ2+MCQQT2npDsxKcxZVgkp99du6T8Coi0iaaE3y4udbGdd/4oqirHNjei0b+jXd
	VA==
X-Google-Smtp-Source: AGHT+IFVRPmudokZEYxl+UG1fyhtE2C6e0Eu/TY6D7Z3irDR1ZjFtdV9zGTdFMCb5huVLQghs03L8g==
X-Received: by 2002:a17:906:f596:b0:ab3:47cb:5327 with SMTP id a640c23a62f3a-ab36e19cff2mr2054334566b.5.1737540559995;
        Wed, 22 Jan 2025 02:09:19 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.35])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384ce1f71sm893158566b.61.2025.01.22.02.09.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jan 2025 02:09:19 -0800 (PST)
Message-ID: <c7e34ef0-b094-456a-ba68-2709ff7cec13@tuxon.dev>
Date: Wed, 22 Jan 2025 12:09:17 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/4] serial: sh-sci: Update the suspend/resume support
To: Krzysztof Kozlowski <krzk@kernel.org>, geert+renesas@glider.be,
 magnus.damm@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, jirislaby@kernel.org,
 p.zabel@pengutronix.de, claudiu.beznea.uj@bp.renesas.com,
 wsa+renesas@sang-engineering.com, prabhakar.mahadev-lad.rj@bp.renesas.com
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org
References: <20250120130936.1080069-1-claudiu.beznea.uj@bp.renesas.com>
 <20250120130936.1080069-2-claudiu.beznea.uj@bp.renesas.com>
 <04fde244-006f-4bda-9d65-7957be74f049@kernel.org>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <04fde244-006f-4bda-9d65-7957be74f049@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 21.01.2025 10:54, Krzysztof Kozlowski wrote:
> On 20/01/2025 14:09, Claudiu wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> The Renesas RZ/G3S supports a power saving mode where power to most of the
>> SoC components is turned off. When returning from this power saving mode,
>> SoC components need to be re-configured.
>>
>> The SCIFs on the Renesas RZ/G3S need to be re-configured as well when
>> returning from this power saving mode. The sh-sci code already configures
>> the SCIF clocks, power domain and registers by calling uart_resume_port()
>> in sci_resume(). On suspend path the SCIF UART ports are suspended
>> accordingly (by calling uart_suspend_port() in sci_suspend()). The only
>> missing setting is the reset signal. For this assert/de-assert the reset
>> signal on driver suspend/resume.
>>
>> In case the no_console_suspend is specified by the user, the registers need
>> to be saved on suspend path and restore on resume path. To do this the
>> sci_console_setup() function was added. There is no need to cache/restore
>> the status or FIFO registers. Only the control registers. To differentiate
>> b/w these, the struct sci_port_params::regs was updated with a new member
>> that specifies if the register needs to be chached on suspend. Only the
>> RZ_SCIFA instances were updated with this new support as the hardware for
>> the rest of variants was missing for testing.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>
>> Changes in v4:
>> - none
> 
> 
> Why are you combining serial patches with DTS? Greg applies entire set
> thus you *cannot* send him DTS.

It's v4. The initial set contained fixes for serial, support for RZ/G3S
(including clocks and dtsi), all that was needed for the enabled RZ/G3S
serial IPs. Fixes were posted separately (as requested), the other bringup
patches were integrated and this is what remained. I chose it like this for
version continuity.

Thank you,
Claudiu

> 
> Best regards,
> Krzysztof


