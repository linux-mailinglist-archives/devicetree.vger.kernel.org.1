Return-Path: <devicetree+bounces-271648-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIaUD6q4qWlEDAEAu9opvQ
	(envelope-from <devicetree+bounces-271648-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 18:08:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 999F3215E06
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 18:08:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42F89308CE73
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 17:08:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C81B23988F5;
	Thu,  5 Mar 2026 17:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lC/DyY4M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 923EC19DF62
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 17:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.160.182
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772730494; cv=pass; b=csx1mXxvifxVjdUUx2Vg/D8QMiOb5usujfv2Oz7vieJub1RFqBpgYXu6rCFE9lGD9EnIkvKO1C09E3AgoiA/aBMjaeLDlVcIV0XRqkNz8IbEjK8Qq5mK3mwzY7/gLrpW3Wn3YhiBVcHKi3+5AL9J4nNe8OVEDDlRfPmPDcnSi98=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772730494; c=relaxed/simple;
	bh=B2ujzyY2/ovMPvqla3Q3Zb7PcPANOQ5xzuWTHo4Fvxo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tIDABfMn6PsZd+v5yxc2E6cEPgs7UiHpp8ZLba8BXlX+fE9VXDRKutbopEIXIvEjrhpyTKCxS1Ecpvonx5Fmc+5mJ2KaqnZ3Iu2LcdjTU+qvIxSdIEoiGVQWJW8LjlUqSR1xYdFBSrVDnUNhBYcsrUWEfU//cg3Y4+ExXrqOfIk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lC/DyY4M; arc=pass smtp.client-ip=209.85.160.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-506a297c14bso70458981cf.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 09:08:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772730492; cv=none;
        d=google.com; s=arc-20240605;
        b=E1HJBIIi2iNzrhDVPXYIwUxDxRdbSr2d/4GapNhPqnBRzolRP0r5HMFHOvT4HsovhS
         ThscHpizmyd12I2IHHsvFciZGe44SdVVNhQ+2KgOS3e1F3osJkU7xna1Az8jjhoF/xZp
         /8nBcv3lv6BISuA4GRH3Bdwoc1OZMDgE3Myvo4wEv4nmjFmsasQ3KBKOYtqyIOdXuiAz
         USSNqdkU0h98ZGQ0QtLqTOvu77vfrhBQdPieb+jCrzZVDm8UUpEjmCqEzBf3EMnJjizv
         Y9JbbWvlst8jdK+3AIO8dLoYrnvjwqLiwk6iIvqNUGqDY2mpos4BvZu3elyFA33ybYzT
         Kunw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bmtEzP0I0EuHpFfZp70CExB77nf4cTFGwGb65ql/OUY=;
        fh=ZLjVMPRvgjhVlCFmIc9resOKe8xPVZR/n31ZwPIGEx0=;
        b=dVbW8UntOj+gTW04IPRG/bxYg42/Io231YB4HyJn1jOOqANH4Sk1IBZaYt1UFeV0vw
         Dr4FIjA+LdPVRGyrFu8R2jBvTlc6BL22uJfpRZpGDf3n36fN6Lz35Rz6OTlNf051+5FU
         Z/ws4jZGTmTPFQWC1EC9Hb4Y3kTvwgK1LwVMZedmq1lmm37qpbxiLG+voxsXPZ1xoXPD
         uedGQamSim4sXT93ajrHYFV0jDIKgW1LJXS6B9T3twmwvcb3yzYhk5pYslOH1XH3pFqk
         +qpaxx3TbIngTxdEsD56/2Nw9A52+52LY6Qe1rCHDhvbP7vc1GUEOZWr3XAPQfiK0Wmt
         nQyQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772730492; x=1773335292; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bmtEzP0I0EuHpFfZp70CExB77nf4cTFGwGb65ql/OUY=;
        b=lC/DyY4Mfa4jpiyQmd0emah+JgdGoziHvk1WNZ3+eiBPbAFSZPldIuf/sc9mEkGC3X
         n6yrMwwfHRlCvgm9j+UxuNNidnnWM4Q8zsHino8hFYif8epf7AN7+x0nOkr8EoHRGnLE
         mmmGWV6E+JJuZEaOPc0C6lCRVY1kud9InYWivY9PZ1ICVbiz83mFvGgSJroMcBANnTFK
         QDMX0plhXUWXQbtJrl5VE2Z5KrRZWCkhE2K/1/phHve4Qtzk7E8zTmSG26HUXYUG8Hn9
         Z9lcznfU62GDd5Jl4OGXdj/MVryQUUelx9eMGSAIYciiaHpxhoAjdq0OYL+57GNIK+RP
         8SIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772730492; x=1773335292;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bmtEzP0I0EuHpFfZp70CExB77nf4cTFGwGb65ql/OUY=;
        b=tU3ZHtOFEZYBIzZVq9cPxEIbI/dBOby6KbheESjXx3V+pc1EG454UJR+IpJR2v9Uya
         L21BnLr5sIDhzF9VBZvcAfngJ53cgOPJpQCzWasZ5JD0LrzmON3r7Dpy/s+Smxan+vOV
         zYo3PxUgDHz/21SLaMRRkVOL7uKFf9iuvP1bb9H7S5cBjKWx5lH82kjimz32gMypaohg
         0ZHJHZ7TPwoiy7rk1TomsZwUMzWxGrEye0U9ICurYOJ774QW5CNDYh9L9UVz3N8aOqQY
         LNgrt7DULUuT+fKeCtpbL/+MLvfyrUa62OXFM6CtNUsw2PbXgFvwjuvGk1FvrDTwRNMu
         tOfw==
X-Forwarded-Encrypted: i=1; AJvYcCXvSH9ypv6IwxoI91BVKmgAlp4e5TVIVMV7XqR3ALRd52kYrhj0vHYOWoXpN5haN0iqhBYZ/TIiD6lP@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5/WygwjKg97X9WQVru+duvn0qOMl6JSWl7+jxunDd+wZ3Jioy
	v+WduCwVB3GlQ9boYG5yDsmeAKuC5FD9eik7gbhHP0+7lE+AoZyVhOQkvK2RkeywCoC4U/F44LV
	zweB3l9EJagAGnJf9GBB/74IHXsQBjBk=
X-Gm-Gg: ATEYQzy+Ew5w3ASoJCVdKDP7vQfnn4+XE1y2n/JGe/7ReddWtHkbQe8eNGekoChK5mN
	j3xW+DP9aYXqQkXVT9xfq/f0twfkMi9Ky4Ac0TdKyxNUXruK3rUs7AJGWXfCGx+QBxGKvbMyHcY
	dUmiLPqwjYXPBESJGmS7nUQenQ7q/MEPXq+0mL2Mtb8m4QFLqKaRIrsseQBEwa8dv3k10AuyOWB
	cNSO5bfWdHqCsPL+9egmde+N2GAOOVKMPiQ9B3pcUgSGmoGEH3e7PGFc6+ajDbUpdeTCTOX+KhT
	B/DqX9X4
X-Received: by 2002:a05:622a:514:b0:4ee:1875:42fa with SMTP id
 d75a77b69052e-508f1cf7822mr5172761cf.1.1772730492300; Thu, 05 Mar 2026
 09:08:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260304192417.818211-1-akkun11.open@gmail.com>
 <20260304192417.818211-2-akkun11.open@gmail.com> <20260305-fair-jasper-barracuda-5ae1e6@quoll>
 <9edef237-aab3-4f7f-a86d-ec8796ba87fe@kernel.org>
In-Reply-To: <9edef237-aab3-4f7f-a86d-ec8796ba87fe@kernel.org>
From: Akari Tsuyukusa <akkun11.open@gmail.com>
Date: Fri, 6 Mar 2026 02:08:00 +0900
X-Gm-Features: AaiRm50-oYM1aGbuVflEDYupYhPjbKtTxzvjoSVqdcYL0WBhL6OK5h-FDkNMe18
Message-ID: <CAKr_iV4W+sSwOLD-CeyC-KZ4=rmWufh4jLiP7LRJHA+ifFL-Vg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: mediatek: Add Lenovo YOGA Tablet 8/10
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, 
	sean.wang@mediatek.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 999F3215E06
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271648-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,collabora.com,mediatek.com,vger.kernel.org,lists.infradead.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akkun11open@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Thu, Mar 5, 2026 at 5:27=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
> >        - items:
> >            - enum:
> >                - fairphone,fp1
> > +              - lenovo,b6000-f
> > +              - lenovo,b6000-h
> > +              - lenovo,b8000-f
> > +              - lenovo,b8000-h
>
> I don't see users of few of these. Also, explain in commit msg
> differences between 'f' and 'h'.

On Thu, Mar 5, 2026 at 5:35=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
> I don't see the "blade" used either.

Hi Kozlowski, thank you for your review.

I will remove the unused compatible strings (b6000-f, b6000-h, b8000-h
and blade) in v2. I will also add an explanation to the commit message
that '-f' stands for Wi-Fi-only models and '-h' stands for 3G models.

Note, "blade" can be found in "ro.product.board" (build.prop).
B8000-F: blade10_row_wifi
B6000-H: blade8_row_3gdata

Best regards,
Akari

