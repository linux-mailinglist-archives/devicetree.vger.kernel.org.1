Return-Path: <devicetree+bounces-178395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 390E5ABBA9D
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 12:06:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A9573B8858
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 10:06:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FBAC26F462;
	Mon, 19 May 2025 10:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tomeuvizoso-net.20230601.gappssmtp.com header.i=@tomeuvizoso-net.20230601.gappssmtp.com header.b="hJIo0qZU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132852580EC
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 10:06:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747649193; cv=none; b=T5XPTe/AQo13pM6KTFhLdyiU/z9T8kX79QLIMGzz6LFCOBnjAEmfeJHlinMvlpuRDyJQz+nmVCLXjAYNxAl+Pp2WchF9yAtq+IZecVGx2Yd0ZaHJ9YtBY4CySVChXWDWlxBB10f6Dd3r+/JGBC3td/P8GkhMTcF6fvh3K14qrQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747649193; c=relaxed/simple;
	bh=LXOL75HJcVW91LAW/oQlrCx83jkr4WoGgXP/PF+1LnY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=U/tR8DEohqZ/A+0RbZjK0bn3XFOEvBvaXb4ehNdN53uP5gEWowb+ZmWQuluQdCMF7ne0Q7fYJ0MFH8SppHj8gO2nUC7Azlo3cupGJBI65eA/Z9SudpQb5/VEA9djrCS++hr7K1QYzjo9Sbkk8cbyTXIBGp2zq/I+1nCmCo3NeLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tomeuvizoso.net; spf=pass smtp.mailfrom=tomeuvizoso.net; dkim=pass (2048-bit key) header.d=tomeuvizoso-net.20230601.gappssmtp.com header.i=@tomeuvizoso-net.20230601.gappssmtp.com header.b=hJIo0qZU; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tomeuvizoso.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tomeuvizoso.net
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-e73e9e18556so3902839276.0
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 03:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1747649190; x=1748253990; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LXJkgQZKayvXnZ1xyIN8JI1rxZodq0P8Qo6H5Ts8U1A=;
        b=hJIo0qZUgqzEzrYcq5t6Scv6aDfWKEG34N3C/+KcEuuafsfF7qZHuKIGtqyKeX9t9X
         s8UC9crzXYaB6WD/GpDWPu4j16AR+yDivy3Cpk1K/I/fa0KQreq7uUq6xjtzeLtBbOhV
         L/8xSQfx1/71LgE7i9xrrTFYtjssc/G5yIbaYTy34raqYgpe0+4YMSRG7PCp7J6UnCUP
         hvhu9FSEehWQrYfAoYpSQRNV0uq44ZGAJOqjUDWz1pqJM7OSywBVAUvnuUHt89W9UZoi
         wnC3l2dR01p7t8gNx6VKCCexRv7Xk5BDapnYnNqhe4q5Q4b+EShDhQq++gMAXfeQOc1C
         hTfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747649190; x=1748253990;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LXJkgQZKayvXnZ1xyIN8JI1rxZodq0P8Qo6H5Ts8U1A=;
        b=nZQAqSzo9bqYW+4jaWwd/IIr2Fq6XQY/Q+uZDe5o70agJ9xyTQV3u9BwZJTAztxwnP
         VfSNbrNUVXXdgZyPBp5Imy/ZXPXBM5Td41baGDZuCOyOQ3FCtqMpffSp8JNQKuf+TDPP
         0bILppOorn+zqY1pEslXcDnuCNPjehpn9JnsEJeseSIs5tHy58eHLY/djuI8By2jGK8W
         kokH7rq0D7pDOOtt12w5YT68JFfjVAT8FLtnxYL91zdEGiIVuokS0QhV9mA+nUJWTmVb
         xdKRjeZH7VmMgXD28HDsyGJQjMQ7kPdvR6U5cV3izKZYAg32eyWDbxYIxt15rW3O5AKg
         lZ8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWFQor3caCOhXUf8wTTh5L4ijmX+Os3/ilELXqjKB/V/astXUfuO3TOizq28St3qPDD3dLxtPkTDRZe@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+0jZFBNXGk6UBR36zLGmUYFq1qZhUaXiPlxiCVQOgBdDWNkNh
	KR7T4zGvBhy2t728kFBq4q94oc1OQWKyzRtSEg3RNSoEm5a5IjhBBZ3h3v3L7Rd8zswMSUHslby
	KdqSTMeQ=
X-Gm-Gg: ASbGncuC0ysKwwzZ9DVL1hbXzzgI1n81BwSN96sbrW+6CACyDJH3j2ah7kRRCuJx4iD
	Y4ePWxA+LAwlqN3BZPz9IdDnlP3tlnfQ63YMeLqIUphwn0qFY3YjiXW+bzNo2+oN03lKS/2ZU7M
	SXBrkNJAW43cQYe/muXhxLgt1Vr8lO2bSvS2xhtc7vJ+PlHzUA7H9ys2HAdO0kBzwJpWH8aLNCK
	40b0HL9DZPgI4oeKkNzCrLQwz161kvHG/Ba2ZdFPSWYRtOip5gM76NjjBzNIm+DXRfF7qBvWxis
	D3D+Eh+BcavSF43c9G/oEHBjNU3J3WOoORn+Yj3UyPmv11AgzbKgbNj8BGq4xbRP+2/hGT/3q34
	OKah3kVAcjJhVvOAUQAkHo2FRgqhNNQ==
