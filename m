Return-Path: <devicetree+bounces-307571-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id y9a3EwV3I2rKuAEAu9opvQ
	(envelope-from <devicetree+bounces-307571-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 03:25:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E73C64C19B
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 03:25:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ka3Lwfnr;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307571-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307571-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 38AF4301F33E
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 01:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A891823C8A0;
	Sat,  6 Jun 2026 01:25:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE45A22DFA4
	for <devicetree@vger.kernel.org>; Sat,  6 Jun 2026 01:25:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780709122; cv=none; b=KN7R6ytHldIC4oPE7mOJguNLuUk5JTrYy4YjP1GLdjyOv9mt7g3ccIQP/FdDdwJGHIfj0dn7zDXE9F4SokrNCLXeO57bE0AnUSuvq/U1Zi0AF1G/rI1iE+hdZ4FWc0q5NjtTtVYjtLRCtXv4OPesH9N7m57ocNTzJHdwNN8q5As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780709122; c=relaxed/simple;
	bh=Zghga2gWe/toL9pwA3mj+ss7L7ysOvkr8dnfmHYAMhY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cX6W4HSFbfIcRggVYFUf4TK3/nn3JQ79Mu/ETmPvR9lO5iTTpeBvTslcZoQGnI9oWl/dTVWxOMaZR/w7+CTj8J7TJVnD5dWuKcTokMshC3pkogAYsaEIP9d4f23i8kHDx9ZulWcNhtiiBBKnqn8yDd5Ujhlj80cs1Mbf2uJ5pt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ka3Lwfnr; arc=none smtp.client-ip=209.85.216.46
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-36b95eb4bb4so1702657a91.3
        for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 18:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780709120; x=1781313920; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xlHM4SwEYzgUkF12NjO2fDCV2nlBM3gTJYEltfg6ZDI=;
        b=ka3LwfnrG4cmspNhsZMOJ8mMuDUSWbj3DXK3oQY19UDnkvlRgu2dcfPFNwQyuunNj3
         QjzjNo4nbb0RfM7glSdfeKy9WzdaSDyfoAGNOsmjVxoj0TgvO1USmr7MvQGY5SPuxWTe
         gBEIC2qCHLVDlN7DIyikkD10kWgTGlnwbhq5LvwHHuXjq1MbCK2Lbz/4gczSDUHCxynu
         OU3wAd3kusx8fAKqNuD2Qo+mMXGLfaFGfnZjDxwVW+1E1Zcm/BgAtDYad07NwJINbv7d
         KSS3PiE9Ao3eF+3OE1g0EJqpqrk8BxZZ3/cJBhYntmZSrXSFp45wpNiQJFFE0h8YZi5c
         RDmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780709120; x=1781313920;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xlHM4SwEYzgUkF12NjO2fDCV2nlBM3gTJYEltfg6ZDI=;
        b=G6ZziCUBHkZ6xQAgDQK0nyNDXNf3tsJOE1MCenV1gpks2qoAaH9Y0sIp1jbxkp/WoF
         QUxtNheFJHv25BlaKnA59IFQdZVfnp1ozuQFua0iR6iDR8mszR2059lkv4EfNro5F/JF
         f3nqNVLEFiqDkj8gFzxZy/htiVHDXbb9k1vMs85KyVgXFJz3AmCCYaAyqOjetOXiFcY/
         YDu1QFbUoIzpCywKMiDWBnKnuwBQyD24DhZQNhYNepmvQInTUgLzSJSMjv4XfzXos63Y
         wtBuW23ZkdY2oaxl6Fkw0N63WpqseO/hGKZeQjUw10mU1/YVwo3gdV5m0MkxEtcwwdir
         Pnew==
X-Forwarded-Encrypted: i=1; AFNElJ+ApLQGnwvZqMdV+f5NC9gGSMjjgvaTbOcKTOJTe96QWCzFJwKOYwwCqGDc9sXBBQ8OJ2KteI7hl0/Z@vger.kernel.org
X-Gm-Message-State: AOJu0YzeJIPDxsknZ4H5bvzLJWwoYTP9FC7cjvJEa5jxULPGwYrPSzlZ
	pucEPXKqQmhB6MZF0oLgF66uxlcTjnpE5obRisRn6ClMjuewV1xG6HK96v34hCagI+8=
X-Gm-Gg: Acq92OHhT9aXSMHvNuLjEJ7zlYJD0OXrGIWwaDs+iRrTiCl9gdV82s2e4cu0qUDUPiD
	RQ+JmvD7lQGWrQo+QgVrcTanJOhSAWWlsTRK3khF/z6bDIkgROo/2Aq1D9kJg1QYHq8ixcc+X2C
	fU/MUhzZrR0svUHW83QrT8l9s1mTiZm2q0Y6pRHWbyOxSrSvtEWmIEXx5iOrUQKsgY1dL3abtRy
	otum1YgV8YUIQ88ukTIAppcH9VKd0jO9RWE4gXYZ6R0HEkTamGWNpiMc/8qMlSrCVaF8Fu5s+B1
	haYbPh6avMUBbeAmBooAN5NztfqOwWh7hjirGfGmkK0rnaJYvT/1lWerguM+E4srUs95hC09J7r
	f5Uvw8/7S3QefWdhES7lJ7s6A//eRZVoB4LpmRMc25cw5ev1ZdMKckYrSXdXd8koL37EH+FoNlt
	WYn40q9A==
X-Received: by 2002:a17:90b:4b0b:b0:36b:a2cc:4857 with SMTP id 98e67ed59e1d1-370efdaca8fmr8095897a91.18.1780709119770;
        Fri, 05 Jun 2026 18:25:19 -0700 (PDT)
Received: from localhost ([2a12:a305:4::305d])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c1664ae328sm101642545ad.84.2026.06.05.18.25.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2026 18:25:19 -0700 (PDT)
Date: Fri, 5 Jun 2026 21:25:12 -0400
From: Guodong Xu <docular.xu@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: sashiko-reviews@lists.linux.dev, kvm@vger.kernel.org, 
	devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH v3 08/15] riscv: Add Zic64b to cpufeature and hwprobe
