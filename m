Return-Path: <devicetree+bounces-133684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 750439FB8D4
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 04:08:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A20BE1883B99
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 03:08:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E365433A0;
	Tue, 24 Dec 2024 03:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="Q4Whlff6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1CAD364D6
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 03:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735009674; cv=none; b=fdkQLvnWr1N7Ui7PJPxfdB3kklZwtRa+KCwA8EPZTNeruS7nshKOJLCj/nAdK0uIy9UhqtBeaY5xxIXik2pcgg4+QDWf9Ym+flli+nqj77Y/I3xCkvzS52+1QXKoQkq2ybxU+beQed2X8u9t6lSctDljIPweVpGaoRcCG97qL6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735009674; c=relaxed/simple;
	bh=InG9yypQ9Imh/JUNwbwOd45TykNKtiV+/PWRRUnCjZk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oj1FiP7ua7k9wssh6R4yc/y1hGMb7aP7qV+Zyru2ExLyza3aY3Lvj+zYlRL8tNw647QXPq6giVgVgrtt4jbzzcYZJQZ/4rTwQmalZwUD+aMkQpzmh+Nkphrtv/uacXRDBff/SuGdL4RZG52H15E9HqM5bzvPz2kAXew2OthWx4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=Q4Whlff6; arc=none smtp.client-ip=209.85.166.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-844e61f3902so412207839f.0
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 19:07:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1735009672; x=1735614472; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MCGvf1sK2UK6+mlC2GdD8ZGpaisHOo2mW9F63kmNJXo=;
        b=Q4Whlff678yOyBGf6DU4u9w6l+ON5RFwMs3GqIIO2dIbZvW2ofaEODcfNSLjK9ZO/8
         ceirHSmy6DHyrftcIcQOWW0Qvk43AL9tpQPtTRQL0TWklC0gxxzLCkR5rzqpaNaGorz+
         kObJcMlWk5r/Zc8AbY0BLLHn4ClqwiHcWCs2EQfLjUfedDkvomlUQYx/kJpRPeuuM0sF
         aR/w919EDxkHaTJNFnHWOc6x7GYhrvp/5SqGu6A9zFzp1BE3bdg+rrO+DU20R1Fgi6fG
         V35LC+zTPICR8y07FLtiD8EQXw/yQ/RT0sp1XWkSaA2VACuQFvZ9DojXd8tejnGn/JJp
         tB3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735009672; x=1735614472;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MCGvf1sK2UK6+mlC2GdD8ZGpaisHOo2mW9F63kmNJXo=;
        b=je7Ay119DTNgCr9kj3zmtBAnPBxu4sV+2AiZRhkOmgbLwKN9KV8+HP4Sn56sodppw/
         NMiqcGOyLJ3LQa7c2d/MDErDjiKlY6kT77l+g1+muRxqSD4dMZHhLaNgfY06zKoB4xFT
         hKmX6AZl3pHZE8cd0e1OA9xtIGrLT36rp4aesAGJ8i5jQ6AAx222/QTzy8QWYHrzUvvT
         QKCmC7VuJc1qPpOeEHpIRqt7fp9wsYXWDkTpC5QZZbAOvmjBk8IHhZ73KjEfO7Rev27L
         yMAJXILtQJqjhOQEwyPcXrk2OmF8UkqIvjdwigZlW0BS4E2VBsddBI93USsnhnjGqbfn
         hbsQ==
X-Forwarded-Encrypted: i=1; AJvYcCU23vCmWjhQRRUonOOBkwEOfCVBQzU0e4pKbLdPI+oxgRoWccdqM2JOUEI8u7d6+0ZsF7CKcCcbb5cE@vger.kernel.org
X-Gm-Message-State: AOJu0Yytz9atbr18Q1WA/wmV5ApcYk5Ibm8Wc5vGm2kXJvWpPx7uN7Xx
	oWpyTFag7KfxGuzg1rb0a9Ql9P06pQrgpePT3LJ7pD9tlfKItakQFKk+32HDgwEegLKDWpWDrUF
	XvOSBJ4mKWr8xNXcyNQlLLwzLKccAUAiY+GRwew==
X-Gm-Gg: ASbGncvvs7N4LIjWs2gDYUunVMraK0oxgMoLHovIcpHIe4wWtF+qVn9GyOoQ/kWT3ru
	OGUwSMMJuIp9fCtLObNv8sxbhNOHbhI9DITxoUpRx
