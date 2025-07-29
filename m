Return-Path: <devicetree+bounces-200478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD9DB14DEC
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 14:52:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B8E33BB338
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 12:51:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C11B24F5E0;
	Tue, 29 Jul 2025 12:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="yhXi6ckX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAE7E208CA
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 12:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753793540; cv=none; b=h2pzfLht9k40PjFBKut+TMHua77KH0aFhy9oPEnx0PdDobrlrgjFz0FOs1P+CVHlz0/djyPT+9UizKogRM1CEkVa6S6em+zyw6oFeuQytHNmZkS3tyQIYTZORDpKvo7YsLP9iSvSdT9dx1L1F3ruhGzCC8930pjpEIkEhJdhiKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753793540; c=relaxed/simple;
	bh=s0eR5gp8Ag9r7D5VJgcBzrT96bpimRE6Ph8Y+o1Df28=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tJSWk7plnbLe0+qT1mRhLAvWnrgNBu4rd7QwWCYZi+nzaTEXQ8qIGcHrwWoSTOq9IE0odIzV30Hw8m6zPe40PLBNjbEU9Gpx+zAG2FnDoON7fDIARd60hHKIs46qITRuKeZCpwwiXkIPm81N/OEjlFpJFUxn6JcqZODXYNbVFZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=yhXi6ckX; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-240763b322fso5207165ad.0
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 05:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1753793537; x=1754398337; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aavvdqt97cstrZY9DrFTlKwuOG3lfE+vs0JuoYNVqPI=;
        b=yhXi6ckXa8bs5iqTFSW2TRLMtCJxKkx54UcCSDNISLFfsSCqJQYxKoaN2yiCpo3ovE
         /2T9qu7tY5af4u8nSsnXueP4ume128mISW540ioPKLlbCV2hLrF5ffQf9+xqC3Rcz9su
         U8fFD2EXadkPUYV9VLJvHO7PB54k3DOvsrQbFGO8+PgIT9VEnTiLGQ8scBOND4848TzQ
         jK3XtFw8XWvDNCos5ghYZ+pqfxO2dEZ1n4xynU9+wkieYM5xTfc3S4ytobTTtgvHYvdD
         SI6xKVYP5vZte2vQEfXwSeTEE/tYp6Lr5JFZmFm3eQT0Zki1wL3oqjJAo9e0dkRUh15H
         yRnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753793537; x=1754398337;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aavvdqt97cstrZY9DrFTlKwuOG3lfE+vs0JuoYNVqPI=;
        b=Pt5u4Tys+vkTuCa2ZwJn5WtfFbwlJD2vEbLkDIccVVnV/fqkccjzENlfH5S1QzbVkx
         gDQ9hLwaS+Yi9/1Hw0buqs3u4ciubu4oO+1GDPAmtqdOnFUrAuBCjEul5iqlTa1HiJdh
         wLiODAvw1pwGpXAZ89cRJ1TXZApYKTqalsY4WMKoI6/O7YpFHzy54V1cSbYmN2a19Cim
         V0ITFtdYsbmKxV7fyqHBhJIadJiJWFZoeFCNrAkAitE8CeCAahlRf3dnGSL+2qqGyugz
         LsRcAPF4VzYGGfktLcCyESup40jaNH38d4Tm8x1HyxuPcTJ+Z+Kxr9/w82UXjO7FF27k
         Nlgw==
X-Forwarded-Encrypted: i=1; AJvYcCXH/8wwL+YJgKQGV/8ID2CViszWw5tNizhdAc+3Q6XJoOayGGNdUnFLwVzSnNgV5nPSO2qxhPISyLGu@vger.kernel.org
X-Gm-Message-State: AOJu0YxuRFbV1XV+b3o1ar3JYF6jYq9uQFAqgRvfcQpnRwSkpNn9ftNc
	DHP4ENGXJoe8R2uEExHqEo6N87bZnTSq9rHBzrd7KxcUoprfKGQgveW9u2Tyj7lpwA==
