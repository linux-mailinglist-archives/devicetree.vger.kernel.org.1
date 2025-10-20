Return-Path: <devicetree+bounces-228927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C424BBF22D0
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 17:44:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3751434DCC8
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 15:44:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCAA326D4E5;
	Mon, 20 Oct 2025 15:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gKXboRap"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405C51DFD8B
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 15:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760975070; cv=none; b=o39gL5krjKoVhyOH/9jqJKgIkvsoH3SENLew8nyNNgRaYDeNKPq0sXvvCxjbU8/5jZHdgEaK5EjrXKxu9Kul8OKOJtgCFymLtkbN2EnFm859MRIuPRFgX567Sq/C3njv9WZhTtZvQRhaggjbIKf0fs/IyuQDM6DVmB/H5RP+MFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760975070; c=relaxed/simple;
	bh=vVCAMQZ9VZYVBMCVBw/5S+OiKMRfl7we43CExJvn3Ng=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ifF+CaiZqaOM0C7GJ0XKoIgnoWvRncLx52u4YrIg80Jo+vk+fdTJGzOVrsUTvg09XKHxY3JNy9rQ/fG/gRg10KwK97X/eJ/Xw0PThoaDqeIY/KOZjKdYMMYtmeOeH2zxK/dVq2HMeXe1W8Z4tH8WhwZ22uzQHutnKNv4zQzfNag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gKXboRap; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b5526b7c54eso2909327a12.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 08:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760975068; x=1761579868; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1Y1CSxzIR0fv7maZ+ANOh4LIYK2ZvUFcV3YgMDZQcxA=;
        b=gKXboRapbe59G+3tNO4Fjvu0tkJ1ijWWxnooZngZENQIwIMREly+jWh0SNmrahLzY+
         uZdqEwPMzKPUCwMvkG6o1EZC4OVPCNlPBypSsbOu1sQm0Pn/Uycb+PwxRE2Z9MrPFPa7
         AgAfABDRWyYuXAhQMOdfq9LCWJErp/qocXJZesiniNaKLzwu9NDiJsbJ4s2yp21kJL2U
         w75sBffdJ/Cf3HO9Y6TN1tQssRqKsEsB1FrhYtFJZvslAdxx1MXwMqcC7zKsRbi0Z+SM
         DSUdxsSiH8O6AgCR2VC51POnJzW7bw02NyXtPTfbBq0XXHfpvVp/vQEFICoP4YNc1qP6
         9VwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760975068; x=1761579868;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1Y1CSxzIR0fv7maZ+ANOh4LIYK2ZvUFcV3YgMDZQcxA=;
        b=uA6X4QfxpTuhKB1gVb+JUcnGd2Qh6uvJH3Ayp4uS39CTnjp1XOkUMFC+ffoOYdHN9w
         FFDtdCiCXM/qb37LJLXaAuJuCHHjwJI9iS+1yUFARurzkdbeRqsD17YqQEjDePE3gktj
         ykNMabx2S60Cj9bcLMXfYEh6a+EUhfz5FywyJelQ+V/v1RyXupBZkrkLJsTMp0nny0ZY
         n+H7dAcN5+BCeBbg0rbZQ5yEUPxRldkCiyFk7AWJcCDfLjXqWNsbPg9lBldrzysbMEma
         TykhXQm5ZJsxgYnRjmy8BjgYqzvcGoraO6fBseM9Fs+dASxRuul4yUjIu/mHHPmY6V9u
         3pqA==
X-Forwarded-Encrypted: i=1; AJvYcCXp5OwweZ0qD915eQiQEyx/iEakY05j520Q0tUW08M78ZvC328Ucxgkx2UyWY+GQoW12ad0DAkDhZQz@vger.kernel.org
X-Gm-Message-State: AOJu0YyhOX0Yq0dl7WX18u/tQJXliVIorZyYhfg6jVQ2PYIok+psXRym
	gh0yqFEFThv2dVPB+j/c+SaW+vruP30NEy9tnHY1s/zLmoc+sGdJ/9gW
