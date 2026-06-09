Return-Path: <devicetree+bounces-309193-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0EzyGPc8KGoxAwMAu9opvQ
	(envelope-from <devicetree+bounces-309193-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:19:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B96662459
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:19:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=riscstar-com.20251104.gappssmtp.com header.s=20251104 header.b=V7pDje4C;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309193-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309193-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=riscstar.com (policy=none);
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3199730805A3
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 16:11:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 529883783D4;
	Tue,  9 Jun 2026 16:11:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F340137757F
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 16:11:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781021492; cv=none; b=SpULKH1Y16h3HxRPUnTiVKaBq5DKQC+uGeU1Y0AuAaAjOz6s5cLj3AdcT0qxKTMoG0u3S/dQSwFbsDrRT9GmwQl1hAdEAVa+4zfiLCRSrgD1e2JgGl+6Wk7wUgSkDkAg4TJaGu3jnh12NN3NYRa331ZyK9zqxGtOQA7wXV9hmZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781021492; c=relaxed/simple;
	bh=jXG4PWaLculkrGCMBKvWz16KNAcutg4Nr5j1HtVB5eg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DInIGTBLEs3ixSGKCpFzb8xyCtKAicnSUbh2L7VV1VB20+I6SpZCJm9QCJqe77LPn/nZWhAl+7p6W/78hsEswPyPeCZH8RRwjMM7ulkgp2q/Txy241zFPK93MJAJFYJoahtSSGpzGfz4t4KbjVYKfnQIgS9rUt5K+Mt7z827knw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20251104.gappssmtp.com header.i=@riscstar-com.20251104.gappssmtp.com header.b=V7pDje4C; arc=none smtp.client-ip=209.85.167.174
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-486badc02ecso1313751b6e.3
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 09:11:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20251104.gappssmtp.com; s=20251104; t=1781021490; x=1781626290; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6Uz2/S8q1bGzYbvjOi+dd2PPF/EKmkqQlSRIaTmPAZs=;
        b=V7pDje4C/TPP9dOXrkrUmIJyPOX2Tgt2po9yO+HDfanfobPPFHQvO+TEft9fudDwXx
         Hny8Wzv52/+9yD3uJlopCz99QtIGSl6slQ7l4haqjD54Xuhye03LU56L1mTHWk0amcVm
         9VoXYW768TeLL8ktqn418Vbsor7U3kN/eeTBXkwJ+o8GmPf7Kdg4tIhZpZXHlwOgz8zR
         LjNP9iJWSUfCDhVtJ1DSvfzqxOHxNgDt+4tnUXXZmx+TKkAZhXYB5caok0X3gyz60SfS
         w3P+OdpB5ZxCKLRgVvHVzIT5l94n5NrpLF44a5o6gSsGrsHtJl2i+9Bi2dOnKnDc6NKt
         FzEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781021490; x=1781626290;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6Uz2/S8q1bGzYbvjOi+dd2PPF/EKmkqQlSRIaTmPAZs=;
        b=eKuT3F60Et+Y9/tIZ/kP7/3+9VLLyvTHAD67dQskSMzr7vDp4p0ctEuTf8dAiz4cif
         iHoYFmns6iNJx49wI02KOGj41373dQEZQWpxW4KMhoyoHgVVJzoYuQjgXcbFevdTHSpw
         CqQCMTMtbipEA43UocToDouCl3RqVzWuRipDDgTAx2Z5sv1QaG47b2pbArnm2oHbV/rx
         zzAzRNPqleEFJkTYkheed9OUxLFLZ/WsnIwSJZUjvqvOhkxV/ZQP0EuwjaXz9xmhzgJ7
         mIWEB+uPNrMgLON5Y1wUwy8lqVN2CO27UR5WJxExZ0+rm79lXoKqrWvDkJiLCLS/0HYw
         nQsA==
X-Forwarded-Encrypted: i=1; AFNElJ8bMHtLI7vlsPuzE1xoZz2d31azmb5k9N9op2ThLVivjo8CCbNgXrABLqyts8hPMAr2Z9gJBBEin6NE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0aLvHomji5zkmhBraMEGPR/pipLmM38H0HGdp7vumuwQVr+mj
	tPp6aHnYcf2ORRvh/rBrLBu+EHih5KrX7qYvFWxP1qN82ECsxbwUUHcAqM0X51rss6w=
X-Gm-Gg: Acq92OEqItJCARf9uDLhsp7EYue7hpa1UjE55Ty5WSUwzr9SyiXMxuqsU2aO9Qbyq38
	esn9pD3HMi9ck+snR8O+lmUdv+DnPazWtMwziY1UuDa2gm3LdVI5OpuqAIqBSB4s7Oav8bi4pQx
	tJosMvUbN+SGjcF1cPlxCXMwzbnPJP2sXr57fSdX/s1EQQlNMV2NWlJ4/2OuUWGvweWU2VevM/p
	qHn8djzVOdKnw+n7gDsYEmvaJ9QJemjrOVly5jQY1wmJIxmLxlJYpxsrwOcjoIPfZ9/G4Zz5Jxb
	6XMOmln+vF2EG6MEFdL5MQGSeN1wlYid3azoP6mW2BAzYZ4GbkjTLXDOIIwL8zThmOK+pI8GNUH
	DQWL+QBCfy63UrtPi6FLO+L8CGktHX1EU6tXmDGsDko8U+tw92kXmwjJgP2Ro0w4jFVWPu/K9F4
	OG44Y78B26DrUM2tDMndYSfYOI8uvIh1PNH9xnt4rB3+qF
X-Received: by 2002:a05:6808:1301:b0:47b:d07b:ecac with SMTP id 5614622812f47-4868db2e306mr15084950b6e.10.1781021490024;
        Tue, 09 Jun 2026 09:11:30 -0700 (PDT)
Received: from [172.22.22.28] ([73.62.185.64])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4865b91f944sm16430240b6e.9.2026.06.09.09.11.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jun 2026 09:11:29 -0700 (PDT)
Message-ID: <b025f81e-e3a5-4b55-a6b4-cbd9731fe0df@riscstar.com>
Date: Tue, 9 Jun 2026 11:11:27 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] PCI: spacemit-k1: Add Spacemit K3 PCIe host
 controller support
