Return-Path: <devicetree+bounces-259754-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gL4fGjpneGnTpgEAu9opvQ
	(envelope-from <devicetree+bounces-259754-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 08:20:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B8990B48
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 08:20:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 573CD3004F1E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 07:20:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57ACF32A3E5;
	Tue, 27 Jan 2026 07:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A50tkmjL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f51.google.com (mail-dl1-f51.google.com [74.125.82.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106F432A3C5
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769498422; cv=pass; b=ZrD92VbjrD99R9HTTYxc+P06/CFM802CYsbJpNKobSBn49fM7XS6MZSYroQ2mJ3mrH9Cl4KtS5m7qs77Uj3iSkHxv9NSunmnRYmGcQkuXRvCS6tQGr/uPLpmA1VLnvJfOs5CxL/eC5z0dZjEdmarYStevGJ6Ge6iZikk2umm5t8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769498422; c=relaxed/simple;
	bh=YMG4tPCm2wVq+It4Oh6OZkpOwTIQOkPleIu2cazCjO0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b17a6Msja+bYOwNYTlOtpzKHD9gpo6FOkgqFCVhoWHq6enGU14232M7sgTNnRywD+JlSZTfJclPxawaIysd0GXzsDTLA/k1wqUvOqMKK+c7YR7Rz6VfHXvGCpa44OHWqyi4Up2vTOStFA7qvhTfyxSEP/bkOY2mY+Q/NkUCTdYw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A50tkmjL; arc=pass smtp.client-ip=74.125.82.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f51.google.com with SMTP id a92af1059eb24-12460a7caa2so7630535c88.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 23:20:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769498420; cv=none;
        d=google.com; s=arc-20240605;
        b=SEyZtqvASDTy8kuQZE8kiSU8InTy2Z1wPM43dYU9LhiyEOmWkK3KfOoKRwtXWJ/YXw
         IH0w3DvbRdPCaLGeqbaPsFfm9nHZpNLSjVB9xVKLs9GhDx37ezVnyDcc47I1tcm0/+tY
         zEifQGUIaTnMIDufLIssfa1eGiAc4wjfxdgXXF20iR65fOSlULvSbaUqXbVkrzopgn76
         d4ZbaQVs0h/NPDxV2fvsJN5o7Dlqw9EH18NA1r9za9XRG0dcJsbVbywBrS0o9Oj3pssT
         GypCevtB+10Kr1Afb0HmVtk0Ip4z2Rb029UIYO4lyYjdbtmr2slDIyN3qlRaFXl/74ex
         8DqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=UP+mUbp/HODYFS6sc6VTtIV7GbMmQ0JMHLMxJM8aRDw=;
        fh=lcsFhexojTr0Apj8NrKz63Fcw0k4BUhWT9cdPQmWIvE=;
        b=ONw9/hHFE4xYGcA5IGJ3lI93qBjBZ71pVYor/1gUORmBbWPdGn7Omn+SDah5H88a6T
         ddvwmcnRAFCFauWnyQBRQFktJ+zEwbyJlUheUyf+hxVEMoQJEX5oQqw5ByOYjmSGmZPy
         ARP2A7/ey3ndZLlbo5bbVpE7Fn4/rNJ1Zki6ote7ZAdmJy1Lqy5YsDqDLnH1H+ODPz88
         Q8AuB524tKYaJGicVu6le9m/zaZa4U5IeMyT+NbdKnu6vIjN2pDdS6OSnbFjurounmY9
         ZnArk6IR/IGbxK67fTFmKef6m2cO0+DXQYbVwXqf3p1AKfPZXbDb6FiQ5MdTQ3qcExoE
         ODUg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769498420; x=1770103220; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UP+mUbp/HODYFS6sc6VTtIV7GbMmQ0JMHLMxJM8aRDw=;
        b=A50tkmjLmdDv6h/MujPNIzbbTzhF68mgm+WvewCteUP+vW5W0snaiPuH8K3fbDZYAi
         I9GXJA346dN8hggywcS4+D4bZsWAG1HR2XvVOy4WNVNT6t1lyMWDxsb6qi3s7ZKEq5jh
         SpMvCfeJpJR9VI86tl84P6mrK6rwSFdI5jmLtl7siqbME4JpxaKNeIQn9rt8oyb0D5yt
         9cyk0zPSCGMmn+ehloUa1YsfhmpL5SinFLHE6yLrvUrUBS8HwjvsVfm7+hPg3tcW4pg3
         tLcREOdU/dkbwc9+fflJnyLLbQt64Oo8TlzdLb+WMLvjOcbb1EuFkKMZZ/obi+PmNsnw
         iS5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769498420; x=1770103220;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UP+mUbp/HODYFS6sc6VTtIV7GbMmQ0JMHLMxJM8aRDw=;
        b=F1zmUomfRjqyHPqlCQPpGOJXgBYhU5SFh3rAfoB7C8JcnOc+11NkrsAPbMiqAL1fnU
         +rcAyNe+ZnKe+YuJiTrKArpqryv9k/msCET93iQPbIbZVgVxMFYwjcXtVPHiqdb9aZVS
         edlfwdAK8ADyKQ1tokuEoVR08xEaZCmdyJVT68s47FlbuiZEcErMssuimchLyuO/YiOj
         61HgGgozEfuv3pgu27LQBSNIhADs2oOVLWHwKfzQFzHOhRp7w6s7oNVzZKSZZBJJq4YD
         32j1PkSPBlsH8EJyy2H8p66xczWk1wAwNVsp2uu2anPcYh7i8IVHt7lXhR74WovTYz0X
         eglg==
X-Forwarded-Encrypted: i=1; AJvYcCUigWNXuJs9fHNSuRpzgOk4hfpz9Pc4q2gxm9h0p/i14ZdsrQ3J8zvD2eomQ1Me+h+QLPbDmqgG7c/t@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2azNqx+edj0Cqk4PUJpeizt/pCHkPwnZqfV/0t9moFCulWSnz
	kYrtz54L5yt2fX4ke16pR+f+gLF0yHaZCsSvIUvT0A/OOSOM0DjIyK/M1v7Xb21dtKI1pBR99sG
	aWIL+nkER7cLEwVEcFEDCeKdIpywrVzg=
X-Gm-Gg: AZuq6aJUpS7/RfLlThIig0xob/IjPOTZFOZmX6lOqEP+LN1KEcbc+zuI8ouqfwpbRL3
	CCpXrIQAhrTCL0zxT31DBiIHWGLwjcqf2cuqngugVQWZgJe5ONKHKNiByNHKJbbme5dJmyPl4TP
	NjGQ5N40PNSxAtlXecNN4FdDTuxzZ+Gl0N87XJ0r/k5m5jBZDaVu3zQLvSu41X/14jLgadd+tCZ
	A1HLcfQnHvVzbSlrLALIeO0iSRsPm6oqe0NAL/2G713sC6WGZR6AXyHvjQiaAr7NSN6O1G1z2aU
	Qksd8pI7SErqhJbQAIhqZEk4axp77KbwE//8QEj1asbvkaAGPQ++1jgps7w0bVamK8ZdnZMKUmi
	PBnsAgYSSoThJ0Q==
X-Received: by 2002:a05:7022:608e:b0:11b:9386:8265 with SMTP id
 a92af1059eb24-124a00e4ef2mr592857c88.42.1769498419874; Mon, 26 Jan 2026
 23:20:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260127025740.2601841-1-onlywig@gmail.com>
In-Reply-To: <20260127025740.2601841-1-onlywig@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 27 Jan 2026 09:23:03 +0200
X-Gm-Features: AZwV_QjajkSN5Eu31Sb_5L2tR2fgv-siHFOW2oZdIrE_vROYKnR4g6BIl7DjWw4
Message-ID: <CAEnQRZBmexggNdR78p8yTnpReLKxuDC_LKZqpHvXLzSzkDbfqw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: freescale: add pixpaper display overlay for
 i.MX93 FRDM
To: Wig Cheng <onlywig@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	zaq14760@gmail.com, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259754-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,lists.linux.dev,lists.infradead.org,vger.kernel.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: E6B8990B48
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 5:02=E2=80=AFAM Wig Cheng <onlywig@gmail.com> wrote=
:
>
> Add device tree overlay to support the MayQueen PixPaper e-paper display
> on the NXP i.MX93 FRDM board. The display is connected via LPSPI3
> interface and uses GPIO pins for reset, busy and DC control.
>
> The overlay configures:
>     - LPSPI3 pinmux for SPI communication (MOSI, MISO, CLK, CE0)
>     - PixPaper display device with proper GPIO assignments
>     - SPI frequency set to 5MHz for stable operation
>
> This enables support for the Open-EP Community pixpaper-213-c module on
> the NXP i.MX93 platform.
>
> Signed-off-by: Wig Cheng <onlywig@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

