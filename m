Return-Path: <devicetree+bounces-261892-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qGTvIWzWgGmFBwMAu9opvQ
	(envelope-from <devicetree+bounces-261892-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 17:53:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 264E7CF33F
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 17:53:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8D9C43016EE3
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 16:52:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 009F7223705;
	Mon,  2 Feb 2026 16:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Rt4YYZJK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A010279DAF
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 16:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770051167; cv=none; b=esbGPlz3qtdoHaobzFg1z0MBqLuuB5ogxn8GoM/gTKwa6PhxbP2/L00kQgmrNtl2E1OxqkFEvaBPZ5McMin8eGWBEmB0TRx1LAoHOtgrORi+Wy5UawzN3Y+e9zScR/rASi/+O+BeiOpW9EHSZ0x/cXX2ogq6geFlelSuWiB+t2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770051167; c=relaxed/simple;
	bh=KaGRXwrFVNIEvTUkF1qV1Et/QLGicBj8WZhhKScJFjI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fpfsU65VyVtdaHV4ksmhm5fXvjS1/anQv0hkxMJcb+7ZBsdIiHRMZaCde/9nr+Vag9aO/t9SITqmEedX6uq0kjnaKia5AwriKiy0+XRdZg3cSYXSiIFLoH4iuy6nFKJkC9QdM1G3tOWql9PKDOD93GzoRdCH1XDQqDD/iW+qjYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Rt4YYZJK; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-64b92abe63aso8722380a12.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 08:52:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1770051161; x=1770655961; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=enDw9LkM3CdlAH4/IbRE0pQEHAl9HYEyYit2vG/Lo9A=;
        b=Rt4YYZJKaxcP3xuXtqdrRzc/8VZySWFFdeOB+LqQoSCn7CL/ARfhoFmb00SuprbcLI
         qj+6nuK41NqHpzIbUOusOtrjbLRqT2f/+OeFe/H0Qp5t9EiusoMlcOdfpahL7NRjO9bi
         4kG3lJAqESCV/juLhq7BcYmehGJGJbILGXdhE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770051161; x=1770655961;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=enDw9LkM3CdlAH4/IbRE0pQEHAl9HYEyYit2vG/Lo9A=;
        b=roF5KCAN1AnHgX6jpky7OX/wW/w9N566omr0GgbsykAs9Rj3X7sSFdArVqKY13NNAH
         Jcnwh5AoN8y2P17yoOWEBLXn8YHWUv/407YWcY2rjNMJzjin1mbPjHa+dILx71NxpJHu
         1vIl3IVeFLa4NaZkuEexzr+IVQCO1bDemBpHN4z6xes3fIRrBE5zonElHPzsdDMs7462
         ABbX6ekMMYXxtFVCsfsSVjB6KL4kU3oulNbdLCUhio5MkWaBAT5DdjWqd++d/LqB9kAD
         NAX6hNZJKENJw+fLsUJD12SU86zCOIOMh2tSZWEM4QCsnIcxe5IsO/h28qbX3Sx4LyZ5
         Z2Ew==
X-Forwarded-Encrypted: i=1; AJvYcCU71o/Ubi1IOy98W0DgUyf3Lt4mB3o5rw86/0sfM5q+dl53mD8gLIZ+opl56D5kbMPTyW4zJRJRCPT3@vger.kernel.org
X-Gm-Message-State: AOJu0YynGTWb4qjsXJ4tk/Rs1vdB7L6y4aEUZH7D9LG4BWTcjd6igIaV
	jjJDVBG7oQ14o/2syc5ELbsiac8KNhN086o3bd8d6OAaL5bQPy5O9vfBB2+YWvIas5DxsNgL6TA
	E3Hsnng==
X-Gm-Gg: AZuq6aLfSpd4+mxPMIYmY5J/qs73VoEYsb4XVQdSzIwLCy2i62OuIASKY6bENwYk3B6
	w0hPi+hWQP4WbLDZKnLrVok3WuymYJPSJqWj5oFHuexDqwIswTHGPDRjklF7zX0PfhJJjUBECxS
	Dyq8iNpbnx2KLlJKNfI6Zun0H5iZdhap8by0Ss0IsY2+3FiPqejnCnUvv4Qow9pnyEh5NGBqFGi
	mgcPTglRniz39NqoL0iBz8XFEuunItVXZvsm7Fs0EAzegeqVbwIHJeUr68DFQ6ODhQgIlO1ybcv
	kaIm+g/1BV6i5FBWH8KqfBjs1UfKb9j22mxHkdq+Bym2q8PQzv7orfEc++w6ZQpc/mzvL5FD9/T
	z0T4EvBYH9QZZGBH5gGlbABHDRopf133FSb1SPrjCYicpG+Dj5WoWkbjClAryMTROy6MnZkOGgF
	yfpFgrxn97qY8GIkxOxp1v5dm8fP4Zhz9IcQ7M4xDesL3q4tTFzw==
X-Received: by 2002:a17:907:3f91:b0:b87:5c45:b884 with SMTP id a640c23a62f3a-b8dff652e78mr781767366b.31.1770051160621;
        Mon, 02 Feb 2026 08:52:40 -0800 (PST)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com. [209.85.128.46])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8df8465ba1sm623703466b.38.2026.02.02.08.52.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 08:52:35 -0800 (PST)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4806dffc64cso35817805e9.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 08:52:34 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXZBPNikQBIkZgHsf8y0iDY91LvqJ3ypC/0pAOUefF4mqquhSnPu2BBlkImix7rlPBxUhBVkQil71Vr@vger.kernel.org
X-Received: by 2002:a05:600c:6298:b0:480:5951:fc1e with SMTP id
 5b1f17b1804b1-482db45fbf4mr163945605e9.11.1770051153710; Mon, 02 Feb 2026
 08:52:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1769191673.git.robin.murphy@arm.com> <c7f6f75d55a4801eab63a0dc81d14ae27866aca9.1769191673.git.robin.murphy@arm.com>
In-Reply-To: <c7f6f75d55a4801eab63a0dc81d14ae27866aca9.1769191673.git.robin.murphy@arm.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 2 Feb 2026 08:52:22 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XCK1RBgdxs07aHgowNvCSm5-+oUVZ3HcMVWuKwW4ggTg@mail.gmail.com>
X-Gm-Features: AZwV_QjXmR-vAYYsukd2qlxBElYKsT5Nm3boXnLH7lvnRNqLj3lt-cXAEK2VGP4
Message-ID: <CAD=FV=XCK1RBgdxs07aHgowNvCSm5-+oUVZ3HcMVWuKwW4ggTg@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[sntech.de,linaro.org,gmail.com,ravnborg.org,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	TAGGED_FROM(0.00)[bounces-261892-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dianders@chromium.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:dkim,arm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 264E7CF33F
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

Pushed patches to drm-misc-next:

[1/4] dt-bindings: display: panel: Move FriendlyElec HD702E to eDP
      commit: e2242223b714ac9fd8233546ca74ce972024111f

