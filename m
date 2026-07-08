Return-Path: <devicetree+bounces-322764-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id udKYFjg2TmpUJAIAu9opvQ
	(envelope-from <devicetree+bounces-322764-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 13:36:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9678B725E7E
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 13:36:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=sTW5MjST;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322764-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322764-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D4F663002120
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 11:31:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72C3D433BCA;
	Wed,  8 Jul 2026 11:31:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C4A42EED7
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 11:31:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783510263; cv=none; b=Lz+XCZ++bIyvzS6p5aLop+fAiFIsWdIvb5hbZAiPB+OYKwmi3SCqB80vtZxYpOH4v3vxUv1U1EmWqOUlnHs1n+jzgoalNMqdxioMgRKtdY8Ep5sDgbxhzQU5HWacy+qwVqj8pC+PiXFziQYLxHWRh/iV1OKc0ow77dQUeDlsRsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783510263; c=relaxed/simple;
	bh=UqVYtH1FlnS/aiysBtJjKkotNDawE18yaWKbuoyRfnk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K1iZubyHBchLP0aeY6tNLsnTPs5t9X9qwWNJ/ngXQZdC5qKYzVo1MEOL8oBUqpeMz+SBkH5a227jxeqovy5bcaKT8+uSD8x4n46PYNuoKVUhkjbm9McPvXUT2+0G47nRCI4LZhUcEfBMu38GWHXriCWEFJMEIcj/yMWO1k7T+VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=sTW5MjST; arc=none smtp.client-ip=209.85.167.43
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5aebd52488cso603253e87.2
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 04:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783510260; x=1784115060; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=39lBDIePAL1NkZjwy0kg0GS1VSHJ5/FOzCIFnS8mpzM=;
        b=sTW5MjSTnFr6r/JlPxnI3BE7aoTJeXE8JYAW37w3nGv6YRpTG+WJuytWtQ8RCEYO0z
         pzlxY+S7YzztULVvPDwJQPuDNWAQrpO02nvcnZAYta5y6QvNdGdQqMInEV+vc7y1vsLH
         aTIaKz6V03aszfCW+JjnwgOdo/iV3GE13GN/XXtNdJaUKc9Wf4+dw8NS5SZeuloJSi3+
         pCJ9RgFdzQHLp8OMNX6zEZpR3Ec+SC+coiBStKA6/YDUIjx/xsSaScEQGC1i8ElkDuav
         9ygcKPoZwJrymEaQoRf+G5nxVE3MdCEldttrNUHKiYS+oD0Xf8quxe2H5uRPMTRSQwHT
         Qu+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783510260; x=1784115060;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=39lBDIePAL1NkZjwy0kg0GS1VSHJ5/FOzCIFnS8mpzM=;
        b=lLLglarTbKrx8dRcuXjB8l2mGj8045OwBCJpZFG74PVsAjk8XLGNMu7sJ69sYCwtWF
         5ktZJ+38o5MvK+oldmZ/J5lLt2I4TA3ig4pL5+M7uVwKUEIT9OQOMNKpHG+Z2wR+iq1D
         z3yQbvXx5loj9G+r4jTZlffP48TAtkWBsqurw7cshV9mdOMuXhM0Nj4EFf60OXj/zAlo
         P2nrSNBDM7zS/FzXcqmahl2/RMOEs6od1gcFDft2GqqKn1oCUVxIRAnWhLdRv3nRobAa
         htG0u4KL+nBOMsKVIadLxLlCcD4rLAv4XVmggb3BD7QkBHhEkhVmyV8806UmTepku41v
         4HIg==
X-Forwarded-Encrypted: i=1; AHgh+RovHafoBk4wc1T1V2IHSlP66hTXV4OjThkZPyoIHeo+wuFeTDY2vOF7FQUatEEhYO/bGR4kt8itjPSn@vger.kernel.org
X-Gm-Message-State: AOJu0Yxc80s1/OU9utGG+kz6D920F93vcZ3EgU2j9hlOKU7UAlCpxVhH
	/hBAkfoYNK2Hjhw4e73Fm5stTyf2/kUwvHYOSFS1CKAk1gDV22VMwp3r
X-Gm-Gg: AfdE7ckBMovIzxK8bXh+NTRks7tOuspVCisNPcnl2EzFJvkQMj4D45M8I4ZSJKKryFH
	UKD/1wVHch70304EZwihEmaTqr2s5APQ8uneViTz+uRoeRqh7cMhieQFy3du9TdiFSmJnEBFMXM
	P7OXqJ4HIBH8AgEvlCYcXp8zhoTYxDdD9HJKYGmfDCDwXuu8MazR6Qx4aOavomtyfETUHoPiwV0
	/3953pYaNm0rSVh3CAM/DEU5zJ7w2aOSIEXL6tVT5Z0ayclWP4JvYmXJIog8OlkNEwkUrNGlOqG
	xek+oJVgIKLjmspGJ7qD+siqXTfhWuf45bi6iGoLyk8WiZshT6ND7pJ0joLvJ70aWhKZ/q0O3h9
	ctXJh/KxMAlSHIfiZsqOfaraCASUtiC6dgrol/IkRvoI5O6IJrdjZHSjvbTm+5GjcDRTed/sVf9
	8gnHpBR1wnS0b7q8w=
X-Received: by 2002:a05:6512:1417:b0:5ae:c8d9:dcf6 with SMTP id 2adb3069b0e04-5b011463131mr553458e87.37.1783510259389;
        Wed, 08 Jul 2026 04:30:59 -0700 (PDT)
Received: from nsa ([148.63.225.166])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aed13700fasm4437116e87.5.2026.07.08.04.30.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 04:30:58 -0700 (PDT)
Date: Wed, 8 Jul 2026 12:32:00 +0100
From: Nuno =?utf-8?B?U8Oh?= <noname.nuno@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Guenter Roeck <linux@roeck-us.net>, 
	Fred Chen <fredchen.openbmc@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, Wensheng Wang <wenswang@yeah.net>, Frank Li <Frank.Li@nxp.com>, 
	Brian Chiang <chiang.brian@inventec.com>, Cosmo Chou <chou.cosmo@gmail.com>, 
	Dixit Parmar <dixitparmar19@gmail.com>, Eddie James <eajames@linux.ibm.com>, 
	Antoni Pokusinski <apokusinski01@gmail.com>, Thorsten Blum <thorsten.blum@linux.dev>, 
	Ashish Yadav <ashish.yadav@infineon.com>, Alexis Czezar Torreno <alexisczezar.torreno@analog.com>, 
	Syed Arif <arif.syed@hpe.com>, ChiShih Tsai <tomtsai764@gmail.com>, 
	Abdurrahman Hussain <abdurrahman@nexthop.ai>, Kim Seer Paller <kimseer.paller@analog.com>, 
	Colin Huang <u8813345@gmail.com>, Yuxi Wang <Yuxi.Wang@monolithicpower.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org, 
	linux-doc@vger.kernel.org
Subject: Re: [PATCH 2/2] hwmon: (pmbus) Add driver for Analog Devices
 MAX20912 and MAX20916
Message-ID: <ak41BRQBNdsQrYww@nsa>
References: <20260707122701.751878-1-fredchen.openbmc@gmail.com>
 <20260707122701.751878-3-fredchen.openbmc@gmail.com>
 <f9e32dd1-7c2c-4055-83fa-94683777e30b@roeck-us.net>
 <ak4QO9uhKOt68dl1@nsa>
 <20260708-true-carp-of-champagne-a0dcca@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260708-true-carp-of-champagne-a0dcca@quoll>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-322764-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:linux@roeck-us.net,m:fredchen.openbmc@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:Jonathan.Cameron@huawei.com,m:wenswang@yeah.net,m:Frank.Li@nxp.com,m:chiang.brian@inventec.com,m:chou.cosmo@gmail.com,m:dixitparmar19@gmail.com,m:eajames@linux.ibm.com,m:apokusinski01@gmail.com,m:thorsten.blum@linux.dev,m:ashish.yadav@infineon.com,m:alexisczezar.torreno@analog.com,m:arif.syed@hpe.com,m:tomtsai764@gmail.com,m:abdurrahman@nexthop.ai,m:kimseer.paller@analog.com,m:u8813345@gmail.com,m:Yuxi.Wang@monolithicpower.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-hwmon@vger.kernel.org,m:linux-doc@vger.kernel.org,m:fredchenopenbmc@gmail.com,m:conor@kernel.org,m:choucosmo@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[29];
	FREEMAIL_CC(0.00)[roeck-us.net,gmail.com,kernel.org,lwn.net,linuxfoundation.org,huawei.com,yeah.net,nxp.com,inventec.com,linux.ibm.com,linux.dev,infineon.com,analog.com,hpe.com,nexthop.ai,monolithicpower.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9678B725E7E

On Wed, Jul 08, 2026 at 12:50:25PM +0200, Krzysztof Kozlowski wrote:
> On Wed, Jul 08, 2026 at 10:19:56AM +0100, Nuno Sá wrote:
> > On Tue, Jul 07, 2026 at 06:52:48AM -0700, Guenter Roeck wrote:
> > > On 7/7/26 05:26, Fred Chen wrote:
> > > > Add support for the Analog Devices MAX20912 and MAX20916 dual-output
> > > > multiphase voltage regulators with PMBus interfaces.
> > > > 
> > > > Signed-off-by: Fred Chen <fredchen.openbmc@gmail.com>
> > > 
> > > Please provide evidence that those chips actually exist.
> > > Internet search comes up blank. I'll need confirmation
> > > from someone at Analog.
> > 
> > Hi Guenter,
> > 
> > Well, in fact I'm in the middle of preparing a series that adds support
> > for:
> > 
> > "max20826"
> > "max20855b"
> > "max20908"
> > "max20912"
> > "max20916"
> > 
> > All the above parts have the datasheet under NDA. But before we had a
> > one page "datasheet" in analog.com but I guess that is gone! For context
> > I mainly did the base (core) driver for max20826 and then Alexis added
> > the other ones.
> > 
> > Not sure how to proceed... I can wait and then work on top of what Fred
> > has but this patch is very minimal when compared with what we have.
> > Like:
> > 
> > * No regulator support;
> > * No direct mode. The chip has two ways to access registers (paging and
> > * direct mode).
> > * No way to count how many phases we have or if RAIL_B (func[1]) is being used at
> > all.
> > 
> > 
> > Some other things more intriguing is that these chips, as far as I'm
> > aware (at least for max20826), always have bit 2 set in ON_OFF_CONFIG so
> > a gpio vout. Also we needed some special handling to read phase current
> > which I'm not seeing in the driver. So I would like to understand how
> > the chip was tested?
> > 
> > Anyways, if Fred is ok with it I can just finish what I'm doing and send
> > the patches. It would make sense to have something more complete on
> > submission but I don't want to just "steal" the work already done.
> 
> Binding should be in such case posted complete, so probably not a
> trivial device.

Yes, in my series bindings are not in trivial as we support the enable
gpios.

- Nuno Sá

