Return-Path: <devicetree+bounces-139214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D5DA149D6
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 07:54:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5086C16AB87
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 06:54:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E5A81F7564;
	Fri, 17 Jan 2025 06:54:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=couthit.com header.i=@couthit.com header.b="uEnMZBrn"
X-Original-To: devicetree@vger.kernel.org
Received: from server.wki.vra.mybluehostin.me (server.wki.vra.mybluehostin.me [162.240.238.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0730A1F668C;
	Fri, 17 Jan 2025 06:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.240.238.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737096851; cv=none; b=PXmASUQPFpToBE+Tkn0za2UpbYBJQVaj1Um0ChQqIynGhw9PO7sUz0RNhXP65OQCjm54fvZxQwu7M34GvksBmF6bRMl9/GbGwAb/Cy4VEuypFry3d0pq60cVUBdNEkDgDilUW+tN9osofXYQWpRVX3vzbrVW4Eb8xFOYpMwi2rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737096851; c=relaxed/simple;
	bh=C5SAXh+D/SHlnbQC4f73tl/EVLXs/P49DxIhQlSqgOQ=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
	 MIME-Version:Content-Type; b=mif7X2lFiZ8Qe6J+h9V+nBN3LOWSlN6bppf+c3mmdzdk5t7HX8MmfsahtHqdoYX5pDrK8PtOIPYfeX93+AKERgd/bcPM6TdfqGJCtbXNuRSgApx1QEyVPbYpeQDb5EbRVaccqbjM6nbSX0WcNL2ro0/Ns3GtI/tjBX/5J1pw4dU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=couthit.com; spf=pass smtp.mailfrom=couthit.com; dkim=pass (2048-bit key) header.d=couthit.com header.i=@couthit.com header.b=uEnMZBrn; arc=none smtp.client-ip=162.240.238.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=couthit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=couthit.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=couthit.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:
	References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=RvEJx+iUj82UJ08IPqOji8YgVCxkuHaa+9nIn/7Qdso=; b=uEnMZBrnw7gp6XURWLlsVxmjNg
	im/ra1bEax1xyeeolARUmvEw/g+JudsS7F6NPB6lw2NgPUk85eSU3TyBQPsFv4llX2wo3PF+7UC9X
	krgk9pSPB1RjdWKaNKu9v3vLoAb+H1NxNC+QoFp8Dhf4dZgC+9QIQsOV/i+djoUdHAlQbzYd6Wgjs
	vprAHiQb3TxYsxSwQAL4svgn7bO+zWqOZoaCGHHkwcrxryZqhhrNb9Pc3SIKDcUL7ewroQujtq4vc
	6Nq4jhICh/ZEy9ICsSuXahWpexP4apNOYs1cmKpEt7Oq10cbOKLdygm4nIv2eN5R+1lescOLPmeAH
	VevxcQ8g==;
Received: from [122.175.9.182] (port=57873 helo=zimbra.couthit.local)
	by server.wki.vra.mybluehostin.me with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <basharath@couthit.com>)
	id 1tYgEx-0006NA-2h;
	Fri, 17 Jan 2025 12:24:00 +0530
Received: from zimbra.couthit.local (localhost [127.0.0.1])
	by zimbra.couthit.local (Postfix) with ESMTPS id 9BEE1178202C;
	Fri, 17 Jan 2025 12:23:53 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])
	by zimbra.couthit.local (Postfix) with ESMTP id 7A9981783FED;
	Fri, 17 Jan 2025 12:23:53 +0530 (IST)
