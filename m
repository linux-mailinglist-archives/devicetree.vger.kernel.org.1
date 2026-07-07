Return-Path: <devicetree+bounces-322167-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TL1nIbMVTWpHuwEAu9opvQ
	(envelope-from <devicetree+bounces-322167-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:05:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2888D71CFDF
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:05:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=jpIgJeaw;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322167-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-322167-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2126A3020D10
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 15:04:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D4A637998B;
	Tue,  7 Jul 2026 15:04:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDACA374A0F
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 15:04:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783436692; cv=none; b=MEkfG1VwDqPxy4reJl2mADVY/2TPyrhENihrFbA6dWSHd8MTXlpMkJXMHRs0xf6lS6aamVYYxIX+YIekImtakt7Fm80ia3zcxqIwViOHgbOb6da/j+VunOrBLwRxXC/PlxNG2LnBjTDp1z7/SFNyTnDaeusi3yixhY0Cw5ZaU9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783436692; c=relaxed/simple;
	bh=JW6561mML8m0Es0w6oBxup+aCmHVJh9Hrl4KT/dgDAY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B7GnrDqGNVZ+K8QLEwvpsaQHsUaHMIFzEpZeoQtFQ8gs6XhYYffR+S5wGpgoLLZn3L+asCwvu7Ip46hE7+m7MlDJGMAZ0k5W45lNCmHrd4oddZBSi5LKJYCRSF53UdGvJlH3GAfPUX4+/sHZr+qBpgfRHU1TaQtTOFho0NhDwUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jpIgJeaw; arc=none smtp.client-ip=209.85.221.49
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-47de008b020so455017f8f.1
        for <devicetree@vger.kernel.org>; Tue, 07 Jul 2026 08:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783436689; x=1784041489; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yjaKNQDIB8x3lV2bAr2D5lvHBXFHHvfoE6oAh2cW/Bg=;
        b=jpIgJeawSvqhMQ3AZXAGdsTz77Zm0UArKxI/tM3/K2buybJaaz3Qsq/yOB39/WJhEP
         3uJWdKfdg+hC/Mr+W18dKHpRcyz/+4AMu31ePiNEAvjRPOjGolY1yia8P6A0NjA9ltPU
         u6i8DRn7jhj2rrgV4Vj8UKfwXBc0kX6gAqqsSAVGX2yLfnupKjTLnY0lVxjmXYApc4kv
         IrO8kYjFDHDgOMVTPpKwUs074kWhTrsaXQnCiH0XtNrYjK7Y9fOD1yKbEffhR4wSm4GL
         mpeV3JNqg1CswPjQt0UgBmC2PB3+Z5ehGtKI56gyfK0fJKiyRZSuhMaBgbCT9LW2mvEh
         9jKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783436689; x=1784041489;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yjaKNQDIB8x3lV2bAr2D5lvHBXFHHvfoE6oAh2cW/Bg=;
        b=BVH04SbSU22GvLi+c5KjkY1JKXfOAhDn0qUg4Y/6xZPQevLMlsmBeea6dHqt69Kns7
         RWoMP69J3kVLWr2WeZanW1PkR9Y/Q2R5iCumf/sRBwMoVIJ9j2mhCfDI5gCEgKoNqutM
         qBmjLjmY7cUL/gxDNgTr4TuMYMiPeHAvx+bBE2INJ6spwg7H1bLOEo7mitmLxJSEXsKO
         2nz/7DV9xvskJZosGxTLNZM3RLmyNKAQFDFPDuEgRhCz2hifLFHWnqOiVuLA7obr3EZL
         HhzCUwqoRJbXwx7fY0Qkpp2bNm28eG8fUW5sCT6Aqhf0k96A/SVmJpplgkvvj3CqfRMA
         BX6g==
X-Forwarded-Encrypted: i=1; AHgh+RpbLX+7sG8A36/MVrA2laJD5zloEQ0x5j9DKC52ppvPU8cQAJLtKj4Rq1P/Zfai2HQpV+F//cOyrqDm@vger.kernel.org
X-Gm-Message-State: AOJu0YwuA/ol8LZeSrwNjJBDEELgd8sUvfCXO+DGa0+4zbsA4LYP1NeP
	FiZTmwgOHVhOrazec5+msgY2rn/TiDhn58n3nm3UiaVlPZ2FA9lRfRc=
X-Gm-Gg: AfdE7cnlmtRAFXN1vV71K65wwaJfIxNLlb7bOVGu1elhkJxLWmRYhWBDbhGoTWPLdyF
	+AkuOsoRxrtC5zQY62Ms6+3pCUxxY5K8DVc6i8f/FSaljo1lQOJ840jU44BOjJcCxJJS2hibv6A
	u7IwNm9S0/SJj3mXuuTbCCnlmRUrDBlf2R0Q0s3YxuZgd4f2VJCY49zPfayY1FC4MS3ObAhLy8f
	ouJS/B6Zil6PGYpM8oaoJ+jIu3cylg1ksYu1oMGE4dCCiky5Dhg52xpDUROcVsT4ODH8DbMs6X/
	yitYlUyB+ycYHHU8Ovu8eOWrxE1xbDvJCUq0rs++cz+v3ue3uyWDniI4u5ndojyK7PHKNCF/5Si
	WuO+f6q3wzIdLB11Vc76Z1VW6ExAPc9Wdn4PdnQb0kFz9NUu7v9tWr7+OinV7bAl9HH838MyLbs
	tnIp+I4C2ahlryoOxWh0kM7lEjU6KPfV1CqG02bCFpJwsAA/oo1Jlb7VwTN+V4H6Tg2/B/9A==
X-Received: by 2002:a05:6000:2584:b0:473:6590:c42a with SMTP id ffacd0b85a97d-47de97ea689mr3990217f8f.9.1783436688978;
        Tue, 07 Jul 2026 08:04:48 -0700 (PDT)
Received: from ?IPV6:2001:b07:2ec:601d:4b26:1672:75c7:805a? ([2001:b07:2ec:601d:4b26:1672:75c7:805a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47aa0f21328sm35142014f8f.32.2026.07.07.08.04.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jul 2026 08:04:48 -0700 (PDT)
Message-ID: <6acf86dc-0df0-492a-b3dc-224a666214b9@gmail.com>
Date: Tue, 7 Jul 2026 17:04:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 01/13] iommu: arm-smmu-qcom: Configure lpac device
 with split address space
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
 Akhil P Oommen <akhilpo@oss.qualcomm.com>,
 Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar
 <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, iommu@lists.linux.dev,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20260705-descriptive-name-lpac-upstream-v1-0-01d50c3e0c99@gmail.com>
 <20260705-descriptive-name-lpac-upstream-v1-1-01d50c3e0c99@gmail.com>
 <5vfdbrk4bu77e7wgutp4h3ilbpjhcxxnwemqiufmtiwoffp4sl@oaonwwouw4qm>
Content-Language: en-US
From: Anna Maniscalco <anna.maniscalco2000@gmail.com>
In-Reply-To: <5vfdbrk4bu77e7wgutp4h3ilbpjhcxxnwemqiufmtiwoffp4sl@oaonwwouw4qm>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-322167-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:robin.clark@oss.qualcomm.com,m:will@kernel.org,m:robin.murphy@arm.com,m:joro@8bytes.org,m:sean@poorly.run,m:konradybcio@kernel.org,m:akhilpo@oss.qualcomm.com,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:marijn.suijten@somainline.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:andersson@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:iommu@lists.linux.dev,m:linux-arm-msm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:freedreno@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[annamaniscalco2000@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,arm.com,8bytes.org,poorly.run,linux.dev,gmail.com,somainline.org,ffwll.ch,linux.intel.com,suse.de,lists.linux.dev,vger.kernel.org,lists.infradead.org,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[annamaniscalco2000@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2888D71CFDF

On 7/6/26 5:00 PM, Dmitry Baryshkov wrote:
> On Sun, Jul 05, 2026 at 09:13:35PM +0200, Anna Maniscalco wrote:
>> We want the context bank used by LPAC to use split address space just
>> like GFX.
> Why?

I'll update the commit message in the next revision.

The reason is the same as GFX, we want split kernel and user address 
spaces so we can use per context page tables for userspace submissions.

>
>> Signed-off-by: Anna Maniscalco <anna.maniscalco2000@gmail.com>
>> ---
>>   drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 11 ++++++++---
>>   1 file changed, 8 insertions(+), 3 deletions(-)
>>

Best regards,
-- 
Anna Maniscalco <anna.maniscalco2000@gmail.com>


