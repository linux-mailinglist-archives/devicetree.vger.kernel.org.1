Return-Path: <devicetree+bounces-304473-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6LaLEZ74GWqN0QgAu9opvQ
	(envelope-from <devicetree+bounces-304473-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 22:35:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D98608960
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 22:35:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F3082302E30C
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 20:31:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6589842188B;
	Fri, 29 May 2026 20:31:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzPGRoQR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 761FC407CF8
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 20:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780086673; cv=none; b=upAZfbu8DQJh1ozKehq9fd9QeFCLtwmrrz68LNMWw4a9TPORl0U6wNA1pJ/3X/v43p4T4bkCE8+naCDC8GcdaQjrw/MHWQYLmGfBsvNvj+OX7j7CHHdNjrH9ew6n0Re4wr2RePdzqOJAQ2U48ORMnFAL8bI6jGUfDSr8NafyrSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780086673; c=relaxed/simple;
	bh=LV7xtbnpkmR2mGPtPPyJcuj9BsX32ylMzumw36Vw96k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CoFekV6vYjfXwJlimCNuCdd7yH4m/KO/uWgaJVLaGFEV+sT+wXxqvWyrKyxzktzUIM3bJyz8ZbHkMHZOzVZUtF0dAnYXaohDil+p7CmWh23tp6lcDqIkhIIKt+o+TRvTE2kcve7egY4oxmC9ojayybbL7akGIbRQMYr76rYnJBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzPGRoQR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00F081F0089B
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 20:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780086672;
	bh=flVuTYQMPE98WVvZ/bed+lF6Q3W4uYVMMxpgyqZY3FQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=DzPGRoQRXxlO98kzFknnqbv66lXJDatBV8P/Lq4TYfX/dNnQJMZjv4WACrC0jbVPU
	 zxkN3U0VJqrhcGuKfCjHhdaYxUFVgAR01hNVk2UkbxBDd0DYUzVBVAmHy1GVfcQ2HV
	 rtY4oDMuklf3/2WvilxspzK8DMcoDlmOZWbpX/3Zwjh8boReF6r6477PqozAsJiRLc
	 2Dy1vbj33sTW40HLvQh71b2bjgCrDCbWf1MuDhAOF1oH+eW9ah96R7uNucNZP1J47H
	 z7JT7hh+hHdZfSHc+wk3OhCFdHuqc8kfVhmu+7cCLq9RZO9MZFFZsnp8xS0QjCRG9Z
	 +RFiqrhPom70A==
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-39397d63804so92990331fa.2
        for <devicetree@vger.kernel.org>; Fri, 29 May 2026 13:31:11 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8qg7YAnbndyJZfMD980LemHcIwW8BM8xaQgioXlJKzoJBK9rhPywoB6dJKPkzq6uCTs81JhgLLgWMI@vger.kernel.org
X-Gm-Message-State: AOJu0YxIfzS5G3sLXAy/hDtKNawxy9+8XjNo5BlpL5oZ6HMwYWOTyVXu
	e2xmec0UeoDUiRYjdl+H/gU1SUKZWqpjRB8ujyyLNglwivOPKdwowtGWzHmbH7lGTpO0xknV48N
	yKyQSbFzdvOVt8/1nzQmfh4GCznaYmp4=
X-Received: by 2002:a05:6512:3f07:b0:5a8:fbe0:bc53 with SMTP id
 2adb3069b0e04-5aa608ef062mr483883e87.24.1780086670800; Fri, 29 May 2026
 13:31:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260507-a9-pinctrl-v2-0-49774feff2ef@amlogic.com>
 <CAD++jLmGr_UOja2yHjCHv7xRcGqit_TxKk7A5YzSoviicJrJUA@mail.gmail.com> <36cdfa84-1e83-4a44-a529-653d476778fd@amlogic.com>
In-Reply-To: <36cdfa84-1e83-4a44-a529-653d476778fd@amlogic.com>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 29 May 2026 22:30:58 +0200
X-Gmail-Original-Message-ID: <CAD++jLntffpfwtjD16SHD79W-tQKJTMwmjP5y1+0rgNS31yv-w@mail.gmail.com>
X-Gm-Features: AVHnY4JiTwG2IVBsAlj_GioMQiqlf8ek1E0ZiI_k3UEBuzhsFkAe-cqsDu5gZBw
Message-ID: <CAD++jLntffpfwtjD16SHD79W-tQKJTMwmjP5y1+0rgNS31yv-w@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] pinctrl: add support amlogic a9
To: Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, linux-amlogic@lists.infradead.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-304473-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,baylibre.com,googlemail.com,lists.infradead.org,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,amlogic.com:email]
X-Rspamd-Queue-Id: 97D98608960
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 5:02=E2=80=AFAM Xianwei Zhao <xianwei.zhao@amlogic.=
com> wrote:

> Hi Linus,
>     I don't see these patches in the for-next branch yet. Were they
> intentionally left out?

Hm I wonder what happened. I probably thought I applied
it and didn't.

I applied it now!

Yours,
Linus Walleij