Received: from zimbra.couthit.local ([127.0.0.1])
	by localhost (zimbra.couthit.local [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id ddwyJiRLDEq9; Fri, 17 Jan 2025 12:23:53 +0530 (IST)
Received: from zimbra.couthit.local (zimbra.couthit.local [10.10.10.103])
	by zimbra.couthit.local (Postfix) with ESMTP id 4A00E178202C;
	Fri, 17 Jan 2025 12:23:53 +0530 (IST)
Date: Fri, 17 Jan 2025 12:23:53 +0530 (IST)
From: Basharath Hussain Khaja <basharath@couthit.com>
To: Rob Herring <robh@kernel.org>
Cc: basharath <basharath@couthit.com>, mpe@ellerman.id.au, 
	thomas weissschuh <thomas.weissschuh@linutronix.de>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, saravanak@google.com, 
	danishanwar <danishanwar@ti.com>, krishna <krishna@couthit.com>, 
	mohan <mohan@couthit.com>, parvathi <parvathi@couthit.com>, 
	pmohan <pmohan@couthit.com>
Message-ID: <2089813158.341858.1737096833060.JavaMail.zimbra@couthit.local>
In-Reply-To: <CAL_JsqLLGW_o9i6a5wcUj=Z=4nL-GhzHwAQMFtQkb9OSHuSgTA@mail.gmail.com>
References: <87mskbqher.fsf@mail.lhotse> <20250108140414.13530-1-basharath@couthit.com> <CAL_JsqLLGW_o9i6a5wcUj=Z=4nL-GhzHwAQMFtQkb9OSHuSgTA@mail.gmail.com>
Subject: Re: [PATCH] of: address: Unify resource bounds overflow checking
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailer: Zimbra 8.8.15_GA_3968 (ZimbraWebClient - FF133 (Linux)/8.8.15_GA_3968)
Thread-Topic: address: Unify resource bounds overflow checking
Thread-Index: j8VwIhKXO53jYYVbH1cgOpEQbMygPw==
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.wki.vra.mybluehostin.me
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - couthit.com
X-Get-Message-Sender-Via: server.wki.vra.mybluehostin.me: authenticated_id: smtp@couthit.com
X-Authenticated-Sender: server.wki.vra.mybluehostin.me: smtp@couthit.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 


>> >> Thomas Wei=C3=9Fschuh <thomas.weissschuh@linutronix.de> writes:
>> >> > The members "start" and "end" of struct resource are of type
>> >> > "resource_size_t" which can be 32bit wide.
>> >> > Values read from OF however are always 64bit wide.
>> >> >
>> >> > Refactor the diff overflow checks into a helper function.
>> >> > Also extend the checks to validate each calculation step.
>> >> >
>> >> > Signed-off-by: Thomas Wei=C3=9Fschuh <thomas.weissschuh@linutronix.=
de>
>> >> > ---
>> >> >  drivers/of/address.c | 45 ++++++++++++++++++++++++++--------------=
-----
>> >> >  1 file changed, 26 insertions(+), 19 deletions(-)
>> >> >
>> >> > diff --git a/drivers/of/address.c b/drivers/of/address.c
>> >> > index 7e59283a4472..df854bb427ce 100644
>> >> > --- a/drivers/of/address.c
>> >> > +++ b/drivers/of/address.c
>> >> > @@ -198,6 +198,25 @@ static u64 of_bus_pci_map(__be32 *addr, const =
__be32
>> >> > *range, int na, int ns,
>> >> >
>> >> >  #endif /* CONFIG_PCI */
>> >> >
>> >> > +static int __of_address_resource_bounds(struct resource *r, u64 st=
art, u64
>> >> > size)
>> >> > +{
>> >> > +     u64 end =3D start;
>> >> > +
>> >> > +     if (overflows_type(start, r->start))
>> >> > +             return -EOVERFLOW;
>> >> > +     if (size =3D=3D 0)
>> >> > +             return -EOVERFLOW;
>> >> > +     if (check_add_overflow(end, size - 1, &end))
>> >> > +             return -EOVERFLOW;
>> >> > +     if (overflows_type(end, r->end))
>> >> > +             return -EOVERFLOW;
>> >>
>> >> This breaks PCI on powerpc qemu. Part of the PCI probe reads a resour=
ce
>> >> that's zero sized, which used to succeed but now fails due to the siz=
e
>> >> check above.
>> >>
>> >> The diff below fixes it for me.
>> >
>> > I fixed it up with your change.
>>
>>
>> This commit is breaking Ethernet functionality on the TI AM57xx platform=
 due to
>> zero byte SRAM block size allocation during initialization. Prior to thi=
s
>> patch, zero byte block sizes were handled properly.
>=20
> What driver and where exactly?

We found an issue while developing the driver [1] and more specifically in =
[2] (lines 313-327), but it looks like this is a generic issue which can bl=
ock 1 byte of memory, when a zero size request has been initiated for the r=
eserved region.

static int __of_address_resource_bounds(struct resource *r, u64 start, u64 =
size)
{
    u64 end =3D start;

    if (overflows_type(start, r->start))
        return -EOVERFLOW;
    if (size && check_add_overflow(end, size - 1, &end))
        return -EOVERFLOW;
    if (overflows_type(end, r->end))
        return -EOVERFLOW;

    r->start =3D start;
    r->end =3D end;

    return 0;
}

Though we have the start address handling already in place above, we do see=
 an issue with the end address, because there is an unconditional +1 afterw=
ards in resource_size() API below which is responsible for reserving the ex=
tra byte

static inline resource_size_t resource_size(const struct resource *res)
{
        return res->end - res->start + 1;
}


We have 4 ways of fixing it.

Option 1: Modify the function to handle the size zero case

diff --git a/drivers/of/address.c b/drivers/of/address.c
index c1f1c810e810..8db6ae9a12b8 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -204,6 +204,12 @@ static int __of_address_resource_bounds(struct resourc=
e *r, u64 start, u64 size)
=20
        if (overflows_type(start, r->start))
                return -EOVERFLOW;
+       if (!size) {
+               r->start =3D start;
+               r->end =3D end - 1;
+
+               return 0;
+       }
        if (size && check_add_overflow(end, size - 1, &end))
                return -EOVERFLOW;
        if (overflows_type(end, r->end))

This seems to be the simplest solution.

Option 2: Handle in resource_size().
static inline resource_size_t resource_size(const struct resource *res)
{     =20
          return  (res->end =3D=3D res->start) ? 0 : (res->end - res->start=
 + 1);
}
There are plenty of places where we are using this API and there is an assu=
mption that the end address should always be start + size -1. We are a bit =
unsure about the side effects of this change.

Option 3: Handle in sram_reserve_region().
We can avoid calling the resource_size() API and handle size zero as a spec=
ial case. We are a bit unsure about the side effects of this change as well=
.

Option 4: Handle this in dts [2] with non zero size. Estimate the approxima=
te size and update that value in dts file with extra buffer. However, as in=
dicated in [2] in lines 313-327, the size is not known apriori and the actu=
al size is only known in runtime. So if we set some size for this buffer, t=
hen this will always be blocked and may or may not be used subsequently.

[1] https://lore.kernel.org/all/20250109105600.41297-1-basharath@couthit.co=
m/
[2] https://github.com/torvalds/linux/blob/master/arch/arm/boot/dts/ti/omap=
/dra7.dtsi


Thanks & Best Regards,
Basharath