To: Manivannan Sadhasivam <mani@kernel.org>,
 Inochi Amaoto <inochiama@gmail.com>
Cc: Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 Christian Bruel <christian.bruel@foss.st.com>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Senchuan Zhang <zhangsenchuan@eswincomputing.com>,
 Nam Cao <namcao@linutronix.de>, Siddharth Vadapalli <s-vadapalli@ti.com>,
 Randolph Lin <randolph@andestech.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Vidya Sagar <vidyas@nvidia.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
 Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
References: <20260517014841.254085-1-inochiama@gmail.com>
 <20260517014841.254085-6-inochiama@gmail.com>
 <wztjdv4t5cn7djj3jyvheest7rn5nr2g3efzwods2fz3yy5wn2@hbl644sd6fst>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <wztjdv4t5cn7djj3jyvheest7rn5nr2g3efzwods2fz3yy5wn2@hbl644sd6fst>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20251104.gappssmtp.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309193-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mani@kernel.org,m:inochiama@gmail.com,m:jingoohan1@gmail.com,m:bhelgaas@google.com,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlan@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:christian.bruel@foss.st.com,m:vincent.guittot@linaro.org,m:zhangsenchuan@eswincomputing.com,m:namcao@linutronix.de,m:s-vadapalli@ti.com,m:randolph@andestech.com,m:andriy.shevchenko@linux.intel.com,m:vidyas@nvidia.com,m:neil.armstrong@linaro.org,m:gustavo.pimentel@synopsys.com,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:dlan@gentoo.org,m:looong.bin@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:looongbin@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	FORGED_SENDER(0.00)[elder@riscstar.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,google.com,kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,foss.st.com,linaro.org,eswincomputing.com,linutronix.de,ti.com,andestech.com,linux.intel.com,nvidia.com,synopsys.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gentoo.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elder@riscstar.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[riscstar-com.20251104.gappssmtp.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,riscstar.com:mid,riscstar.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F3B96662459

On 6/9/26 9:18 AM, Manivannan Sadhasivam wrote:
> On Sun, May 17, 2026 at 09:48:40AM +0800, Inochi Amaoto wrote:
>> The PCIe controller on Spacemit K3 is almost a standard Synopsys
>> DesignWare PCIe IP with extra link and reset control. Unlike
>> the PCIe controller on K1, this controller supports external MSI
>> interrupt controller and can use multiple PHYs at the same time.
>>
>> Add driver to support PCIe controller on Spacemit K3 PCIe.
>>
>> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
>> ---
>>   drivers/pci/controller/dwc/Kconfig            |   4 +-
>>   drivers/pci/controller/dwc/pcie-spacemit-k1.c | 169 ++++++++++++++++++
>>   2 files changed, 171 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
>> index f2fde13107f2..fae971ecd876 100644
>> --- a/drivers/pci/controller/dwc/Kconfig
>> +++ b/drivers/pci/controller/dwc/Kconfig
>> @@ -439,7 +439,7 @@ config PCIE_SOPHGO_DW
>>   	  Sophgo SoCs.
>>   
>>   config PCIE_SPACEMIT_K1
>> -	tristate "SpacemiT K1 PCIe controller (host mode)"
>> +	tristate "SpacemiT K1/K3 PCIe controller (host mode)"
> 
> Can you just say 'SpacemiT PCIe controller (host mode)"? I believe I asked Alex
> while adding K1 support and he said this driver might not support future IP
> revisions, but here we are.

(Sorry if I said that in error.)  Will this be K1 and K3 only?
If so what you say is fine, but I agree with Mani, if it's going
to also form the basis of K5 (or whatever) just make it "SpacemiT".
And probably change the Kconfig symbol to PCIE_SPACEMIT.

					-Alex

>>   	depends on ARCH_SPACEMIT || COMPILE_TEST
>>   	depends on HAS_IOMEM
>>   	select PCIE_DW_HOST
>> @@ -447,7 +447,7 @@ config PCIE_SPACEMIT_K1
>>   	default ARCH_SPACEMIT
>>   	help
>>   	  Enables support for the DesignWare based PCIe controller in
>> -	  the SpacemiT K1 SoC operating in host mode.  Three controllers
>> +	  the SpacemiT K1/K3 SoC operating in host mode. Three controllers
>>   	  are available on the K1 SoC; the first of these shares a PHY
>>   	  with a USB 3.0 host controller (one or the other can be used).
>>   . . .

