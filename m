Return-Path: <devicetree+bounces-275003-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOmfCUnMs2n2awAAu9opvQ
	(envelope-from <devicetree+bounces-275003-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:35:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C35C627FC35
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:35:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5CB223198EC7
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:32:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEADE384238;
	Fri, 13 Mar 2026 08:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ve4+KjZM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2902A382F2A
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773390742; cv=none; b=ftgRSxdVHodtfCDql4PzS31bSGlZhPfndnShwRy1PunYBfgI+8H9fVuijU+ooawpcQLTD88EXm/QmbMUAE3B3fF5dYMmLt9UTSxB9/E09vmlhk33Aj6MUfBI8XWxcmR/EAMg75pn2HE+NqooYJoxR2EAALukfiIhp/+1IBzg3lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773390742; c=relaxed/simple;
	bh=gF7U4AhLl2B54UlbLoigUUUH6Jsm/F5mlTaV5RfBX1c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J+e89y19Yx4dlpl5mLNgij6QV0L5mLB8ngfciR7cbxKj+WPD7Lm0/C7HM+fVL6v1dQSaGjSp+rAttfDEV5/+LFp9OBwGjjZR4qJAesg6L/iiHEyHOGuyrO3Aj8SdGbGK9On0uixwasnpb0LJw+dG+2FSG3v7t8WvP5v9qNs6ncA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ve4+KjZM; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b93698bb57aso373969566b.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 01:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773390739; x=1773995539; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zbcDxBVVYzOw7c6OTfNiMQmEPeMGSouBlRwpnguHKAQ=;
        b=Ve4+KjZMZXY4pNNaIPy6oKForvFFVjldMaURWwmxmzsmi+eV3MBTRRAd1SMZIX345h
         CuM9UPCoPnm84rEkVOfCzztFXPmTAlGoJBaGYyyhDd+hIbw2oLs+ZICv/LMKPCSCoPau
         HvE2s0thCUwFl1Lp4ruYJ7XJgjfwEHOYBowlXC5BHuqsyW5NJv2OWwL5ShpyhPmnxoyI
         IaTH1CNYSzxrimyyURz3spByUlwxn+KkTXJBZTy4lWDfNEIzHdB7/laV0bVJSJPK2lrJ
         2ERci+y02pPLrqM5DXhh8IXd4bDpOuswI7THsBPfv/Ywl+B54JNSA58bAKWTK286/sJQ
         Jvqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773390739; x=1773995539;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zbcDxBVVYzOw7c6OTfNiMQmEPeMGSouBlRwpnguHKAQ=;
        b=XH4WkolD7Ae+Juk4oGDAhDng++TxSCd5wuSzffFENZUOlcNxTUOiId7TQDDLToures
         Mbu0L0h82T9ObFdvo3swgfy0ZGEmeWoagJ0h28eDY6raNft0UgHRbRKaT6ZjhzijFKUC
         j0rd/GsaFNf80JFoO9O8jr0m3YLnUDqihqKTL7V8bma1tEMmpUL5VfgZlcOoTBAWMDDj
         JX+BO8hPLl+m8Dl2rmo+5AcAM3NgD4p/+mzWoHDSAe26ShZXtC5oWaBLmphJI1l5LBUT
         X0H+Ijx+INO7W0g0qKn2xzFuOKwRDqQEmRXZeRKvc2BATfuJwvMGBeYcQqH4LAVVGw62
         EZ2w==
X-Forwarded-Encrypted: i=1; AJvYcCWhY9uT8fhD3TqzSU/TGgAdufB38FrZBnUHXWJFS0f/5wBe/2POv80szL7MtW92Du6BKitGOu33zDL6@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9e8I5nHcBeBz8yRbhavOLlEcYz2QC9HDnEY2hqg1Lx4mEm66K
	EPfx8F99VdtBvjq8mikB/bwEzU9y+OoWUC8iViWNalwmONvhQjPu8E+N
X-Gm-Gg: ATEYQzxDsh2r5eo3SAFFATB70YjWmUm7SQBGj81N7tppV6YeKdSjH6koIV51a80vNE7
	paVzeRiQuAVgVAg4iNUFr71J1krsDnvQGIJiDPyJP2tK3rthWDR2NaAuzem3KGrkhX79eNmbcmq
	U3FsdX1Z0hroGHfjBX5Fklr7ayhUCNcIhR1bSwEgNYDUYIUjHlaVnDtsDDC+fIyxJz0gjWvCt4u
	6DsdUFc3CpbWAFKiDCXCx7L+9O7AMuz4wBIYH6C6j/lzPEOEdtQcTuNCC/B5vXJI0UI2nboOYlO
	B7FPTlDIIRS5mIw93SB/GJOZArGh9vcIaXqklhMzGXXD6J/SAchIJi6czx2XGMTMC6bW3anrqMZ
	nclZyyror4ji3o7I+8NoSBlCMgZCfCz8tMKtBZLGohrSbu2UvzQhmi2VlmUOT0kddvpEWzXbloI
	XTNHY0/tGQ2xNAY9VdGynRRgSvtnu7boPUi4kWkx0DrmlOmwypgWWGllmH8Bw67gDWwA==
X-Received: by 2002:a17:907:9285:b0:b97:73ae:e2e with SMTP id a640c23a62f3a-b9773ae119bmr31732166b.18.1773390738986;
        Fri, 13 Mar 2026 01:32:18 -0700 (PDT)
Received: from ?IPV6:2a02:8109:8617:d700:5998:31f2:ed8:c4f? ([2a02:8109:8617:d700:5998:31f2:ed8:c4f])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cba6ec4sm29152166b.5.2026.03.13.01.32.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 01:32:18 -0700 (PDT)
Message-ID: <2bcc0442-cdd7-4093-831c-0bd4652edf56@gmail.com>
Date: Fri, 13 Mar 2026 09:32:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 00/21] media: i2c: add Maxim GMSL2/3 serializer and
 deserializer drivers
