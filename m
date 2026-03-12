Return-Path: <devicetree+bounces-274381-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFcrNm4ZsmmpIgAAu9opvQ
	(envelope-from <devicetree+bounces-274381-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 02:39:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3133D26BF68
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 02:39:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3C3AC3015152
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 01:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4327D1A6832;
	Thu, 12 Mar 2026 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UtK95c2p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C24374E76
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 01:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773279593; cv=pass; b=htgPdrJ5bMdcHDGkED18KAq6nMXs0rXhTrZcfkQ7hRjsReha85gI2E1A2PuWp0HKBEwMiwqMjNO/ASHJqVVOt7M+x8V4oZTXCna0677cwxdAtOZ1KclT+Gl0HxGYq26A4Mx3J8SiMml69DMx7urYgOCHt/0JhxwjwERBUFbRnP8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773279593; c=relaxed/simple;
	bh=0SXtsTgT9IuFByxCXdT7M5qT+FlB3U/D69kQlXMNq3A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tx6KxX/AiWsD4zPyQPz3h9UOJk6O9uKkQ/fwekoSlnmt8wCGC83rkrll2M6vOHThf2VFy8E4IZHJBLYdJ0u4fFFYemYVu3P4LSV6fQpg3y/OuD4109+SXcJVDNHR1QGmzXaCTIf/l1OxzaO+0ttdKP1syI/D2udy6gf0dlxQwvQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UtK95c2p; arc=pass smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-59e4a04f059so590611e87.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 18:39:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773279589; cv=none;
        d=google.com; s=arc-20240605;
        b=kPYySLGmGy4OLmsNXKX1eTMn8Xg3aFrp60Pfnwp7vGEEv/tZs2cTnXU3a+xtZ3EEws
         aZtxHymLfx3r5OBlu6AHO0jobqJyVZN5FB+NRvTq3zKDmaldOvCwdihfgN2GNq9MHgtT
         LkltRzEEnlBoe+wgzHNoUidNZisN4KjqvDm1qRQjZrqqIJQBdqUlIZxOvaWI0gBcNNU8
         mYfpaATCJB5K8jvWZy+K2CmMxIfczM+XEfgIVcxeKfU07FH0+sWnhLPFxwyldBEDWnYp
         7JYvCnkACnMy9KV3TQd0VSnvrP/0BYOoFyD5c12YEQJMwyzfgH/y6BX5wY6cEoAYtBXh
         rvPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=FM7n91Oq4EMi0Qsnljin2+dvXPrnJtrAjN4kRXM5Rvw=;
        fh=HxxWCE0TkHd8vx/niE5H6xD/tGKnRmx28BuvmFHvAW8=;
        b=kLnLTSQ34kGoiuaMcgph/9kXidPtry7f9VzPFY26xz7WGM+y09IBN2uUriSOwm6PMA
         Sr3XlOPxBoojpsZeiZzKal92NEOjEbo55K6RMbXvBDQC7OIvym14eRlAppxVUATglaaa
         W1lzBbCDYsPEvPLSDZv6RRxNa7GHCLWX6ngfUjtB/Vb8vsCD3bHMb0sNIIN/ZqbL71X0
         q+unmaTIdoPtgUN0wmWEy8DUcXM69LrUtFr9XthBmj/djKaVZCY706BjVHsrtTPpbXau
         qJYoy8CbcDbWofrQAT5/0MzRUgCiDIXU0EqxGgRWNIfnYffbJ8LU2aV02JbEObW5vwvX
         o+kw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773279589; x=1773884389; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FM7n91Oq4EMi0Qsnljin2+dvXPrnJtrAjN4kRXM5Rvw=;
        b=UtK95c2p5qR/qa8g2OXqWTT4RMKj2K4XsxGsVd59x2ENuoVoY0Nsbezd5i7HRLqBOT
         fcL5/WlxjH4gR2onlkHKoahzY1rknH4VYmvJpKrIaeZf3e6AvmwcKeZ0/Cor7TB4m/8E
         ONgGSF8fIm8ObHCjUsodq3W5flktmXAk7fHT4Bj6epQKFwM2B6dFrgioIbNGXN2Z6nJp
         CY/dHic+PbHM0kuFlGJhLFmEvgAIf7M0H6tmOtzQvhOerFTTnNhWbA0wYEEuy0gLo2MR
         nTJhBwyGUO3VRL1Ik1zLyPiCXFmJd+A+TgHX7gbvN8Pwpp4ZQkskIniz/sV5vWyAgdi9
         NPXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773279589; x=1773884389;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FM7n91Oq4EMi0Qsnljin2+dvXPrnJtrAjN4kRXM5Rvw=;
        b=tC6KRj52vOC09STkXMa8QJSyQ+tIdKvSSADeClSrw6Jdf8zxEjD2izhNx20mzmVDB3
         4wxCtqSrl3Yi8FEZSHzfY6U0qclzorHq/LiufrG+C2n13yollHiAuNLq3fFcOXAP7X1y
         d5N1KBvJeal5siB1IaM/gdtOJiNCbK4eO9fGhWZXUSpaFh08WnSU1iPU6y4fYt3n7znu
         zuvxMkVjuSlWP4NamH6IGZSRKJKv82ltrRjjajfVzeTTWxEcUW3iE900o75s/mhesCxt
         Htg/ZItFUFdqVx7uwNsVcarYu7tI0nCTKmFKunx0MoAMl8crcnL3QfCv02IcWInybALU
         ACtA==
X-Forwarded-Encrypted: i=1; AJvYcCXdIS2Z6rnQJyMYugev9MEZFqR8nizAVIaxnoKbXXxro6BlGK29Ygtp8s30BU8VQKyYAALta2FTfXqf@vger.kernel.org
X-Gm-Message-State: AOJu0YzySJvFSp8gc4uD3/La69BhG/Ed4NAq0m7FQeJMJ53Caotxo1XE
	QXHvYvj2CwO+hXTct5YMM0bycina3PCRTUnEPZnXQN9BNSkwFn1mmbKuapLodWT28Taho9HSQGM
	f/NB1kKDD3vukJVTmzQ0bwJc1ZSpRFJA=
X-Gm-Gg: ATEYQzz51yGBzQD1D6LQ1JZj/vUK1xgJQH6CkcGOb/wPTwU4amWwzRfA0cYWvNxduQV
	kaKk2R1RKAVTnxrYukFWrssCiitHG7IP7XGvHQEWiKfERZmt4yNhZAFQbyWxYYve1/cOE4EUIMZ
	lL1x+Z5dqPdO/yRcNVWhaiog5loZt4/EkRxJ92Iu1Xd95d3k7kXmt+bdwsscFv+q0lNhnzbTYjM
	2tmqzMRgYI5KcCVwsxZ3skzI6R0kjOhQV96ibKu08FbUmCTv9Y9cSDLBrjRtwOOIcdw7Gt4ghUV
	Dedk29DUSBUDdtUD1Dt38srWlphYShsg/rUnMauOwFsLToMvfSZAXh/CZAPqHK5gOcXR
X-Received: by 2002:a2e:b892:0:b0:38a:56cc:628b with SMTP id
 38308e7fff4ca-38a67e6565amr15562361fa.29.1773279588636; Wed, 11 Mar 2026
 18:39:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260311-ayn-qcs8550-v2-0-e66986e0f0cb@gmail.com>
 <20260311-ayn-qcs8550-v2-2-e66986e0f0cb@gmail.com> <4757fd22-fe9f-4228-a0a5-11d9309549ac@packett.cool>
In-Reply-To: <4757fd22-fe9f-4228-a0a5-11d9309549ac@packett.cool>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Wed, 11 Mar 2026 20:39:37 -0500
X-Gm-Features: AaiRm52jcRebLOKGRG6II1wULJvyLW9QFFSf8ozsKj12tdfaNCNcaE5_33htURY
Message-ID: <CALHNRZ_RU+uHXfUtSO+8pKOYfBuK9jbYgqWE70WMQ=5Qz2MvvQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] arm64: dts: qcom: Add AYN QCS8550 Common
To: Val Packett <val@packett.cool>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Teguh Sobirin <teguh@sobir.in>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274381-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[packett.cool:email,mail.gmail.com:mid,sobir.in:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3133D26BF68
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 7:49=E2=80=AFPM Val Packett <val@packett.cool> wrot=
e:
>
> On 3/11/26 2:44 PM, Aaron Kling wrote:
>
> > From: Teguh Sobirin <teguh@sobir.in>
> >
> > This adds a base dtb of everything common between the AYN QCS8550
> > devices. It is intended to be extended by device specific overlays.
> >
> > Signed-off-by: Teguh Sobirin <teguh@sobir.in>
> > Co-developed-by: Aaron Kling <webgeek1234@gmail.com>
> > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > ---
> >   arch/arm64/boot/dts/qcom/Makefile                  |    1 +
> >   arch/arm64/boot/dts/qcom/qcs8550-ayntec-common.dts | 1777 +++++++++++=
+++++++++
> >   2 files changed, 1778 insertions(+)
> > [=E2=80=A6]
> > +/ {
> > +     model =3D "AYN QCS8550 Common";
> > +     compatible =3D "ayntec,qcs8550-common", "qcom,qcs8550", "qcom,sm8=
550";
>
> Huh?.. All existing -common files are .dtsi includes without their own
> model/compatible, and the compile-time "dtbo" support is only used for
> EL2 where we want to apply the same thing to many many devices without
> polluting the tree with extra glue files. I don't see why this should be
> a "common device" with its own compatible string, and not just a dtsi.

My use case for these devices is Android, using a single base dtb and
variant dtbo's in a single software build. Given the aosp boot image
v4 setup, using individual dtb's would require different vendor_boot
images, which would require multiple build targets. This setup allows
for my use case, while also having individual dtb targets for a
standard Linux use case. To my knowledge, the final device specific
dtb from this is the same as a dtb using a common dtsi.

> > [=E2=80=A6]
> > +&gpu {
> > +     status =3D "okay";
> > +
> > +     zap-shader {
> > +             firmware-name =3D "qcom/sm8550/a740_zap.mbn";
> > +     };
> > +};
>
> Please use the &gpu_zap_shader label.

Ack.

> And does the generic zap actually just work?

The devices boot and the gpu works, so whatever code path is being
used works. These devices are unfused, and based on what I understand
a zap shader to be, switching a gpu from secure mode to non-secure,
I'm not sure it's needed at all. I have not tested just not setting,
though.

> > [=E2=80=A6]
> > +&i2c0 {
> > +     clock-frequency =3D <400000>;
> > +     status =3D "okay";
> > +};
> > +
> > +&i2c4 {
> > +     clock-frequency =3D <400000>;
> > +     status =3D "okay";
> > +};
> > +
> > +&i2c12 {
> > +     clock-frequency =3D <400000>;
> > +     status =3D "okay";
> > +};
> If the individual devices actually use these busses, better to enable
> them inside of their .dts as well I think?

I can move them. I think the idea was that all variants do use these,
but for different hardware, so might as well commonize this part. This
part existed before I started working on the devices, so I can't say
for sure.

> > +&iris {
> > +     status =3D "okay";
> > +};
> Works with generic firmware?

I have not been able to verify this. Unfortunately, there is not an
aidl v4l2 c2 hal for aosp. If the expectation is that device specific
firmware is needed, even for unfused devices, I can drop this section
until I am able to use it. Or maybe Teguh could chime in if this works
on ROCKNIX.

> > [=E2=80=A6]
> > +&pcie0 {
> > +     wake-gpios =3D <&tlmm 96 GPIO_ACTIVE_HIGH>;
> > +     perst-gpios =3D <&tlmm 94 GPIO_ACTIVE_LOW>;
> Current binding is to put these inside of the &pcieportN (renaming
> 'perst' to 'reset' which I just noticed I failed to do for one of my own
> files :D), see x1e78100-lenovo-thinkpad-t14s.dtsi for an example.

Ack.

> > [=E2=80=A6]
>
> Thanks for this work, very cool overall!
>
> ~val

Aaron