X-Google-Smtp-Source: AGHT+IHk3NhST4ivdz/T+xe5V4VnGkGxuajgXMEkob/dZaZlEjOROKbrgHnuEaTAM+w53ttXkW+s3w==
X-Received: by 2002:a05:6902:990:b0:e7b:30ef:fcb8 with SMTP id 3f1490d57ef6-e7b6b18d15amr14044040276.14.1747649189866;
        Mon, 19 May 2025 03:06:29 -0700 (PDT)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com. [209.85.219.179])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e7b7b083448sm2329071276.29.2025.05.19.03.06.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 May 2025 03:06:29 -0700 (PDT)
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-e7ba2583e10so612552276.0;
        Mon, 19 May 2025 03:06:29 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUKydI0iOlXCSO9l+WllAbTXdZBD8pVNZVTUTuprJ8oqisYiat6MgdLheNKk//ugtRTksD6Ia/czcWX@vger.kernel.org, AJvYcCUqXjK0clcldzcFpHtuKl7tANiacVQr54Z0uEQ49jtIl+hpjFfMVneMkMyPDavZg8lwX4TFd6hJXoXNn7w=@vger.kernel.org, AJvYcCV/pOeWFpfW243p+l555XQgJ9q8CzKdgj9iht7I9+bEVnPTntEylA2qllbqNNRhC06/6qT+e31BU4kLeJCw@vger.kernel.org, AJvYcCVH6xHtQ1bRDAFsxQhgNnNqcuijO15kXpsomGVxdbSJE59XFW1Goi+ZC8sM3lAc05mGokIdu5AwZMNO@vger.kernel.org
X-Received: by 2002:a05:6902:e12:b0:e78:f538:1c54 with SMTP id
 3f1490d57ef6-e7b4f7de9a7mr24227419276.4.1747649189461; Mon, 19 May 2025
 03:06:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250516-6-10-rocket-v3-0-7051ac9225db@tomeuvizoso.net>
 <20250516-6-10-rocket-v3-2-7051ac9225db@tomeuvizoso.net> <4bd79c88-7da5-4bf0-9300-cfdb296c8919@kernel.org>
 <CAAObsKDsO=5uK3BEn6BOgatb+y73jc-Se6mmSbhwG9P_1nVtwg@mail.gmail.com> <f8cf2c4e-0ae2-4799-bda8-654b4f515846@kernel.org>
In-Reply-To: <f8cf2c4e-0ae2-4799-bda8-654b4f515846@kernel.org>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Mon, 19 May 2025 12:06:18 +0200
X-Gmail-Original-Message-ID: <CAAObsKD_KUA29-FFGkCDifYJjaNnAbh9uZn25pWmVETSm10CTQ@mail.gmail.com>
X-Gm-Features: AX0GCFuVYFfDeK4R2yep7GIQJ3UmyiYoSLOyKg2oKJC5rUcszB1QB3rVi5LfFuQ
Message-ID: <CAAObsKD_KUA29-FFGkCDifYJjaNnAbh9uZn25pWmVETSm10CTQ@mail.gmail.com>
Subject: Re: [PATCH v3 02/10] arm64: dts: rockchip: Add nodes for NPU and its
 MMU to rk3588s
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Oded Gabbay <ogabbay@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, 
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 19, 2025 at 10:47=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 19/05/2025 10:27, Tomeu Vizoso wrote:
> > On Mon, May 19, 2025 at 8:08=E2=80=AFAM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> >>
> >> On 16/05/2025 18:53, Tomeu Vizoso wrote:
> >>> See Chapter 36 "RKNN" from the RK3588 TRM (Part 1).
> >>>
> >>> This is a derivative of NVIDIA's NVDLA, but with its own front-end
> >>> processor.
> >>>
> >>> The IP is divided in three cores, programmed independently. The first
> >>> core though is special, requiring to be powered on before any of the
> >>> others can be used.
> >>>
> >>> The IOMMU of the first core is also special in that it has two subuni=
ts
> >>> (read/write?) that need to be programmed in sync.
> >>>
> >>> v2:
> >>> - Have one device for each NPU core (Sebastian Reichel)
> >>> - Have one device for each IOMMU (Sebastian Reichel)
> >>> - Correctly sort nodes (Diederik de Haas)
> >>> - Add rockchip,iommu compatible to IOMMU nodes (Sebastian Reichel)
> >>>
> >>> v3:
> >>> - Adapt to a split of the register block in the DT bindings (Nicolas
> >>>   Frattaroli)
> >>>
> >>> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
> >>> ---
> >>>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 85 +++++++++++++++++=
++++++++++
> >>>  1 file changed, 85 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm=
64/boot/dts/rockchip/rk3588-base.dtsi
> >>> index 1e18ad93ba0ebdad31642b88ff0f90ef4e8dc76f..7b961ab838212fad8e4a7=
0390fdc917a828433a9 100644
> >>> --- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> >>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> >>> @@ -1136,6 +1136,91 @@ power-domain@RK3588_PD_SDMMC {
> >>>               };
> >>>       };
> >>>
> >>> +     rknn_core_top: npu-core@fdab0000 {
> >>
> >> npu@
> >>
> >>> +             compatible =3D "rockchip,rk3588-rknn-core-top", "rockch=
ip,rknn-core-top";
> >>
> >> You never tested this. Test before sending instead of relying on us or
> >> after merging.
> >
> > Can you please extend on this? I have tested this series before
> > sending and I don't understand what you mean here.
>
> I mean exactly that: it was not tested, because warnings are clearly
> visible/expected. I also found now Rob's report which even shows you the
> warnings, so how come you still claim this was tested?

Ah yes, I'm working on those warnings. I understood you as saying that
the code hadn't been run and tested that it works correctly (I do have
a test suite that I run as part of my testing).

Regards,

Tomeu

