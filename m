Return-Path: <devicetree+bounces-71794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D83D8D7F7F
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 11:56:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8ABCC1C239DF
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 09:56:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C9977F48E;
	Mon,  3 Jun 2024 09:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b="EAtM1oJJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-225.siemens.flowmailer.net (mta-65-225.siemens.flowmailer.net [185.136.65.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90AA97E0F1
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 09:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717408535; cv=none; b=iZt0fkSMm609T5GJDG+EwICKoavAvcvV7Crh9MCc6gU+jVmTUggwNsqFREowVMiMVoDqoUMEJep0TURTTpE6sO6XUbDPRjEzt8eZAWJ1no1v9sBOG+qwKkhZjQqb6sAWGYfANfGWiWQjjxoidMg/ZbomJYD01zpVeOGzjrW0oNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717408535; c=relaxed/simple;
	bh=lL2Ep04N9IkRCflt5sypx9BiodtRGfqnFOebllX1i0E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YmOKOqTrgYVXJIOCXLZ0UxjuONQ7kZkIyaZ1Ktqtzo9mi17+jO3WkWbHOkN6Wz6Dztk6GK95nXyvt/qIg51PaRnVmFBk3KrJqeG7UpK9s2G/AStvV3WoYlRVdvUj7cewhpucpHUMVqx0e9nrc7VLPyMz5uJe21uyXR2RksPmci4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=diogo.ivo@siemens.com header.b=EAtM1oJJ; arc=none smtp.client-ip=185.136.65.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-225.siemens.flowmailer.net with ESMTPSA id 202406030955231606e97362f22016c8
        for <devicetree@vger.kernel.org>;
        Mon, 03 Jun 2024 11:55:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=diogo.ivo@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=K2NhIIxwnO29SOrESPQPqcbmOltZikEuQZMvrX9OqLo=;
 b=EAtM1oJJ1uG6vD32L6V/qiEtHANr03uo1AdeJy6VDLZOmV8CuFNuM79V1AC9LvgZJ9uKxR
 gDUZvEMW1s0ooOioVRH+gVT1Y6t347+8G8iyuw+XSTMZsKcr0dbeL7dkpmooec9MvPF3DXIX
 +Vfz80I9DLgvhQ75ULMtnjWI9YYAQ=;
Message-ID: <b154663e-db1b-4f9b-8f8e-8da832b0edfd@siemens.com>
Date: Mon, 3 Jun 2024 10:55:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 1/3] net: ti: icssg-prueth: Enable PTP timestamping
 support for SR1.0 devices
To: Jacob Keller <jacob.e.keller@intel.com>,
 MD Danish Anwar <danishanwar@ti.com>, Roger Quadros <rogerq@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jan Kiszka <jan.kiszka@siemens.com>
Cc: linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 diogo.ivo@siemens.com
References: <20240529-iep-v1-0-7273c07592d3@siemens.com>
 <20240529-iep-v1-1-7273c07592d3@siemens.com>
 <46b4e8f4-e86a-4755-8e82-a3975973c43e@intel.com>
Content-Language: en-US
From: Diogo Ivo <diogo.ivo@siemens.com>
In-Reply-To: <46b4e8f4-e86a-4755-8e82-a3975973c43e@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1320519:519-21489:flowmailer

Hi Jacob,

On 5/30/24 7:43 PM, Jacob Keller wrote:
> 
> 
> On 5/29/2024 9:05 AM, Diogo Ivo wrote:
>> +	ret = icss_iep_init(prueth->iep0, NULL, NULL, 0);
>> +	if (ret) {
>> +		dev_err_probe(dev, ret, "failed to init iep0\n");
>> +		goto put_iep;
>> +	}
>> +
>> +	ret = icss_iep_init(prueth->iep1, NULL, NULL, 0);
>> +	if (ret) {
>> +		dev_err_probe(dev, ret, "failed to init iep1\n");
>> +		goto exit_iep0;
>> +	}
>> +
> 
> Once initialized, the icss_iep driver logic must implement the actual
> PTP clock interfaces?

Yes exactly, the IEP driver then implements the PHC operations.

> Neat.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Thank you for the review!

Best regards,
Diogo

