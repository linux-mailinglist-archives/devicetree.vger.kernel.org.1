Return-Path: <devicetree+bounces-253219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AA812D08862
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 11:23:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8365B3022F13
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 10:23:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AA2C3358DF;
	Fri,  9 Jan 2026 10:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="cY3ahaEe"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CACAE3376BA
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 10:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767954186; cv=none; b=FVwijQyG2CBNwv8pI8tMz/3vWJqrJR+sPwcBbkD/PBGRFl7wPlG3s/pwQZibny/Cjnyh6tBjQujdyjbvtwR8l6kDpplzGqIS/YumLJrHV9WWMxcdNKPVGy9Yw9cPeRwmfcF5eS/9pLSZB6iegYiDNoqY00K0Q+/9F/EiYWRhpGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767954186; c=relaxed/simple;
	bh=EEGmoGqBV9GfkkOjO9oHg2qhXiEtLKEgQ9u8EJUQbKE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g/zYHnn+ox64PzfvMcc+VJc3bIlF1Em+mi8v7z0HEoSWYxzLK2/2i9KUm74eshiDue4fBZHR7+LNk0xvjheueVVLKJLbZs9jFzmDQGjFs5jzzcrK6Wm8rhgS77sAIkiVTtIoV56aPhicMJpAL2FY1W7jW41NI3Hoqbq0qe8eypE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=cY3ahaEe; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767954183;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PgTuGSJqZ1fMkiPNSGvIy/EFwwr4d2ZCO17UacaOjNc=;
	b=cY3ahaEeuFKURa1aRjr82+bd/SnQhTPzVnctLC2NPBU7QJAVvPewd9z4QVOqUG7ZEABS6Z
	bVn3ljp7cf4r5UJE1XlFf6hVcahwten+pYZUapKc4dx9ZZePui9aSdPJbiuyJb1p0GMqRx
	O9Bb9KaEg0GanocVFjzDis68zfh1a6U=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-519-DfkO9NcCMtSPK9fQ5b93Rg-1; Fri,
 09 Jan 2026 05:23:00 -0500
X-MC-Unique: DfkO9NcCMtSPK9fQ5b93Rg-1
X-Mimecast-MFC-AGG-ID: DfkO9NcCMtSPK9fQ5b93Rg_1767954177
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 51BC01956096;
	Fri,  9 Jan 2026 10:22:56 +0000 (UTC)
Received: from [10.44.32.135] (unknown [10.44.32.135])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 793241956048;
	Fri,  9 Jan 2026 10:22:48 +0000 (UTC)
Message-ID: <25f49485-2228-4aa5-9023-0b00cc10a4da@redhat.com>
Date: Fri, 9 Jan 2026 11:22:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 03/12] dpll: Add helpers to find DPLL pin fwnode
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: netdev@vger.kernel.org, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Prathosh Satish <Prathosh.Satish@microchip.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 Michal Schmidt <mschmidt@redhat.com>, Petr Oros <poros@redhat.com>,
 Grzegorz Nitka <grzegorz.nitka@intel.com>
References: <20260108182318.20935-1-ivecera@redhat.com>
 <20260108182318.20935-4-ivecera@redhat.com>
 <20260109-cooperative-chinchilla-of-swiftness-aebbc8@quoll>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20260109-cooperative-chinchilla-of-swiftness-aebbc8@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17



On 1/9/26 10:55 AM, Krzysztof Kozlowski wrote:
> On Thu, Jan 08, 2026 at 07:23:09PM +0100, Ivan Vecera wrote:
>> Add helper functions to the DPLL core to retrieve a DPLL pin's firmware
>> node handle based on the "dpll-pins" and "dpll-pin-names" properties.
>>
>> * `fwnode_dpll_pin_node_get()`: matches the given name against the
>>    "dpll-pin-names" property to find the correct index, then retrieves
>>    the reference from "dpll-pins".
>> * `device_dpll_pin_node_get()`: a wrapper around the fwnode helper for
>>    convenience when using a `struct device`.
>>
>> These helpers simplify the process for consumer drivers (such as Ethernet
>> controllers or PHYs) to look up their associated DPLL pins defined in
>> the DT or ACPI, which can then be passed to the DPLL subsystem to acquire
>> the pin object.
>>
>> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
>> ---
>>   drivers/dpll/dpll_core.c | 20 ++++++++++++++++++++
>>   include/linux/dpll.h     | 15 +++++++++++++++
>>   2 files changed, 35 insertions(+)
>>
> 
> I don't see cells defined in your binding. Neither updated property.c.
> 
WDYM by property.c ?

Thanks,
Ivan


