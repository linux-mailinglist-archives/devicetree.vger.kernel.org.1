Return-Path: <devicetree+bounces-295334-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNUhMZ+DAWoFcAEAu9opvQ
	(envelope-from <devicetree+bounces-295334-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 09:22:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A175090BD
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 09:22:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D441D30086CE
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 07:22:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58F00377EA7;
	Mon, 11 May 2026 07:22:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="R0ATEsm3"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8995372B57;
	Mon, 11 May 2026 07:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778484125; cv=none; b=UgA8+X+vQYtUL2df5YJ4V8E/ef0K23CCV+hoYgvzSEQxt0qgjS1TkcRPGCnXW8ZirRNNIsHrt1DE6phI+eGK5P5iSpx9HO8R/N0kYtRoRVhlkUZs2yrIivoa7q3gUnHYeKre4F7V6hv87cBXGYi4tzAbb7O2nUaCmp2yVingeP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778484125; c=relaxed/simple;
	bh=sFa6mjTeZA+YdjdzIRkDzWZvvTvkozLyw4GG3pLu5g8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q53wXdvXombJTBBr7yzhhRHTe8BKUCeK+UsuAQ9R8SSeyyaJ8LJnZ/Y6rwrrHFLyqEjiA0VOE+JZFjHaROJsoNBVNsji6R3h6DUiX9f3HRIDmU5mbRUpkV5N2LAAhWa+KitiYV0hNnGNfWEeBpoZrNY1jbPrM53fwrVuW2rZcRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=R0ATEsm3; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778484121;
	bh=sFa6mjTeZA+YdjdzIRkDzWZvvTvkozLyw4GG3pLu5g8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=R0ATEsm367q/tkMguEZtJEF8nYKvKUL0gTj0GCcC8/uZna4C01SpMlCgkLx2kQYk0
	 O5H+L/N0pbg0Oz228uuYg+9w152APlplCi51FE76IIfaJp3/Ao5751ugoplRzFLXdN
	 g9jttptHdPwZRptAyQbvZw67uX58bZAMEZO8TB6j7UetCC5jYJkcUdwj4+lqte2MYg
	 15hnSw+r9vFlVNlzqozLqLBGEz/SYnR94ROkin6AdwacWP9rDGsiFITS/v7IhvDaDU
	 R6ZSKwaTYUi0tjHH9K/+vSP4xTPTQtu1fjZ3KxWhwRiGMuX6Mfx3guxwFpoZ9DJw0E
	 s3THntGpbBFrw==
Received: from [100.64.1.43] (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8C5AE17E05FC;
	Mon, 11 May 2026 09:22:01 +0200 (CEST)
Message-ID: <36e114a3-8240-480b-a53a-6aa3810bf089@collabora.com>
Date: Mon, 11 May 2026 09:22:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 1/5] dt-bindings: vendor-prefixes: Add Verisilicon
To: Diederik de Haas <diederik@cknow-tech.com>, joro@8bytes.org,
 will@kernel.org, robin.murphy@arm.com, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de
Cc: iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Conor Dooley <conor.dooley@microchip.com>
References: <20260415072349.44237-1-benjamin.gaignard@collabora.com>
 <20260415072349.44237-2-benjamin.gaignard@collabora.com>
 <DIEC8YT0XK4O.VAG6G4H31KJM@cknow-tech.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <DIEC8YT0XK4O.VAG6G4H31KJM@cknow-tech.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 41A175090BD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295334-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[benjamin.gaignard@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,verisilicon.com:url]
X-Rspamd-Action: no action


Le 09/05/2026 à 19:56, Diederik de Haas a écrit :
> On Wed Apr 15, 2026 at 9:23 AM CEST, Benjamin Gaignard wrote:
>> Verisilicon Microelectronics is a company based in Shanghai, China,
>> developping hardware blocks for SoC.
>>
>> https://verisilicon.com/
>>
>> Add their name to the list of vendors.
>>
>> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
>> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>> ---
>>   Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
>> index ee7fd3cfe203..ebd9072300a8 100644
>> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
>> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
>> @@ -1761,6 +1761,8 @@ patternProperties:
>>       description: Variscite Ltd.
>>     "^vdl,.*":
>>       description: Van der Laan b.v.
>> +  "^verisilicon,.*":
>> +    description: VeriSilicon Microelectronics
>>     "^vertexcom,.*":
>>       description: Vertexcom Technologies, Inc.
>>     "^via,.*":
> FTR: Another version of this patch is already present in Linus' tree:
> c131d78840d7 ("dt-bindings: vendor-prefixes: add verisilicon")

It seems it has been merged right 7.0-rc1 that I used for this series.
Both are almost identical so we can ignore mine.

Regards,
Benjamin


