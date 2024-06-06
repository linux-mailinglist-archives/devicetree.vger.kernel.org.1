Return-Path: <devicetree+bounces-73286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C35B8FE7BC
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 15:28:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DFEAD1F2121A
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 13:28:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30D68195FFD;
	Thu,  6 Jun 2024 13:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b="TW0KvQ+w"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-225.siemens.flowmailer.net (mta-64-225.siemens.flowmailer.net [185.136.64.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84C5195FD9
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 13:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717680517; cv=none; b=sLu4kAp8ZN+vqw7XkWa5OKTdzFWNnLLZ1EGDUSZsdHtYEKbcwoync/8h8qUvMioyfiFp05NwghG7PE+bVdPW8djl1hxWinzWntmdxbudFWqMs9NZld5QcU5jEMJ/e7xMDr8VVFZhaw6xLmq+yiOe5hNNWsg79mQKnL4pNlZM/1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717680517; c=relaxed/simple;
	bh=yjkWMEhTTHw95CioVsQeuppHqqaXxYjWyu4hGhWgAqY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dz42UDTs/wTj1wShYK8XhMjZmsBX0g1EKSkxieMpfMwOPqHPBcWHR23Xt/kLYRMQEp3ebdBAScAT972LsFsKx4HKJQULuUuSLsf11Vd8xtPNaNnQyQ7aA3pIkwBZAc18jhIoaxeZB298jC04HTDiwAOwIIbEHCvMBC+ccIWmy6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b=TW0KvQ+w; arc=none smtp.client-ip=185.136.64.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-225.siemens.flowmailer.net with ESMTPSA id 20240606132831333191ea676dd8c80c
        for <devicetree@vger.kernel.org>;
        Thu, 06 Jun 2024 15:28:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=diogo.ivo@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=utY5xIcszx7G2aTGA/r1H6iz9uoTwSG/cIJhnifoGOg=;
 b=TW0KvQ+wMGMxNr23pWsjhl6GhMaonhAwv9UdPUC/EKSfBZopTYGerLxzQr9qFYBF/32Pml
 c20qYCya0SrMhTolGT2Tk6n86ZWc2d19lJ8dcopDXvlUl9GOVR+yAbpBZN9UA7rXwkpQhz1i
 sCZWNlwu3A5YkMKtTC24K5XG/JL64=;
Message-ID: <a08ff9c7-eac7-409e-8f22-5ad1fa0cf212@siemens.com>
Date: Thu, 6 Jun 2024 14:28:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH net-next v2 2/3] net: ti: icss-iep: Enable compare events
To: Paolo Abeni <pabeni@redhat.com>, MD Danish Anwar <danishanwar@ti.com>,
 Roger Quadros <rogerq@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jan Kiszka <jan.kiszka@siemens.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Simon Horman <horms@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 diogo.ivo@siemens.com
References: <20240604-iep-v2-0-ea8e1c0a5686@siemens.com>
 <20240604-iep-v2-2-ea8e1c0a5686@siemens.com>
 <c518f6dd6cf9e92469d37a7317a6881ebed6a8c1.camel@redhat.com>
Content-Language: en-US
From: Diogo Ivo <diogo.ivo@siemens.com>
In-Reply-To: <c518f6dd6cf9e92469d37a7317a6881ebed6a8c1.camel@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1320519:519-21489:flowmailer

Hi Paolo,

On 6/6/24 11:32 AM, Paolo Abeni wrote:
> On Tue, 2024-06-04 at 14:15 +0100, Diogo Ivo wrote:
>> @@ -571,6 +573,57 @@ static int icss_iep_perout_enable(struct icss_iep *iep,
>>   	return ret;
>>   }
>>   
>> +static void icss_iep_cap_cmp_work(struct work_struct *work)
>> +{
>> +	struct icss_iep *iep = container_of(work, struct icss_iep, work);
>> +	const u32 *reg_offs = iep->plat_data->reg_offs;
>> +	struct ptp_clock_event pevent;
>> +	unsigned int val;
>> +	u64 ns, ns_next;
>> +
>> +	spin_lock(&iep->irq_lock);
> 
> 'irq_lock' is always acquired with the irqsave variant, and here we are
> in process context. This discrepancy would at least deserve a comment;
> likely the above lock type is not correct.

If my reasoning is correct I believe this variant is correct here. The
register accesses in the IRQ handler and icss_iep_cap_cmp_work() are
orthogonal, so there should be no need to guard against the IRQ handler
here. This is the case for the other places where the _irqsave() variant
is used, so using the _irqsave() variant is overkill there.

 From my understanding this is a remnant of the SDK's version of the
driver, where all of the processing now done in icss_iep_cap_cmp_work()
was done directly in the IRQ handler, meaning that we had to guard
against some other thread calling icss_iep_ptp_enable() and accessing
for example ICSS_IEP_CMP1_REG0 concurrently. This can be seen in the
comment on line 114:

struct icss_iep {
  ...
	spinlock_t irq_lock; /* CMP IRQ vs icss_iep_ptp_enable access */
  ...
};

For v3 I can add a comment with a condensed version of this argument in
icss_iep_cap_cmp_work().

With this said it should be possible to change this spinlock to a mutex as
well, since all the possibilities for concurrency happen outside of
interrupt context. I can add a patch to this series doing that if you
agree with my reasoning above and find it beneficial. For this some
comments from TI would also be good to have in case I missed something
or there is some other factor that I am not aware of.

Best regards,
Diogo

