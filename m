Return-Path: <devicetree+bounces-267405-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6CngJgdJnGmODAQAu9opvQ
	(envelope-from <devicetree+bounces-267405-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:33:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAAE176210
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:33:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 43577302B76F
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:32:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D81F63644CD;
	Mon, 23 Feb 2026 12:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bRmFmuIV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D564362137
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 12:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771849975; cv=none; b=ujJy/XswzBC11LLsGGkT7adWWgNLLjgY9GC4FvDHkkJmxFRkGBTnPx/hWyNNTf7ttc4XkGF4s4dxfI+qMPs+jVdYFKx/eEONPxGmy4Y+nszkNH6BzyaCQMSSkA8/kmWMSItn027ERS4Wx2Dwv6RRgYyrd9dVBeSUXbjg2WkaqvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771849975; c=relaxed/simple;
	bh=LgtiueJF8FZ5NsWLrpd5FLzWCSR4LnxDyxsPzwi5sLU=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=LxRJN5ftteFz5Ajbxg/zQrB7SEb6IUBlbQM1N91Xf5r9m52TnRCMekKhmf+ITdqOA0UgkS5DwKtOVmklhSY/MGHWpLE0n5F6LTKvAtpC7qSKcm339Hk+wyPie0Obqt8rTX4hraR5lsp/6llbWEkAk57lhG/yB846oiWDXd60SI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bRmFmuIV; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-48371bb515eso54400425e9.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 04:32:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771849973; x=1772454773; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qgvcvfLmQxLNLL2lzefX6uMlmIaisGh3AUi4aXxqy/c=;
        b=bRmFmuIVj9wDL/Iy1jwNLc7Xf2QDi0aW1GmuUz1jlY/XRCtf3P4B3t01xcXXqzlhfl
         7u7gyxgZ/mxed9Nsu3KMTgz/nEPDIScrVijUZdCwKEV7nYJQIKpZ91g6NwCFPLtbuK5S
         v//yksKSZRu5U1hJeewidz4FryqRs+gbMZfnD7dS/6R1Il5x/5ZGzyOU+bOUvXDnQN32
         eOTRQuNzfnPj1qATEfGcoVgN7GNDDnAUp4rDDR9528HYpbHm7JwD99dy4P2eKPV5lzcj
         DoZUXizrX58qjlKlL3JITQUCMLIdQKPDj2wUdY0jirUowBL59nECisoUxqf7m+z8PmfF
         TkqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771849973; x=1772454773;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qgvcvfLmQxLNLL2lzefX6uMlmIaisGh3AUi4aXxqy/c=;
        b=hHctGdqt1D0NT1nSCdeiWWaEmnh5nStZf48TOnoy3PHB+meMwi12nQfMNqjtCkHEIx
         dDfq5ICFtGoxUK12f309r5r6kSqfa1pg8762KdO7iCV0UhYvBDRogBaZ4k+InspPavn7
         QfkD5le7yJpz1Nol1WllbFFCQCX+CT2mqg1Ehpr2YS/XD2Un/6Ud1mraWp29vNOHzf5g
         S9jMdqBZw4odFWJIj2Mr542j947LrOD+WJbEGmGABrzxV/6Qy4cquStPxUj/UdNKO/OT
         vKNft17QqTB9y28j/4ii3BQOCj5XQwJQO6pUY+4JCQZ7eO5qlQWGZyW6YB2kgbI0a7GQ
         7diA==
X-Forwarded-Encrypted: i=1; AJvYcCXTLncX7qL06WIM/H+82nzWuMC5bk9TcEuZmPX7h/WmIAT4I1lJkEHQK155hf5WnJEl18PEn2pHVyM/@vger.kernel.org
X-Gm-Message-State: AOJu0YzPE/28GtOT16JthgnaNdvgGkvKgVf65/hytEYCoLiEYvnKFofy
	Z0uBNTkaYrUcdqRtQxJcXTmIJfsrRaTQtEgSUEWf8W0DzXKX5bmw3nRP
X-Gm-Gg: ATEYQzxgtEkAzV2HK9dW3pGS1UlTe1/JKz4e0iw3xBaU2p17GaWYAf4M1pkkfT50E1Y
	9BDqiJRB2HEvzKp8nHlhqbjBD4Vh+eL7zIEZ6BCPUHnDoSjUqdwST/3IafaWCsRAerygbOMFQN/
	aEqku/v1m+ypX0eCA+fjD4RuA4LgrvNe955EzF9rtNW6O8XHtYlwzKt5FntCJ19H9YtwcXddqWW
	g/azfMhQLXIPxx/RqC3mehO+4anKKovgFkFYsuwT6JrOyVJJcANfXj5WYMsCTm8uVpEArItx0an
	f4bC6BEypDSkh2f/Ojh4KFJxeRxPBPJOe6LZ7owDNPbCYJTQJT9uZBUcQIiafE1TPinbSLOiln0
	bdgXjBxp5QkOD2qL4cWFBr5UWQiSpd11uIn0/ycxw25HpjVmqayzyyUn473eZ2kSfBE+uBeL0Qh
	7LDiag0ao8ib+LAHk/r5SnQpzlCiPpUKx9B2eeGTDlr8qcOkcFrWS5HrkwsQqKNSo=
X-Received: by 2002:a05:6000:428a:b0:435:e460:235b with SMTP id ffacd0b85a97d-4396f181e11mr15306649f8f.59.1771849972778;
        Mon, 23 Feb 2026 04:32:52 -0800 (PST)
Received: from [192.168.20.170] (5D59A51C.catv.pool.telekom.hu. [93.89.165.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d40004sm19029992f8f.21.2026.02.23.04.32.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Feb 2026 04:32:52 -0800 (PST)
Message-ID: <e6cca451-5be9-4349-b9d3-b464dafea077@gmail.com>
Date: Mon, 23 Feb 2026 13:32:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: firmware: cznic,turris-mox-rwtm: convert to
 DT schema
Content-Language: hu
From: Gabor Juhos <j4g8y7@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, =?UTF-8?Q?Marek_Beh=C3=BAn?= <kabel@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260221-mox-rwtm-yaml-v1-1-25dec4a0228b@gmail.com>
 <77c45be6-a0c1-4799-9491-f7e492d60aab@kernel.org>
 <10f15883-d8db-4872-8af2-7a8cf293780d@gmail.com>
In-Reply-To: <10f15883-d8db-4872-8af2-7a8cf293780d@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lunn.ch,bootlin.com,gmail.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267405-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j4g8y7@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DFAAE176210
X-Rspamd-Action: no action

2026. 02. 23. 11:57 keltezéssel, Gabor Juhos írta:

...

> I wanted to get rid of all warnings, so I ended up with the current patch.
> 
> Do you have any suggestion about what would be the acceptable solution to clean
> up the current mess?

Please scrap this, v7.0-rc1 contains a similar change already. See commit
62fedca4ff8a ("dt-bindings: firmware: Convert cznic,turris-mox-rwtm to DT schema").

Sorry for the noise.

Regards,
Gabor

