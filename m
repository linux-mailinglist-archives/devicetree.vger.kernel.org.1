Return-Path: <devicetree+bounces-306999-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id I48HFG+uIWqmLAEAu9opvQ
	(envelope-from <devicetree+bounces-306999-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 18:57:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B15A36421DA
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 18:57:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bytedance.com header.s=google header.b=a9AqZLNf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306999-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-306999-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=bytedance.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A2D4E3091C39
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 16:44:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76068481A8D;
	Thu,  4 Jun 2026 16:44:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6A50436352
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 16:44:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780591459; cv=none; b=ZTS4gRCUbdPJcIatXQ5Zpl/cbBHFu1Vo6yMJJUx51ZLzZdL/29T8nt1uAcHEFunZXoFhm4F4mDjLw/XVzD/Zcg9MsD2/8plrxfBnCZbFihKtHZ4JusmYdyY/4sGojkcb8a57IGF8wpsEgaGmqWcu2/GpMo5aGlWv+MQtfNXxeIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780591459; c=relaxed/simple;
	bh=Aw78agkf6iR3IZDh6wVERI1aeGWmj4gzG03chuIaRK8=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=V91XG6c+7rG29Os3/7hl1wFxEBsTvHQeusZ4t4RCHovpu+pzHo5tNP1C3xU50r0eNqkdW1goIDmT6Ls5auTtr5a4GpOtaqXoHEhbuGUq33Qi1Vj8/IKJ1/8yBg7/Amf7SEAMe3bPIkbe0AKVHovIvZffwsfG+ePHhM86b++kEY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=a9AqZLNf; arc=none smtp.client-ip=209.85.215.175
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-c858d69bde9so464604a12.1
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 09:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1780591457; x=1781196257; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FiXqIV/0AvKBIe6e5IQfr/FZZ4j1GotnIRcH2PcdqiA=;
        b=a9AqZLNfgvb3Y2eWUt0PLbP8P6++YSFp8/FrymHgMI2tAhcABpIuA+gwDXC5+C3Mby
         hUF99on2rM4vDoHVcXwMtsmqD09zovXuYe+d86k9/VpLsb9UYbVMe94p/D54OA+S1Kjl
         TfgqiO54F5QFk63Z92plfy3riE/Wd5Kc8xOkm9Vzwq6SPPrbEb26aSEFJkuOgsLqBBT0
         +ltNvA8UyJ+UGLIDuaMvgArN5kKxV6MIsCboBZWlRi+AZ0Cl5P7pG4RkElGAOLysD+jy
         gxelPzvK+f9l7yjnIRjKhSX3pbpvgHciBn85Ca0QalYX9QnT53E3YYWbhEkxa9ePX1eS
         Yuow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780591457; x=1781196257;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FiXqIV/0AvKBIe6e5IQfr/FZZ4j1GotnIRcH2PcdqiA=;
        b=P5eqT5y1dHGlBBudK3bMr+b1X37XKnosfDobq8xwF0dxIeJiJov4OGznPI1yaazRm0
         j6W9/1KhpoM5ABV7hvaSpRxgbhthqKni2DpizlvHW1LkZb5E3XcWfQXmVWRAcgEs7XZE
         QyYKAhes6NLdLiF/5XRSpN/ZEmxhyAKQcROxYAurCYRCSLp/qQVxcy2NQIC+5+0OJ1+Y
         eO1nFpGrOSFnYjUBFTILYTuou/0vZENj7EyPHD4H8bSuzgqaBgtoXLG2O62y9wszCkFB
         eUgDRgOCF4zeHBpYiAWxwex1ALfRAHWhgW71aeZXfmtbv1tSTkr0Yx9ByPyBY4qbJKNq
         UE7w==
X-Forwarded-Encrypted: i=1; AFNElJ/NnBb/+vC1YyGTd2psSGUTM9dypl4CSaKwQB6ur/fuWs4Mf8vdTYh9iBvdStu3/U6A3QWPrJKHUX/e@vger.kernel.org
X-Gm-Message-State: AOJu0YwQ5mA6QJgexuGIKAA9ye7nlw+YYzppQWiXztRj4b8F04M9m0lO
	q3Wo7y/TRhQ2uTEav5tARbCB7PsgZ6XwxnH/rPJVJjyfVWuAkdJq5vBLYy+RdCi9F0w=
X-Gm-Gg: Acq92OHeqIyV9FFB1D0uLmNMhCmV6yOHnzOhREAnIuHWet5oOupw35aL6IAhBmGgOk1
	mXfJ8hXGWILvSYH13EhAozj1Fvhqmsb3ldgla3Qd+G1GVVtoaqTPjJpaMPx+6fGnHq+t18YpSzr
	kam2p/zLm1WD9OFPL2V2XTyEEAqdu4VYNz3cwViHn6by3zjjhlkbrIEVkgS4vxaqI6vibsp6gYh
	K2ZkGgYZmpoLGLohktAnWHoRXVKraFc2naELEV/Kn55tFF3MyWb5I+rTWIFJUWsRz8wXtR6BVbE
	fGcg6sNDy9+pdZ+4XaMdrcvmiNDvxs4nYy99KjeGMYzwNJKDH312ESUuajPNaAW2qAxJRo9vl+e
	lXGkS1OKuLbuNP7jCK80ZqzbUpwlhInvUIzY11B9UigrzBjT78OnhN6r5ooILfC1H4rIc8QRmcy
	ELzOYEbditIdw+Q/J/0fJJuv9wf/KUq3AykrHBc+EPdH74QVJ+xHDJ78loYGrZJXhZT0DsoZsQn
	Q==
X-Received: by 2002:a05:6a21:7314:b0:3b4:8566:1ca4 with SMTP id adf61e73a8af0-3b4973296bemr10047203637.7.1780591456849;
        Thu, 04 Jun 2026 09:44:16 -0700 (PDT)
Received: from smtpclient.apple ([139.177.225.235])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c85df04a0e9sm4835814a12.13.2026.06.04.09.44.13
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Jun 2026 09:44:16 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Subject: Re: [PATCH v3 08/15] riscv: Add Zic64b to cpufeature and hwprobe
From: Qingwei Hu <qingwei.hu@bytedance.com>
In-Reply-To: <u52q565xhv5s7gz3wbh4heplhbm4pv732s5kqvf4deiw6ceb4t@n4bnpzu5kabs>
Date: Fri, 5 Jun 2026 00:43:22 +0800
Cc: Conor Dooley <conor@kernel.org>,
 sashiko-reviews@lists.linux.dev,
 kvm@vger.kernel.org,
 devicetree@vger.kernel.org,
 robh@kernel.org,
 conor+dt@kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <6940420B-C9C3-4D60-AB7F-7FBC4B93D855@bytedance.com>
References: <20260603-rva23u64-hwprobe-v2-v3-8-5529a7b28384@gmail.com>
 <20260602232800.768311F00893@smtp.kernel.org>
 <CA+Ck9FbKRM0wjJMg1fQpdwmow8cf_zTfir7V6+T=CRxU+vomdg@mail.gmail.com>
 <20260604-rice-protegee-3a0b8e4cb609@spud>
 <u52q565xhv5s7gz3wbh4heplhbm4pv732s5kqvf4deiw6ceb4t@n4bnpzu5kabs>
To: Guodong Xu <docular.xu@gmail.com>
X-Mailer: Apple Mail (2.3864.300.41.1.7)
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bytedance.com,quarantine];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[bytedance.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306999-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:sashiko-reviews@lists.linux.dev,m:kvm@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:docular.xu@gmail.com,m:docularxu@gmail.com,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[bytedance.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[qingwei.hu@bytedance.com,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[qingwei.hu@bytedance.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,bytedance.com:mid,bytedance.com:dkim,bytedance.com:from_mime,bytedance.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B15A36421DA



> On Jun 5, 2026, at 09:31, Guodong Xu <docular.xu@gmail.com> wrote:
>=20
> On 2026-06-04 10:17, Conor Dooley wrote:
>> On Thu, Jun 04, 2026 at 02:42:22PM +0800, Guodong Xu wrote:
>>> On Wed, Jun 3, 2026 at 7:28=E2=80=AFAM <sashiko-bot@kernel.org> =
wrote:
>>> >
>>> > > @@ -154,6 +154,23 @@ static int riscv_ext_zicbop_validate(const =
struct riscv_isa_ext_data *data,
>>> > >       return 0;
>>> > >  }
>>> > >
>>> > > +static int riscv_ext_zic64b_validate(const struct =
riscv_isa_ext_data *data,
>>> > > +                                  const unsigned long =
*isa_bitmap)
>>> > > +{
>>> > > +     /*
>>> > > +      * Zic64b mandates 64-byte naturally aligned cache blocks; =
cross-check the
>>> > > +      * cbom/cbop/cboz block-size device-tree properties to =
avoid inconsistency.
>>> > > +      */
>>> > > +     if (riscv_cbom_block_size !=3D 64 ||
>>> > > +         riscv_cbop_block_size !=3D 64 ||
>>> > > +         riscv_cboz_block_size !=3D 64) {
>>> >
>>> > [Severity: Medium]
>>> > Will this check erroneously disable Zic64b if a platform does not =
implement
>>> > all three CBO extensions?
>>>=20
>>> Zic64b is mandatory in RVA22/RVA23, which also mandate Zicbom,
>>> Zicbop and Zicboz, so all three block sizes must be present on any =
Zic64b
>>> platform.
>>=20
>> Where do you get that conclusion from? That's not how we treat any =
other
>> extension defined in the profiles spec. My understanding was that =
even
>> if things are defined in the profiles spec that they're fair game for
>> independent use.
>=20
> Ok, I get your point. Agree, Zic64b/Zicbom/cbop/cboz can be =
implemented
> on each hart independently (at least spec doesn't say no). With this =
in
> mind, the validation of Zic64b should be like this:
>=20
>    if ((riscv_cbom_block_size && riscv_cbom_block_size !=3D 64) ||
>       (riscv_cbop_block_size && riscv_cbop_block_size !=3D 64) ||
>       (riscv_cboz_block_size && riscv_cboz_block_size !=3D 64))
>    return -EINVAL;
>=20
> This will allow :
> 1. A Zic64b hart with 0, 1, 2, or 3 CBO extension and block_size 64
>   passes the validation.
> 2. A Zic64b hart with CBO extensions but block_size is not 64
>   fails the validation
>=20
> Thanks for the catch.
>=20
> I will fix that in v4.
>=20
> BR,
> Guodong

Hi Guodong,

Thanks for working on this.

This overlaps with my earlier Zic64b cpufeature patch[1].

One detail about the validation: I also don't think Zic64b should =
require all
cbom/cbop/cboz block sizes to be present and 64 bytes. I asked about
the intended Zic64b/Zicbo* relationship on the RISC-V unprivileged list,
and Greg confirmed that Zic64b does not imply support for any CMO
extensions[2]. It only has meaning for whichever CMO extensions are
implemented.

So I think the validation should only check the CBO block sizes for CMO
extensions that are actually present, rather than requiring all of
cbom/cbop/cboz to be 64 bytes.

Since the Zic64b cpufeature support in this patch overlaps with my
earlier patch, if you keep this work in your series and base it on that
patch, could you please put my sign-off credit for the Zic64b cpufeature =
part?

For example:

Signed-off-by: Qingwei Hu <qingwei.hu@bytedance.com>

[1] Link: =
https://lore.kernel.org/all/20260528141630.2741710-1-qingwei.hu@bytedance.=
com/
[2] Link: =
https://lists.riscv.org/g/tech-unprivileged/topic/question_about_zic64b_an=
d/119631059

Best regards,
Qingwei Hu

>=20
>>=20
>>>=20
>>> And architecturally, all the block sizes are one quantity: under =
Zic64b
>>> that value is 64, so the three must all read 64.
>>>=20
>>> Anything else is a misconfigured DT, and the kernel should not trust
>>> the zic64b it claims.
>>>=20
>>> BR,
>>> Guodong
>>>=20
>>> >
>>> > If a hardware platform implements Zic64b but omits an optional =
extension
>>> > like Zicbop, the riscv,cbop-block-size property might be absent =
from the
>>> > device tree, leaving riscv_cbop_block_size initialized at 0.
>>> >
>>> > This unconditional check evaluates 0 !=3D 64 as true, which would =
spuriously
>>> > trigger this error path and disable the valid Zic64b extension.
>>> >
>>> > Should this validation only enforce the 64-byte size if the =
corresponding
>>> > block size variable is non-zero, indicating the extension is =
actually present?
>>> >
>>> > > +             pr_err("Zic64b detected in ISA string, disabling =
as the cache block size is not 64 bytes\n");
>>> > > +             return -EINVAL;
>>> > > +     }
>>> > > +
>>> > > +     return 0;
>>> > > +}
>>> >
>>> > --
>>> > Sashiko AI review =C2=B7 =
https://sashiko.dev/#/patchset/20260603-rva23u64-hwprobe-v2-v3-0-5529a7b28=
384@gmail.com?part=3D8
>=20
>=20
>=20


