Return-Path: <devicetree+bounces-163001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1B9A7AB8E
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 21:21:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C8C23BCC61
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 19:17:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A7E3261379;
	Thu,  3 Apr 2025 19:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="Jn7Fb+Ug"
X-Original-To: devicetree@vger.kernel.org
Received: from out-171.mta0.migadu.com (out-171.mta0.migadu.com [91.218.175.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC35F25FA39
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 19:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743707067; cv=none; b=tELncuY7/E2ftzzZJLhQ011olqOW6IHSqN6vZItPDMToOgUbiOEdT2XF1P5UfsUq7Yw7Nt4rPCSPRES2VjKBdGLI5RJS04vv/ezfABwCCTdP8Q7XfgduqBtIjXAM2IZbJdW98s0DPGvfDxR7TzUVlvcrdD61SXFV5LM+E7m0TO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743707067; c=relaxed/simple;
	bh=iuOOwB3RhF2+wmWM3TB/6mKD+N4PJ/l0AgT6T28qZdc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gR2wmvM6NWs8n9bj2ZML09DrN3osVSECmXZZT3L4h02b0//nmZpKMjp0ZaZuNu+5V2QNuv6e4IEEuhWtu2ZE3fF16LPHyBq0J4LItajT6phKXFHL/zIOsfd8n9PMsmqupNq/vc3smKhzi0sm8tpZa/Lym6WHScGjh7xx5uIy4ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=Jn7Fb+Ug; arc=none smtp.client-ip=91.218.175.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Message-ID: <0eb36d4f-ab6c-4bb3-aad0-99c09bcd56ec@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1743707053;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OR6tAQCdTqWMdGnoueGRPKReRRRQNdIbvhVIHJWD5vI=;
	b=Jn7Fb+UgY/OlS/fnuFJSgz2OVlcdAmgKv8H1oVFoc46n/wT4ubopRD4mJlVLWxZMgP1Wnu
	05Q7iiyh/mwHPQ6Dw+H10z3jRi2jjgr8S6+WImf8VczgxbWlw9h7NRIvnmN38tQ9ge6NVM
	kpjzXJKKqFnlUwXJb1TnwDaYvPaqCNs=
Date: Thu, 3 Apr 2025 15:04:08 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [RFC net-next PATCH 11/13] of: property: Add device link support
 for PCS
To: Saravana Kannan <saravanak@google.com>
Cc: netdev@vger.kernel.org, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Russell King <linux@armlinux.org.uk>,
 Christian Marangi <ansuelsmth@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, linux-kernel@vger.kernel.org,
 upstream@airoha.com, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org
References: <20250403181907.1947517-1-sean.anderson@linux.dev>
 <20250403182758.1948569-1-sean.anderson@linux.dev>
 <CAGETcx9v610XhvU705R=Mjth=iAbCU04rqNnQPhQua37Jc4TRQ@mail.gmail.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sean Anderson <sean.anderson@linux.dev>
In-Reply-To: <CAGETcx9v610XhvU705R=Mjth=iAbCU04rqNnQPhQua37Jc4TRQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

On 4/3/25 14:32, Saravana Kannan wrote:
> On Thu, Apr 3, 2025 at 11:28 AM Sean Anderson <sean.anderson@linux.dev> wrote:
>>
>> This adds device link support for PCS devices, providing
>> better probe ordering.
>>
>> Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
>> ---
>>
>>  drivers/of/property.c | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/of/property.c b/drivers/of/property.c
>> index c1feb631e383..f3e0c390ddba 100644
>> --- a/drivers/of/property.c
>> +++ b/drivers/of/property.c
>> @@ -1379,6 +1379,7 @@ DEFINE_SIMPLE_PROP(pses, "pses", "#pse-cells")
>>  DEFINE_SIMPLE_PROP(power_supplies, "power-supplies", NULL)
>>  DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
>>  DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
>> +DEFINE_SIMPLE_PROP(pcs_handle, "pcs-handle", NULL)
>>
>>  static struct device_node *parse_gpios(struct device_node *np,
>>                                        const char *prop_name, int index)
>> @@ -1535,6 +1536,7 @@ static const struct supplier_bindings of_supplier_bindings[] = {
>>                 .parse_prop = parse_post_init_providers,
>>                 .fwlink_flags = FWLINK_FLAG_IGNORE,
>>         },
>> +       { .parse_prop = parse_pcs_handle, },
> 
> Can you add this in the right order please? All the simple ones come
> before the SUFFIX ones so that it's less expensive/fewer comparisons
> before you parse the simple properties.

Ah, I couldn't figure out what the intended order was so I just stuck
it at the end.

--Sean

