Return-Path: <devicetree+bounces-263278-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDv9Adq1hWmOFgQAu9opvQ
	(envelope-from <devicetree+bounces-263278-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 10:35:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E575FC157
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 10:35:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CB22730091C7
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 09:35:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57C5F35E55E;
	Fri,  6 Feb 2026 09:35:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1564935E547
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 09:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770370517; cv=none; b=iATrhncNTXTLYtMaEGpe0Oq+eumzmyiuY/1P7FJ4Ui9m2TYXEnteCyswJyNG6ZAEXlLo2j2he1fVfCovTP4/25MK4o3m0jr9xYtQ62z5FZCE2fTv7gknzVrlpDqdNF/av7h38BhNwuuCBKf66lgXzdk3VfMiRANcVk21kfaucOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770370517; c=relaxed/simple;
	bh=pIk8ctLXvGGQoexJ39+u+i88l55lBO5MXhp+wDnNMsE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gc4hzvUKNu1NA8rRDqqNy99S4htBZ8Z7SzpT9QrwPPq1zbfswxp7YCKadLTJyety91+RBuZGBR31IxTpKjKMOUu1j1yW7vcuQH0FUD6vFvdmE2KbS3lHiFF0vmFmt3Nu0+WGgvz8Vq/aWjuV1qv5NNkUglGoQvVGgUtYJ2YYDs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.128.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-795055a17a3so20626997b3.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 01:35:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770370516; x=1770975316;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=97h4eVOHCmmh09MnKxer+8uCDsA8AM3Tmyg3WdIsF/E=;
        b=QIB4R4Hchfcg/28Q58x0wJCwb5vJIwwNhp2V+BN7PjpWcEWRXkwrADdJpYWmwmVphu
         G9JNYpJgGa07Rys8bHfV9HLgDUVOwNKVNCb1UgD22silg/dOMeVTnrPaUrU9DBhyWrNg
         ZHyu5c2gsTvq3CqnRaqyns5wEuS2/MC/b1KETCVPa0essIEwvUfKF3RBe/F55X9QC5Og
         HTHVC6sKO6qSW5kptAI+couZ1QwYRVx+rnyYZ8xSplBr8kQvmJi/alcTXVKP7V8J6+GX
         BoUwP2GiMMhaY0TO9UBtbs8VqNSSiPwJA3g+Go9MUNnb3Lhy8vmvXvTXVMRn0J4lglaZ
         DVNA==
X-Forwarded-Encrypted: i=1; AJvYcCWLLJtnZSjXKJ39s/Hbggjzq9tAZ98kLejJgcAQx7ByVr81/M7GsbcBWakEI0OrUQtwf1Gy8z18Jo67@vger.kernel.org
X-Gm-Message-State: AOJu0YyUZlrM1yIaeNREPZvO4DjGwij8sdCcbrD+hMI8fyaB8CxqtezK
	mLT8RBQ51RMsge8kJUp51Msk8SlprLvZOX7pkKWkQTt+J5hy4gkXE64pWwGbcg==
X-Gm-Gg: AZuq6aLsoMfLnwDPy6fGL5wBlP4ge50BxGmIgWEUYUDQuf3BOD6xqKnNl+Wm+TV/07f
	Z+wcNUK3vZYGAHepnmQtH1BZO3mmjpv7evlOwZhQ19wOFiFtqV3oPsgjqSoeMyh8etcbZKSJsT/
	4HdX8w7dckwdJx/rN+A08dbBGpv95gnXShja0LmOJC4sUvZ2wf81pkwrC11hA2HEwoWrZFgaQ63
	AHeDwOY8kHnyUUZc7Mxxz93kP9AJy8W5F60nWD3oQz9tm7BgBmIAr7rJAt4uwsVTk17dNJeFYA7
	IgMEfQfMkfsKF7Xet6nndVjpLcAi7h+/lXBOwrJbiAw/GwmUXzhVAB48YAXt0AH7fYom3EevtZI
	lkaNWciKJb/Sf34lc0Lb+VgZuxgUQIDg1IMKJxwexk7H7ud6GmLBjaSeIIMjJrQ3D0XaA0wu5g5
	xBPVhPa4GHLQtPgdDOAAWLQP/3o9KSPAWDJXRV0VbZWLyHvIYPnfV5
X-Received: by 2002:a05:690c:6602:b0:794:ed66:86a9 with SMTP id 00721157ae682-7952aa6b354mr22871767b3.5.1770370516059;
        Fri, 06 Feb 2026 01:35:16 -0800 (PST)
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com. [74.125.224.41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7952a1d819fsm16259777b3.36.2026.02.06.01.35.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 01:35:15 -0800 (PST)
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-649278a69c5so1645602d50.3
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 01:35:14 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUhAsrfjsrneoyhNVC2UHo5ND8ufppXqgVUcZ3s/tJXSNYr8PC5vpNn6QJaPIi7VKLbaCqxldFM9mng@vger.kernel.org
X-Received: by 2002:a05:690e:bc9:b0:64a:cf14:ff0f with SMTP id
 956f58d0204a3-64acf14ff9bmr377569d50.97.1770370514307; Fri, 06 Feb 2026
 01:35:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <6cd569ad19ae8efb5f4244b3aa185754@gmail.com> <eb9c1489-4496-48b3-8709-739cd45c11b0@oss.qualcomm.com>
 <CAEQ9gEkH8mJu+kwghbFFwNi9RfbQ6CzykoYVJqa6YAL-74SaKQ@mail.gmail.com> <eefc4df5-78dc-4dbf-89f5-c255d3ae41a3@oss.qualcomm.com>
In-Reply-To: <eefc4df5-78dc-4dbf-89f5-c255d3ae41a3@oss.qualcomm.com>
From: Roger Shimizu <rosh@debian.org>
Date: Fri, 6 Feb 2026 01:35:03 -0800
X-Gmail-Original-Message-ID: <CAEQ9gE=sw9dmD67xRK0uvYLt9bd=ervifBSAjagNTw+zVr0e3Q@mail.gmail.com>
X-Gm-Features: AZwV_Qga-r_Zgfnv8uUZI65QJGlxWjZjfmClBEA6Z83uIl9y3Hk-Wet5N3VASR4
Message-ID: <CAEQ9gE=sw9dmD67xRK0uvYLt9bd=ervifBSAjagNTw+zVr0e3Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490: Add Thundercomm AI Mini PC G1 IoT
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263278-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[debian.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosh@debian.org,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.987];
	RCPT_COUNT_SEVEN(0.00)[9];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 2E575FC157
X-Rspamd-Action: no action

On Thu, Feb 5, 2026 at 12:52=E2=80=AFAM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 2/5/26 1:04 AM, Roger Shimizu wrote:
> > Thanks Konrad for the review!
> >
> > On Wed, Feb 4, 2026 at 1:21=E2=80=AFAM Konrad Dybcio
> > <konrad.dybcio@oss.qualcomm.com> wrote:
> >>
> >> On 1/31/26 11:31 AM, Roger Shimizu wrote:
> >>> Thundercomm AI MiniPC G1 IoT is single board computer with
> >>> AI capability based on Qualcomm QCS6490 platform.
> >>>
> >>> This device tree is confirmed to work as below:
> >>> - GPU
> >>> - HDMI output port
> >>> - PCIe M.2 port (for external Wi-Fi or 5G connectivity)
> >>> - UART / serial console port
> >>> - UFS
> >>> - USB Type-C port, with Display Port
> >>>
> >>> Signed-off-by: Roger Shimizu <rosh@debian.org>
> >>> ---
>
> [...]
>
> >>> +             vreg_s1b_1p872: smps1 {
> >>> +                     regulator-name =3D "vreg_s1b_1p872";
> >>> +                     regulator-min-microvolt =3D <1840000>;
> >>> +                     regulator-max-microvolt =3D <2040000>;
> >>
> >> Have you cross-checked the regulator settings against the original
> >> vendor-provided sw?
> >
> > No. Those are from RB3 Gen2. So far there's no issue.
> > If there's an issue, we can fix it later.
>
> The issue may be that once you enable one of these regulators, you'll
> see magic smoke.. please cross-check it

Thanks for the explanation!
I'll check it.

> >> [...]
> >>
> >>> +&pon_pwrkey {
> >>> +     status =3D "okay";
> >>> +};
> >>
> >> This one is already enabled
> >
> > May I know where it's enabled?
> > From my search, pon_pwrkey is defined in:
> > arch/arm64/boot/dts/qcom/pmk8350.dtsi, which is disabled.
>
> Right, I must have misread.

Glad it's clarified.

-Roger

