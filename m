Return-Path: <devicetree+bounces-254155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDE3D14DBB
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 20:06:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F18630221AC
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 19:05:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDDE1311951;
	Mon, 12 Jan 2026 19:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FGm846x7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E80B3112DB
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 19:05:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768244705; cv=none; b=iIPVXqronNrLainXqTfAbXCYgIg0YpfoigXbJ5SltlkUvFuepsEuuBYeeX6/Ml3XEeLunFMbovtpGwvERdCr1n//qXHZoSgPv3CP09hFCMseAmQLsPbaWG2JMvytxIKwQgVoXrkDE+lDG1eevC7YkKce1iTHaXH/0WhxmvhKUu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768244705; c=relaxed/simple;
	bh=Io5XiPOPk47WNG3LrW7fD/kRpDW4aduCvCe2nfDRbPk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H5Wz/qceoj2l9qGs+Fa4I9W+YRFvNcQsZfkMMBNLi29RIPxsNOTPfTlxoP6p2rui8R5Qf3cxWtTnCrYsTL9/NazXyhUuZnCcL2vlz4AgBoRMpqWbdxdT0VNI1OTB+w44ZkQrO0LVhAz9loks+h2QQtv2x2SKnHLsdHRT+4AqCf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FGm846x7; arc=none smtp.client-ip=209.85.167.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-4558f9682efso4285305b6e.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 11:05:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768244703; x=1768849503; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P6JdDCpr5Va6UKBK3UkPIkJuU5AGn3aLM4FqYUEjdpw=;
        b=FGm846x7Ie3oyiSByhiG8kZweXTCfLzndayFZpQTaj5Z3Rrgdyx7udFOx297zRnMlv
         61IVb73K2Mpqk/UsZSH8TJ2ayTjwuop06sqta4g0gSWkuhQatw7ym9SHyzRK/K3VOTXI
         3VwgpIVGLLbzAcJP7a9sMz6nNT/mC3K5fWzvJLg2PAmh3LH6P0u1OdzX3dwsrT9FgJHT
         Lza6/SqYuLBoVDTc7x8vvIwddIivqCLOivGxw7SthseqioFi+nNR0kR+AN5+X/iKUIP+
         cmkogALwGjdWUEK2uJdsWenzZfsKm5iqVF8Itc482wdTM3n4kyQAaFzjAiCsrAyZa/AK
         1q3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768244703; x=1768849503;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=P6JdDCpr5Va6UKBK3UkPIkJuU5AGn3aLM4FqYUEjdpw=;
        b=AYIzPhN3KvFeIaf9nAKVo9GakFfHw9JTzDmH3iJ9ldAB6u/nRlJLtBuEJCYmBq/PhC
         uvpvOYPg5+loWDxXaeygBLsi2y/nwpu8vfmUIXWg3JsE9ENAXgyW2L2S0NX02/7HQF/C
         6wgJiS5Y4CLFvlnEnJwNB6aNM1RYzX31mSOkYq86FOSoPqoW2of8nOjhbscNkr9FhALy
         i6P2OstNtrYq/phrGNgpB9NGBxX2AQtJEl02fgnyJ/3g+u3OSvitFbg4rUZ4xaidkVI4
         yTVAVCuHOkIsPu27az90eVZqLi21yPs1yEBCQZiJz7PSJTUzb0ry+NHSNUO/yZUa5Pqc
         k+ug==
X-Forwarded-Encrypted: i=1; AJvYcCVkkHKojzA03RrQyjD/P2l418fRSVL0jMdNGiGdQ2xnciLPdsMQdQomOQSIgl/Y8Y8XYXo/dagMG3/p@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8cHAhjHds6+ygcwOYAjYnksc6+OdpFTQZbOXHSa6wgJhDC+JH
	X6Fhu/z8VN0OFa89SSVS7155P0DkziiIlaq/TuJ0uldVW82YDMSL7FKmkO74KugSDng4YPJZDgG
	2ys70glAyhAeIMol4yqv8aWSKUTH1cuo=
X-Gm-Gg: AY/fxX6/X9Lk8LbddEYMpXdjMH0Cq7nz9YGulpVS83lRR4YSxqTzCGlRSDRod/5CbJJ
	WUpD4EkxpsGMts6xbLuAjSjGZQmWxMKxh6MGWcwWBYxfMaywPkD87cG5QeZUy3rdB2hBXlgVhdc
	3U0vssGLTxGt/tVmGmI3gEdYIKMzAOZjpTBxhbkIosiSSRIOKnYwWlP1xYJcPWUlQ1REu2OHsMg
	t3S6puirlldUsXUDGV+0eIs8McymlG286jb1LlFlc2GSmGXySZ2q9R0dv1/UWXX1lYg9jUB6JAG
	ue3DQ/hwheWggy9zVPeFw1CKx3s=
X-Google-Smtp-Source: AGHT+IHHyYehd5mDk6S/HFO61FhRHsv9zqO6J/OOUvbop6YA1ncswgg4NWPhmsAGF3o48IKByactGMvO6pcP1yVqREg=
X-Received: by 2002:a05:6808:1311:b0:450:b361:f48b with SMTP id
 5614622812f47-45a6bec253fmr9406966b6e.56.1768244703218; Mon, 12 Jan 2026
 11:05:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260110010715.1610159-1-mschirrmeister@gmail.com> <67ccb8f6-f9bd-4266-b79a-b688bd6d030b@rock-chips.com>
In-Reply-To: <67ccb8f6-f9bd-4266-b79a-b688bd6d030b@rock-chips.com>
From: Marco Schirrmeister <mschirrmeister@gmail.com>
Date: Mon, 12 Jan 2026 20:04:51 +0100
X-Gm-Features: AZwV_Qg8Eexu6GQgEzbvpbPVbdo7RYBJ0P9SC7lhZliBG8Czm_wfF3LbmThMdSI
Message-ID: <CAGJh8eCw_d9WwEh37_7fp-pxkNvTYDetTiDue-adby=pskqxKQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/3] mmc: dw_mmc-rockchip: Add stability quirk for
 NanoPi R76S
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	heiko@sntech.de, ulf.hansson@linaro.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 12, 2026 at 2:32=E2=80=AFAM Shawn Lin <shawn.lin@rock-chips.com=
> wrote:
>
> > Evidence of the failure in dmesg:
> > [Fri Jan  2 01:28:02 2026] mmc_host mmc1: Bus speed (slot 0) =3D 400000=
Hz
> > [Fri Jan  2 01:28:03 2026] mmc_host mmc1: Bus speed (slot 0) =3D 198000=
000Hz
> > [Fri Jan  2 01:28:03 2026] dwmmc_rockchip 2a310000.mmc: Successfully tu=
ned phase to 233
> > [Fri Jan  2 01:28:04 2026] mmc_host mmc1: Bus speed (slot 0) =3D 400000=
Hz
> >
>
> Does this problem happen with all microSDs or just *a* microSD per
> your description?
> Have you ever tried to disable SDR104 support?

I tested with multiple SanDisk Extreme and Ultra.
Yes, I have tried to disable SDR104. Also others for testing. Nothing
made a difference.

