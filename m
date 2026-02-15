Return-Path: <devicetree+bounces-265597-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WbpmICdekWnwhwEAu9opvQ
	(envelope-from <devicetree+bounces-265597-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 06:48:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BC50F13E122
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 06:48:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 95ED130166FC
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 05:48:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3719623A98E;
	Sun, 15 Feb 2026 05:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FZl8Djqg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD8F1A08BC
	for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 05:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771134499; cv=none; b=DNPBeKHNKzMcWrB0gLRz9tkLsA0DM6jDtEXjQSLlLizReYYjajgmtlW1vd7FYXDPUNsYnGG73lafZ43INgI7GcnrJxDT7KvLL2QswD3JyqEVyBkH9jOGeZjhkEouBECGgkFTdrJ3mJMKyLhLh8uBmHGd6wRgatLcjX0WOadNv5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771134499; c=relaxed/simple;
	bh=5URDJWoLCpr+Om63hjZ88pppsyVzXpiTCCJDPdvVwpk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j7B0jwoO4i4frnE1ptxUe57p68OKD+5/p/jKSmd4DY6fkc7yr13gAranzIwBFObcfEsk+TrAnEhf0tZmABkY5zn4Zto7a55zJze1zb8mDS145uJ9LLl3eVIfUcJxd8f352lUpJBpReyL/8WWFVtjSQiKvylIRG9S2Saq0jLEePs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FZl8Djqg; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-824b5f015bcso2533600b3a.1
        for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 21:48:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771134497; x=1771739297; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B48NNf1YJcuHdmdFyYwGz74LGN+blqEWKGYew4mmQ3Y=;
        b=FZl8Djqgb/OekQ4L6njDWiM4QZ9k8bwLgXkPYpOYzIF899gcPD1rlweYc7wM1up8k2
         208rYBH4yx4tclPxmIS7aHss5TOvaO6TL3knibmeFDqkWXDwl6Ep4pIXFbxnJlv14IeG
         WlBxTI+9C5AhW7WfRr2L9MtWnmsur3u3Gcnu2YwgNF7AQL5Ak5jQk+ZEinf4vL9ZyVqS
         M1TtRGnopDisUs6p+AYIm/lLWV8Di+lHpHpyRTcqL7OZ1TlP48pnNWF1988V0PPFlOyl
         qOAzBNLaNT9TiNGN2kuz1NJ6Fvs26rcG0hDpkEeRGE2WFJcNbjBhhFxstAVTtlp9e9x9
         aCNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771134497; x=1771739297;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B48NNf1YJcuHdmdFyYwGz74LGN+blqEWKGYew4mmQ3Y=;
        b=q+W/Vcl/ICyVyOBB5Tkx62mboI0xchKqOC9mrqK0wpuOPhDASEk376VQwlDvKXGB1c
         8XKl4jsXYTH2uwwQWG+Ook+HNBQLubyqYSbpnM/zdFp8DstLdXGvBOdFZtByw1heqD00
         JuDvdqlhio/gK47xq6wiloVMXqlePH+Si0NQxxGTv2BVGMDlTVV3skrMF/gmEMZT7F6R
         4PkqMO6PD8ltcRUepgP4Ac4ssE4rpG4qBpQ9S+r2MCcrXd9ibwsC1NOuHvpOks36lWWk
         UUqRR3h0ik75+BDIvXJMztwzjLyfF4UXL6K+ofAYhoGkyRhWxq6Q4yM3QVdgbT4nrjWz
         3mrg==
X-Forwarded-Encrypted: i=1; AJvYcCXPURKq2hGIBSEpB9dn9018hybW3qlqwaUhPUFhr6nHiw1SOBD36GBGrRK3msfBLigu31elItn8/ksX@vger.kernel.org
X-Gm-Message-State: AOJu0YwRjJ1WM6sM3cTCM5SGnJ+gcbr2D/cOdTG1YOUtSYtIbyw4iqDt
	6yY9a1K5jBBc8vKx7xCLhj795nQD+3gxlSq4RasMsEyqZeVfcYrV7hVC
X-Gm-Gg: AZuq6aLhXCYODRme+R7Fhk2RvHtA932KBcGg9cQQElqzakWDLu3D1mh14OOWscqMK6j
	sI8W7MHKkwpfcePVSAv9ywZ+fdR/uBUihVCqzYX00MbxPokreOEMQeWqs6N7iDyrR/8hldvQypA
	HmzR0NOpCMcTs7CAxJGrvh/OjF49bOrHamzQnJgTbnYj3woXUxUwpi+uWR1ScbBM5JF6jqd4raB
	qJWu6PXMLEkwW7su7bcdwPMPXr5KjZL0nl8qGBZL6zLCPazLTrq9JAdKD4BwD16BY8grdpp7V7j
	vKWDE7rWeguPGggbBTqJz3yRA7/6wAaVHMhYeZMXAPYIWACNVkHQfa9cQMUREv3kKlOmQMNnK3Y
	FoTyOEZoRtjRQES5NvVtMEciVjpbOgtcL9zt3OTuu60eVvuG2Fwh5YTVWghHc/kSSUJaZLSTbQt
	4rcbXpzDMV5u+QdlKtMGgYKkvlo9Idh3lvsfeYmLwTppk=
X-Received: by 2002:a05:6a00:a883:b0:81f:22ca:257 with SMTP id d2e1a72fcca58-824c5ef0916mr7245870b3a.20.1771134497374;
        Sat, 14 Feb 2026 21:48:17 -0800 (PST)
Received: from [192.168.1.4] ([27.7.171.51])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6b6a17fsm8677833b3a.34.2026.02.14.21.48.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Feb 2026 21:48:16 -0800 (PST)
Message-ID: <26b05fa5-b985-4e21-b848-7427044b04c0@gmail.com>
Date: Sun, 15 Feb 2026 11:18:09 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v4 0/3] dt-bindings: phy: Convert TI OMAP control
 and PIPE3 PHY to DT schema
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade
 <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>,
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Roger Quadros <rogerq@ti.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org
References: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
 <177021985530.133434.13436195442562231016.b4-ty@kernel.org>
 <f60156a6-58af-4548-9dc3-71c71b822343@gmail.com>
 <20260213190054.ezblztj3blmhtywr@skbuf>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20260213190054.ezblztj3blmhtywr@skbuf>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265597-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BC50F13E122
