Return-Path: <devicetree+bounces-222928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5189BAF84F
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 09:59:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4BD1D7A440E
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 07:57:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE64327A465;
	Wed,  1 Oct 2025 07:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="R9IbUTfL"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5463E278150
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 07:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759305548; cv=none; b=lJxRZKy3SpzSHM9aH3rJ/Tyt8O0u+iuJVJ2/Cyx8OPgJzCwClqU8R11VxypQx803Jprz//fLuz5oRYDqympKGWyWBfYJwPKf9s9h81pNEnPrnaENKUnYfOviwV3HdQ9/tf8a9KhvAB5grxWGrRXnT8zz25NILpmwY39TxP0tPoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759305548; c=relaxed/simple;
	bh=32+dcV5KCnlxSs5GB9v7s7dAz1V61Qe0s4V0xusvslI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oxQ/3RKBjeqc+3ERN3ia5CJYnwtDg+iWAaqWy6QsXHfbNPN91HOVCV7v4nqm0t/qx85sgNjDFy4+qWElWXefQI3LTEWXPFGY4TOOtU5oaLjJ7EZQf+TKiPt+7ZieOymfbaVcj+tubLUvLfnsrWWazTGgirphXxkns7zBshEJAYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=R9IbUTfL; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1759305545;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6JRYgwl0T5IpgOuDkp0yF08iEAoUfTslJUqiB0DRs8I=;
	b=R9IbUTfL4xB9I5KgqSokOYTFzqZkaN5sYyaMftBvHjTnU96zRg6u4IPMTBnoTY5v2fvMEd
	sLM1V5w/nne1MfqdhX9mpvJL8yAq+FsygD2kK5QmAq9T8ffG91pu3VNX9Fg70CiHGCTcXJ
	FUU50YJ/feDoA+ttAoAFmfo/nnCwMUE=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-35-S4E2kB1TO2S2agPrNUYB7g-1; Wed, 01 Oct 2025 03:59:04 -0400
X-MC-Unique: S4E2kB1TO2S2agPrNUYB7g-1
X-Mimecast-MFC-AGG-ID: S4E2kB1TO2S2agPrNUYB7g_1759305543
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-3efa77de998so4124471f8f.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 00:59:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759305543; x=1759910343;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6JRYgwl0T5IpgOuDkp0yF08iEAoUfTslJUqiB0DRs8I=;
        b=KN46vK0s+98ScDw+1PvLKUAw1JNOCJoN6jWnbsKEHh/emmWBT/WTTrU0Vf7XqFT+K1
         c9+g7iDP7E7BAtMGB8rXKrEK/CqZYjjpFrPyi/xLrsY9bRGflaLiKwgmcFE4ZdNN3zcU
         Dbh3S7mKng0hPVDXOdkrfzm1KtSzgkP75BqJG7WU2nRIhcTfMeL6KPabC2cJmHKrtkgC
         wfo25ehlcO4InlITUBgXDrSczZr4imVUWr5Awojk4Le8a3Wdy/X41DTLXgstZfCx6zns
         Oj6oEPwTaw0SDj2jXTXFOZOuGNnY29DL7J6O5I7kGYnv3devK8KSzJvgDlZoZ/8hEshA
         mFNg==
X-Forwarded-Encrypted: i=1; AJvYcCVUWCh7/4XK0+c3Uj9ye/GqeH1nxXb6E/JXes732UEcEMOsvi+2Qwwg6xvS8/04OHW3i1BstvSfmqoa@vger.kernel.org
X-Gm-Message-State: AOJu0YzBRFq2KQemQaOD8NaRsiVlsm0bX1pg/AHUSgFpHhSY9s894vhO
	arNy9rUXott9UL3haRaa2MWx6fAqyUNPIUeChF37SiKCozj7zmZWad2DT7XMoQdHp5UAtebOUL+
	VpJ2J5zGLzbWWUZUlnyDYXXR/pUmVaRNSlR6dDyTxF7znuHQ69nv4G5nD5vtPjAc=