Message-ID: <3kr2pj3za5skl2auqezmdh32ctyw5uhswvro4jr6fqtyznp6lx@2sslriot2zcv>
References: <20260603-rva23u64-hwprobe-v2-v3-8-5529a7b28384@gmail.com>
 <20260602232800.768311F00893@smtp.kernel.org>
 <CA+Ck9FbKRM0wjJMg1fQpdwmow8cf_zTfir7V6+T=CRxU+vomdg@mail.gmail.com>
 <20260604-rice-protegee-3a0b8e4cb609@spud>
 <u52q565xhv5s7gz3wbh4heplhbm4pv732s5kqvf4deiw6ceb4t@n4bnpzu5kabs>
 <20260604-activate-antidote-ebb9197b286f@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260604-activate-antidote-ebb9197b286f@spud>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:sashiko-reviews@lists.linux.dev,m:kvm@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[docularxu@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-307571-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[docularxu@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,2sslriot2zcv:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8E73C64C19B

On 2026-06-04 17:28, Conor Dooley wrote:
>On Thu, Jun 04, 2026 at 09:31:36PM -0400, Guodong Xu wrote:
>> On 2026-06-04 10:17, Conor Dooley wrote:
>> > On Thu, Jun 04, 2026 at 02:42:22PM +0800, Guodong Xu wrote:
>> > > On Wed, Jun 3, 2026 at 7:28 AM <sashiko-bot@kernel.org> wrote:
>> > > >
>> > > > > @@ -154,6 +154,23 @@ static int riscv_ext_zicbop_validate(const struct riscv_isa_ext_data *data,
>> > > > >       return 0;
>> > > > >  }
>> > > > >
>> > > > > +static int riscv_ext_zic64b_validate(const struct riscv_isa_ext_data *data,
>> > > > > +                                  const unsigned long *isa_bitmap)
>> > > > > +{
>> > > > > +     /*
>> > > > > +      * Zic64b mandates 64-byte naturally aligned cache blocks; cross-check the
>> > > > > +      * cbom/cbop/cboz block-size device-tree properties to avoid inconsistency.
>> > > > > +      */
>> > > > > +     if (riscv_cbom_block_size != 64 ||
>> > > > > +         riscv_cbop_block_size != 64 ||
>> > > > > +         riscv_cboz_block_size != 64) {
>> > > >
>> > > > [Severity: Medium]
>> > > > Will this check erroneously disable Zic64b if a platform does not implement
>> > > > all three CBO extensions?
>> > >
>> > > Zic64b is mandatory in RVA22/RVA23, which also mandate Zicbom,
>> > > Zicbop and Zicboz, so all three block sizes must be present on any Zic64b
>> > > platform.
>> >
>> > Where do you get that conclusion from? That's not how we treat any other
>> > extension defined in the profiles spec. My understanding was that even
>> > if things are defined in the profiles spec that they're fair game for
>> > independent use.
>>
>> Ok, I get your point. Agree, Zic64b/Zicbom/cbop/cboz can be implemented
>> on each hart independently (at least spec doesn't say no). With this in
>> mind, the validation of Zic64b should be like this:
>>
>>     if ((riscv_cbom_block_size && riscv_cbom_block_size != 64) ||
>>        (riscv_cbop_block_size && riscv_cbop_block_size != 64) ||
>>        (riscv_cboz_block_size && riscv_cboz_block_size != 64))
>
>Or you could check for the extension instead of the left-hand sides
>here, but I think that becomes more complex because you need to start
>returning EPROBE_DEFER sometimes etc.

Agree with you. riscv_ext_zicbom_validate() is already building its logic
on riscv_cbom_block_size. Adding EPROBE_DEFER will make the logic look
like code duplication, with no real gain:

+       if ((riscv_cbom_block_size &&
+            !__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_ZICBOM)) ||
+           (riscv_cbop_block_size &&
+            !__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_ZICBOP)) ||
+           (riscv_cboz_block_size &&
+            !__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_ZICBOZ)))
+               return -EPROBE_DEFER;
+
+       if ((__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_ZICBOM) &&
+            riscv_cbom_block_size != 64) ||
+           (__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_ZICBOP) &&
+            riscv_cbop_block_size != 64) ||
+           (__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_ZICBOZ) &&
+            riscv_cboz_block_size != 64)) {
                 pr_err("Zic64b detected in ISA string, disabling as a CBO block size is not 64 bytes\n");
                 return -EINVAL;
  
Just for record purpose. It's not my intention to do this. You won't see
it in the next version. ^

>
>>     return -EINVAL;
>>
>> This will allow :
>> 1. A Zic64b hart with 0, 1, 2, or 3 CBO extension and block_size 64
>>    passes the validation.
>
>I'm not too worried about the 0 case here, people shouldn't be using
>zic64b if they don't have a corresponding extension after all.
>
>> 2. A Zic64b hart with CBO extensions but block_size is not 64
>>    fails the validation
>>
>> Thanks for the catch.
>>
>> I will fix that in v4.
>
>btw, can you fix your system time? It's like 12 hours in the future and
>that impacts the timestamps on emails you send.

Fixed. sorry for that. It should be correct this time (and future times).

BR,
Gudong

>
>Cheers,
>Conor.