X-Rspamd-Action: no action



On 14-02-2026 00:30, Vladimir Oltean wrote:
> Hi Charan,
> 
> On Fri, Feb 13, 2026 at 10:06:16PM +0530, Charan Pedumuru wrote:
>> On 04-02-2026 21:14, Vinod Koul wrote:
>>>
>>> On Fri, 23 Jan 2026 15:39:01 +0000, Charan Pedumuru wrote:
>>>> This series converts the old text-based DeviceTree bindings for TI OMAP
>>>> Control PHY and TI PIPE3 PHY to modern JSON-schema (YAML) format.
>>>>
>>>>
>>>
>>> Applied, thanks!
>>>
>>> [2/3] dt-bindings: phy: ti,phy-usb3: convert to DT schema
>>>       commit: 62c9ff8fc20d23c0dc36be1330734fdafb3e8585
>>> [3/3] dt-bindings: phy: ti,control-phy-otghs: convert to DT schema
>>>       commit: 7878306d182a1750583a325a29e5ccab9ce0235b
>>
>> Hi Vinod,
>>
>> You missed to apply the first patch which has DT node pattern changes
>> and now this dtb check fails in linux-next as these YAML patches use
>> the updated node pattern. I got a report of errors from kernel test
>> robot.
> 
> If there was any request formulated to Vinod to pick up patch 1, then I
> also missed it while reading this series.
> 
> Usually, dt-bindings patches are picked up by the subsystem maintainer
> while DTS patches are picked up by the platform maintainer. If you know
> that there is any dependency then it would greatly help if you could
> mention that upfront, or even specify how you expect the patches to be
> merged.
> 
> In this case, I expect the warnings will get eventually resolved when
> Kevin picks up patch 1.

Yes.

> 
> To avoid warnings from being introduced in the first place, you could
> have
> - requested all patches to be taken through a single tree (requires
>   maintainer coordination with ACK from the other one, more complicated
>   if the files touched are under heavy development)
> - requested a stable tag from the first maintainer, to be pulled in the
>   second tree
> - send patch 1, wait for a merge window to pass, send patches 2-3

Sure, next time I will follow this procedure. Thanks.

-- 
Best Regards,
Charan.