X-Google-Smtp-Source: AGHT+IESeLQDngUv9XeyadvfXJX/o5ptn+fUq1pwDN5RxkHnom78SMZJoHAwT/GCPME6gOfPJ9XBAS33rEOarEHZH5Y=
X-Received: by 2002:a05:6e02:b24:b0:3ab:1b7a:5932 with SMTP id
 e9e14a558f8ab-3c2d514f756mr118213445ab.18.1735009671734; Mon, 23 Dec 2024
 19:07:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241216084817.373131-1-apatel@ventanamicro.com>
 <20241216084817.373131-3-apatel@ventanamicro.com> <ZQZPR01MB097924AF0A246677CCA17CDF8A03A@ZQZPR01MB0979.CHNPR01.prod.partner.outlook.cn>
In-Reply-To: <ZQZPR01MB097924AF0A246677CCA17CDF8A03A@ZQZPR01MB0979.CHNPR01.prod.partner.outlook.cn>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 24 Dec 2024 08:37:39 +0530
X-Gm-Features: AbW1kvbK1Ge7yIHB59I44qUzyMXdhtcYAtj6nRedcxDEk_JvPGB-pTTor0edyOk
Message-ID: <CAAhSdy3n5HrYUUcA8QRUU96kCzFn8zkAZL+LQ7Up6Bk+68-cFQ@mail.gmail.com>
Subject: Re: [RFC PATCH 2/8] dt-bindings: mailbox: Add bindings for RPMI
 shared memory transport
To: Leyfoon Tan <leyfoon.tan@starfivetech.com>
Cc: Anup Patel <apatel@ventanamicro.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Sunil V L <sunilvl@ventanamicro.com>, 
	Rahul Pathak <rpathak@ventanamicro.com>, Atish Patra <atishp@atishpatra.org>, 
	Andrew Jones <ajones@ventanamicro.com>, 
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 24, 2024 at 7:49=E2=80=AFAM Leyfoon Tan
<leyfoon.tan@starfivetech.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Anup Patel <apatel@ventanamicro.com>
> > Sent: Monday, December 16, 2024 4:48 PM
> > To: Michael Turquette <mturquette@baylibre.com>; Stephen Boyd
> > <sboyd@kernel.org>; Rob Herring <robh@kernel.org>; Krzysztof Kozlowski
> > <krzk+dt@kernel.org>; Conor Dooley <conor+dt@kernel.org>; Jassi Brar
> > <jassisinghbrar@gmail.com>
> > Cc: Palmer Dabbelt <palmer@dabbelt.com>; Paul Walmsley
> > <paul.walmsley@sifive.com>; Sunil V L <sunilvl@ventanamicro.com>; Rahul
> > Pathak <rpathak@ventanamicro.com>; Leyfoon Tan
> > <leyfoon.tan@starfivetech.com>; Atish Patra <atishp@atishpatra.org>;
> > Andrew Jones <ajones@ventanamicro.com>; Anup Patel
> > <anup@brainfault.org>; linux-clk@vger.kernel.org;
> > devicetree@vger.kernel.org; linux-riscv@lists.infradead.org; linux-
> > kernel@vger.kernel.org; Anup Patel <apatel@ventanamicro.com>
> > Subject: [RFC PATCH 2/8] dt-bindings: mailbox: Add bindings for RPMI sh=
ared
> > memory transport
> >
> [...]
>
> > +
> > +examples:
> > +  - |
> > +    // Example 1 (RPMI shared memory with only 2 queues):
> > +    mailbox@10080000 {
> > +        compatible =3D "riscv,rpmi-shmem-mbox";
> > +        reg =3D <0x00 0x10080000 0x00 0x10000>,
> > +              <0x00 0x10090000 0x00 0x10000>,
> > +              <0x00 0x100a0000 0x00 0x4>;
> > +        reg-names =3D "a2p-req", "p2a-ack", "db-reg";
> > +        msi-parent =3D <&imsic_mlevel>;
> > +        riscv,slot-size =3D <64>;
> > +        #mbox-cells =3D <1>;
> > +    };
> > +  - |
> > +    // Example 2 (RPMI shared memory with only 4 queues):
> > +    mailbox@10001000 {
> > +        compatible =3D "riscv,rpmi-shmem-mbox";
> > +        reg =3D <0x00 0x10001000 0x00 0x800>,
> > +              <0x00 0x10001800 0x00 0x800>,
> > +              <0x00 0x10002000 0x00 0x800>,
> > +              <0x00 0x10002800 0x00 0x800>,
> > +              <0x00 0x10003000 0x00 0x4>;
> > +        reg-names =3D "a2p-req", "p2a-ack", "db-reg";
>
> reg has 5 entries, missing 2 reg-names?

copy-paste error, thanks for catching.

Regards,
Anup

>
> > +        msi-parent =3D <&imsic_mlevel>;
> > +        riscv,slot-size =3D <64>;
> > +        riscv,db-mask =3D <0x00008000>;
> > +        riscv,db-value =3D <0x00008000>;
> > +        #mbox-cells =3D <1>;
> > +    };
> > --
> > 2.43.0
>
> Regards
> Ley Foon

