Return-Path: <devicetree+bounces-265676-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YL9zMATekmlvzQEAu9opvQ
	(envelope-from <devicetree+bounces-265676-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 10:06:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B36141D4E
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 10:06:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 067DF300D942
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 09:06:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 581C42773D4;
	Mon, 16 Feb 2026 09:06:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351CE23D7F5
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 09:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771232769; cv=none; b=HUxp/1dMRh6CwKdDHM97wtV/r8l9LTkMOfve1z0sDC8azAhxaioYYLCnEciTgasSo+2AXbQxtiFh1vSZHV3P7NWels8LnJgLhMwCu6Q4B4ZqwKdJmKqWeOSMHo8ffJrK713C77nW2C6pVomBHYTG8f6S4uQVaKSnVcF8VucpHm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771232769; c=relaxed/simple;
	bh=XLc+eOLy5J0g/+tLvPUz5ypWSOTqs6LhEiV/ruGZlJw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IF08eI390nrGhHAjIpv1ez2ibQgr8iRBKci3G/lF1t/uZchj0rKnFowvyIWSn4YaECLCzRfjYVy4CDYMkO9o+/hyBrT8lYe7YXk2MHFV+kQL8bgVQ904Z5AoCmJQtcPRtSiOBY8ftYjTybTnzpj9RywQvnKERKFxER3+AeCM8Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-5664848545fso1067963e0c.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 01:06:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771232767; x=1771837567;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WriXV+rOdanvIDJxW5eQKGcd3V/BAHHzmytp2OA7NRY=;
        b=YoVlBwDg/ICLNr66sIF8Vh1W++l2ugLO4RRG2LlDyYE/x1rJDBEE2kdT79XhCesP9V
         ZNu5kyZ116JMMR+EoGdA/wz/euilx4a+H7HB1tGhAE89ugK9ZM4UhjtksJ1KmNtOCyk9
         3NOgx5z+KZFUKqGtKyHWsQe6bkeIy3pNOKUK8Sjqx9iQaLbUsHPmQtkmzt6r9HBLcTmw
         Ha6za0j0+W6/W79ClsIVRlEr4sWeq8kfK5ifUIyDa8hirwWpjUtdFVDbzJ8FPZRbEm3n
         WYqJYGsHfmfm9DYD+Y/MMR1+4XxZC8YcC8Xkt0Hxs+fLz2+5iwhlJNwHMOfu35TOyHgP
         6y7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVhInqMZCskOSyfMaxgXLhWZf71FGqy5MYH2YqbXphfcbg7Y5jhJ2BCjVboQwXubJc3mj1710q8QQ7S@vger.kernel.org
X-Gm-Message-State: AOJu0YzOQZpfn961KIw12FVKwK3t/wpWyk/TBAz4NRoWgVpB1Va/wDPh
	G254iyIEFRlkpaVoRcJkFKxGlI5cwqZeXxB0q20EzAP1ZBQ4aYAZv9Sf832nOGsJ
X-Gm-Gg: AZuq6aKumiBeUvQA9o77kFcuXEViAG168CG/QhNMjqOSKkVe05aTwcA4gPMsESfqKkb
	NldjV+xY9rUK/Q8Iit4TQWhbdn0PyXVqyoregL5XeTJWVk4scuFMo959fgI74azXxeYDgocIWBI
	NWRtRGhajqltmY/TnL0+6LrJJMz4WjNRdIK1NhqmFixikFFsYZ7kHkbQeyVBjctxxs9qBVKQmP2
	HSrPN6jPpCr6J0lYnSwlZdI9VygEGGID/k0opwX+mT/jG5kbUHdaHLoCRTz2X3Ly/Yv2Ffwjo7V
	wVlAEIeL/Uv3755WayiAkYumA1Ec2HK6XMTbfaPifZDvFofjGzPwELYuzlNnGj8uXQW7irI9guS
	lth0is69IwoIIBYdxOzWCJOvE9DdH5xklhPCjJi5CO/hOx90N93dUeRcCbrTTY1Y53BoEhog4Fy
	fgD1uN5bW8hukGoL5tHAzMnuyiLCNv8MznWeHLj5MhV/ihYsqEKtyp8dt2xfLj
X-Received: by 2002:a05:6122:1b03:b0:559:6960:bdf9 with SMTP id 71dfb90a1353d-567682bee63mr3016826e0c.16.1771232767076;
        Mon, 16 Feb 2026 01:06:07 -0800 (PST)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com. [209.85.222.54])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5674c20b0e5sm7150722e0c.12.2026.02.16.01.06.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 01:06:06 -0800 (PST)
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-948ab1c79ebso787761241.1
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 01:06:06 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW1MV6NMolAUQOb0gRcvCmXI+YmOngYykzd3nixJZrqhTFCIdqjIvX/wDZ7KXLdjtvmJC0shYwTbYF7@vger.kernel.org
X-Received: by 2002:a05:6102:3ec4:b0:5f5:4eac:cd2e with SMTP id
 ada2fe7eead31-5fe16f31738mr3244967137.32.1771232766399; Mon, 16 Feb 2026
 01:06:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211081355.3028947-1-james.hilliard1@gmail.com>
 <338e6575-ec44-4179-94af-9086a7ca79ac@kernel.org> <92359c6d-06ac-4f8d-baa5-6fa45a536455@kernel.org>
 <CADvTj4q74H__JZftOiXkdsY3+E_Xmcx6Y6i70RQDJ0K09=XOHQ@mail.gmail.com>
 <30026ed7-cd19-4be2-adbb-e8bb155a75b8@kernel.org> <CADvTj4oBtO0Yhib1rE8QQwgtJvy-x_hK46C63mjVAydtxHOV8g@mail.gmail.com>
 <20260212195423.GA787785-robh@kernel.org> <CADvTj4rPq8D5piqEijCdAjkWmZtq3Bi_Kxv-4F0aU4xi_O5WKg@mail.gmail.com>
 <CAMuHMdXmMVgPJv=HhkfttiRnSwFC6c2PnFjYwmL2hu3ikv+t3g@mail.gmail.com> <CADvTj4r95E2rLA0ZhOYPeFYpFbj0EXfb=omCN2Mab-Dj4T-cYA@mail.gmail.com>
