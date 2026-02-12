Return-Path: <devicetree+bounces-265106-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aGFXAubpjWnG8gAAu9opvQ
	(envelope-from <devicetree+bounces-265106-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 15:55:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0717F12EA78
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 15:55:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E3C0B3025F03
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 14:54:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A447435502A;
	Thu, 12 Feb 2026 14:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jd4w4Sna"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C56286400
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 14:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770908043; cv=pass; b=C5mRNMZjdq2K3SHldiDuVG7y6fGmZyU5HjClrUn+W+fk9vwpFi85gCHpf9q6wEwwna4ImReH6CGmZrbdjTvX8DGo8e2MkcMDY/zUwS0WoEo/8x3sIy3jeJY/sa10v/3vclTa77FgQBbZOh196q2ZOdDb82DwWZOCrRsBmTK0tIY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770908043; c=relaxed/simple;
	bh=MqGYhwHpWi5aft1/BsfvJRVVckQbAZWFB3oMoj++L3g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HbPUwL51w8y9D3UNjJlSwiaH0Ys6ewd/0+amhEa1yHGcmuHGt9t4NJ6OHTHLwZanu2rtQJvkuGOYZBl+yrC2smDYeIP0orONLLrIybEHXw69kvZHDZzbsbsVtxoeWQ4EwrKlUVVHRfNjVd0GAPABr/cpCqePSkVk+wdLNAE0Vjs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jd4w4Sna; arc=pass smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-59e699310a8so525922e87.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 06:54:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770908040; cv=none;
        d=google.com; s=arc-20240605;
        b=JxBmig77hcAsNqSoDlbZHNK8d/R7tkYccbUNoT0expAGPQIh1YScWEH5YCv/F/6ucu
         TZtRO89aVAun8kJiz0FmDZDRveWbTuWQUI9g8C+2scG2+otZjtxXGCik9Oxd1AJaUsWU
         yLaqz3SfimeVXrMHmvpl9nLGT+WfvHQJOqdXoKTM2pINnKBUXAaQWwmilwWM9CIPaGt6
         TNLVVkydj9LYHiMzjyWUQouL5Z5Z9btyuXe0CLJWromMB2lpA7dHfwergsKnjOSDS8+a
         FlkVg3PNvo+FoKreGqBJ69bSfhHQNKwvziGYXnKqVnmD8DoWVvyAR+1YaukGxiHoWADt
         KRhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Xo+imGwld0ypXcQL2ZjsD6a3MiH21wOGQwRuA7g0DBo=;
        fh=Pu7TIlrJUimTOamOYfGVc1b4OYo2KCMFTzVIPYxU+Ic=;
        b=WU5EDLQ0qO/7G3e3HZC+HEKAmt57a2khe+EmpJgqkODGy70rrwBo7ioCIhGI+CmODd
         1YW5EmaQke6F3h3nZUzGmTdNCdFPWN1TqVtOv+8JfmQ9VpUfzTPXvncmUt23fIF+DGNG
         FnXCwpkMLEV1fQQVokmoVSN6BQQmPCjD/AJI/EqW00RLUh+dDMlfZaEU5Lfpl+RsgzNZ
         GHqEswJPRqh6p1qTUrBa+iuOjbTnXEYOuceVld+GWeGc0KSDq8GaR2F2e/CREirBxaqC
         2dF9mpahdUR8wlsTiqVyM1ZxmJdyTwrqpyT1cSl5RBv8Kx2krrbQSphFva7qvmvANmPV
         HwvA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770908040; x=1771512840; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xo+imGwld0ypXcQL2ZjsD6a3MiH21wOGQwRuA7g0DBo=;
        b=jd4w4Sna3JSZWgjOS8uPT3Ri4U0dxFbSkWGB/oFYjmiEb/Hz9HrFIkfgEXBnk/eOoI
         a5fXOIuGUYNU1IhOR7/r4/0y1o2HH9xC0Mf4WbVCj6mPPbN5WTAlzkdCz+iOGaD7Dj+V
         0CI+NJOFuEaX3uWROvqvB2+EWtcbCD3AC7h5XI6ytauJC+gFeULNUnKPpUF3UsXkenYE
         AY1D9LePzp6B9nmxqa2OudHDzqX2O/MTGIamWM0TwNFsT00zPzq498mGvr9do0rHiCjg
         NzctV6oTcUkiv46fPli3LfZui36q3UJDvrwsU08VSa86Ni5CuazuVtt/gLq5X2PJYn/R
         3dKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770908040; x=1771512840;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Xo+imGwld0ypXcQL2ZjsD6a3MiH21wOGQwRuA7g0DBo=;
        b=LW2yng+8UjXNKK6Tt6BemSS/lLEGCg6j/M66TRuNTy0gA2oLEIN2HQndX+aCaq3Awy
         0+H45EH80fwYmp5b+ManmI29ZFLnYW88Lh3cE+GLma+FlXTBNFTBfuuavaVoCG3/JPwO
         Bpdg54qYeh8hbjVTabsPs+OC1hnWSuv2X9djDlGzscP0GZ4JDZaqXiLChiEJun0PiM8G
         RrhhiOwfqu1BYxxjzQK3haU1D7D9yQR4uNEuS4C0bI50sT7bFvdNaHh+17UezA+N9kmm
         aEH2rjooX9MiJ+tTc4QEu9fHqPnqhWmhPI+8w1crwi4ezSNmi9Qpvqx0UoD/or592BFN
         4Ttg==
X-Forwarded-Encrypted: i=1; AJvYcCWVKiO5kg4Djgpl3CaTKeWwcQAyPviX7/bKCwgPbRpQQgrRZmycG+fCVsCxrpxSz562ti62l6xcLJ8z@vger.kernel.org
X-Gm-Message-State: AOJu0YwsBwVygRTTLp9piM3rofsPsoEBvIf2DkFFtnpWAmLG0FOj51Q0
	DkAYkel8MSQDES1e5ByKSwFddM4yDuCHajeqQ3HZWM4bfCv6xFRrqezyTHsbyN3g0q5AImo/Lqo
	NAHibht/GDeqKg/MpHVz4GAAUExZEpnY=
X-Gm-Gg: AZuq6aIv5Rmh9hiKBIvQ9Agjul3YBno9V+cS5nDwLlBX0noSm8XWokt88Wex/DWhoid
	asS5Q7lnX1HI93+/ULfmwwTHIpnIl0AyfoYnJItOS8NzT9IRxyLfCvkS43KXsjXYHUpl8Jl+ln1
	Aa589jrZXuSyvmTZSR66Emtdv+mmG/TOx6h2woBOQyN2ayUa1+7Fl+dFqS3Ku+VbtKOiV67gvKk
	Ypy41Zw1XvxbhSG1QX95CWRR+g1BoeIifY3gPrsrIQpO1ZnA2Lq2uolX+W5huL7GgMZBpvOwnRX
	/c1IMkpJHd1SxVrx4XF8eYQPODO1aVOdBR0E+P8vzqj6qcmCpqfv31YYeCXIybJi4b1MgA==
X-Received: by 2002:a05:6512:287:b0:59e:5cf5:fde with SMTP id
 2adb3069b0e04-59e6497a284mr726636e87.25.1770908040167; Thu, 12 Feb 2026
 06:54:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211-sm8550-uart15-v2-1-bd23a0de18bc@gmail.com> <567d28df-485c-4dd6-bfc1-5c357da7dde7@oss.qualcomm.com>
In-Reply-To: <567d28df-485c-4dd6-bfc1-5c357da7dde7@oss.qualcomm.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Thu, 12 Feb 2026 08:53:47 -0600
X-Gm-Features: AZwV_QjhXUgdr7_mKSxZ_vIxTTv4ghZwmnd84HDzREkIBKN1kPhN1nsfEyya7-c
Message-ID: <CALHNRZ9siWXhXGob0RrrYUauUu9hjChMhJTMU_BWoo9EGfEQ=w@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8550: Add UART15
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Xilin Wu <wuxilin123@gmail.com>, 
	Molly Sophia <mollysophia379@gmail.com>, Dmitry Baryshkov <lumag@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265106-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 0717F12EA78
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 4:49=E2=80=AFAM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 2/11/26 11:35 PM, Aaron Kling via B4 Relay wrote:
> > From: Xilin Wu <wuxilin123@gmail.com>
> >
> > Add uart15 node for UART bus present on sm8550 SoC.
> >
> > Signed-off-by: Molly Sophia <mollysophia379@gmail.com>
> > Signed-off-by: Xilin Wu <wuxilin123@gmail.com>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > ---
> > This patch was originally submitted as part of a series to support the
> > AYN Odin 2 [0]. That series stalled, so submitting separately.
> >
> > [0] https://lore.kernel.org/all/20240424-ayn-odin2-initial-v1-0-e0aa05c=
991fd@gmail.com/
> > ---
> > Changes in v2:
> > - Use QCOM_ICC_TAG_ define in interconnect paths phandle third argument
> > - Link to v1: https://lore.kernel.org/r/20260207-sm8550-uart15-v1-1-d8c=
cf746d102@gmail.com
> > ---
> >  arch/arm64/boot/dts/qcom/sm8550.dtsi | 24 ++++++++++++++++++++++++
> >  1 file changed, 24 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts=
/qcom/sm8550.dtsi
> > index e3f93f4f412ded9583a6bc9215185a0daf5f1b57..a54f375f7f041a193a4396e=
4aa911abb42e3e6dc 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > @@ -1251,6 +1251,22 @@ &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY=
>,
> >                               #size-cells =3D <0>;
> >                               status =3D "disabled";
> >                       };
> > +
> > +                     uart15: serial@89c000 {
>
> This should be uart23 (see other nodes at this base addr have that index)

Am I missing something here? For sm8550 [0], I see i2c@89c000 and
spi@89c000 labelled as i2c15 and spi15 respectively.

> > +                             compatible =3D "qcom,geni-uart";
> > +                             reg =3D <0 0x89c000 0 0x4000>;
>
> Please pad the address to 8 hex digits with leading zeroes

Ack.

> [...]
> > +                     qup_uart15_default: qup-uart15-default-state {
>
> And let's also update the name here
>
> Konrad

Aaron

[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/arch/arm64/boot/dts/qcom/sm8550.dtsi?h=3Dv6.19#n1205

