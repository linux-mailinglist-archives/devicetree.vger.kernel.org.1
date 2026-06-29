Return-Path: <devicetree+bounces-317180-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mdzeCWibQmpN+gkAu9opvQ
	(envelope-from <devicetree+bounces-317180-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 18:20:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D65E26DD440
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 18:20:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=UwjwjcsG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317180-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317180-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DFECE302DE25
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:58:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8589436370;
	Mon, 29 Jun 2026 15:58:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE834219E1
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 15:58:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782748690; cv=none; b=cjwRvnA9j95gJiF7PhMjUBHBiTi+ibGVQnsU0qN/Csz6dJRXxjgmIW3EtJWIZrQgNamWPn2QWIbAm1LJABGfHn8QhYYjeu1yASn5ixcRVsi9w0Tv63ifl7dElKjkRynLIYYqpVG4lVcLDTzHbs7g8lqoX7Oxz0toqB74kJBuWXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782748690; c=relaxed/simple;
	bh=FKTz7rXC3TYNqt1upKOS5ukYPGh9Vp3yClY8vEtWRJU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZbK5gOzjfN3aszrrZe0raYNePbg00+2DBBR31iY0wUqmOv1J/0TmK0rVV0WkZqBVUEHTNOJ3DZvrs3XWsatfJ68rO3dlunBwbRh+26fXnEWAMOwChh0wP3fWd3ogWV4+LpoJpzeZ99wTCdL4ZzAbma5HnP46+gRXK02I8x2gI/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UwjwjcsG; arc=none smtp.client-ip=74.125.82.44
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-137335bc3caso7138061c88.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 08:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782748688; x=1783353488; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NgF+6GMrNePcWbid/ZswI6mC5nsFo7xxmyhTSXIk+kQ=;
        b=UwjwjcsGczXK2KhC/LRZROmM7hsBS27qWrxC0mMGThhEQR0U6mSIA3k+iXyMLLobFq
         FFqMrw2SGofD4WuN495NzNVQFj2RISzdna/H7lvZnbG7AyQdvo7dZreQr0a5J2Zgtuqg
         GyHJ/s+pfd3g5WRTbLTA4kWVx1i2NvsqO94nXb3NXEESrqXyzyye9TJPS+yaLdXtSNHD
         yz6AKlttjBeHra9VTZDJnQCXBI4pRwaAWSexaHhCUVqed6Xxhy+GjKEy8xr0vBwkMq3l
         LM7se+88xgrGulyxMfvWzPPtWIiZDMWNedxnf5AFXWO07kcdQjSFgtexykw34M1I2uZm
         8Bhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782748688; x=1783353488;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NgF+6GMrNePcWbid/ZswI6mC5nsFo7xxmyhTSXIk+kQ=;
        b=iWOGJ4cWPEEhIc0xFNR1Gxu7g7pdVapI+12narax22z24CpIY+hg+I7ZkK2W0/skug
         xQR93bgHx5isgq3B62Au2vJttV9fPlURFDMBcBVo0OqVX+8ip2paLntEodS7Aj2eRlHe
         Sz7P6lmK4XoJpX6C1mO187kJnqaaQBa0E82ScIvZaw6VW2aC7IIjD5ms4ois+vu9L40M
         uCFQ5OIPsQc51g41CsI/Ff/hS0p+PH7lYhEJdpo9afhxfE8sq4mW2xHNhpSyQchDUBSK
         EWyeGrXPn2NUl+n730MhuuJpEO/T2pYZcCDawf2hK5j19eVlHNwpRu+gPYNsujNsJED+
         LByA==
X-Forwarded-Encrypted: i=1; AFNElJ+qFx3rTRzduKj1XT2iYtJU4+xmcFW/25VX73RKOlARBNJCs8FbrwQ+NS9yMRwG8FeUO5nBMIvqlQZc@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7wpK3SMDwZjVgwBmEtUupW3Jk5YLJb6E19m6EXMDwwBWnoFpS
	yfUHM2uWNZDw8I52ZHtmFF/UVM6gNko3XTp53sT6oa4eRGGQnfLsbsJF
X-Gm-Gg: AfdE7ckdEox/T0fvsIdzE5HDUzl92LJvlE81FijCNhRiGtZFKwn2mwYrhf7ax4u5tjf
	wKWLQJYYyde4ayMG41zOZURuGkmpWx1lsI8M7vn4j31B7oAIOIflhZyCIRmuMMJ456Eyu9XLLQB
	I1NrcR4jAGkd2zUUWSUGdu4FwTHXh2pEe1Quuu90wZo48EZVp60IY8BCS/YtCyipg402CSNwEjm
	lXhekj6LR9YCgdy0vN5M51ZZtb1E9p4tExilE7N6RJhWjbk1UM/4RXmrSel0dbJAENg3TNmoT4r
	tmc9GLDyMnvYbD2iKWshHWYruxG8UrB3oDh6iQ+EV+fzonC+gUjk247bJKS2xknVoUolVtfjXe6
	T0N67OZMxGmMrVThhaMwocBT5oA/6W5xbgbVn4t1mak2TTXEZhJdFWFaZnJL1KXKGPurlAjPrAo
	FTq5foz6IaEJRkbKxdpu7hhQin9g==
X-Received: by 2002:a05:7022:6707:b0:139:7f71:9ce8 with SMTP id a92af1059eb24-13b2a099976mr65961c88.0.1782748688437;
        Mon, 29 Jun 2026 08:58:08 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-139d912197bsm80459643c88.15.2026.06.29.08.58.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2026 08:58:07 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Mon, 29 Jun 2026 08:58:07 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Flaviu Nistor <flaviu.nistor@gmail.com>
Cc: Javier Carrasco <javier.carrasco.cruz@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>, linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: hwmon: chipcap2: Add label property
Message-ID: <7d9466c3-1cca-4bfb-8c15-b67812c9bb12@roeck-us.net>
References: <20260625160423.17882-1-flaviu.nistor@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260625160423.17882-1-flaviu.nistor@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317180-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:flaviu.nistor@gmail.com,m:javier.carrasco.cruz@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:linux-hwmon@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-doc@vger.kernel.org,m:flaviunistor@gmail.com,m:javiercarrascocruz@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DMARC_NA(0.00)[roeck-us.net];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lwn.net,linuxfoundation.org,vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,roeck-us.net:mid,roeck-us.net:from_mime,vger.kernel.org:from_smtp,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D65E26DD440

On Thu, Jun 25, 2026 at 07:04:22PM +0300, Flaviu Nistor wrote:
> Add support for an optional label property similar to other hwmon devices.
> This allows, in case of boards with multiple CHIPCAP2 sensors, to assign
> distinct names to each instance.
> 
> Signed-off-by: Flaviu Nistor <flaviu.nistor@gmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Applied.

Thanks,
Guenter