X-Gm-Gg: ASbGncskPAftZtxHkiR26DAHc3GTUKU/7UcY00LkSIWwetggk3ouKaJvCoRYvIv845y
	a4fLjYAIoECSJqWEtxCcyJWznoRAjXrNOee4q9QODmskQRZQtogMj+pHSYdoaD1lw6LEVvoRkw1
	UqwIXD0nCswW0DWQh8m5Y5wJLnUSCbzl08z/8ULDVMr6o2cH8iYmY2cQ8oO30XKDx0DJRrhbRxx
	JiTUFX19zc8n6bHORHh1jQ8odEgnsujtFM5wSDp8kLjy6IxK5h2GoJirkeg6zFnHSo4ZEFaKcqx
	ORbCT1aRtKmXZjqA37z4Pjtbr37vnvy6Iahyrj6e5HGfrXzUWPXM+F1zdMMk3caWmZsElZOJHZa
	PHObalnbyrSn2PEq/JRyWr7wttrVqXv8C6Etd8tbHTO49tFyCSTwk2P5xX7UJpxOHcHv7IF6Dmw
	2g4ZZ2MQ5kpuhKc9ToJ9D1gtPTrSGAbBXqr0x1
X-Google-Smtp-Source: AGHT+IEMOFE9N0vOyy2Knz1EYUYNFp/diS2UfD4ZLPam7/RwKCkbB21p+DSbZLLCJqeti9P1f9KOzQ==
X-Received: by 2002:a17:902:db0b:b0:290:b53b:7459 with SMTP id d9443c01a7336-290cb65dc2amr160144995ad.56.1760975068096;
        Mon, 20 Oct 2025 08:44:28 -0700 (PDT)
Received: from [192.168.1.4] ([223.181.116.113])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-292472197desm83363565ad.115.2025.10.20.08.44.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 08:44:27 -0700 (PDT)
Message-ID: <46aa84cd-63cc-4263-9061-021fa3205b87@gmail.com>
Date: Mon, 20 Oct 2025 21:14:19 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/2] dt-bindings: mmc: ti,omap2430-sdhci: Add json
 schema for the text binding
To: Rob Herring <robh@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Barker <paul.barker@sancloud.com>,
 Marc Murphy <marc.murphy@sancloud.com>, Tony Lindgren <tony@atomide.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org
References: <20251019-ti-sdhci-omap-v4-0-fdc63aaeb083@gmail.com>
 <20251020142710.GA576827-robh@kernel.org>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20251020142710.GA576827-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 20-10-2025 19:57, Rob Herring wrote:
> On Sun, Oct 19, 2025 at 01:04:36PM +0000, Charan Pedumuru wrote:
>> Create a YAML binding for ti,omap2430-sdhci and fix vmmc-supply
>> property typo for a DTS file.
>>
>> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
>> ---
>> Note: The property "ti,needs-special-reset" was not removed from DTS cause it will
>>       disrupt the compilation for other compatibles as the node &mmc is used for all
>>       compatibles for some DTS files.
> 
> I don't understand. AFIACT, "ti,needs-special-reset" is only used for 
> the hsmmc driver/binding. But this series for for the sdhci 
> driver/binding. So shouldn't the property be removed from sdhci nodes 
> (and the binding), but kept for hsmmc nodes?


Yes we can remove that property from sdhci , but &mmc node in DTS is common for all mmc drivers and this "ti,needs-special-reset" property is defined there for one board, so even when I remove it from DTSI for sdhci nodes, the DTS file still contains this property in &mmc node which is also common for other mmc drivers, so even if we remove that property for sdhci node, we still need to define it in YAML to resolve dtb_check. The issue here is not removing the property from sdhci node in DTSI file, but to remove it from &mmc node from a DTS file which is common to all mmc drivers.

Here is the DTS node (ti/omap/am5729-beagleboneai.dts) which contain that property and is common for all mmc drivers.
&mmc2 {
	status = "okay";
	vmmc-supply = <&vdd_1v8>;
	vqmmc-supply = <&vdd_1v8>;
	bus-width = <8>;
	ti,non-removable;
	non-removable;
	mmc-pwrseq = <&emmc_pwrseq>;

	ti,needs-special-reset;
	dmas = <&sdma_xbar 47>, <&sdma_xbar 48>;
	dma-names = "tx", "rx";

};

> 
> Rob

-- 
Best Regards,
Charan.


