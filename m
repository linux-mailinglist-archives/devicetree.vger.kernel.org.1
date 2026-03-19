Return-Path: <devicetree+bounces-278040-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCFDNV15vGnOzAIAu9opvQ
	(envelope-from <devicetree+bounces-278040-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 23:31:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C0A2D2FCD
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 23:31:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D721E3015CAA
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 22:31:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57542401485;
	Thu, 19 Mar 2026 22:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WzbeDWpu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96ED29BD91
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 22:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773959515; cv=pass; b=C2Fm9lXgfVzIRHndxFTitiA9lFb4jcO4aC3JmKUgq3JeeSI6AHVZtrJZmR2BCe7zv3zB+gcZy6OkjUuAclyW1A8KiTUMTqAqc/Mo5S2hNcsSGX6lDV8Q/bcyritHR2qdyFQieGqIP+d9g7qLz63kWD2x8sOH90CHZZWjDEcRTAc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773959515; c=relaxed/simple;
	bh=mit0KJzLUgP4cy0lfJX9+xslzDEkhkVsK4QH9qQkfJY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b91gfo43DdpDrAXO4JKTxLtO5TFAMJUdQNOxB1nk/1FCP9Ww0TuRJl8hEfX49xxSn3YjTUFFILN0QbqXP9Pi+5oO+tL97SIjIypVr5v6/M1/c99E1EJ3D0SpFtiRuerOPh//W+K4xGZxRaXfY0o8gXR3YcrRZtOvjWQ/XMt3Ck4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WzbeDWpu; arc=pass smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5a12cd0bd79so1452519e87.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 15:31:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773959512; cv=none;
        d=google.com; s=arc-20240605;
        b=HETIO/NwRdF+w0gfw+kR5jp/+SJ6plKybyo90goOOOYDJMTLV5bDon0oIsCmikPUFz
         GRBtb5hA1WH3VzVzy3/9lFFVVSTcGXQwWB/UdcJf67c338YevBDw7XaIz5nn+xKpoCha
         g85QkcVjShXYBnyRCZlExYqGbaQVFjLkUo6g6UuZrPX6TkJb79biAzBwC69eJ7WaH7Wu
         LxZTRkh0mV34LPwt8bmKTIvQ+E0UBwK/IALgSzeRBsIpkSNQQodDtD9nBXXHImBei/3w
         QSn6cqLoYgVQBCL6QYdDYQSLOzUAuQIxOwxR+qoQa2+DJAb+CgqRssg901INHoT40paL
         MHJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nt8XMePWEklKsT16TIWwyu3AEb1T4eMX52Gzu+7bRRk=;
        fh=yrX4jCAlDiEVVh7DtPpJo1ApCffBOoXOHXdMIQKdl34=;
        b=K1m2LSwJZflHwyMsUUn4Tivv23S4E+/nNWyyfMqX1CESZrTfTZa4D3WR+a0fNusR7b
         xk/KcoDGH85YRQcA8g6VfUTNLxEP65p6h3hysnvqITbeh74j2NS3qfIiMWSiDzCi409o
         SkomaaX0jogozbkLx1EbuAnMM/cNnn5qRnEWcbP1KLtiVYnWa2yjJoXWrXPdKQkuNsZP
         0bQAjcvc+ueJg86X1NYGrAwO8sEBqmOtzyJT9rm9FY5Blf2SNW6uMOWY/V+yw5pZHDUb
         WLnn5DVKrnEKB/kcTldZuYS4srgyelLRJWxf9pqwe7z1yDGCZLz22WREddEEqHku+xz3
         ORXA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773959512; x=1774564312; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nt8XMePWEklKsT16TIWwyu3AEb1T4eMX52Gzu+7bRRk=;
        b=WzbeDWpu2Z64zv82n6ECxgmIjMpVLzjWkmbzZlJ3D+1Mzxf9OLfqECSCzZugi8umwQ
         6h2jvmMqP3dbWz/to4mUelTyR+BQ9I7sqhcITGFCWGTj5QnMoog6l99BNWbqtJtgTDsU
         PjuP93SoH9i0l1xdcLFN6VwEYLdp1nVG3PvyBO9Y5sPkOMmQyR9z5soapEEFtryMTUR1
         tDRLaxkj/9fE14GDxLi9no1zqGDeHw4JP/NBcJX9nnMzAygGAlyK0zFIjBNNKnHhZ6JP
         WX/jkt9XmB2+KxjJJPYhDQGuCgcTX+YvNAUtJh+fTPyABVn3Z0EAFIKJJJPSc30UEmQB
         rcPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773959512; x=1774564312;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nt8XMePWEklKsT16TIWwyu3AEb1T4eMX52Gzu+7bRRk=;
        b=McXGj0FhFfDG6f5VcyHOa666sQ35m4FjyQxrWsGINDl7EJ+44GI28OJU9pgvGgCNyg
         67gpU+vtO4fTeOwDVugReboJJ0poHUFv+OFTqCMv4ek+9GUiA5o9ulzZIVaovI+T32vW
         9h42PJSs4U6P2TJBJki3N42vnWuWlTNitZCVuymCXM2KQM6VQMsiG8JrtMhStH+1jNPD
         7IJsUDJ0YLdhCyoSPNZeoolAY8a3fzT//MhdGR67HdSDNUNTIolMPaaIJkaSlBUXV/h3
         3Ch1UtvHSGvKJGTU1GYvwQn5E9JUVZX4xFClGofV1bXHzfxv/3vHIp8jjJpJ0OqFjf3Q
         sWxg==
X-Forwarded-Encrypted: i=1; AJvYcCXgP05PQ2bk6Fydh56Em6OsLb35T416kRkp9NnBIBilkc/at2Boa9X+hSVSC9ndpXiNKSyS5PjvS83o@vger.kernel.org
X-Gm-Message-State: AOJu0Yyxph3ruXHAXBuovfxFEZhM05fpUviCgRlU989tHsGBL5vIqonS
	PNAIYIwtWnifBj8xnHPf95au1wBcuCCNb6ru9+vP7urOcfLEL89qOLwVrgHjAfWnV3WjFsCvuT1
	+rg4tlXrs3bKF0nHuAFutuB7TcARPHGE=
X-Gm-Gg: ATEYQzy9UjQ0yf29r+ClxNftXMHkbDLjW3PWXDre3vp+llbsgebLwrGXi2/+62//kGh
	kFX9iqtXpZQXTZnuPGT2XcALJI7O5eLhB3P559iuZFw5rRiuNEoPbBD5EGJGtCbAfxuJDI8Vd4n
	TEStFNRucepP4eFDBZvKFlqC8WPFLp4cDk0pbZe4ThT09dEzhAsRCSs3L3yp6WUN4gPRZbrvKlB
	SxDymJAJcyvNqRoQX9DYCruo6JZaZWvGjmpS7xzPe1UlKK8QaLwK9Nwul7NTgX7DdtvSKPbHjge
	VbF62X29EQMXaNS/954vRX+CPIRFVnqudg3rVPKkbMOeHZTPlatFn4Jj+1gwHhoBhuyM
X-Received: by 2002:a05:6512:31ce:b0:5a2:7b95:af0 with SMTP id
 2adb3069b0e04-5a285b44041mr293044e87.25.1773959511843; Thu, 19 Mar 2026
 15:31:51 -0700 (PDT)
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
Date: Thu, 19 Mar 2026 17:31:40 -0500
X-Gm-Features: AaiRm50YUdnjEIFoQzOS88tsT0r32B87raRY5860v1pJ-Ke5qGg8NEzyLj1w_kI
Message-ID: <CALHNRZ97zmk0BmctznXrrnyyk50XH506GrdWSU-mEeN3NVEBFQ@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278040-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.599];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 35C0A2D2FCD
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
>
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
>
> And does the generic zap actually just work?
>
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
> > +&iris {
> > +     status =3D "okay";
> > +};
> Works with generic firmware?
> > [=E2=80=A6]
> > +&pcie0 {
> > +     wake-gpios =3D <&tlmm 96 GPIO_ACTIVE_HIGH>;
> > +     perst-gpios =3D <&tlmm 94 GPIO_ACTIVE_LOW>;
> Current binding is to put these inside of the &pcieportN (renaming
> 'perst' to 'reset' which I just noticed I failed to do for one of my own
> files :D), see x1e78100-lenovo-thinkpad-t14s.dtsi for an example.

I tried making this change, but the pcie port failed to probe. I also
notice that all existing sm8550 devices still use the 'old' syntax.

Aaron

