Return-Path: <devicetree+bounces-277612-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKOqKneyu2msmgIAu9opvQ
	(envelope-from <devicetree+bounces-277612-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:23:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D32A2C7D02
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:23:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B1823302A197
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 08:23:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E66C3A7F58;
	Thu, 19 Mar 2026 08:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="No3eqIRY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2993614AD20
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 08:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773908593; cv=none; b=bm5W9kMoPSrwP4lQ7lve1FqNDM1rKQCbzD4W9aZFDh/RyxF+HSlelt+SWdGDuImBgXS3gz7E5h/TmA73/Ea2JDkCD89ZrHru0icaircCqQi0kyVh4Sbod00JNCwTTsIlVvm4UnmXXQ+icVa0VJGmgdgbssz8h6pdwutSqXUGOjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773908593; c=relaxed/simple;
	bh=2LmJePNWFYkaSkssuKRalog1f5Pj4j/7MAdmilA10C0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gww2fEirDGJxHGG4maNwVQ4b9b04AjF9jQlDw3gKKA9WPpUS1c/ymaGn+6MrUw/8TZqkgMx8wKQ450qO94cPlcXv/sr2y5r4FS13VahiDKMMnuadydb92GNj/XLrUsx3+icmktr6KY8EoL0vplJVV8YUWm4ljecd7kHYIS8AQLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=No3eqIRY; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-486fb112c09so2700645e9.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 01:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773908590; x=1774513390; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UfKs2BH0fICucBFRbcNT7ldaAh9sxBg62pLBdYSdZS8=;
        b=No3eqIRYJeQ9hYHiEZNnkqSsCFZ5Zv0bIu8kt8kOsEdFlhCu9UYTZNyMwe0IkXXOPZ
         D8FyDRGuCXMgIXyaygWTrqXjFmMwQmwpRdfvmnRnIIeqGg7X0qKX1CDXYvfUNBhoo2up
         xY0AOexGP0amsssS3YPRFqvQdzz8hN9MP7pxgrm0XpVWjywmR43kLcB5T0ORr3uxdJds
         yBHeiug7nUgPvtZQsid+h0qF8jfIO1tCIpXMd/QxSiwKtRW+ro0Aux6Zfkg0uU9cwOxf
         QslhcZHE7t3t1qoq9vuvu4mh0+mf++0KYD/i2a/04/X8+VCrz8BLTWHkwFXRH1pppD2E
         rpCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773908590; x=1774513390;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UfKs2BH0fICucBFRbcNT7ldaAh9sxBg62pLBdYSdZS8=;
        b=ihz3I5BFJlGdmE+Pz/OJ3TDuS21aWP2MIh/jikntRz0OfYBq6JIwL0i6A4xwB8F8DX
         Uk6IKi4tNze7G+Rm+wP7S1SxD/zTulpdV/3oHw42KfFTUQlWuCIefkNQm9WHXWj7wGQB
         48LbipD1VArQJIUziM8zT/wRl4UgCiJekeh8e8rwUgzygEwZSv8ayWsFcXXdWqPWY9Av
         1E5NZLZBzf6LGz6pMaJk4qR9WMBzqKNHnk+EBtZJmUGyFLXeKYbRiCS5TO+v0nOjyeGn
         JUJGZpwkrf8EvzcDAUD4vVZNzHnes+ZP9LwVd73alIvSeMI877RIomPONZMdK+Uz4ucn
         NL4g==
X-Forwarded-Encrypted: i=1; AJvYcCU8GIJ+rKv84Zo9aahAF/98mjgUIUeBxs1vpFK9+w8K/2IpbZ+GsTgGH2sKuomrWr+hb8Kd0Bj/pznB@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+jIJ6APRgs6KyCe9Cp+/LueVWivloqs7NvWgXvSWG4edTHCyF
	DPjtt01HngEOQpdGUIC5Ge+UPKZOugmjl92a9LrYhD4E1EM0iN5RjXgX
X-Gm-Gg: ATEYQzzKSVism/7AgwPOTwzHvD8CGsviFLgaXUPw/cgTVIhL3oj1SCMKeErGpeDFh0/
	ozqMZXqH6S+3DhopvH1o3h/CotEUPInAqqMK+4c0muHgSU/gdG/F7z1/JlMDZwc8EakIcpBVfbu
	1f3ShkRZ1VyDl47ZWpZaDIJIhJFVo17N74VxrEKy704G7eQ5mHxfJJuvhvK8Zj21IX17l8l5zvK
	lWAVu9nnHTT7si9PV8OJH5lD13Ge3g9qqErPAmu/PFzWT8ujrYZ9BHVPKHDUy4A7255ZlkbYRHC
	vxy6XX3ZD6ShqLbgWMuCqepM+wpxO5uj2yip2yAGU0IqRlmJ5AxZyuYXU2Q0IL76hEd6NAhEsm7
	RPkgWD1jxl19L1oBIFKUiS1Hu79f4AJFsV008UchKCIEo5VTv/7qWJw/tz5iAmAwXW0s0sJZwEw
	1RcTyVuUW3Ue/BoOaGTBXxVszWfdF/6H0sQAFeKqnufxh/InC44JDAhvCGF/ZHzNo=
X-Received: by 2002:a05:600c:c163:b0:485:3abe:ab86 with SMTP id 5b1f17b1804b1-486f441b801mr116935825e9.4.1773908590354;
        Thu, 19 Mar 2026 01:23:10 -0700 (PDT)
Received: from [192.168.20.170] (5D59A51C.catv.pool.telekom.hu. [93.89.165.28])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f5e1ab8esm35596225e9.35.2026.03.19.01.23.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 01:23:09 -0700 (PDT)
Message-ID: <59ae3126-1074-4ff3-9474-9419f1042bb9@gmail.com>
Date: Thu, 19 Mar 2026 09:23:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: marvell: armada-37xx: drop
 'marvell,usb-misc-reg' from USB host nodes
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260317-armada-37xx-drop-usb-misc-reg-v2-1-ddff72114414@gmail.com>
 <875x6t5ska.fsf@BLaptop.bootlin.com> <87o6klcswc.fsf@bootlin.com>
Content-Language: hu
From: Gabor Juhos <j4g8y7@gmail.com>
In-Reply-To: <87o6klcswc.fsf@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lunn.ch,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277612-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j4g8y7@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.960];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: 2D32A2C7D02
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Miquel,

2026. 03. 18. 11:51 keltezéssel, Miquel Raynal írta:

...

>>> When the nodes of the UTMI PHYs has been added to the SoC dtsi by
>>> commit 05d168a56fae ("arm64: dts: marvell: armada-37xx: declare USB2
>>> UTMI PHYs"), the properties has been added to the USB host controller
>>> nodes also. According to the commit message this was intentional,
>>
>> Miquel will confirm that, after speaking with him, it appears to be a
>> mistake rather than an intentional act.
> 
> Indeed, I believe it is a leftover, the property should have been added
> only to the PHY nodes, not the host nodes.
> 
> The sentence above should be: s/intentional/unintentional/, the commit
> messages clearly states that PHY nodes were targeted, not the
> host. Plus, a follow-up commit adds the missing phy properties to the
> hosts, so clearly reaching this syscon through the host node directly
> does not make sense and was not intended.

Sorry, I assumed that it was intentional because the commit message explicitly
mentioned the USB host node.

> Once this single word fixed, you can add my

Will fix it, and send a new version.

> Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

Thank you for the review!

Regards,
Gabor

