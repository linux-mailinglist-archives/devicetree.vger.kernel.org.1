Return-Path: <devicetree+bounces-251740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 84259CF63E1
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 02:24:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 65BE93059E80
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 01:23:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EE434AEE2;
	Tue,  6 Jan 2026 01:23:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="ZiXcdEVv"
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CB972AD16;
	Tue,  6 Jan 2026 01:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767662610; cv=none; b=scf7N0Ghk2Pv8+TR9GG5sPqoZCECzovo3HYBJic8CAkalGptb7t9rASBNlJ0ii3BR5HkE9FLTfBn2x+m+z5bZl5Y3MbpJS/w9+f1kCJkOJFkXZ8d3JsVRr1JwEA+SfUv78eOcl/QrkY+WaDIvBDLkme1vWVvaSECYh+4F/UQQsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767662610; c=relaxed/simple;
	bh=NFQ1V/U5YYi4kIJZUsD3BPfjf7i+eyCiVysfmAfgk7g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tF5v98Ns+D5cFUjahMHg5214i/ob+cSy1xmvh++yWTvrSzqAMUeAtwwg25MQ20sqBUpmTYrpAsK+w8DUA94YgP7r8zbMCbaEj5UQQdK/0cfCz1lYwSabuTc3yG7JvaEmUerJ/Gk/f3Yq7pQAeCuXPbHBIU9852iSDrB/E+h491Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=ZiXcdEVv; arc=none smtp.client-ip=80.241.56.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4dlYMW1x14z9spx;
	Tue,  6 Jan 2026 02:23:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1767662599;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=G5k4tA3qSt8blNEYGYpeKXgRG7Eb/+TftKL1cv/v8YA=;
	b=ZiXcdEVvzoNfq79v7T4uJcxUfzkuWocgV9Nt3pCKRjyUdIo4YVRrrtxa2uBTWkbr2u1rqm
	AOdpidvnJGYL9oIzLIqUCYzGT0KqagtOlz/dJlFq3zej8zIX6tEec8rhB+qYTha3AKbr4i
	E2Juv67qUXvfDPsdDuv3cyprqpi/BnJhzDD9RDguYXdqXlnXpi8Yl1v4AiuemQJqTyZUWp
	WRPNTEItDUSPmO1VM3TDseBEONEGxHiy5/m81rIwsD/rwmKoPeXXbpTLozVhG/wvfShfQN
	cC2486Ks4szfE7PcU4E+rf45ibqP5NkPAwCyUJ22emRFs3LBlLbAnEqvmXn8WA==
Message-ID: <a9ac4628-d830-4f7e-97f5-b27b9a531ffe@mailbox.org>
Date: Tue, 6 Jan 2026 02:23:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] dt-bindings: display: bridge: ldb: Add check for reg and
 reg-names
To: Rob Herring <robh@kernel.org>
Cc: dri-devel@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Simona Vetter <simona@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260104213457.128734-1-marek.vasut@mailbox.org>
 <20260105221914.GA3612345-robh@kernel.org>
Content-Language: en-US
From: Marek Vasut <marek.vasut@mailbox.org>
In-Reply-To: <20260105221914.GA3612345-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-MBO-RS-META: wo5n6xcriudfb4tktfsdcxdphro8379t
X-MBO-RS-ID: 2dd30dbb5bdb89a2169

On 1/5/26 11:19 PM, Rob Herring wrote:

[...]

>> +  - if:
>> +      not:
>> +        properties:
>> +          compatible:
>> +            contains:
>> +              const: fsl,imx6sx-ldb
>> +    then:
>> +      required:
>> +        - compatible
>> +        - clocks
>> +        - ports
>> +        - reg
> 
> All of these are already required up above. You only need reg-names
> here.
Fixed in V2, thank you.

