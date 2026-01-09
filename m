Return-Path: <devicetree+bounces-253348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3589BD0B031
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 16:46:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9F637306C430
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 15:38:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6AEE35CBDF;
	Fri,  9 Jan 2026 15:38:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com [209.85.167.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA7835C180
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 15:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767973080; cv=none; b=ThxgYweKyiSG+YeK3bDAihgTQLFAZAv1yx9rg7u16L0KKQ7+gsRDInUxzn73OKwNTnqeGp9BTjNlExAr+Jgez7kM/cXl1YKDbBIDfy2tAwoggcKU9VMt+kJ9cg2GMEOgwocpKtu+faP4qR3fxNxUuv21ZVo/ksUCT65VXmtOuLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767973080; c=relaxed/simple;
	bh=4wsaBqi0jtRPnszPM3ogYPTMuByF3Kdlpu042cJzlT0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=T4yfW/w9cXWLVDc5Vx4e8rTYJEFlaW9PEyUXFKqyo/IXBQIsBnGf8bhQOG41PeViFF2f8sFZ2H4lyjqvCyc7Ztphm/qg3quXm6BMS9G37VfCdlQW4BXelMA9x6mHXibH7wVSOiB+kl5nYlYWmMBK/NVjANxZf/VQpBjnMHZF6kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gompa.dev; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gompa.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f194.google.com with SMTP id 5614622812f47-45a815c1cfdso592788b6e.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 07:37:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767973075; x=1768577875;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tDVtzzCDjggnrGIABHuMI1ztRsI4OAs0dlS5olQIsSk=;
        b=fSzlBFE0G4P+CBT0u0Q44bok1bbHuMQyELQ6+llLmNoVZAfu2nTkSZNH4J5sGMrhVn
         2Jqzuri2FMzLIRF6zmzhQKuyFi/AoR2Fc4q+o0ViEkY2N0J3ysh1ZdYEqhc5dASPr3I0
         5oIfVJnExq/dPYHbH12gzn44xpNrZV+lMuyo8m3FfKInIy1P6JrhJ0RXqFeqaC61FqwO
         8bYlp4lj+/7jIPZBa4qawjbVhIPhwmUOEXRU552+K4d1DC0mgzPycTht3gpzWVr2YtBN
         oPgQiHO0ACIy2nQ2bIiDhy1IHrtkrXtsvRc0bd2uUfEN246TmKDBD+oTa7CmuzI7utgp
         q+WQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJx7lbKhAF/osdJ3NbHk+qQUzaslRIdW2XuvjwuR2l6clnfn/Of4aSh+j7tELu6yWiZo++0dMmeasZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzUCeSnUbhGFTU9JEEy2kqGQLNilcQCGo5GByqXFa/+qIojkbIk
	vCs72yAXPcrA3KmTniN/NmZSrUSsXgTUah01nsWN20odNyYGxSUGsN4DC6NWw3+z
X-Gm-Gg: AY/fxX7I6DDQOtbAEWc5SsmmIXIgBRsiOXK4wcUujnnv93W/8naSRthpji9Y1et78KQ
	lwJQOS31yusLF2YLhYfyG3KEnVsHiJ8itIyla9ldWJSJlk14xOEQSIz+eLVW225xxD8S+eXqx7e
	EAsDZSA1Fg5FzUsJ56Xu9Qpk3sQ/E3GRRTyZU1hl8ixgueSG+OAcGbc38CUOf620sL3A1+/X0Ry
	OsjXOwIrY9KEHXu3B/+mbdnxjG0iO0Pu1UM3Emq1UVKkTPAyFlVco9kt5/eyQJLiLGGPqzMNe/2
	22sZkVYhz1d+2emi7SozhYQo7Dv+MbzrUpgX89GVmlRnzCmWDWxwRJX6Q8wsg4ectVNNITAwBQ1
	/aXW2JEOjcwCdOgYiygsT9EhZSERX+ttPU34HXfoxH7pPd1J7ss+qcK0jqC6uFhEiceh+8Kreqj
	Gh/v/W0xxVeX+Gk8hgQT9ct5qt9rwZ/E0ckZXW78/noF1f/uYGn4cCtISl+fEVw0GRyyCsVm3Z4
	QND1k1hDR8=
X-Google-Smtp-Source: AGHT+IG+/lY/V7w6JPC5qVxuiWHQYRjrrf1XD5bY2cmD9/M5hVvzJ+MahicaHyaWiq1ugwK1Dp1yew==
X-Received: by 2002:a05:6808:15a0:b0:450:b7a0:41ca with SMTP id 5614622812f47-45a6bdb7471mr5084580b6e.22.1767973075397;
        Fri, 09 Jan 2026 07:37:55 -0800 (PST)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com. [209.85.210.47])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ffa4a9099csm7185941fac.0.2026.01.09.07.37.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 07:37:55 -0800 (PST)
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-7c95936e43cso1694635a34.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 07:37:55 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVblHaEjoAxrdI6w/Wa1Ao5X8cyi1MHJNxggVJEOrkOqUgaEUrlnmaXl8HrAdtCflqSKWYpap2ZYEZ+@vger.kernel.org
X-Received: by 2002:a05:6830:6601:b0:7c7:827f:872d with SMTP id
 46e09a7af769-7ce50ad0573mr7614979a34.37.1767973074949; Fri, 09 Jan 2026
 07:37:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109-apple-dt-chassis-type-v1-0-c215503734c5@jannau.net>