X-Gm-Gg: ASbGncuPY/r0Tj3AY52dM5B3M7OQXB1cJGiyCjTDDxhKhbe1S+/+PjVGT+/cbPEJEkM
	FaKq2aBdA7tTIkNno1tI51KNwB5kgu7GSrldhyssOeeAoy9vq+niTWdZfVJE6QxIl1t+dWVd1iF
	p3g9xaVRoYyoz6qeSQDNeEjhYiT8vdns4NKmZtDoI+TdOx8to/Dpz8dBdL8IzH8ZwcDYm5jDDky
	ng/t/jHVEHz5QrZIcsWaCVfzYAIfGHOkSafpAzssIPjM4EjyvpYVvMJOhdVStDKQGsivz1lyhd3
	P/PHH+vYVXSblqGQvLL5AP9oEyA5i4SKrN8I9wip6byTRydrPj5sotXDals7cwAh5FijU60SN15
	n3AkxmTC9xZznLCKKHw==
X-Received: by 2002:a5d:5f55:0:b0:424:2275:63c2 with SMTP id ffacd0b85a97d-42557816e2fmr1739105f8f.33.1759305542740;
        Wed, 01 Oct 2025 00:59:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFmThKjj9QWZgUZye0EGBRbRcpzbrXizq8/t5RuSNwiL8WkyRG5/i9RJlh4f2Y+zEs9wXkX5Q==
X-Received: by 2002:a5d:5f55:0:b0:424:2275:63c2 with SMTP id ffacd0b85a97d-42557816e2fmr1739074f8f.33.1759305542103;
        Wed, 01 Oct 2025 00:59:02 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:2712:7e10:4d59:d956:544f:d65c? ([2a0d:3344:2712:7e10:4d59:d956:544f:d65c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e619a6fc8sm26932675e9.13.2025.10.01.00.59.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 00:59:01 -0700 (PDT)
Message-ID: <a1f2c541-01c3-4c02-9caa-d061b1ec81f3@redhat.com>
Date: Wed, 1 Oct 2025 09:58:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v8 2/2] net: stmmac: Add support for Allwinner
 A523 GMAC200
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Jakub Kicinski <kuba@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 Chen-Yu Tsai <wens@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej@kernel.org>, Samuel Holland <samuel@sholland.org>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>
References: <20250925191600.3306595-1-wens@kernel.org>
 <20250925191600.3306595-3-wens@kernel.org>
 <20250929180804.3bd18dd9@kernel.org> <20250930172022.3a6dd03e@kernel.org>
 <d5aaff54-04dd-4631-847c-a2e9bd5ad038@redhat.com>
 <aNzc17ZW56gLX87v@shell.armlinux.org.uk>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <aNzc17ZW56gLX87v@shell.armlinux.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/1/25 9:48 AM, Russell King (Oracle) wrote:
> On Wed, Oct 01, 2025 at 09:25:07AM +0200, Paolo Abeni wrote:
>> On 10/1/25 2:20 AM, Jakub Kicinski wrote:
>>> On Mon, 29 Sep 2025 18:08:04 -0700 Jakub Kicinski wrote:
>>>> On Fri, 26 Sep 2025 03:15:59 +0800 Chen-Yu Tsai wrote:
>>>>> The Allwinner A523 SoC family has a second Ethernet controller, called
>>>>> the GMAC200 in the BSP and T527 datasheet, and referred to as GMAC1 for
>>>>> numbering. This controller, according to BSP sources, is fully
>>>>> compatible with a slightly newer version of the Synopsys DWMAC core.
>>>>> The glue layer around the controller is the same as found around older
>>>>> DWMAC cores on Allwinner SoCs. The only slight difference is that since
>>>>> this is the second controller on the SoC, the register for the clock
>>>>> delay controls is at a different offset. Last, the integration includes
>>>>> a dedicated clock gate for the memory bus and the whole thing is put in
>>>>> a separately controllable power domain.  
>>>>
>>>> Hi Andrew, does this look good ?
>>>>
>>>> thread: https://lore.kernel.org/20250925191600.3306595-3-wens@kernel.org
>>>
>>> Adding Heiner and Russell, in case Andrew is AFK.
>>>
>>> We need an ack from PHY maintainers, the patch seems to be setting
>>> delays regardless of the exact RMII mode. I don't know these things..
>>
>> The net-next PR is upon us, let's defer even this series to the next cycle.
> 
> Would've been nice to have been given the opportunity to respond to
> Jakub's email before that decision was made. Not all of us are in
> the US timezone. (Jakub's email came in gone 1am my time.)

I'm sorry, the time constraint is very strict. The PR is already in
late. My message's goal was to give you the needed and deserve time for
reviewing the series, not to pressure you.

Note that to merge the series at this point I need to undo some of the
work already done.

Cheers,

Paolo



