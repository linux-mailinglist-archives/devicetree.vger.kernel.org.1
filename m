Return-Path: <devicetree+bounces-264902-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Dw9H/JkjWkn2AAAu9opvQ
	(envelope-from <devicetree+bounces-264902-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 06:28:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D71FF12A69B
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 06:28:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C62E430495E4
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 05:28:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE424283FCF;
	Thu, 12 Feb 2026 05:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Rt7pvJ8N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6301281370
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 05:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770874093; cv=none; b=QQRPVboeyYW4w7dTUpfxi2gOknOUoUJym4Ckt7z4sPute+FOn0WM0jHkqCxFdJtcqjuUKymNQjAhte7dQ1mr9LuKuDw6oXxMQm4RBJmtj3JOh4WAaQLMeGaNDwMN291UoqZJrEHHqFTOS1rfAUzxYAoI/XJGyTO5UgxHMAYxPnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770874093; c=relaxed/simple;
	bh=KAvHmXBR6Z1t7fykOb+Q8OlteilYCII3PJTMYzVRo6g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IrmaoDx4t8Z6reilTe996jUtj/sca2ylwwSLqHf4w9JoBOplhh7RN0dvWzzWCHD/HGKjzothTeDkWXOswo4x8aYHNN5VNl+qdGc8kvEJfb31Rr7deCVRog5HsG3/kD251FQSrDkWAgbqq+aA5gO88a0+vT5Gb62kIdK/wZKbjzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Rt7pvJ8N; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-823c56765fdso1541976b3a.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 21:28:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770874092; x=1771478892; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KAvHmXBR6Z1t7fykOb+Q8OlteilYCII3PJTMYzVRo6g=;
        b=Rt7pvJ8Na0KNqUohoPTVe2r0OCXJj13dl+0ZEtTWoGNPUruLSQLRs+MhCzXWmWUWMr
         MPz/dYgUOovub+ltFAXqkZHIsqkkPpJjcCgHrKIB6vGkgcIve3yowA73edAgWt0+jmol
         cbCi1UErdVufvoBLRBGTqI6qS2Mw1u/CwsviuPnV7FwoXIMEm/WWL1Q4LFcM04yPLZIn
         yFBwg6u9w46FMUKMli5z5Y2jwhvd3TMOuNSA+MjePXfR3JWd+iCO3jVwdhmqaMmF2Gy2
         HTjXak0b05lYYKu3z9CTMP3JARAnNQIVnc+wxsQj0B7RsEoP2Nyd3LNgqjM2Lar0B6iO
         UUYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770874092; x=1771478892;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KAvHmXBR6Z1t7fykOb+Q8OlteilYCII3PJTMYzVRo6g=;
        b=WLVTmmbY4VlnJ873MufaT1Mfk8MjRHC7cb3otaBLQW8oUvbtic98VqRVPcjCknh7O3
         PQWIYcXfnTCafdC38pMLRRuW3EYu+PO0Rrkjn+ULjQut07gowvqkNGdgZz2Y73iaSxZP
         KoFdwkSfAY4nb7xGjZAI/IeNoTFKhtNiBNNapm/NFAShMjkscPSjp6thEqX07LFzaxOR
         VaCt7IWBOXC+ve0NYfPOcRwkiux2k4v7Z7VdjOvEfhhiE6f9M7uJ58CJjrLYvW8nvCGp
         4TcPg7HXL1cxW8Ir/Zuv6xHpRZswY6M4yM01RUdhrMjJOB6kCFWM2/ZnrY8DZMawV6j7
         NSBg==
X-Forwarded-Encrypted: i=1; AJvYcCW2D/BOfQ1EWSI8doHqUYMBI0abYaDbntgOQ9eL4E8fbRvPYW9G8cBWKagm/zooVljxWFrzrt2qS5N1@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6u/z+mzhl+87cX+6Q2BhCwV4u0K4OkAdufphRncEY5peKpt9W
	qaXPVMci3Zfe7WTBtbLZmkZVOVCziROyB+KR1bJaL7AJzCNlZn7ub+Ez
X-Gm-Gg: AZuq6aKyUNq4bWPme1OJ3201DqgX0RevDntfIA/sX3G5SJFNT0S0EgFei86g7rYAXAD
	pQOdzxOYV+cfJRSGQZ/xoAZUQax44x9Nq8sBYCeWUPax1xohWnzQalpx99T6RQR31LmbXJxW7EF
	nEU3GcDQoXO6iBpgqJBf9t1IrIme4t+UN3KDcDV7c3bsJMbN41h7J+4x28iEsM/Fw57w6RB6XXa
	D7QNHM071hqxuZ2FZIJxIJEyyu2dytlB9AozI9RZ6I3yGQjUUX2XWqkjYIkWwFmOn4mKyCmpk6G
	WFb0MUspQ2RlvHSHSIZtjYs1vRk5+JRejcECgAByBXjcLMimdFFqjMt36dUFpyMKXllJ9+S03SQ
	xKXpASB5/42Mom5Xtw7F12QIoFDcAlXE35IZF4g6aySZM3iH2w5APXyd8ZsZMD5ZhSYdLWNjfpA
	soKe0OXXezSRWqR6HSlm5WM9+TXYQJp1Ij/9k6jjAZA2Sb2raj8tfFa1TyESGIxlAnHa+MTAAzQ
	x6Q
X-Received: by 2002:a05:6a00:92a6:b0:824:4a22:ec02 with SMTP id d2e1a72fcca58-824b3042b8bmr1089776b3a.42.1770874091996;
        Wed, 11 Feb 2026 21:28:11 -0800 (PST)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8249e368d0asm4119668b3a.11.2026.02.11.21.28.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Feb 2026 21:28:11 -0800 (PST)
Message-ID: <532078ce-f02e-424f-8382-2b52438a657a@gmail.com>
Date: Thu, 12 Feb 2026 13:28:07 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v12 3/3] net: stmmac: dwmac-nuvoton: Add dwmac
 glue for Nuvoton MA35 family
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, mcoquelin.stm32@gmail.com, richardcochran@gmail.com,
 alexandre.torgue@foss.st.com, joabreu@synopsys.com, ychuang3@nuvoton.com,
 schung@nuvoton.com, yclu4@nuvoton.com, peppe.cavallaro@st.com,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, linux-stm32@st-md-mailman.stormreply.com,
 Andrew Lunn <andrew@lunn.ch>
References: <20260210052226.3005666-1-a0987203069@gmail.com>
 <20260210052226.3005666-4-a0987203069@gmail.com>
 <aYsurPBMnzWDZCco@shell.armlinux.org.uk>
 <747b9ab4-6711-426d-95a5-4ce6c8732edd@gmail.com>
 <aYxYRZZkVFz2jHaF@shell.armlinux.org.uk>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <aYxYRZZkVFz2jHaF@shell.armlinux.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264902-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,foss.st.com,synopsys.com,nuvoton.com,st.com,lists.infradead.org,vger.kernel.org,lists.ozlabs.org,st-md-mailman.stormreply.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D71FF12A69B
X-Rspamd-Action: no action


On 2/11/2026 6:21 PM, Russell King (Oracle) wrote:
> On Wed, Feb 11, 2026 at 05:52:21PM +0800, Joey Lu wrote:
>>> Is this register preserved over suspend/resume ?
>> It is not preserved by the GMAC suspend/resume flow and therefore needs to
>> be treated as a system register rather than a GMAC local context.
> That is another reason to use .set_phy_intf_sel as that will be called
> just before GMAC soft-reset in the .ndo_open() and resume paths.
Got it! Thank you for clarifying.

