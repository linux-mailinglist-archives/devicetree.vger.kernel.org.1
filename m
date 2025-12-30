Return-Path: <devicetree+bounces-250450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 732AACE914D
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 09:50:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6313A3010E7F
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 08:50:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DF562E03E3;
	Tue, 30 Dec 2025 08:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="dp/CvCmY";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="lbAqGko3"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C12F527F017
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767084636; cv=none; b=uHKmPeFF0fF9wDCpbTsaym0pA/gAv6APHvMmIV/eJ684dZuA1SRQ1PwMk7gTjrhuqJIsHGAbkKFmCHWOlcaOA43mWYlKjEo0p1ZDl6jhnYU6Lj4/qU+uWz26y0j9qj8ASA1gNhaDV8XVAfe38o6lvY9CItOZNPsc7E40cd3kkjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767084636; c=relaxed/simple;
	bh=Xm0QVRxaA2Evca/mSlXX6ULQmCwtpY0HRUHrZUanVm8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PLwMlp7H3a2jTvdNhOH3E0TgQcYK/5jKA/Iz4KlQj8Mm8eXeWpRBntd3RKFWL3e2txoQS4RSNALB2vT7fXVHzIrEkKUOxyzlnuzfTa6jGhJQmI1v7IoiDHm8MTUUMeHin1V8CVeVXnkh5StWpub/uQfAdjnRY0WCpgyBrjKYvEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=dp/CvCmY; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=lbAqGko3; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767084633;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=TKytMjDcx2cEgvRyAJOuwCgpAgUbSodYKmBemClDjaM=;
	b=dp/CvCmY0c45pt7oNwop83vwess7RJj781yLXRQGL3BIqA1JFQ32EmYYyNc4cAvkLE1bXq
	C3xPdDAJQqHbXWbj0r/zurGw47oHGK0n1PfPnMC0t/TrpWOVHNRHnM3F6/m7ZzIttyIxeZ
	yEcS8nduMhlBG+HtO/HWc3WX9t4bYb0=
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com
 [209.85.160.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-534-bSr6BW7hN2aC0vRjbazDsQ-1; Tue, 30 Dec 2025 03:50:32 -0500
X-MC-Unique: bSr6BW7hN2aC0vRjbazDsQ-1
X-Mimecast-MFC-AGG-ID: bSr6BW7hN2aC0vRjbazDsQ_1767084631
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-3fda5f60035so6407052fac.0
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 00:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767084631; x=1767689431; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TKytMjDcx2cEgvRyAJOuwCgpAgUbSodYKmBemClDjaM=;
        b=lbAqGko3xm3T0O7g2umnkibtyowd/slg+VBMLLsyHaILCpgRaKUIWGvPQNNLaIghg0
         sBXgvhdNfJqKugRQ1HigptQt7Agrn91s0VIdYqU+FnrXhD4K7d2esNRwVNkvKsuPYBHq
         yxX1hf0M0u7W3nrfCTQ71oNPEYdMobBCan6LJyF9hfocWrmQNFSWiy7LMopdYIQfBtXJ
         PU2qAwadE8C/9T9lQIO7UgzLEoIIV31VHs+POlYUlv4hF0Ph9JB8iI6sX9owsjVDkrIg
         t7eyLpmndjA8ZZKjwS86U4NwHIaucEx5ECwuGGhWVQ5+uQH6kmnHZrBYe44DSJFjYMT3
         LRWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767084631; x=1767689431;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TKytMjDcx2cEgvRyAJOuwCgpAgUbSodYKmBemClDjaM=;
        b=GPsAWxquq49G5AD/kTDMSVnM85kX2It3Tl2x0qCYNYYlIyzdeIAXhMOirIBsgw3FF7
         DLF1PgJ8WU1onzc4377vxAjH+Ba6HdihtWEJLjNcIYdxlxqJtbTF1CyhlAAEE5VmqUpF
         YXdCuyQFZ7dZh+9pW92UgRcX7KvjLRqW5DNTe2wEDasz6VSxV6TaAyvdeKXdrY4tkwVa
         Wq+MPO7GSJhD3MdEDSI6O2avJpiDnofMiVQGFQpoRCx65Q2s1dpmpKV8h732G6d/rBDd
         egJQIkAZOpNiLGUVoHGSwu4j62IQGCdRKh3OZJU/qMUhRUxzSHmrdWbbUu47ZEMgFAML
         gLfw==
X-Forwarded-Encrypted: i=1; AJvYcCVLJrRn/gkiXOX/mlXSPF+NHVttadhmkKeBuS5RwAfhW2DbouHpx/hBsLoBzYyAvvaENLv+aMIEDEBf@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7sN5SKMtOJcP9UvNDXe7iThRANwWVYYUm1JjkoqIZFSg140qw
	to0knYcZ8N6YcPdhud7Paw6RIVMUXMqIkpvLla9wzOxmdpFO08irro2ifPfpJJyu0sAL3wSzZSN
	rZTnTsrnY2FTrydeeiIMuL86BduNxnNtD5zEz/fCcfT1WSAVy2cH4Fx8r2k1+K60=
X-Gm-Gg: AY/fxX6kRyTLLP/32ymx2VWMmdds1ixlFQGbDmjolI+BBu6OrbfGZTYtVx2YZUj1n0i
	rc4kWeMcoI/xH57znGm0GgQkXN7YSO96uo52ebSFqpk+3BIg3MqQrlUn2IgYDpAskS6hKLfFIAo
	g4F9GB95lGAby4m4snbx6gE42jM/WIFES9OpJrY7lsTtn9mcaYF0dyeErS5KeO6M0IMdQxF3OTS
	KrAF86C730MsCFSbhoe8VnGrpJ21iUENwfyhQzS20KhraeB1tVfPKW2Me8nPnPNTCEPCbmqdOo3
	LqpntZtDOzqe0gU7nSeV0BF6ZOkkKgEUx0LJXlXk4nBQqDVff36xepLqphMJGRLVQvO1qc3C0fM
	y
X-Received: by 2002:a05:6870:7d8a:b0:3e9:35d4:213f with SMTP id 586e51a60fabf-3fda56056b2mr15471529fac.10.1767084631233;
        Tue, 30 Dec 2025 00:50:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGMfpvG2CCJxNM6ePOW5CvdhtIiGZOipOUwNDSwmNEEJmtJ5IiPBkGWUWkmOkbvP8RoitQvSQ==
X-Received: by 2002:a05:6870:7d8a:b0:3e9:35d4:213f with SMTP id 586e51a60fabf-3fda56056b2mr15471513fac.10.1767084630711;
        Tue, 30 Dec 2025 00:50:30 -0800 (PST)
Received: from localhost ([209.132.188.88])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3fdaa92b5basm19742429fac.6.2025.12.30.00.50.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 00:50:30 -0800 (PST)
Date: Tue, 30 Dec 2025 16:48:14 +0800
From: Coiby Xu <coxu@redhat.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>, Baoquan he <bhe@redhat.com>, Dave Young <dyoung@redhat.com>, 
	Kairui Song <ryncsn@gmail.com>, Pingfan Liu <kernelfans@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, 
	Saravana Kannan <saravanak@google.com>, open list <linux-kernel@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" <devicetree@vger.kernel.org>
Subject: Re: [PATCH] arm64/kdump: pass dm-crypt keys to kdump kernel
Message-ID: <aVIR84RJSv42YEP1@Rk>
References: <20251226141116.1379601-1-coxu@redhat.com>
 <20251227-funky-swallow-from-pluto-910b9d@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20251227-funky-swallow-from-pluto-910b9d@quoll>

Hi Krzysztof,

Thanks for your prompt feedback!

On Sat, Dec 27, 2025 at 02:14:16PM +0100, Krzysztof Kozlowski wrote:
>On Fri, Dec 26, 2025 at 10:11:15PM +0800, Coiby Xu wrote:
>> Based on the CONFIG_CRASH_DM_CRYPT feature, this patch adds
>
>Don't use "this patch". See submitting patches.

I'll use imperative mood in next version, thanks for the reminder!

>
>> LUKS-encrypted device dump target support to ARM64 by addressing two
>> challenges [1],
>
>
>...
>
>> +static void __init early_init_dt_check_for_dmcryptkeys(unsigned long node)
>> +{
>> +	const __be32 *prop;
>> +
>> +	if (!IS_ENABLED(CONFIG_CRASH_DM_CRYPT))
>> +		return;
>> +
>> +	pr_debug("Looking for dmcryptkeys property... ");
>> +
>> +	prop = of_get_flat_dt_prop(node, "linux,dmcryptkeys", NULL);
>
>Where did you document the ABI?

Thanks for raising the concern! I'll send a PR to  
https://github.com/devicetree-org/dt-schema
and include the link in next version.

>
>
>Best regards,
>Krzysztof
>
>

-- 
Best regards,
Coiby