In-Reply-To: <20260109-apple-dt-chassis-type-v1-0-c215503734c5@jannau.net>
From: Neal Gompa <neal@gompa.dev>
Date: Fri, 9 Jan 2026 10:37:18 -0500
X-Gmail-Original-Message-ID: <CAEg-Je-4Dycowe8TukV7+suU2pm8yy-G5ukVeBD5=r4PFKo5Lw@mail.gmail.com>
X-Gm-Features: AQt7F2rWXpsz3frhT-_Ey7mmSLoD8jECIUJKTjNZwMNhWrvNHrGDKMFRD2wFgXs
Message-ID: <CAEg-Je-4Dycowe8TukV7+suU2pm8yy-G5ukVeBD5=r4PFKo5Lw@mail.gmail.com>
Subject: Re: [PATCH 0/4] arm64: dts: apple: Add chassis-type properties
To: Janne Grunau <j@jannau.net>
Cc: Sven Peter <sven@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, asahi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 9, 2026 at 10:25=E2=80=AFAM Janne Grunau <j@jannau.net> wrote:
>
> Add chassis-type properties for all Apple silicon Macs. "chassis-type"
> is used by u-boot to fill the SMBIOS "System Enclosure or Chassis Type"
> field. User space software uses this field to to determine if a device
> is an laptop. The exact use case eludes me unfortunately.
>
> The Mac Pro uses "server" as chassis-type which is not entirely
> accurate. The tower and rack mount Mac Pro versions share the same .dts
> file and are identical except for the enclosure. I haven't found an
> obvious property in Apple's device tree to distinguish between those so
> both use "server" instead of the more accurate "tower" and "rack mount
> chassis". The latter chassis-types are not in dt-schema anyway.
>
> Signed-off-by: Janne Grunau <j@jannau.net>
> ---
> Janne Grunau (4):
>       arm64: dts: apple: Add chassis-type property for all Macbooks
>       arm64: dts: apple: Add chassis-type property for Apple desktop devi=
ces
>       arm64: dts: apple: Add chassis-type property for Mac Pro
>       arm64: dts: apple: Add chassis-type property for Apple iMacs
>
>  arch/arm64/boot/dts/apple/t600x-j314-j316.dtsi | 2 ++
>  arch/arm64/boot/dts/apple/t600x-j375.dtsi      | 2 ++
>  arch/arm64/boot/dts/apple/t6022-j180d.dts      | 2 ++
>  arch/arm64/boot/dts/apple/t8103-j274.dts       | 1 +
>  arch/arm64/boot/dts/apple/t8103-j293.dts       | 1 +
>  arch/arm64/boot/dts/apple/t8103-j313.dts       | 1 +
>  arch/arm64/boot/dts/apple/t8103-j456.dts       | 1 +
>  arch/arm64/boot/dts/apple/t8103-j457.dts       | 1 +
>  arch/arm64/boot/dts/apple/t8112-j413.dts       | 1 +
>  arch/arm64/boot/dts/apple/t8112-j415.dts       | 1 +
>  arch/arm64/boot/dts/apple/t8112-j473.dts       | 1 +
>  arch/arm64/boot/dts/apple/t8112-j493.dts       | 1 +
>  12 files changed, 15 insertions(+)
> ---
> base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
> change-id: 20260109-apple-dt-chassis-type-f31523a1f681
>

LGTM.

Reviewed-by: Neal Gompa <neal@gompa.dev>


--=20
=E7=9C=9F=E5=AE=9F=E3=81=AF=E3=81=84=E3=81=A4=E3=82=82=E4=B8=80=E3=81=A4=EF=
=BC=81/ Always, there's only one truth!

