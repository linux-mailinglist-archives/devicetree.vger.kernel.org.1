Return-Path: <devicetree+bounces-259071-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kAWRKYmgc2lqxgAAu9opvQ
	(envelope-from <devicetree+bounces-259071-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:23:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0050C78711
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:23:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 325B73096994
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:15:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F46B2EBB83;
	Fri, 23 Jan 2026 16:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="d+knp8cN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69C32874FB
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 16:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.180
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769184929; cv=pass; b=d4jyTOKbuM8W/t7ArLWTk0Bcw+69TknJNExruvsf3ckpWMQv5fJlobe53BSyM5/D/OVXM8Fc4Btq5nsApnsR6e6fG+mf+/78UzT089gxyIOI0t3+q4MGCssCalkhzH7I75bTRAmE+gUiGXtoBE3iK06zUD9JugBZzBDFksQv0vw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769184929; c=relaxed/simple;
	bh=ULo9/7nEk6hL4PrJCYwZVROHGT49nj8c1aEMZ+/vAQs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ErhaFBYYrS/7+7AvrH6BlvR3YbsuFGTy1xA1xWgqn7o+2/NNt7dP4lkPl8vOxd24DWAu4gNaTzl+1HICOccGMKTU0egQKPxNHLJXecrlMn8568YVaiNcEnBC0AnYT8ObWbvmNjbCX/ZFThN9s009QzMFAbnsve4jG9tg5szMmMo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=d+knp8cN; arc=pass smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-78fc4425b6bso20368187b3.1
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 08:15:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769184927; cv=none;
        d=google.com; s=arc-20240605;
        b=F5dOV/VpX+muhs+7CY9/VbI8o8bTz0XTvmbzloC2BhGC7uatw0rSfsyR9yNTQWByuA
         CK9ll+2atDy/UmFAaqb5HoiKZE1/9AyjfMdxfnh4iIR6TUxIClAMIa5waHH/3lb4UpHD
         wW6+EiKgdY1+IlKpl9AX7m2HBWrRyBw2DTNgcYOY2ZjFzH9GKMkBE9PM0EV9JeyqhWhY
         CohXBVYRULxEAvWUPSk2oXdG29eLQt6TvZqRAbNxr2XUwhtZMr3/zevE2SzVZYjWX9fw
         rFh/diDOG3X6BW7kBGiClcvuluIwNj7Mddm1X3RSooCvHHOpYQ7qLMGiXLRRf4i8DepB
         Zgiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=+bZRUnNeGrRNpaGcouolNUcM8xSpXsG3h0Z9VUZ9+Rk=;
        fh=I+D455V/PzJRjdNk7GzOFOkJRBF2M7KnXgtr5gm13cM=;
        b=KMxl4SFRM7B5lISEEmpBGu6YztYNYpMlWOuROQsJzkliLtsRwkwr8+lKRhMSbWWuJ9
         S5Cs3s9jayyhAIOFWAVmuGMaObK1l0jRuLhsDe7XI/AfbOhT48O+rvxEFDE94NLdoGQA
         UP+H9di8TButoXRsND0nlWu7yOd8NxJruKEiazQgGt9bhdrP6neVBDuniGz9//34Jdl8
         THczrrdewbe0gS+NO9E/I2G28tl+Eexq2AeJPwWimNFJrqOuUV7xSftrkwsXOACQ2m0e
         z0zNymkg/XL2O+EhpbMJ6vhTqE/rZ4gepxAnFSEu65V096WN1YXyJggiDIp2PxYUpsmt
         MoyQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1769184927; x=1769789727; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+bZRUnNeGrRNpaGcouolNUcM8xSpXsG3h0Z9VUZ9+Rk=;
        b=d+knp8cNgo+Bgqmt1xea3LtlSLSQxgY8pjIfn4Iq3rhX4dyqqUe5VLwjt22NOvZ9VW
         J4zoPFDES+rtO41V/gIX+icd3geIWrNZbBM1k9xDrzQxsXhqZrut4+VGNowBecOyl8gz
         vHJFEKsswCKSZYRUTM4hycKl61uTJyankKqncQpoPGefQ/X/BqCLsZDvWVZc0qmtbDzw
         7ZIhhLrpJiilf1Ok1huGDu1tPfqqmmhHVfmnfHsENcWLC/syHD9kPnRDPBdqLE3EwqiO
         Jyb4P0dYNnCCdtwr2F7Gi7MyaR1dhXLuiQjQOJSuspGxixPfxaJfzTnpeb04TTqBrBY0
         ICVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769184927; x=1769789727;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+bZRUnNeGrRNpaGcouolNUcM8xSpXsG3h0Z9VUZ9+Rk=;
        b=MOVL3mZ1hP9NA5OM2CGJgoXgDw9GRyasO6rfPLSk8+cYsz5QAk42QDeAAic46qB4yP
         wJ5dgTJe12rfMF6+tfTQu1r2CrZ0VdQzlAjYEpwY1bPMgNWwFi2T+XyfUDGiFyjvCoM2
         H/0QdCtUanVOdMWXk+qNXPgD4yzyEueSBCufEVVA428xqFmDIBK9Cjhxo6EZDeHGweMw
         25Ng9dMs/S1LCDzQBlRxeV+nXlyCFDkxhpvQAA+uyNM4VX7PIS2bZfgrIRujo4lB1NwQ
         SjmPXgVgWV8R9bRuL/t7AwxL2/qUSWA4oW2m+NRHJjeFwI4BhDnoXbgq54u2QG3H5mSp
         NyfQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1eGEE7OcYVdSoBReTnLnSnp0oJHun5uilUGkUFwsVV8QRadFYTaZC5zJ2Mv0mqJ6U7tF+XCu0nVU4@vger.kernel.org
X-Gm-Message-State: AOJu0YxgrA3JKsCHSidPs3ePTalkb5md6gftVPBDexhIjzR02m9crjol
	8RS5Tl2bvMBSysEVdfuw+NYJMBXmSQVdKNftJ0ghzYPLKOqvls9Jd1RG51tMui1A32+v0DwrbDa
	r9rmQUtWIi1SkVk0wbONe913Mc6blOWCNPzNN1Kzv2A==
X-Gm-Gg: AZuq6aLAVgoHGp3UeUlsZE/qi0khk6cIbvv9aGSAL+S27zOgV8Rsnh+FyxVPI1UQeue
	ThjCvdNwozyygjOcmu4H02bSPXzvEvqOqQ5vydQ0oNfg2L7YDjjqxpjxgv7cOv8zWoSh6MSj/Pd
	SX6ZHCezFfWzxnFg73L3d8UjG/8zih9jbDgotEqrY/hglTzi6em7TAp+tQqDUpAjlK3XKOUPFAH
	EYok4N7tdAx97bmrwfjwxCOlp2jNe2ac9SbS+leiUOYfxvBNESxGY9XeVH4ZLAmG/qsEE7NgZk5
	0wVhVJ5bzkAZpjLojhEJdHrljythAZ4JVGEuS6e7YZk2OkoeS/3dKDdwjT9uRqAYLUbBglk=
X-Received: by 2002:a05:690c:39c:b0:793:bae9:9295 with SMTP id
 00721157ae682-79439925edfmr27856807b3.31.1769184926791; Fri, 23 Jan 2026
 08:15:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260122-atlantis-clocks-v2-0-c66371639e66@oss.tenstorrent.com>
 <20260122-atlantis-clocks-v2-2-c66371639e66@oss.tenstorrent.com> <1adc068bbf1a15b1b10651f6ad9385415f6d4227.camel@pengutronix.de>
In-Reply-To: <1adc068bbf1a15b1b10651f6ad9385415f6d4227.camel@pengutronix.de>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Fri, 23 Jan 2026 10:15:15 -0600
X-Gm-Features: AZwV_Qi6CqkCPOD14PwEW74h_hED-jEGhbBNZe3VbRvLaoqSVWwFH86aFXA3uP0
Message-ID: <CAEev2e_6PePu3omq-Zf1R-8TYikgz9V1cp6cwn0nZ8LaPHaJ2A@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] reset: tenstorrent: Add reset controller for Atlantis
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>, Joel Stanley <jms@oss.tenstorrent.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, joel@jms.id.au, 
	fustini@kernel.org, mpe@kernel.org, mpe@oss.tenstorrent.com, 
	npiggin@oss.tenstorrent.com, agross@kernel.org, agross@oss.tenstorrent.com, 
	bmasney@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259071-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,pengutronix.de:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tenstorrent.com:dkim]
