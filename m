Return-Path: <devicetree+bounces-165946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0D6A85EC1
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 15:24:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A2264C7472
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 13:21:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA6DA1DD0F2;
	Fri, 11 Apr 2025 13:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Yl4ztwIC"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261951A5BB0
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 13:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744377579; cv=none; b=JGHKOuPyRZHfi/eKypokz58PuxJtmrU0UQGtjXd1+uTQd1gbvA3MYGFqWUeDS3G5SgHEv57yhvXPDAxdbbhhBMcW99BeOWbaXxYTcacTK+HqV3kH/UTGsFpdiyV4ZZnXtBVGxv6gN+VA3PzROo/lvPC5DsaNO6Txayzq8ikRCbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744377579; c=relaxed/simple;
	bh=DvdCNV3kj/5TD9O7DSU/WxOtcVOvJSx4AkDTYs+lxkM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bQSI+sYnLhrzzPOz56odqJAezUhhoUt6mmmBMSzgt6LVRXteZL/JbB/SO3hcyAaamxF2wMGOLT+1DLJLlKXnVMOpXDl7C44L7ELn579ii6rwgOXHlAxk81DO7/onFGZVFAipuqwzipoo3AY03vBCzkcjELl9EshgILMorx5XqlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Yl4ztwIC; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744377577;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=shuX7fon/hIq4duj4t+qKrqkD2Z+ua79QnTf8iIlD5c=;
	b=Yl4ztwICqDU+Zvpf31soSAFfwzhTRxB8VwY9jcVFCNSwQT0/gFxGCfSS/nSOE/4eZM7tBk
	vqAnC+hJYpobgng4cVwy2gJuW7WVJ3cYDZ5RXu4s6Dg9FfEMTBoC0FXu1F5i67rOWimTvb
	qBxTwgQQtPMCeEFexOq5IPlKuBVh43A=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-15-7Bs_rkfVNzqHaoE-430wBA-1; Fri,
 11 Apr 2025 09:19:30 -0400
X-MC-Unique: 7Bs_rkfVNzqHaoE-430wBA-1
X-Mimecast-MFC-AGG-ID: 7Bs_rkfVNzqHaoE-430wBA_1744377568
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2197C1801A1A;
	Fri, 11 Apr 2025 13:19:28 +0000 (UTC)
Received: from [10.45.225.124] (unknown [10.45.225.124])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id B2043180B486;
	Fri, 11 Apr 2025 13:19:22 +0000 (UTC)
Message-ID: <e80b24f2-a936-4f7a-a86b-af3bc9b6a380@redhat.com>
Date: Fri, 11 Apr 2025 15:19:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/14] mfd: zl3073x: Add components versions register
 defs
To: Andrew Lunn <andrew@lunn.ch>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>, netdev@vger.kernel.org,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Prathosh Satish <Prathosh.Satish@microchip.com>,
 Lee Jones <lee@kernel.org>, Kees Cook <kees@kernel.org>,
 Andy Shevchenko <andy@kernel.org>, Andrew Morton
 <akpm@linux-foundation.org>, Michal Schmidt <mschmidt@redhat.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
References: <20250409144250.206590-1-ivecera@redhat.com>
 <20250409144250.206590-8-ivecera@redhat.com>
 <CAHp75Ve4LO5rB3HLDV5XXMd4SihOQbPZBEZC8i1VY_Nz0E9tig@mail.gmail.com>
 <b7e223bd-d43b-4cdd-9d48-4a1f80a482e8@redhat.com>
 <8c9e95e2-27da-4f3d-b277-ca8e98ab61ef@lunn.ch>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <8c9e95e2-27da-4f3d-b277-ca8e98ab61ef@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93



On 11. 04. 25 2:31 odp., Andrew Lunn wrote:
>> 2nd regmap for indirect registers (mailboxes) (pages 10-15) with disabled
>> locking:
>>
>> regmap_config {
>> 	...
>> 	.disable_lock = true,
>> 	...
>> };
> 
> Do all registers in pages 10-15 need special locking? Or just a
> subset?
> 
> 	Andrew
> 
All of them... 1 page (>=10) == 1 mailbox.

I.


