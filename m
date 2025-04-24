Return-Path: <devicetree+bounces-170585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E16A9B845
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 21:26:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C53971BA8530
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 19:26:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61FC928E61A;
	Thu, 24 Apr 2025 19:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="NloKoIrD"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9437B291152
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 19:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745522781; cv=none; b=PsZcvqXLr84Jhn7lRL7a/FaGxUD2GL+M/AeVc1BOIjl4yiogKURzrTEc5GTDq35iKQvuwUf8ZqU8RXuyDzecam8tAZUSzhuRvB5Ut20yzPW81DUzgmHcwvzw6kBU6fB5FxzcMtRLbpL1BLwDf37I4t/DoJCFNOc4AktWe/ShVi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745522781; c=relaxed/simple;
	bh=bu059oOGZ2b1GzECqaoT83+HulR1dptsnBlbt42RbG8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oWojf6jluZ2sCUCL7Koraih9GC+RjV2jQlqzMGelIfaCSAIZMkrJ8MFZFnWp4OxgEXvCsenSI5L6LnHpiXezGm5c0kvh5HRqtUamogibOv9GW6yL9ZFZJT00HZXoLqJ+yW8V+2BQEiR6t8ZVP2tODQgRBgkG8auVdf7hNE8A8X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=NloKoIrD; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1745522775;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TXxRuxHtNOEgElVP80hKhstwAJQ4wypAH+ISjl66nlw=;
	b=NloKoIrDEv/iPUKhPpdq6cVvS1A/a1aCDAeZ0GZqfQpiK2ToGsJajtVplP511PN5kDhiIR
	theSuf69UCAHDxP/W2IQIQ1L79+w0cFM0edEhws7JClcSoPUpt/7PUWR9piJVXX9okatZ2
	8W6qeKS6/SvNNix1GrrYq1GGvmfkAN8=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-370-jm5CuxR5NgiLIg5U_j-wPA-1; Thu,
 24 Apr 2025 15:26:11 -0400
X-MC-Unique: jm5CuxR5NgiLIg5U_j-wPA-1
X-Mimecast-MFC-AGG-ID: jm5CuxR5NgiLIg5U_j-wPA_1745522769
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B105D1800877;
	Thu, 24 Apr 2025 19:26:08 +0000 (UTC)
Received: from [10.44.32.28] (unknown [10.44.32.28])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 2AA6C19560A3;
	Thu, 24 Apr 2025 19:26:02 +0000 (UTC)
Message-ID: <458254c7-da05-4b27-870d-08458eb89ba6@redhat.com>
Date: Thu, 24 Apr 2025 21:26:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v4 5/8] mfd: zl3073x: Add functions to work with
 register mailboxes
To: Andrew Lunn <andrew@lunn.ch>
Cc: netdev@vger.kernel.org, Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Prathosh Satish <Prathosh.Satish@microchip.com>,
 Lee Jones <lee@kernel.org>, Kees Cook <kees@kernel.org>,
 Andy Shevchenko <andy@kernel.org>, Andrew Morton
 <akpm@linux-foundation.org>, Michal Schmidt <mschmidt@redhat.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org
References: <20250424154722.534284-1-ivecera@redhat.com>
 <20250424154722.534284-6-ivecera@redhat.com>
 <5094e051-5504-48a5-b411-ed1a0d949eeb@lunn.ch>
 <bd645425-b9cb-454d-8971-646501704697@redhat.com>
 <d36c34f8-f67a-40ac-a317-3b4e717724ce@lunn.ch>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <d36c34f8-f67a-40ac-a317-3b4e717724ce@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12

On 24. 04. 25 9:10 odp., Andrew Lunn wrote:
>> Each sequence has to be protected by some lock and this lock needs to be
>> placed in MFD. Yes the routines for MB access can be for example in DPLL
>> driver but still the locks have to be inside MFD. So they have to be
>> exposed to sub-devices.
> 
> The point of using MFD was gpio? Does the gpio driver need access to
> the mailboxes? Does any other sub driver other than DPLL need to
> access mailboxes?

Yes, PHC (PTP) sub-driver is using mailboxes as well. Gpio as well for 
some initial configuration.

> The mutex needs to be shared, but that could be in the common data
> structure.

Do you mean that sub-device would access mutexes placed in zl3073x_dev 
which is parent (mfd) driver structure?

Ivan


