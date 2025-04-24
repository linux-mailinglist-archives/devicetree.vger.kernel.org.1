Return-Path: <devicetree+bounces-170589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF10A9B886
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 21:54:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6598F3B9640
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 19:53:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84099292936;
	Thu, 24 Apr 2025 19:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="BiQJH7xY"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F03ED28B4F4
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 19:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745524438; cv=none; b=dSZlubbZ0bScY2mTxVQlMNWh/ZpoeH0QcjqzktAgIzi/OmRefMEQOSlg34P8xbPmqjWOG1/ZppsGQUXJh+WM0twrXtsoCi394Ot1+8GEWJ2P4ZJAWXbI4oegc8WfS3XAsrxcf3KHxRLg4D0XxEjGvECwvogOUZMf6eC87anB8Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745524438; c=relaxed/simple;
	bh=DNuxbwxEeFug/FXNMVi+tNl0Z2xT6Mw5Dv5Mh+OaEE8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lxUvY1OeeqyNXbL5Y0FNUXlg0kKmOOdRrn9TUfToh0xgH3ln7ZHtawhSB1x+MxV2ZEfqpUDhitvrGCEzm6OfJNEmhrhlVN/0hKPO2h96zTJ4975BPd6K5+s1fzGI9lKHzkWjSIGMuVGLZaqnkTTS6PhKHh+5U83dpASupR1urtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=BiQJH7xY; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1745524435;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iU/3VyFMOfD63tP5kzXYfWr/+peX2XaMqzrC6eK+CtI=;
	b=BiQJH7xY7yjrbw5l6DmulNmvc4BiRAC03IWS6lOZSDqfV5xPMlrE2NJxqvGiMvljRND6wt
	UYOBLxBvjXytrqhg1Xx6zLxBza73zOx1kJX+Xs5BYaunB+0hRRrVAqEBpfNxwPVFsAgfSy
	vGUr0igvr4W49BGqavdRB3WH8zglzuc=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-641-DyQdFEH0Oo6vg5QkMrlHNg-1; Thu,
 24 Apr 2025 15:53:49 -0400
X-MC-Unique: DyQdFEH0Oo6vg5QkMrlHNg-1
X-Mimecast-MFC-AGG-ID: DyQdFEH0Oo6vg5QkMrlHNg_1745524427
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DE43C1956086;
	Thu, 24 Apr 2025 19:53:46 +0000 (UTC)
Received: from [10.44.32.28] (unknown [10.44.32.28])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 59D5530001A2;
	Thu, 24 Apr 2025 19:53:41 +0000 (UTC)
Message-ID: <ea9cd028-3d74-4d46-b355-a74ad549269b@redhat.com>
Date: Thu, 24 Apr 2025 21:53:39 +0200
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
 <8082254c-01a6-4aca-84de-76083fdcbb3b@lunn.ch>
Content-Language: en-US
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <8082254c-01a6-4aca-84de-76083fdcbb3b@lunn.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4



On 24. 04. 25 9:18 odp., Andrew Lunn wrote:
>> During taking 613cbb91e9ce ("media: Add MIPI CCI register access helper
>> functions") approach I found they are using for these functions u64
>> regardless of register size... Just to accommodate the biggest
>> possible value. I know about weakness of 'void *' usage but u64 is not
>> also ideal as the caller is forced to pass always 8 bytes for reading
>> and forced to reserve 8 bytes for each read value on stack.
> 
> In this device, how are the u48s used? Are they actually u48s, or are
> they just u8[6], for example a MAC address? The network stack has lots
> of functions like:
> 
> eth_hw_addr_set(struct net_device *dev, const u8 *addr)

u48 registers always represent 48bit integer... they read from device 
using bulk read as big-endian 48bit int. The same is valid also for u16
and u32.

Ivan


