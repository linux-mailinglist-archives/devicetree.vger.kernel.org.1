Return-Path: <devicetree+bounces-71797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EAB8D7F98
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 12:02:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 27800B25756
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 10:02:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90D49823C3;
	Mon,  3 Jun 2024 10:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b="soRzjQM2"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-226.siemens.flowmailer.net (mta-64-226.siemens.flowmailer.net [185.136.64.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D87823B5
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 10:02:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717408952; cv=none; b=Lp90gJLMcuOsqqyl3BdwYx3v8iw27c2GR98ghK9jfMhYHvfPmIqR/bxXGqPZAM7xwZn40F7NFS7bDdpLg9HAJaHe1NHQgfANhNGMLeU4pLay1WaERzIwYXH4mDlTu/2ZJXLNKeamu39IJj5yq4cCZwIsfUccyjOeia+9Z9MMU/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717408952; c=relaxed/simple;
	bh=6F+xgND2wYgrZVy5rOZdN1AVq49OQhyqsp74cZfsGNk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kBNDpVPpHDR82CaWtk/+nq15qBzlkYHxirpugRMfLULTh86GzXPakZA1oiVzZRQtAzukYQZiNZhuJhxnkd33D22qQj2/zPjWYqrL25Mt7eh9wVIyj1EifLbVmdeyuI8Q/MQsFrb0xbliaIci8hTLEEdWuZo0ppWXaQi2IuIWwmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b=soRzjQM2; arc=none smtp.client-ip=185.136.64.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-226.siemens.flowmailer.net with ESMTPSA id 20240603100222d02180934220427dc7
        for <devicetree@vger.kernel.org>;
        Mon, 03 Jun 2024 12:02:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=diogo.ivo@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=Y4VG6T7y3DVLYv9REYgdn0MCsEnDoxm4kG3aaig4WS0=;
 b=soRzjQM2CxQYYzgwtxuKadFJBzAJjanFvejtSIQqpyo6355G0LB/n4KyNnMoDrB493BKKM
 9SmB9SJ59sPEK/9z+XxtQlEmNxSslRKmCVvsSR+wUUc+inR/JQhgkzkWWz2mOvEDKntYbbfX
 DdhaFYOs4E91XOcdn74XTDwW/TK5I=;
Message-ID: <3b8ef6f2-4a06-4028-8a6f-f63b30ff8930@siemens.com>
Date: Mon, 3 Jun 2024 11:02:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [EXTERNAL] [PATCH 2/3] net: ti: icss-iep: Enable compare events
To: Sunil Kovvuri Goutham <sgoutham@marvell.com>,
 MD Danish Anwar <danishanwar@ti.com>, Roger Quadros <rogerq@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jan Kiszka <jan.kiszka@siemens.com>
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 diogo.ivo@siemens.com
References: <20240529-iep-v1-0-7273c07592d3@siemens.com>
 <20240529-iep-v1-2-7273c07592d3@siemens.com>
 <BY3PR18MB47377FBF88724DD5A4814BCEC6FC2@BY3PR18MB4737.namprd18.prod.outlook.com>
Content-Language: en-US
From: Diogo Ivo <diogo.ivo@siemens.com>
In-Reply-To: <BY3PR18MB47377FBF88724DD5A4814BCEC6FC2@BY3PR18MB4737.namprd18.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1320519:519-21489:flowmailer

Hi Sunil,

On 5/31/24 6:12 AM, Sunil Kovvuri Goutham wrote:
>> From: Diogo Ivo <diogo.ivo@siemens.com>
>> Sent: Wednesday, May 29, 2024 9:35 PM
>>
>> +	iep->cap_cmp_irq = platform_get_irq_byname_optional(pdev,
>> "iep_cap_cmp");
>> +	if (iep->cap_cmp_irq < 0) {
>> +		if (iep->cap_cmp_irq == -EPROBE_DEFER)
>> +			return iep->cap_cmp_irq;
> 
> This info is coming from DT, is PROBE_DIFFER error return value possible ?

 From my understanding -EPROBE_DEFER is a possible error code.
platform_get_irq_byname_optional() will eventually call of_irq_get()
where we get -EPROBE_DEFER if the IRQ domain still hasn't been
initialized.

>> +		iep->cap_cmp_irq = 0;
>> +	} else {
>> +		ret = devm_request_irq(dev, iep->cap_cmp_irq,
>> +				       icss_iep_cap_cmp_irq,
>> IRQF_TRIGGER_HIGH,
>> +				       "iep_cap_cmp", iep);
>> +		if (ret)
>> +			return dev_err_probe(iep->dev, ret,
>> +					     "Request irq failed for cap_cmp\n");
> 
> Can't this driver live without this feature ?

Yes it can! I'll rework this logic so that we do not fail to probe
here and simply continue without PPS event support.

Thank you for the review!

Best regards,
Diogo