X-Rspamd-Queue-Id: 0050C78711
X-Rspamd-Action: no action

Hi Philipp,

On Fri, Jan 23, 2026 at 7:00=E2=80=AFAM Philipp Zabel <p.zabel@pengutronix.=
de> wrote:
>
> On Do, 2026-01-22 at 16:36 -0600, Anirudh Srinivasan wrote:
> > Adds Atlantis Reset Controller and auxiliary device definitions for
> > reset to share same regmap interface as clock controller.
> >

> > +     if (data->active_low ^ assert)
> > +             val =3D mask;
> > +     else
> > +             val =3D ~mask;
>
>                 val =3D 0;
>
> The ~mask bits will be ignored anyway.

Ack. Will change.

>
> struct regmap;
>
> > +
> > +struct atlantis_ccu_adev {
> > +     struct auxiliary_device adev;
> > +     struct regmap *regmap;
> > +};
> > +
> > +#define to_atlantis_ccu_adev(_adev) \
> > +     container_of((_adev), struct atlantis_ccu_adev, adev)
>
> Please use an inline function instead of a macro.

Ack.

>
> > +
> > +/* RCPU Reset Register Offsets */
> > +#define RCPU_BLK_RST_REG     0x001c
> > +#define LSIO_BLK_RST_REG     0x0020
> > +#define HSIO_BLK_RST_REG     0x000c
> > +#define PCIE_SUBS_RST_REG    0x0000
> > +#define MM_RSTN_REG          0x0014
>
> Why not move these into reset-tenstorrent-atlantis.c, they are not part
> of the interface between clock and reset drivers.

We were considering putting register offsets like this in separate
header files that are dual licensed. In that case, is it okay to put
it here?

>
> regards
> Philipp

