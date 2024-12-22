Return-Path: <devicetree+bounces-133389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 353C09FA730
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:19:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DA1B07A0763
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:19:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 824D818A6B7;
	Sun, 22 Dec 2024 17:19:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09183C8C7
	for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 17:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734887969; cv=none; b=pq4u9TCW/jd1F8MeusbDxWU7veOD9dWegCh24Pzu6oNrpZ4S9nWJMp+uNHDIdhm2wLEbSfE+tRUGcXjcQcj+8zrTS8Kg+QDGvAuvvYtRK/3jKNVgWX0GoOf3/THb5mx6L2FVWds++31A8P+GlnCPG05YN+wZqviE0fKF0nq54xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734887969; c=relaxed/simple;
	bh=3PhJiSu5/A8Ap0S++9+7kwOBqZp2RZr+0i4T2inRKwI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IVUCFg9KYRu9SsN9+iXmb6RTtv/O7dC0edeceGKHXqukFtu7MuEk2i8AFjer+Sx9u77H2TrWr2Tl5tsfFJdQr8JX5lWot/jcoaqi9WgMzgedRtNNtqLra7RYfYyZbYyYs4Rou/1mEVObqVIbrX6ivqrZ5ZubBzBg4PQ+oGQ+tQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.166.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-io1-f43.google.com with SMTP id ca18e2360f4ac-844ce6d0716so290961239f.1
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 09:19:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734887963; x=1735492763;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Jn4oJG4kk9AZGnKXQKwGIPd246ZQVSmkzpo6s8kUSt8=;
        b=VRjd1h4r4vyiknxdq49KXBqJhiXt5OZR+MhADQBBGMdrOFJisxukXb7KAx2VL4/UIn
         33qPpCKYRgYCuKScPVoIWZUMYifLDRiKDDoWK05tPG6XHMmTHn1qoBdwuIm516UGR44X
         3voUZxptA79bmT0D3sS+FgLA4N5z1F1dQC9LR17WPixOAdRwlrQ7OnKRK4RoKFWVewRv
         7YNOjNv0ZXeAtsWDjG+LgGiIo4ZMfE+QmVN647DYbNcJuBnyQQWiVhxMjU28Q5dVeeMN
         7DlqjuE9lalqWc69NOgLpt5TUUdnGe4NXEmzrY1rtRVoOHGRHCwSIpwb4IrN2BlG+khe
         jiog==
X-Forwarded-Encrypted: i=1; AJvYcCXVRzX0L0uOql9WZJTuEw7vKymsue5j5F/U5slkQVrSKpOwtADl05Ue1nPcEPTsI0o3agCB5EcFcN3R@vger.kernel.org
X-Gm-Message-State: AOJu0YwOnf+uCnC74oIIymITrjP/MbNo31p41V4fjqm/I/Hmb76z0tI8
	OLXz6DCt6hbo3gd1f6VuIGSoAX3g1g0CbFDhCSRlXAYIWhEDhuIrJpicXiVUCDM=
X-Gm-Gg: ASbGncsk+h3WkSQkV1YsO6UI5qrpyJVHVlWUXo16E6cfLCMeoUvCv6eBx9Pw1g/sPFR
	q/cM41snODzRR5a1GucDqJs8HWXX7ZxIpjb+ewFDM3964XOvAVGzsemUQPVyqx8mngZTEk1gHhw
	tUMfSPbK1cwbX8Wyu5SuhsO9PTr/oREbgsaEWzBdkVsaXavXvLgFk336pKJnFhK8rOeLj8H38fJ
	qSP4WkRqJBcPctfGGnSyH65LUdwXYo9Pop5muK4mJFXr/wiv6KLN0eWEK5Ma2AIemSzKzGYRYe9
	aeh8VYQzfA==
X-Google-Smtp-Source: AGHT+IGtbDwgy9BeDF4F7+MweUo75HN2k+fu1w0fPiFJ3ebt+qHTcgeYGXTzaBWrX/Xi/fNBbHlnVA==
X-Received: by 2002:a05:6602:6cc7:b0:849:c82e:c07e with SMTP id ca18e2360f4ac-849c82ec30cmr160425739f.15.1734887963534;
        Sun, 22 Dec 2024 09:19:23 -0800 (PST)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com. [209.85.166.47])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-8498d8aa81bsm184648239f.36.2024.12.22.09.19.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Dec 2024 09:19:22 -0800 (PST)
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-844dac0a8f4so248973239f.2
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 09:19:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUDXygDeiYVL/9RRBjzGYzJSjepjvyWkeB+TZvfk16ghPsyA1Jk5kRuIzF8Dg1P89xSr1fuRNdbbOUP@vger.kernel.org
X-Received: by 2002:a05:6602:2dc6:b0:844:dfcd:8de3 with SMTP id
 ca18e2360f4ac-8499e4f2fd1mr899114039f.1.1734887962153; Sun, 22 Dec 2024
 09:19:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241220120038.3137248-1-pbrobinson@gmail.com> <20241220120038.3137248-2-pbrobinson@gmail.com>
In-Reply-To: <20241220120038.3137248-2-pbrobinson@gmail.com>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 23 Dec 2024 01:19:08 +0800
X-Gmail-Original-Message-ID: <CAGb2v66enf0ybbyW3tW_YRdJB0=aOsXidm_bNHh=wdmm+HPBuw@mail.gmail.com>
Message-ID: <CAGb2v66enf0ybbyW3tW_YRdJB0=aOsXidm_bNHh=wdmm+HPBuw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: allwinner: a64: Add WiFi/BT header on Pine64
To: Peter Robinson <pbrobinson@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 20, 2024 at 8:00=E2=80=AFPM Peter Robinson <pbrobinson@gmail.co=
m> wrote:
>
> This adds all the pin mappings on the WiFi/BT header on
> the original Pine64. They're disabled by default as the
> modules don't ship by default. This includes, where they
> haven't been already, UART1 for BT and mmc1 for WiFi.
>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  .../boot/dts/allwinner/sun50i-a64-pine64.dts    | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts b/arch/a=
rm64/boot/dts/allwinner/sun50i-a64-pine64.dts
> index 09e71fd60785..f04f0f1badc4 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
> @@ -35,6 +35,11 @@ hdmi_con_in: endpoint {
>                         };
>                 };
>         };
> +
> +       wifi_pwrseq: pwrseq {
> +               compatible =3D "mmc-pwrseq-simple";
> +               reset-gpios =3D <&r_pio 0 2 GPIO_ACTIVE_LOW>; /* PL2 */
> +       };
>  };
>
>  &codec {
> @@ -124,6 +129,17 @@ &mmc0 {
>         status =3D "okay";
>  };
>
> +/* On Wifi/BT connector */
> +&mmc1 {
> +       pinctrl-names =3D "default";
> +       pinctrl-0 =3D <&mmc1_pins>;
> +       vmmc-supply =3D <&reg_dldo4>;
> +       vqmmc-supply =3D <&reg_eldo1>;
> +       mmc-pwrseq =3D <&wifi_pwrseq>;
> +       bus-width =3D <4>;
> +       non-removable;

Please also add an explicit 'status =3D "disabled"', like what is done
for the uart below.

ChenYu

> +};
> +
>  &ohci0 {
>         status =3D "okay";
>  };
> @@ -286,6 +302,7 @@ &uart0 {
>  &uart1 {
>         pinctrl-names =3D "default";
>         pinctrl-0 =3D <&uart1_pins>, <&uart1_rts_cts_pins>;
> +       uart-has-rtscts;
>         status =3D "disabled";
>  };
>
> --
> 2.47.1
>
>

