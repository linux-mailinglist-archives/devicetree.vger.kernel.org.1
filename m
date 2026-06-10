Return-Path: <devicetree+bounces-309372-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iL4YKAXHKGoCJgMAu9opvQ
	(envelope-from <devicetree+bounces-309372-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 04:08:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AFE665642
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 04:08:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bytedance.com header.s=google header.b=Nangwpxd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309372-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309372-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=bytedance.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 235D930578DE
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 02:03:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CCC933F5B8;
	Wed, 10 Jun 2026 02:03:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79C94283CAF
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 02:03:14 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781056996; cv=pass; b=sUdKWiAqjwq24dZkeP6snJWqGfsqhujH2JuaF4rfUYbf/Dcad6JP3n7JDvCK1YGIGTWJEPjV33fqcx3PUbFqXKu3jKCkYnVFwQW78+skNcTHfWDE5T3d2ncqiWF+VTa5is8SM/AA7vdo4ZYM3hNilME7gj5fE2Z1Y4Pi3XCxrfo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781056996; c=relaxed/simple;
	bh=mN0qO1W4eKttCnWZt65WuENyWYP5YOyP3GTRiHgHM8E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KsfmPltKMZApcOLniaEdl3bywLgt8dIaA+WnDmdqQEkEUMgSr3MPQzucZ4gqYE6nAMFJzDgvDm2DT4wUj5eXOlioKhFzKKJzpuPn7xWFM8HbD/MGUUfhGlOGgXvcQNY4yQMWOBdsZv8uHqgHbUSzHV0yc6Ljpt37M+C889ac5Zg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=Nangwpxd; arc=pass smtp.client-ip=209.85.210.54
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-7e6e41cf7aeso3776185a34.0
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 19:03:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781056993; cv=none;
        d=google.com; s=arc-20240605;
        b=U7/Amg/Q+tWCJirG7kdsIPtt9twuUXX5hNNhlPSJjkrMCRvR4AAlWmVlKr2QS8FshX
         3SLZ8hphZOBu5dnK8dm2aDxcyuYQ2m6U8h8obb12wSE/GFZCFfQnFiavBvXkqBkAioWV
         I2WUiE4qCkCLb3/04gcDmRiecWEpaGi90NPDFWpQRh6pS5ew08or6QD4z/tgF/9c2e4r
         MUoehf7UCRBso8UBHoaEykKfO/hoX9rZZXnmCq1c27IAEtkZBG/cyeWb7XHVp6Pf6+0c
         zV4uE3BNmLglbhkyYgSoJ5AAxl5mR5vdwB4sdnm8Gx4bvj0t/XkR4CiS4Fe+nMPn5fwN
         rymg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=UVLKzHHipOPmzpzXCQLBwTllh/qtjlZjlrowYfX4R2g=;
        fh=vgRIRFSidG8ioLZH1JjkiCo/HNuc4QQ98AVVceJANQM=;
        b=J6u7QVHKpbPyEQOeWNxghieid5fFvfwZ5qO6r6p5QQzDtrKpmDIMhrP5K/VRFnPgXP
         StYah+EUoviTupt4idUAckD7fllBxWfflVeYp1cyb+Enpoikrv7UOOyXO4zKie2NphME
         mjXMfeS1wWqq0L9voRd6riqLiRdKOFy+6BX4DPBcUQYVjKK2U9J9SgHLBk5vyqbqsm3A
         Pv8jAkRA1yCjfbGKOpfSja+8V1Z90NTCUpRlW/Xr2I458/49ZlJjftISDXdSAjZLKcAr
         Tb25mBigJd1rDjc5RoarbfFmZOOA4lEFUH4eEw9+fTAQuZRVOqaokqPtn/GLgyUS8tj3
         pGHA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1781056993; x=1781661793; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UVLKzHHipOPmzpzXCQLBwTllh/qtjlZjlrowYfX4R2g=;
        b=NangwpxdI9Oik0Z+Ye+nGyzNiTQ/j4oL8iWTGGERh6s58Xs4z9P8mMu6EZXmUHBML7
         BVx5ek46JjoTLKNxEs2e+ufPGEufQM7fVg3z/W7ABHOtqp6F9m0Uxegq4ezuNCzK9alr
         6xxlZgf7k/I3lLq6b8tYe+NqImYBMJQa4K/Rl2vCGrd7eMh+CGHLxZW0rE6GF96SXmLk
         2DQgNMQE2zeu1ZxoWCmC1uoSwcWHrmREypzfcV57NzNoLFac8jxPUpiH0KZpcwAca8LW
         lUmpX3aPaf6jMPufhXB0+kLG5SEyA/wPjfIvbLLHP9ra/JoeerVJIKaIvtPvup2j7e3V
         j42w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781056993; x=1781661793;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UVLKzHHipOPmzpzXCQLBwTllh/qtjlZjlrowYfX4R2g=;
        b=EeXzPOkMGbIWWWLajmcDevxHtEViVzrIc+T357iWJEdYQQX0AnFFHcfPd2x3wHiW2R
         C/6Q1TG1Olxr0+yDF4FcyfEedtI2H+3hODJTusQYz65SWG/sXEY1TlKT14MR9e4ioZ8m
         Rfdp0ykHph+QuYhlK1ZOtf3FZ9KaQ/Smea/akGrp2lsKclREUBSX9/2XAySRqJRZCwA4
         UH4aWD6VNiuWI/zeWSPhS67BC00us66MLjvw0zjICqU742iz4EdRaAhKZWaNXKhZBPtb
         y5bAuHdvbwlUX2xw/MY51B7KlMhgz/S/hikjz8nmIY7SayaVPnfEq17qHwWVZfpCAggY
         EvXw==
X-Forwarded-Encrypted: i=1; AFNElJ9gciwkg6S1XCrBajoHeBZbH258Ii1JcPbgpyjFO5RQtJX+pvTPFaDIYQAoVp+UawwNSn98ElxXDdTY@vger.kernel.org
X-Gm-Message-State: AOJu0YwTyEY04tLr3e9FZICIX+4Xx+NbWERFI+1Q6X+rooYDHyRYi0jh
	ZNQxw5rgQbM85BG/nqK9blpPfTaMjCEw3+eq3N7P2lj0VvZpWSlo2bIgodRrlS5VBCVeZVAa9tV
	QvR2lMBOCNmhtI1egHYJQhhXbO6AZlux1WBCVNxjBvw==
X-Gm-Gg: Acq92OHAsekXigiF2wzrh6+HigU5VHMIm7uXx3jrqhWOf5NB8nzFwk2CkCd4FiusUTo
	D/zJ8mUKaFaduojJmkCpwFfKiix7yMY4EjV0SDufDsje6WjYNWA2a98ATwmlBRcuWn49siNJ75T
	BZh+t36wRGcEeIHVFAfH+9aLaDdIkIOO1KfSAKYi52n1j8c7llGGvcIPuCRLlgCrqRIM+A0iCDK
	LbDguXqs8lftWyKpXp2d/wpr3s73aVIwIL/Mp1YbdlPJ6zS47I6OQzbn0g7ecrqs0GLWacIinKT
	PzkRiqqbN01TtdzZi3Kitwor3i3Wkx6Ls4A=
X-Received: by 2002:a05:6830:81d8:b0:7e7:31c:c121 with SMTP id
 46e09a7af769-7e70c78fc87mr14626623a34.12.1781056993185; Tue, 09 Jun 2026
 19:03:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260609130021.99899-1-cuiyunhui@bytedance.com>
 <20260609130021.99899-2-cuiyunhui@bytedance.com> <20260609-washboard-fantasize-ddf0a9752df8@spud>
In-Reply-To: <20260609-washboard-fantasize-ddf0a9752df8@spud>
From: yunhui cui <cuiyunhui@bytedance.com>
Date: Wed, 10 Jun 2026 10:03:01 +0800
X-Gm-Features: AVVi8CdRlV_dg_ea73FD1rM-qQA_K4_GqKNrryZYAfOnnfoVb9mqcROreM8Nqss
Message-ID: <CAEEQ3w=C_z8awtevLhceTgqLW79ONzKTm5MRJeoSTLB9q_CeiQ@mail.gmail.com>
Subject: Re: [External] Re: [PATCH v3 1/3] dt-bindings: riscv: clarify Svadu
 boot-time behavior
To: Conor Dooley <conor@kernel.org>
Cc: akpm@linux-foundation.org, alex@ghiti.fr, andrew+kernel@donnellan.id.au, 
	aou@eecs.berkeley.edu, apatel@ventanamicro.com, apopple@nvidia.com, 
	atishp@rivosinc.com, baolin.wang@linux.alibaba.com, cleger@rivosinc.com, 
	conor+dt@kernel.org, debug@rivosinc.com, devicetree@vger.kernel.org, 
	guodong@riscstar.com, hui.wang@canonical.com, krzk+dt@kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	liu.xuemei1@zte.com.cn, namcao@linutronix.de, nick.hu@sifive.com, 
	palmer@dabbelt.com, pincheng.plct@isrc.iscas.ac.cn, pjw@kernel.org, 
	qingwei.hu@bytedance.com, ritesh.list@gmail.com, rmclure@linux.ibm.com, 
	robh@kernel.org, wangruikang@iscas.ac.cn, zhangchunyan@iscas.ac.cn, 
	zong.li@sifive.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[bytedance.com,quarantine];
	R_DKIM_ALLOW(-0.20)[bytedance.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-309372-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[cuiyunhui@bytedance.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:akpm@linux-foundation.org,m:alex@ghiti.fr,m:andrew+kernel@donnellan.id.au,m:aou@eecs.berkeley.edu,m:apatel@ventanamicro.com,m:apopple@nvidia.com,m:atishp@rivosinc.com,m:baolin.wang@linux.alibaba.com,m:cleger@rivosinc.com,m:conor+dt@kernel.org,m:debug@rivosinc.com,m:devicetree@vger.kernel.org,m:guodong@riscstar.com,m:hui.wang@canonical.com,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:liu.xuemei1@zte.com.cn,m:namcao@linutronix.de,m:nick.hu@sifive.com,m:palmer@dabbelt.com,m:pincheng.plct@isrc.iscas.ac.cn,m:pjw@kernel.org,m:qingwei.hu@bytedance.com,m:ritesh.list@gmail.com,m:rmclure@linux.ibm.com,m:robh@kernel.org,m:wangruikang@iscas.ac.cn,m:zhangchunyan@iscas.ac.cn,m:zong.li@sifive.com,m:andrew@donnellan.id.au,m:krzk@kernel.org,m:riteshlist@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bytedance.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cuiyunhui@bytedance.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linux-foundation.org,ghiti.fr,donnellan.id.au,eecs.berkeley.edu,ventanamicro.com,nvidia.com,rivosinc.com,linux.alibaba.com,kernel.org,vger.kernel.org,riscstar.com,canonical.com,lists.infradead.org,zte.com.cn,linutronix.de,sifive.com,dabbelt.com,isrc.iscas.ac.cn,bytedance.com,gmail.com,linux.ibm.com,iscas.ac.cn];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,kernel,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bytedance.com:dkim,bytedance.com:email,bytedance.com:from_mime,vger.kernel.org:from_smtp,mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 01AFE665642

Hi Conor,

On Wed, Jun 10, 2026 at 12:09=E2=80=AFAM Conor Dooley <conor@kernel.org> wr=
ote:
>
> On Tue, Jun 09, 2026 at 09:00:18PM +0800, Yunhui Cui wrote:
> > Clarify that systems which advertise only Svadu have hardware PTE A/D
> > updating enabled at boot, while systems advertising both Svade and Svad=
u
> > must enable Svadu explicitly with SBI FWFT.
> >
> > Signed-off-by: Yunhui Cui <cuiyunhui@bytedance.com>
> > Reviewed-by: Qingwei Hu <qingwei.hu@bytedance.com>
> > ---
> >  Documentation/devicetree/bindings/riscv/extensions.yaml | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/=
Documentation/devicetree/bindings/riscv/extensions.yaml
> > index 2b0a8a93bb214..b09888e9988de 100644
> > --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > @@ -294,10 +294,10 @@ properties:
> >                 of the PTE A/D bits or page faults when they need updat=
ed.
> >              2) Only Svade present in DT =3D> Supervisor must assume Sv=
ade to be
> >                 always enabled.
> > -            3) Only Svadu present in DT =3D> Supervisor must assume Sv=
adu to be
> > -               always enabled.
> > +            3) Only Svadu present in DT =3D> Supervisor must assume Sv=
adu is
> > +               enabled at boot.
>
> Commit message is missing an explanation of why this behaviour change is
> not problematic. Although, to be honest, I am not sure what the changed t=
ext
> actually means. If only Svadu is present, then the hardware doesn't suppo=
rt
> Svade, and therefore Svadu would never be anything other than enabled so
> changing the wording to specify "at boot" seems less clear?

The "enabled at boot" wording came from Andrew's feedback on the previous
version: "always" is a sensitive term here because ADUE is writable when
Svadu is implemented, and ADUE=3D0 behaves as though Svade were implemented=
.

Would this wording work?

3) Only Svadu present in DT =3D> Supervisor must assume hardware PTE A/D
    updating is enabled by default.

>
> >              4) Both Svade and Svadu present in DT =3D> Supervisor must=
 assume
> > -               Svadu turned-off at boot time. To use Svadu, supervisor=
 must
> > +               Svadu is disabled at boot time. To use Svadu, superviso=
r must
>
> This change doesn't actually do anything, "turned-off" and "disabled"
> are the same thing - although the latter is more desirable wording I
> think. I have no problems with this portion of the patch.
>
> >                 explicitly enable it using the SBI FWFT extension.
> >
> >          - const: svadu
> > --
> > 2.39.5
> >

Thanks,
Yunhui