X-Gm-Gg: ASbGncvB4yTq66/azSclmnvJO7GEbbkW9bh7NqLMtZO8nhts6mpI7gS1b4fivRxGtEa
	X3rECisgeihyBrY6c6g1NFcFVO2bnZ1aDr3x9rK2dJmWVO7MZa2MzemWr5OKF+Ime1A6BZnS7C9
	7T32gKS4uJWeIjMVFsvBkXZv+u4Hbk4W+cxEY0pd6BNfmOXPzEcBuKuyu5Ku2t2OjvTDsKZmHlk
	JAcbJJzG2aEeN/xHx0h4bQLSvLK4MX502PlWpemvPWonEB6Lw4Yk+nmn7C7XtqJuqM31IBUqQBT
	iqaLFV5C3TP1Aa+fe0TzFyvexIXRgl58G1jDSUDMV8zC53SQuAvLXOmaIp9oTGbn4Nl9XPEyyij
	cBrQe/d1KQrAq66BOtov9HhCxHHWlFqxOOpPAnVEd0k7pKO2M5a76VzA58KUZnXzD+NsvMXyzQb
	RUrbVInyxAUw==
X-Google-Smtp-Source: AGHT+IHB1EfOTj4QIbmsZVfLeJQmkfTf+eDCn0dFGah1RkVpZh76+BORDPSCFMWskbaqz2cuthKFBg==
X-Received: by 2002:a17:903:19e6:b0:240:71ad:a454 with SMTP id d9443c01a7336-24071adabbbmr35483935ad.1.1753793537141;
        Tue, 29 Jul 2025 05:52:17 -0700 (PDT)
Received: from ?IPV6:2401:4900:8899:25fe:4fe5:6353:8b2b:942c? ([2401:4900:8899:25fe:4fe5:6353:8b2b:942c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2403c96e4cfsm39463225ad.25.2025.07.29.05.52.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jul 2025 05:52:16 -0700 (PDT)
Message-ID: <e01669d6-a233-4e64-a0e9-56b54c7d38cd@beagleboard.org>
Date: Tue, 29 Jul 2025 18:22:11 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] spi: Handle spi bus extension
To: Krzysztof Kozlowski <krzk@kernel.org>, Mark Brown <broonie@kernel.org>,
 herve.codina@bootlin.com, luca.ceresoli@bootlin.com, conor+dt@kernel.org,
 Jason Kridner <jkridner@beagleboard.org>,
 Deepak Khatri <lorforlinux@beagleboard.org>, Dhruva Gole <d-gole@ti.com>,
 Robert Nelson <robertcnelson@beagleboard.org>, Andrew Davis <afd@ti.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250729-spi-bus-extension-v1-0-b20c73f2161a@beagleboard.org>
 <20250729-spi-bus-extension-v1-3-b20c73f2161a@beagleboard.org>
 <c90da4f4-a402-43db-8375-575801ac2714@kernel.org>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <c90da4f4-a402-43db-8375-575801ac2714@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/29/25 18:16, Krzysztof Kozlowski wrote:

> On 29/07/2025 11:51, Ayush Singh wrote:
>>   	for_each_available_child_of_node(node, nc) {
>> +		/* Filter out extension node */
>> +		if (of_node_name_eq(nc, "spi-bus-extension"))
>> +			continue;
>> +
>>   		if (of_node_test_and_set_flag(nc, OF_POPULATED))
>>   			continue;
>>   
>> @@ -2541,6 +2549,23 @@ static void of_register_spi_children(struct spi_controller *ctlr,
>>   			of_node_clear_flag(nc, OF_POPULATED);
>>   		}
>>   	}
>> +
>> +	/* Look at extensions */
>> +	for_each_available_child_of_node(node, nc) {
>> +		if (!of_node_name_eq(nc, "spi-bus-extension"))
> Where did you document the new ABI? There is no DT bindings patch with it.

Patch 4 is the dt bindings patch. I will reorder the patches in any 
future to make the dt bindings patch 1.

Here is a direct link in case it got lost in mail: 
https://lore.kernel.org/all/20250729-spi-bus-extension-v1-4-b20c73f2161a@beagleboard.org/


>
>
> Best regards,
> Krzysztof


Best Regards,

Ayush Singh


