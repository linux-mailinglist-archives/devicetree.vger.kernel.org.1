Return-Path: <devicetree+bounces-263238-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iIMnJ++ShWm3DgQAu9opvQ
	(envelope-from <devicetree+bounces-263238-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 08:06:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 39537FAD0D
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 08:06:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 49CB6304EA67
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 07:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7CB430BB86;
	Fri,  6 Feb 2026 07:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XpvwT3uX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A483302756
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 07:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770361531; cv=none; b=cZ5Cd+UlllP/E1/N2eHuL3wAYEpJ44sNqRltIWe2hZYM2c7G9VdUuQkGgEsAStfg+QoGComM96uAe1eZqlxtG8imES3SCcnBkFt7wyuoEQzbmXReT/oNYg8BwSqenddyHhh3RMtWRezzjWI8U7SrfhyhLouYaFIadqAh2mfYIBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770361531; c=relaxed/simple;
	bh=RUz2gwqS9HdZAdMK7w/5wypx7m/ucdayEoiJJySedg0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ppRzuPoP17hPE68Rwbt9WtAYZR3kqEYeWJVGFf7+W+eRGASS0wWLAQuFzPxJlfnbBX8Y8PAguKGxkzHRyPeCVnq5x4JwcAjxHZalyI5/nPIz85WewJp7d7kxNSnIPUcl8J3nCFIZRjAxzJozAAKZV+rU2GOQrAQu9fieNsthMRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XpvwT3uX; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2a09757004cso15311655ad.3
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 23:05:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770361531; x=1770966331; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0haU+G8kaq0CKeXvOdlPG1qWpXklEM3L/X+ta2ZlzJo=;
        b=XpvwT3uXp2+wkLgtpSsSao73GaIGyL4LNxs0fFoLJrbY9NmaH4tTGChlQh7Eapunmu
         jgB49aVP0RgyzwtOkhFDlKM9g7bwUkByM6N9Mykh0LX6uGc29sbv45KTKk6meII8rKp1
         doRYjN8wiXR6L8CuP8ke8fk1WN14A91p9klXA1hjbliTYvPOxN0cHVsqHTvKUQL0gSFO
         tcDfOHGjhNvS0KwzDopzCUPR21pJtxF9nMIfidzZWSxr1VRx8DcRJKeXg2GPuFSg3liW
         Byu6nloF054/KywvO3qkGHNPpyc6blRBtfepLTl7bLY0CrRjbsxyKemX0ZcU3b1bKKEG
         xODg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770361531; x=1770966331;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0haU+G8kaq0CKeXvOdlPG1qWpXklEM3L/X+ta2ZlzJo=;
        b=hkcLLfywahMGK/1HwqWgJ6nZm86idS7i3Tvvp/+q6lsW4yaFrFxaoDjcoxqGYtxazn
         BZ6cGlIGx11Yhl7ifa9E77j+tHS4odyatIGDN9VoH/MmDtvE+DzmcoL8r/ufG1dax7+W
         zXZ74XHoKyLJqc1JDlxaRtv/wxDxkofMJH6CtG9KhzAccEdv+KOShF/41zIdWkMeA2vZ
         nOL7CjPZh5Xn06YXgj7raOC9ofPM7++7umA/QvP7jUvXxv2YK/z9yxKJbiJFiw7SGJ6+
         xZJLXI6QBm+p4aigPj+0/0gc9bikNFJhUvRQfr9wQr5Gad+ZL1mMbqGKahShICotCJkU
         MZ+Q==
X-Forwarded-Encrypted: i=1; AJvYcCU0ljkJ3n6IECdDwf7wcpXHv+THddEHPrDxloPYjlGmh9xL0OnA7vL7cLaD+VazSc/k72bl18wVlwJs@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn7khkOyMa8edZ9S4/whktX933MoJuuqyoI5kBD1HvLX3DSEyE
	dC0KqZLyDnRUTzp8omPe9cR50fQcyE20XPURKYEpNNM6uzxm5BSfQTSv
X-Gm-Gg: AZuq6aLEzXamLMul5cp/0v86ZDmy4ybIOgY+v+Ey+ZHBfptk3hr8eTHLAo1n9n8p7KB
	gpMCMczsV2+CfDJviDiLROIYQTSL1XhjpN7Jhf2PUWcZMI4fcwUjhKWVkPK4NHSuphZq8x8uD8M
	sgEsVW2+L+ghpdIhm5llFbiaRM2ErVE5wCI1Ta0heupk6PfsONtqSrfAnZR46dMPdJapaha313c
	4C1aJEASP1umO/uS3+380tibnrGnbAHXXbzzE44ATM+mrPQ8TqH76oAPJREyCMaPOusX8sozBjF
	QiZSvj8kLW9tCfBtzZj5Tid9ZsyK30okf3Y/iSLqwWud/6dtQOE449p6laru18Nd1FfAkQ73OGw
	y8Vbgv4ikcjVYh4qhiJ35BfxzRx7g1wQcFpSoejmDsvdOMm0TJsNvvt70Jg2GLM4CY0xYkE3khA
	4FDkZ4OREITF09bP2Elqh7/NjgbDTeo1J7yJ3ULMdu2q9gKdA24QuDqEkf+yMz75tO
X-Received: by 2002:a17:902:f546:b0:295:745a:8016 with SMTP id d9443c01a7336-2a951605e16mr19839485ad.11.1770361530915;
        Thu, 05 Feb 2026 23:05:30 -0800 (PST)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a9521b9bc3sm13778935ad.63.2026.02.05.23.05.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Feb 2026 23:05:30 -0800 (PST)
Message-ID: <31ad6a98-66c7-4e95-b40f-ead8c594a212@gmail.com>
Date: Fri, 6 Feb 2026 15:05:23 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: display: nuvoton: add MA35D1 DCU
 binding
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, ychuang3@nuvoton.com,
 schung@nuvoton.com, yclu4@nuvoton.com, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260129040532.382693-1-a0987203069@gmail.com>
 <20260129040532.382693-2-a0987203069@gmail.com>
 <20260205-psychedelic-brave-toad-db4936@quoll>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <20260205-psychedelic-brave-toad-db4936@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263238-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,nuvoton.com,lists.infradead.org,lists.freedesktop.org,vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 39537FAD0D
X-Rspamd-Action: no action


On 2/5/2026 9:18 PM, Krzysztof Kozlowski wrote:
> On Thu, Jan 29, 2026 at 12:05:30PM +0800, Joey Lu wrote:
>> +
>> +  clocks:
>> +    items:
>> +      - description: DCU Gate clock for register access
>> +      - description: DCU Pixel clock for display timing
>> +
>> +  clock-names:
>> +    items:
>> +      - const: dcu_gate
> That's bus or apb
>
>> +      - const: dcup_div
> That's pixel
>
> Use descriptive names of functions here. Not your clock controller. It
> is completely irrelevant whether you provide here gate or div or mux or
> whatever else. If by any chance in new design you put here mux, not div,
> then completely new binding?
>
>
> Best regards,
> Krzysztof

I'll use functional clock names bus & pixel instead.

Joey