In-Reply-To: <CADvTj4r95E2rLA0ZhOYPeFYpFbj0EXfb=omCN2Mab-Dj4T-cYA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 16 Feb 2026 10:05:55 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXTg8w3R1BVq3JO2z=gvTdB=qXY=aXvC7Lb8FtkEqz9ow@mail.gmail.com>
X-Gm-Features: AaiRm51egOzoKkT63Ie2l3NEgwKnOy0-0HGSehM9TrmDfw1OKIBaimsGDsxB5i8
Message-ID: <CAMuHMdXTg8w3R1BVq3JO2z=gvTdB=qXY=aXvC7Lb8FtkEqz9ow@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: add gpio-aggregator binding
To: James Hilliard <james.hilliard1@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, linux-gpio@vger.kernel.org, 
	Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Stein <linux@ew.tq-group.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Herve Codina <herve.codina@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265676-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux-m68k.org:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 29B36141D4E
X-Rspamd-Action: no action

Hi James,

On Fri, 13 Feb 2026 at 19:34, James Hilliard <james.hilliard1@gmail.com> wr=
ote:
> On Fri, Feb 13, 2026 at 1:25=E2=80=AFAM Geert Uytterhoeven <geert@linux-m=
68k.org> wrote:
> > On Thu, 12 Feb 2026 at 22:22, James Hilliard <james.hilliard1@gmail.com=
> wrote:
> > > This gpio-map feature doesn't exist in the mainline kernel does it?
> >
> > Yes it is.
>
> Oh, where in the mainline kernel is the code for it? I searched and
> couldn't find any references to it.

git grep -w of_parse_phandle_with_args_map

Note that that does not find interrupt nexi, as that code doesn't use the
of_parse_phandle_with_args_map() helper (perhaps it should?).

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

