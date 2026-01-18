Return-Path: <devicetree+bounces-256582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BA382D39930
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 19:37:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4EF63300A368
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 18:37:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2EEB301010;
	Sun, 18 Jan 2026 18:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DGouaB3k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0293019B0
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 18:37:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.177
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768761443; cv=pass; b=b4h8SmGiig99tk2jxeJR+XtTTlGPrfiU+IMZ/y1r9R8G83mmeTz/pb26Enzjvhu3mBnCj7uPoAun1HQcQQLuQdg7HmaXTDMtD0xDL3YIjlEjQkRfkCvcb/F3svZSQUsnPYFihdnADOXP0CFVlpJDVDhJHj+PM526wHnnLnPD0CQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768761443; c=relaxed/simple;
	bh=FafNYUVdaGzrXDndD0nXOLhWN6HVNmsTnD8p1x+z+c4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=laL8JzxioatWikFsa40l9g0lDF/kIHdkpWRNI74P7IgeyZLs1D7Ckwm96dSb9yjCCJGFmK/3MKnxnl6KzXucLJTkNC8/+UeJy8+MFp/Yt4PSjfknq1L+9o6fgvwTYN76PQnpFL1mnM+uSLttRXAaIFft3OQtk/9dPlDHiiVKstI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DGouaB3k; arc=pass smtp.client-ip=209.85.167.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-45c86087949so1301328b6e.2
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 10:37:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768761431; cv=none;
        d=google.com; s=arc-20240605;
        b=IwxFhu9eWAV3TQFeBdz1lrGnni+7ZfWQYezwZURU2sTW8PHi8sNaTWW5mE/6GVXAzF
         nU0luyYCrpZmjR6wJPOJSn/rSn9ZG8zuxBrPf/lNDmopx0cjhq5mW82a7jzp93ws++yr
         xyk2Rhdo64wuhRWwtbwJNhPg7VKYsGEh0cl6o2A+uJxF83xTE0CoWFtfvxwe8zm6Qkkx
         X+FqyD3ItN019cTjnks86MloMC2GfKiYxodZRBKaw4X39JheV4F7RyPNXn05E6pH6vvJ
         i9WYzLqD3eg7tySG7ycki13rppZPV6OD5GBSDJ195U9L6MtIZN16JsPetgWxFNCHQezW
         i9/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=tSfCZRWiq+F2guXeIq82E8iOGM2R1T/WtMgXIZ3rrvo=;
        fh=Xtv1VQUcVCLjn5tqGrkQQoxY34isnaaWn6jOGJt3wKk=;
        b=CXASyoaRUIc2ta35uPPNclCMGSLlXH0WmKASWXDU1ixISmg3+oO5NB+vbESLtkMbXn
         HhdLz5GLK0ZaFtembpQTAidhTDigrS/XiDz7iOWfX8D+fVdlEXeSzBQZj7Ils8wHYs7h
         hdeFpwfifluDpIaX9zWCBR36zU36r1Cn27qgOSWRRN4+zj1uYeYC6fq3N5B4ERJEnVfM
         LWfpO+iZ2SEQ+scl2avEDQjKFX+hCVsw9I6KT1MBxb1zlx2yANi6Cr9Dbg/hYyazHbPi
         RnqoJdhB5oxtw94IhtUvgNjjguipundC+xPuvAHTd1E757apGpVV1Ij2pXjLWKW9KCAx
         Qreg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768761431; x=1769366231; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tSfCZRWiq+F2guXeIq82E8iOGM2R1T/WtMgXIZ3rrvo=;
        b=DGouaB3kbJwOYEsQrPSLEc2J2gM0BwyBxfJoqk5zttGbLqCiTQxlpa9kK2n/XC3C8H
         8WWTFWQ2L47ZQUg5jlBavyAmKbToPNjyRbbaqmtoOpX+XbwlQZYCB9Dzr21ts2HKb5Ru
         gn8Keu8khvCvdd1HDAHmAGalQg6u94LKlJprTzWJmFuixwWWSQ4db2I/xBZq6sDbbigH
         hQKbpVA+04ScIbqm/jzsjzR9eEC7keSdyN5XnaLrzdH9RwIy06CINsfdayPDjjy9bJhA
         7r8m/8F77d+5/iM/tm+r6JvWHgPMgpQrnH+To5E46wXabfAMihM1KWgyjBYEMyIJdOaN
         6VCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768761431; x=1769366231;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tSfCZRWiq+F2guXeIq82E8iOGM2R1T/WtMgXIZ3rrvo=;
        b=I2p6W2DEbPFBmXX0oDkUDs5RR1K6EBSN0zBzdU8FEqXlUb+ZrJQZPQNQ21lJHTkNNP
         AX82qWyJrzUZFcUTl/qfa4VaOhZmlmySmnaErom0NNH3AcMfHId1WV+2553RkEqgf+LY
         vENaXN/fYtIdGI8Xg71SaO3rOrx1wFq0hhw5nNiSc2eMBlxfe9gp0jFEJoIxLc7NvyLS
         DS/GAPn/GHdbQIwKBlKNljc4eQgW59PXOEpavaPiI6r31J2S0467ntawiPm8ACIUgwou
         xtS+BedJRst/lYaXlJa6Jnl6Gw6Hxil/K2ZFkZTcxBeNqNkGIPJ6tS/A1ltP5d6RQ8nd
         rEGA==