To: Sakari Ailus <sakari.ailus@linux.intel.com>, dumitru.ceclan@analog.com
Cc: Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Julien Massot <julien.massot@collabora.com>, Rob Herring <robh@kernel.org>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Cosmin Tanislav <cosmin.tanislav@analog.com>, mitrutzceclan@gmail.com,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-gpio@vger.kernel.org,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Martin Hecht <Martin.Hecht@avnet.eu>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Cosmin Tanislav <demonsingur@gmail.com>, Cory Keitz <ckeitz@amazon.com>
References: <20260311-gmsl2-3_serdes-v9-0-41499f09004f@analog.com>
 <abEgijQAqW27i5fU@kekkonen.localdomain>
Content-Language: en-US
From: Martin Hecht <mhecht73@gmail.com>
In-Reply-To: <abEgijQAqW27i5fU@kekkonen.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275003-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[ideasonboard.com,kernel.org,collabora.com,ragnatech.se,linuxfoundation.org,analog.com,gmail.com,vger.kernel.org,lists.linux.dev,avnet.eu,amazon.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mhecht73@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C35C627FC35
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Sakari, hi Dumitru,

I'm testing v8 already and will migrate next week to that version. Below 
some further comments.

On 3/11/26 08:58, Sakari Ailus wrote:
> Hi Dumitru,
> 
> On Wed, Mar 11, 2026 at 09:17:12AM +0200, Dumitru Ceclan via B4 Relay wrote:
>> The following deserializers are supported:
>> * MAX96712 (already exists in staging)
>> * MAX96714 (already exists)
>> * MAX96714F (already exists)
>> * MAX96714R (GMSL2)
>> * MAX96716 (GMSL2)
>> * MAX96724 (already exists as part of existing MAX96712 driver)
>> * MAX96724F (GMSL2)
>> * MAX96724R (GMSL2)
>> * MAX9296A (GMSL2)
>> * MAX96792A (GMSL3)
>>
>> The following serializers are supported:
>> * MAX96717 (already exists)
>> * MAX9295A (GMSL2)
>> * MAX96793 (GMSL3)
> 
> It'd be nice to have more reviews as well as comments from the users of the
> existing drivers especially on how this works for them.
> 
> Are there differences in functionality or UAPI compared to the drivers
> already in upstream?

Compared with the current mainline drivers from Julian (what offere a 
good basic functionality) there are a lot or more features enabled. One 
ov them is support for routing the channels as well as i2c-atr instead 
of i2c-gate only. Both helps to setup up more complex and reconfigurable 
routing of the video channels in complex systems with many 
sensors/cameras/streams.

Additionally a lot more and never devices are supported by that patchset 
including the new GMSL3 devices what are also backward compatible to GMSL2.

Both link types are supported now. Generation of test patterns in pixel 
mode has been added.

Also log-status returns a lot of very useful information about the link 
mode (tunnel mode versus pixel mode) and potential errors / packet 
losses over cable by presenting the counter registers. That helps to 
monitor the quality and reliability of the GMSL links as well as CSI links.

> 
> ...
> 
>> The following v4l2-compliance test still fails:
>>                  fail: v4l2-test-subdevs.cpp(371): fmt.code == 0 || fmt.code == ~0U
>>                  fail: v4l2-test-subdevs.cpp(418): checkMBusFrameFmt(node, fmt.format)
>>          test Active VIDIOC_SUBDEV_G/S_FMT: FAIL
> 
> Could you post the full report here, please?
> 

BR Martin

