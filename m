Return-Path: <devicetree+bounces-97097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BC5960B3B
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 15:03:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7AF6C1F242B5
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 13:03:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 652591BCA04;
	Tue, 27 Aug 2024 13:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Ci3oK9Fx"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA50119EED3
	for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 13:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724763826; cv=none; b=l2L3mKTU3oStaAEAbWELlW3OAgHbj9wMcA/bL+CTYv/Ugbsx0cBUn4oFE12Sz2xpt4zTPo0ERurUhwwW1WZQDDTQJurDHt974emXXAqXtFgkZ6/0J2w9ZVz+1vvMcqHXRvTBxwDielhL9bCT17Iid17HWXuhQ3b0M4Ln7vMER5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724763826; c=relaxed/simple;
	bh=g131o0KuyKHodChgpl8+qeSQWwQdDBkQEeVD2/iEY1Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VxU5cB2uMSzD42bRfyFVvA1/zylQXHegdhF5wqeJMHLwdWNhmxEG36Po3Z/rpxAxWxUX1BUS3qVUlc8HOyqbbvPhxTrxuzxTxCZlbTnAzFxPJOfKd5XoxIWK9H3hinSFSae2UfC1crp3h4JeeBkFaRklGfncZOwe03mrcy9yGqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Ci3oK9Fx; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1724763823;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JQ7KSXos2g5YKHcot8IcrKmcUaOEE56R2i6CzUYd7pg=;
	b=Ci3oK9FxcijfE6nAx9TuuP/nE4bq0fnbCP6MEOxrmfFTbcXZX7Ogekkdv6kIYgVH5hrvG7
	dofyxffTystoKpfvyGp+5t7SobH0hCu8D5TMCecsNBIrIr8dIiY6s8nPGqAm/KnfTj70hX
	utrIQAqsu7XZr15ZcYkEUaqt419VIVM=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-353-0n3NI7t_PV-ie-qV8DCyFg-1; Tue, 27 Aug 2024 09:03:42 -0400
X-MC-Unique: 0n3NI7t_PV-ie-qV8DCyFg-1
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-37197b9e1ceso3331427f8f.1
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 06:03:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724763821; x=1725368621;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JQ7KSXos2g5YKHcot8IcrKmcUaOEE56R2i6CzUYd7pg=;
        b=ZTztGGHh6IwGq4CAK9SvqrX9HeLp7mFbl08REY3BM7qpZv/LQpCPqSs/YFkpTPEws8
         2GVsQvtbTc8YhBfeISvrFUsTcagt0z770u8zlgijYvuE+FTp6/Z/bdVbhuM9LMP4vBHw
         YSleA2pkeZ9Eb6vhjUiRPdjgL06v/DmREHTyUjkbjXvJKg+bgFjob1MF7LvKyIigWjLE
         y9mZ+MRc73lquBX9qziXeWyMjtBgsVjHZ6V88mJQtBYCawQuMqgSJ6lBpuRnrzzgUswk
         pnh0YZJxvudN2UNmmt/0vnDIpOvErM3yT1dSx9x8tsYG6/lS9FRMh1SdlPP5yNkYOmF1
         A/wQ==
X-Forwarded-Encrypted: i=1; AJvYcCV/7y96L8jnVqZ01U29Wz1C3kr/fqMUT6b5kqwly4RGjo0oelZZo7qA9SzUew8pmfrZ7Yvp+9EpgwpZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyf3MKYkg3ELVsse5J4g8XR2q6GYrWCLrCA2NQJbjwK69bp7pWo
	5eXDgZZsYLHofJjAnZt+SAYw/hRFAKNbgEUtCXrkFqJ0pmt3UKqUAfuZWr5/87kEF0sKc7zZecf
	RTpKpklX4NwHTmSaGbMfnWMWqP2eeM3wFpMqIxhaMP0uNXM7tX19BylRVdIs=
X-Received: by 2002:adf:ed08:0:b0:368:4edc:611e with SMTP id ffacd0b85a97d-373118580dcmr8316815f8f.14.1724763820821;
        Tue, 27 Aug 2024 06:03:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFd1xsweSnbINCAxizbM13yu0pRe3D0c3l234fJFAE105Vpm2FkO3D8LTHh2scsUxQgobBHWw==
X-Received: by 2002:adf:ed08:0:b0:368:4edc:611e with SMTP id ffacd0b85a97d-373118580dcmr8316789f8f.14.1724763820223;
        Tue, 27 Aug 2024 06:03:40 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:1b67:7410::f71? ([2a0d:3344:1b67:7410::f71])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3730826a3f7sm13027467f8f.112.2024.08.27.06.03.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2024 06:03:39 -0700 (PDT)
Message-ID: <43ca814d-2003-4d1b-8cca-4d3fec3d1aee@redhat.com>
Date: Tue, 27 Aug 2024 15:03:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v2 0/2] net: pse-pd: tps23881: Reset GPIO support
To: Kyle Swenson <kyle.swenson@est.tech>,
 "o.rempel@pengutronix.de" <o.rempel@pengutronix.de>,
 "kory.maincent@bootlin.com" <kory.maincent@bootlin.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>
Cc: "robh@kernel.org" <robh@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "thomas.petazzoni@bootlin.com" <thomas.petazzoni@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20240822220100.3030184-1-kyle.swenson@est.tech>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20240822220100.3030184-1-kyle.swenson@est.tech>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 8/23/24 00:01, Kyle Swenson wrote:
> On some boards, the TPS2388x's reset line (active low) is pulled low to
> keep the chip in reset until the SoC pulls the device out of reset.
> This series updates the device-tree binding for the tps23881 and then
> adds support for the reset gpio handling in the tps23881 driver.
> 
> Signed-off-by: Kyle Swenson <kyle.swenson@est.tech>
> 
> v1 -> v2:
>    - Changed the reset pulse duration to be between 5us and 10us, per the
>      TPS23880 datasheet
>    - Changed the delay after reset to be 50ms instead of 1-10ms in order
>      to meet the minimum recommended time before SRAM programming.
> 
> v1: https://lore.kernel.org/netdev/20240819190151.93253-1-kyle.swenson@est.tech/
> 
> Kyle Swenson (2):
>    dt-bindings: pse: tps23881: add reset-gpios
>    net: pse-pd: tps23881: Support reset-gpios
> 
>   .../bindings/net/pse-pd/ti,tps23881.yaml      |  3 +++
>   drivers/net/pse-pd/tps23881.c                 | 21 +++++++++++++++++++
>   2 files changed, 24 insertions(+)

This has been applied by Jakub, but the bot failed to send the notification.

Thanks,

Paolo


