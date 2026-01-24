Return-Path: <devicetree+bounces-259208-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6H7PI/1adWm5EQEAu9opvQ
	(envelope-from <devicetree+bounces-259208-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 00:51:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A74237F4B5
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 00:51:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 50B4C3006B76
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 23:51:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0AD719CD06;
	Sat, 24 Jan 2026 23:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="KqItasx9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0956B1A275
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 23:51:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769298682; cv=none; b=MqURFrA9EW59wsyukWbfj5HJsXK8+MFT/yQf3abduS6jkm/nA3NH2/bSqi7gDPDF+pJ3sBLOXNsVxI/gpXrQDepD+PGT4nxLJkMLFbjlNtZexoxoIgA99eB/Y9KDpSDZxKyjxlJ+ri3HESp9BsF8C2mmLDdlWs6uKJhRYwqiQ88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769298682; c=relaxed/simple;
	bh=NHC1WrZQmTAPrwfB8m2FF/bh2/6T60s5Z+Y8AFbaGuo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tuJ1dGKZdKUT+YJIKw9JYfdy3SDDVD7yZEJaKJB7Ugj+sWvRbebGgUP6h4/I9yq4NuWvuppjh7P2iEhFxNLMfuGFPVtkX6pyi2SMyO+2hZOW+q9xr5e5uwdKSW97v4palJuk5uCSWe77QtJC9BGcMqmDEpsTFY0hZFkrcssz+9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=KqItasx9; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-64b9cb94ff5so4712163a12.2
        for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 15:51:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1769298678; x=1769903478; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JvEA1f9ONRPJvobNgmX24gX18ZQa14zvBpNonY0IgwI=;
        b=KqItasx9vvverU++EVqBkzVGbS7TcUuaG9pODNRq9TQDJkeMJtk/Wn+lMj8QqmJESI
         Gn51mNcc9ZjRHYJivx6oYgv3wYJDOWZtShu/WNBsraqw7dCtenmktySSniIS19vV3v1C
         WkWs5y4D5mjEVXZVoVrSbbr6MdCUcH7tdJf48=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769298678; x=1769903478;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JvEA1f9ONRPJvobNgmX24gX18ZQa14zvBpNonY0IgwI=;
        b=fUtOt75axh9lZz5vYwG+IlRyuWYr9uiRPoCLFSKH+LCZqceAgWf58y5t8QIWxl5pBP
         LyOzS7K4XCmMWv93Y08oK7WVUnKxqZSBhxFGAbynnau13L0pbMpTsUGQJeYIUQ7RkkJV
         Ot8oUzuRI7JZtowYoh0SYdawI6K5mfM2F8odwaaeyiuDyIh0JuzbuRbBILfLTJBqFtqI
         6z5PMqYOz+9+5KntTtJdX/8ckkq23k78K6THN/KAFTA598muoyvNb/VvaN6qtR22m57Q
         Z1XxysDXWgv7iD11pgWobMIDSRFOKuuIgd950doa4yrFSmckO0/3iil9rNNiFr1YdMlv
         BUfw==
X-Forwarded-Encrypted: i=1; AJvYcCUQ7VV/tmJ78Em5sAuHRXwvKz31KD6WpDtC6JsFFChkl/zZN+dF9Zo45wW/nQBSDMhSA19sCoOWd1a5@vger.kernel.org
X-Gm-Message-State: AOJu0YxrqW6mSTKZ03O9tSngHbuUADtNhLqa1LbFbN4deaWM+InPz/qW
	5DWcCFbgWgNXYFNpyNbb6SxkgYrOc+F8RCecks53smk+vOOhJiKGA1vydLFB/JRlZEW/8F0r5Ew
	hYLMzYA==
X-Gm-Gg: AZuq6aKbR32z10AAoiqwBpx80GJC/yDQxHY14IoUXWYVQHsb36tXcp1kn9n+vDtrlPK
	nvIKTDb5URSMmVPrgZmmkAXvll3taMcNizU8qSLhhF8ECNEVnXO4R9xAdspkek+89AfEAJLGoP1
	btP3mRnihWAvixjaF9FkjgEy28gGZN0J/WGhexc6cMuHZUUopPOv72lhRBwhbxf/ISQ0F9OUoTQ
	t2vR1C3+skKcfT9WUh0wlLM8+dT4j1ss8REOk4TXMU10TLrDQbOPMkTKCnRt3+NA2rk6KTyMQ3b
	4RoOvS3vNDgRl4rLyBYyz14WPQ4r5d87yH95t2c4GrJ3uKcaRYNOZMK1XC7ozOwLjp1snqIYeZO
	wdSm44xN69tW7si9eNGR/NG+jJTciBCIXHl6LLFiqeOHXl/EYI9+4z1sQFeI/RBouRg6MTjlKzH
	tgM666InXBjY6mIBQEt3XDZvG2hB3J1OZlX2INPelPfky7M2Fagg==
X-Received: by 2002:a17:907:6d24:b0:b76:f57f:a2c3 with SMTP id a640c23a62f3a-b8cfedfcc0emr8974066b.12.1769298677785;
        Sat, 24 Jan 2026 15:51:17 -0800 (PST)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com. [209.85.128.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b885b6fe484sm352709566b.33.2026.01.24.15.51.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Jan 2026 15:51:16 -0800 (PST)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47ee4539adfso36846035e9.3
        for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 15:51:16 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU4NMjvwr2EO9Ti/HnuRbq8j2+sMp1KS6tk7GAgoTJaMtQaNzFJT/lyUPc66nS8OIW9orARny2UK4wP@vger.kernel.org
X-Received: by 2002:a5d:5f93:0:b0:427:23a:c339 with SMTP id
 ffacd0b85a97d-435ca06bd9amr202107f8f.14.1769298676341; Sat, 24 Jan 2026
 15:51:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1769191673.git.robin.murphy@arm.com> <c7f6f75d55a4801eab63a0dc81d14ae27866aca9.1769191673.git.robin.murphy@arm.com>
In-Reply-To: <c7f6f75d55a4801eab63a0dc81d14ae27866aca9.1769191673.git.robin.murphy@arm.com>
From: Doug Anderson <dianders@chromium.org>
Date: Sat, 24 Jan 2026 15:51:04 -0800
X-Gmail-Original-Message-ID: <CAD=FV=W+hbNiDmSmzPqGQsmH2WD_3Nm1vb1ZsvE2CORdVdR=DA@mail.gmail.com>
X-Gm-Features: AZwV_QgOnwu8ZDNoMgAedT6RUZDiRd84e1b3_o2xjJbMyBz7YJt7WbVufA8oGT4
Message-ID: <CAD=FV=W+hbNiDmSmzPqGQsmH2WD_3Nm1vb1ZsvE2CORdVdR=DA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: display: panel: Move FriendlyElec
 HD702E to eDP
To: Robin Murphy <robin.murphy@arm.com>
Cc: heiko@sntech.de, neil.armstrong@linaro.org, thierry.reding@gmail.com, 
	sam@ravnborg.org, jesszhan0024@gmail.com, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[sntech.de,linaro.org,gmail.com,ravnborg.org,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	TAGGED_FROM(0.00)[bounces-259208-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dianders@chromium.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:email,chromium.org:email,chromium.org:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: A74237F4B5
X-Rspamd-Action: no action

Hi,

On Fri, Jan 23, 2026 at 11:22=E2=80=AFAM Robin Murphy <robin.murphy@arm.com=
> wrote:
>
> The "E" alludes to the fact that FriendlyElec's HD702E is actually an
> eDP panel - move its compatible to the appropriate binding doc.
>
> Cc: <devicetree@vger.kernel.org>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  .../devicetree/bindings/display/panel/panel-edp-legacy.yaml     | 2 ++
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 --
>  2 files changed, 2 insertions(+), 2 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

