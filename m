Return-Path: <devicetree+bounces-238936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 414D4C60057
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 07:10:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE3223BA561
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 06:10:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FCC21D63F0;
	Sat, 15 Nov 2025 06:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b="diS6Mqfp"
X-Original-To: devicetree@vger.kernel.org
Received: from bisque.elm.relay.mailchannels.net (bisque.elm.relay.mailchannels.net [23.83.212.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C38A8F4A;
	Sat, 15 Nov 2025 06:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=23.83.212.18
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763187052; cv=pass; b=D0d/zgivhfocS3tOv+CBhsbsynvvu0jXjvSchqPvAWsF/6qCyMMCvsVAcr+toVZsQZ+9hCR6ybf1TucFiVEzAkmIYLODGSP9B+qLiLdgv13+EDVd9zPLHFMBXG7FJDvwHg3PiDkVORKUwDvxAhGXT5jIPgXAqS0nX7+4bGklokg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763187052; c=relaxed/simple;
	bh=0dEdzRT3C4fC3y0H4w8RZRzSwCCncYT3gedGKM6XJCQ=;
	h=Message-ID:MIME-Version:Cc:Subject:To:References:From:In-Reply-To:
	 Content-Type:Date; b=uJEs6oUA8rAvNEixanVKaJ/94nsUOPPpZfiS+PTphMRntD/X7lt1XfSfDclqyG99/l8wh6LSw3k2ppOCODoZ3iM26LM6jU2o3sY1nBaUDIrWNeMj+grfckcFvTWiPQxQq4zy0sSlm082dwBfFCOg1tiTxNbc3zIlRolRQKNau/s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com; spf=pass smtp.mailfrom=rootcommit.com; dkim=pass (2048-bit key) header.d=rootcommit.com header.i=@rootcommit.com header.b=diS6Mqfp; arc=pass smtp.client-ip=23.83.212.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rootcommit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 64EAA82216B;
	Sat, 15 Nov 2025 06:03:36 +0000 (UTC)
Received: from fr-int-smtpout30.hostinger.io (100-96-111-23.trex-nlb.outbound.svc.cluster.local [100.96.111.23])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id 48FBF822130;
	Sat, 15 Nov 2025 06:03:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1763186616;
	b=w2Jtwj/0FnGUAqDQH3DA3adxITImHXLaqF16kOU5IXehEj5lAPdUukH3AelDbns15TNYu2
	o1ZNIlOsW2GTQZmYBCl5G9b7thog0IAnPJiZbMR+Ox4PITinGOlXJNsd3FquQqyNqYspg7
	QIUjXHs9dCRxgBz5mpos4mGRuuHViuOPDvTAoKEC6xFfrc6nv+YQd0QE8l9JMXRQXJ1NCY
	tfQCWn6+q2rmodEmv8hITTwj6rQvtGOXZ+IQr8FLKV8OdrCZZ8PgoOsiB5Tg6OwYfSxWGB
	2iL4go7zDy4eab6z4ZAj/JnxYdljTeiNE7+IOLvDDg1nplHfrFk55Lph8lAlpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1763186615;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=22V9LA5EG25ixQqAK3BaH6CZbg6omG/q5oeXsF1qKJY=;
	b=U++NZFef/+4f7VLMGSZJkebmyrS2q5R/wt7EPslRDfoJsbMFrtxzgnrf7N9B2ZFI+BDggH
	YzffzH+6QiSHf8gmGk4g76snONjqBybnjDXTNEu36TyuVlpeue1jfaU81sU9TcV3SgpSGP
	UMPa4ad3PbudBdC5hRqB7ZVua2NRIWm0a02RhBkWZaHl7L6PJXfc1yoYBshqlk0j0YJc6S
	ucjUACHA03fdP/wPlqsupaD4Z4Z8NCpBomhft21CJHQSsVBP2RYcnLrETCdtjHxJNmKMwY
	VXQfdSc7F78UdLvdTuJLnm8wnCw1q7CUBtKrgoz+gG963euXO2+3nNgv+nxc8g==
ARC-Authentication-Results: i=1;
	rspamd-5664d6b969-mmzxk;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId:
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Shade-Arithmetic: 460b30fe28521824_1763186616178_192050952
X-MC-Loop-Signature: 1763186616178:2873199001
X-MC-Ingress-Time: 1763186616178
Received: from fr-int-smtpout30.hostinger.io (fr-int-smtpout30.hostinger.io
 [148.222.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.96.111.23 (trex/7.1.3);
	Sat, 15 Nov 2025 06:03:36 +0000
Received: from [IPV6:2a04:cec0:120c:d90f:a2e1:5df1:fe6e:7680] (unknown [IPv6:2a04:cec0:120c:d90f:a2e1:5df1:fe6e:7680])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4d7k2q6W7wz2xNr;
	Sat, 15 Nov 2025 06:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1763186612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=22V9LA5EG25ixQqAK3BaH6CZbg6omG/q5oeXsF1qKJY=;
	b=diS6MqfpzNDzmvO/x1gdzL6YRZ+gXusTOuVlMNysWipMgYL7LWuCTVoE5a0gL5B+zWQGxz
	TvG0D/5v5pEBopi+AhbrgFK07z11rcAgmgvv+ctyteNlIWA9H123MLd1PlpeU2cpdgGTa+
	TgP600MkiIIIQoSY2RPBBPOWKr9BUAsntobvFIaMgeVr880jiSwimIp7Daz5VB64aE/8FH
	9Awy0XnoDqwIl6Wt5w9IwNbjlf/Hef5PTrmiOoRYuXVx2x8Fg3/qSt3gTz7oJ8xfSBvI1A
	O54mKaIrMzhALSkEknPeHo8Op2teUtIFXtWL9dhBi0PMISWyk/TwWwvVZxXRMQ==
Message-ID: <bb74679a-ce21-4373-bcc5-1214e9bf832e@rootcommit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Asus Tinker Board 3 and
 3S device tree
To: Dragan Simic <dsimic@manjaro.org>
References: <12d6e151-dfa0-ca0a-5888-ddffb2dbdec7@manjaro.org>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Organization: Root Commit
In-Reply-To: <12d6e151-dfa0-ca0a-5888-ddffb2dbdec7@manjaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Sat, 15 Nov 2025 06:03:31 +0000 (UTC)
X-CM-Envelope: MS4xfBhh+tXSvsPbD5H7iNzCO9gve8ko1ClBApKZM2HN4hoCJ8bcKcs9ulpFY3KXwA9DgWbEdVzQi4K8/ejXA6+S4r51pNvjP0F4gFIHaIrzMeKTcRqSkXeU nIObt1x4r1BceyJXy49kfa/LT3jsKC/Nu/5EMiOf+t3lwaw/cDEVAU7xaHBwrc6RcXtE80nMmfEwXxhOyt/WfVzs5ViVWuwDWT9azj+od2RyJ+/g8V3tQFuO urpbnIjdPURB+xSrvul5wb0qlOtfy0RZK7VJ0HZXda0PBrRwjyNLkLfCEHvnQoMBNUfKNhg8+SVvdwojv1yKZUkzYSigIlYDGVizh/eJ8bAvtR9/4L0zFEgM ilkipZsF5J3YS5WQ3AoiLWEoV2PBFmF7FptZ0Ams0yNIjeJTPSDG1PX8BdOb3GaSfWN6OQOZpM/MIu3gTAWLf3MI1iY4lpIGlHbvsMS3qtL/O5TQUWotD8// lFM94hLv5S48jAVJ5fj6DgBBa5+xA04BohY31ZXevOhu8Ee4XJa+QK2p2YrDANBXx5nzcVAjcrvpEJKxIBd+JH1xFXzsrRfohgt6Z0fW70ef/G7wzWUOU8+O LsxZ7suvM3DfQMuPtJjOKAG3wedFse7lv4YdVdTeGhpH7ETyv4BaD0ZCtydG/uTvqy83Yvo/WK/OANZoTikFU/gU
X-CM-Analysis: v=2.4 cv=DJTd4DNb c=1 sm=1 tr=0 ts=691817b4 a=eHakbqL08FGSeumsndRQeQ==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=iGHA9ds3AAAA:8 a=d70CFdQeAAAA:8 a=DLBR4L6yPKTlh_JyUqwA:9 a=QEXdDO2ut3YA:10 a=NXIwzYraRHkA:10 a=nM-MV4yxpKKO9kiQg6Ot:22 a=NcxpMcIZDGm-g932nG_k:22
X-AuthUser: michael.opdenacker@rootcommit.com

Hi Dragan,

Thanks one more time for the reviews, much appreciated :)

On 11/15/25 01:53, Dragan Simic wrote:
> Hello Michael,
>
> Thanks for the v2!  Please, see one nitpick below.
>
> On Friday, November 14, 2025 16:46 CET, michael.opdenacker@rootcommit.com wrote:
>> From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
> I'm sorry for not mentioning it in my earlier responses, but this
> line is redundant, because it duplicates the From value found in
> the actual email message.


This actually comes from my Git settings. I need this when I send 
patches to the Yocto project and OpenEmbedded. That's because their 
mailing list server which alters the address of senders ("<sender> via 
lists.yoctoproject.org"), and ultimately the commit author identity in 
Git. See 
https://docs.yoctoproject.org/contributor-guide/submit-changes.html#fixing-your-from-identity

I've checked that my patches apply fine and that this "From:" line 
doesn't appear in the commits in the tree.
So, can I keep this?

:D
Thanks again
Michael.

-- 
Michael Opdenacker
Root Commit
Embedded Linux Training and Consulting
https://rootcommit.com