X-Forwarded-Encrypted: i=1; AJvYcCUO7rZvhJa6HOZpcyx93WWL6FpK63K3qFR0J9UOmxL3JqIn1COdOEPJkXDWy67qD3WpUpIF0nhP/DGz@vger.kernel.org
X-Gm-Message-State: AOJu0Yzdm+Kb1lExzD0Qv+LpzgBHxmdrKEctNFYAjiL5EilYD6lURYxY
	k6qjZWEkISq7qi8Xo+WzMQNCg8GLZFGJzYYZ1LGnSKnTDX++7P6r9YphMpiVJycc+QUG+q659ou
	puD5EUEUdOPtlAtRTyUE2pL/3s6PPhEQ=
X-Gm-Gg: AY/fxX4KkWcr5fa2lAcAU7y1xPfHghkRpQiy8W8kQZdTMv8jglNysRqUuOqeRGexHRp
	bR5XtifoYzILtEJVTlF9JRku8M1ykgxGbisG+vhXYRE2wNE0KBWabYFH9B0qkzWw+b3i56sIdyu
	D3l8Rr5YPtQKj2vTfFL3vTF7tF/C8JoAuZtkAKHqlNEwR67Hwux8E+AyjMq3IXnN9ivmm8XsouH
	uz8l2o6QrJh3c+cOGx0ST+Y4uM7VfTwnJGxx9vJK7vF9pjAzT2wBQhIzoDtKGjHb1OOGaRt
X-Received: by 2002:a05:6808:1803:b0:450:d056:e0f0 with SMTP id
 5614622812f47-45c9d6fbd2dmr3104899b6e.2.1768761430702; Sun, 18 Jan 2026
 10:37:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251031-knp-ipcc-v3-0-62ffb4168dff@oss.qualcomm.com>
 <20251031-knp-ipcc-v3-1-62ffb4168dff@oss.qualcomm.com> <20260116162057.GA1681736-robh@kernel.org>
 <af235d3c-cbf0-4cb9-af3b-37c1600d421c@kernel.org> <CAL_JsqJyRa-U03XvPNchpoyYNmSJQacrYs30yd=a_s-6PnppSw@mail.gmail.com>
In-Reply-To: <CAL_JsqJyRa-U03XvPNchpoyYNmSJQacrYs30yd=a_s-6PnppSw@mail.gmail.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Sun, 18 Jan 2026 12:36:59 -0600
X-Gm-Features: AZwV_Qj5G-F3L-j94OKUIlg3HGOuNjgJrkJ24hCuEmpYd9lziCqxW1g0Pts9gpo
Message-ID: <CABb+yY3BczzocDR_Z49UO92iF9KLjq94EJZ10qy_aga1GrSBvw@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: mailbox: qcom: Add IPCC support for
 Kaanapali and Glymur Platforms
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Jingyi Wang <jingyi.wang@oss.qualcomm.com>, 
	Manivannan Sadhasivam <mani@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com, 
	trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 16, 2026 at 11:13=E2=80=AFAM Rob Herring <robh@kernel.org> wrot=
e:
>
> On Fri, Jan 16, 2026 at 10:25=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel=
.org> wrote:
> >
> > On 16/01/2026 17:20, Rob Herring wrote:
> > > On Fri, Oct 31, 2025 at 12:41:44AM -0700, Jingyi Wang wrote:
> > >> Document the Inter-Processor Communication Controller on the Qualcom=
m
> > >> Kaanapali and Glymur Platforms, which will be used to route interrup=
ts
> > >> across various subsystems found on the SoC.
> > >>
> > >> Co-developed-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> > >> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> > >> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> > >> ---
> > >>  Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml | 2 ++
> > >>  1 file changed, 2 insertions(+)
> > >
> > > I guess no one is going to apply this, so I did.
> > >
> > > If your patches don't get applied, please chase the maintainers (Jass=
i)
> > > to apply them.
> >
> >
> > This or it is an effect of known problem with mailbox and interconnect
> > subsystems - maintainers never send notifications of applied patches
> > (neither publicly nor privately like Greg does), so you will never know
> > if anything gets applied.
> >
> > This as well could be in the next silently (wasn't in 15th Jan, though)=
.
>
> Further investigation finds Jassi did apply this and 3 other patches.
> Stephen reported a conflict on 1/6 with another Qcom patch
> (conflicting with Bjorn's tree). No reply to Stephen, but *all* the
> mbox binding patches were dropped.
>
> Here's what was dropped:
>
> f8f632c18c32 dt-bindings: mbox: add pic64gx mailbox compatibility to
> mpfs mailbox
> 945dc11a38a0 dt-bindings: mailbox: qcom: Add CPUCP mailbox controller
> bindings for Kaanapali
> 66b6e5daa915 dt-bindings: mailbox: qcom: Add IPCC support for
> Kaanapali and Glymur Platforms
> 9a92e22740e6 dt-bindings: mailbox: mediatek,mt8196-vcp-mbox: add mtk
> vcp-mbox document
>
Yes, I had to reconstruct the mailbox for-next branch because some
patch had an issue and the pr was not merged after a very late fix.
Sorry I didn't realize people not receiving pick-confirmations was so
problematic. I will make sure I reply to every patch that I pick.
Thanks.

