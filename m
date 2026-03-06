Return-Path: <devicetree+bounces-271880-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPJ5MxWMqml0TQEAu9opvQ
	(envelope-from <devicetree+bounces-271880-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:11:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6637E21CE34
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:11:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id ABA2E3006470
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 08:11:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BFE537757C;
	Fri,  6 Mar 2026 08:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aliel.fr header.i=@aliel.fr header.b="lw2O4qJ5"
X-Original-To: devicetree@vger.kernel.org
Received: from 11.511.mail-out.ovh.net (11.511.mail-out.ovh.net [178.33.248.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED053101D4
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 08:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.33.248.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772784658; cv=none; b=UTp/tuVZj72aAlHRTaT4ODF+bOkvAix517KIT6Vo0zPHBTGj44oL3+vsOVa3z9iOFjaiUY8+gN160tt10Lvlfx9DclEPaO+TbZWfZtnttlmnqqiiiwbnzhdq9tueAgXN6JzeF1/SIvJlUJq6lAiiXiN8UraewQ5gZi3h9V1GUxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772784658; c=relaxed/simple;
	bh=Oex71e2rNirvwXkD1R+tdV6/7nZIW2OYdxW8SPnlB0I=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=G/b1YfuJgUGrcOXWZRscAWdC3ff1iT2cruZNu+UoBW5rxJSz8YYeZHcXS6Cmp4Ir+fs3vELm8ApKwQ9UIIxuDGOLeW8kTi1IGWb/7KUOxX3+FP6J2Fy2pWh5v91iS0imCIUuoRRpdTAB34gB+r5PiluSgN5Ei5sSDYdjchmcJek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr; spf=pass smtp.mailfrom=aliel.fr; dkim=pass (2048-bit key) header.d=aliel.fr header.i=@aliel.fr header.b=lw2O4qJ5; arc=none smtp.client-ip=178.33.248.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aliel.fr
Received: from ex.mail.ovh.net (unknown [10.108.42.185])
	by mo511.mail-out.ovh.net (Postfix) with SMTP id 4fRzFM6XDqz9tg2;
	Fri,  6 Mar 2026 07:54:15 +0000 (UTC)
Message-ID: <439033a9-6f4b-478d-9317-f16167d138b8@aliel.fr>
Date: Fri, 6 Mar 2026 08:54:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH] arm64: dts: amlogic: t7: khadas-vim4: fix memory layout
 for 8GB RAM
To: Nick Xie <nick@khadas.com>
CC: <krzk+dt@kernel.org>, <robh@kernel.org>, <conor+dt@kernel.org>,
	<linux-amlogic@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<jbrunet@baylibre.com>, <martin.blumenstingl@googlemail.com>,
	<khilman@baylibre.com>, <neil.armstrong@linaro.org>
References: <20260306031014.2421875-1-nick@khadas.com>
Content-Language: en-US
From: Ronald Claveau <ronald.claveau@aliel.fr>
In-Reply-To: <20260306031014.2421875-1-nick@khadas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CAS7.indiv.local (172.16.1.7) To DAG11EX2.indiv.local
 (172.16.2.112)
DKIM-Signature: v=1; a=rsa-sha256; d=aliel.fr; s=ovhex24454-selector1;
 c=relaxed/relaxed; t=1772783655; h=from:to:subject:date;
 bh=51bKZp8HGwWRddd1tNSHXaubft5ibHLxsbZndwLhhBE=;
 b=lw2O4qJ5j7aJ3hE4MaFONiW2cYTLYJlv4989G5cYp2+YsZDj7lbPYzzPPRDzLbQBckbkG6JymkbZ1FVc5L9Sa43jOqM34X9n8iiA87lJ7K6olKwXeQ9M0pZc2gnrLeZKVhck8qB7xQQ1qOMvSyldpWONraTjK+6ghHH5/Hy1LJKenLcO5nTbtW9VhQ63vqZywMdmL7zqdP5Daalub1295OVdXjiPBpbp8SaDd7lusC5AG6FQc3CJbl2JAR+hfR25jl4CuZeakKS2eEkQXD9mhrroyjY0ll4GqYZlyztZDb2JWw8m+ln+GnIfThGfhkTazznhCfsQKs+ByPDctAvJXw==
x-ovh-tracer-id: 9811091791627160995
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: dmFkZTEO47OSnav7wHMO6VHKQJYw5sS6E1e0dYLi3aOM6XwWvW+BSO5iAnSyXpDTvn1oG6KJjf4G2oPkJMUwvkq2sKBzmJS+e508dKIWeUZ61hmeH//FXxRIrm6M8y6Um7Hs+J92kq7PB6I88a08R607cdwV1iGBxKfjwv7MEHzwXWKMQeZ2Fva5/DJ5huPnlMsK+1reqtqT9vWQDSAbOXap04ilYp6tzIaFU9FOLlHOZRflY8zux8lbJwgB+Pc/OJakQZarkL/VVoZLBhVbJ6zS0A/YDb2Q1H+zCC9hhoj9H4FtnVb5YFUvfqbLmq0Qg6LtNthW5djX3NRKQrYgnp8e5mz/t98llNdJdNLHyfrZeTUTzVloxKRxbh61lfS5YMf7zu7oqT2/k0LUi4W9SqVCujxGP2UhsKcwWbu/8jKSEWcDvNHjZCqVdM1jQJZWv4+yfey0yAQSGC4cf+BaVdCvYf3ccJ8P7VfoPuD4yJ2cWyW+lih46CAp3DP7hBNuZ8/bmYzOISl//Y4TpKNIvqNpYdMXXTy9ubuUJdftZZDnLcjQPmKmay2PzMus2ThE0xHtzMty7KJEFdbmEDrQActRMrH+kv3Y0LjyMqCW/+X555lpEvfNn89Na9xSHNsqi60fBkEbryrv8YQ0XXscrXS55KmFMDOKBemrknUs/Lm2b1naLg
X-Rspamd-Queue-Id: 6637E21CE34
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[aliel.fr:s=ovhex24454-selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[aliel.fr];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271880-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[aliel.fr:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ronald.claveau@aliel.fr,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,vger.kernel.org,baylibre.com,googlemail.com,linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,aliel.fr:dkim,aliel.fr:mid]
X-Rspamd-Action: no action

On 3/6/26 4:10 AM, Nick Xie wrote:
> The Khadas VIM4 features 8GB of LPDDR4X RAM. The previous memory node
> mapped a single incorrect region. This caused the kernel to map MMIO
> and secure firmware (ATF/TrustZone) memory holes as standard RAM,
> leading to an Asynchronous SError Interrupt during early boot
> (paging_init) when the kernel attempted to clear those pages.
> 
> Fix this by splitting the 8GB memory layout into three separate
> regions to properly avoid the memory holes (e.g., 0xe0000000 -
> 0xffffffff):
> - 3.5GB @ 0x000000000
> - 3.5GB @ 0x100000000
> - 1.0GB @ 0x200000000
> 
> Signed-off-by: Nick Xie <nick@khadas.com>
> ---
>  arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts b/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts
> index 25b478e106451..106eab2b4c2e2 100644
> --- a/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts
> @@ -17,7 +17,9 @@ aliases {
>  
>  	memory@0 {
>  		device_type = "memory";
> -		reg = <0x0 0x0 0x2 0x0>; /* 8 GB */
> +		reg = <0x00000000 0x00000000 0x00000000 0xE0000000
> +			0x00000001 0x00000000 0x00000000 0xE0000000
> +			0x00000002 0x00000000 0x00000000 0x40000000>;
>  	};
>  

I suggest to remove the leading zeroes here.

>  	reserved-memory {


