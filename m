Return-Path: <devicetree+bounces-239863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 620A9C6A249
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:56:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6C7964F20EE
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 14:51:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3806D35BDC5;
	Tue, 18 Nov 2025 14:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CTudgZRf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78020226D1E
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763477460; cv=none; b=LERTOmMS10gvVbVO8Da2vd2QoFci9pGK9UC2qH64ICggCDAj1qLVX3cWg7+doCeLxyoTZwtRX/Soims8h3WqPU7p9gplbRXpSA4v4tcQS/dnttUrSCyCwaettdgDZz7/TbLkbXSGCfZ1M+n9+xrRV93rD17EdJ2xUqPviwJRycc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763477460; c=relaxed/simple;
	bh=ynqJkJVjm1V44YMjfQGUUYmvNd+QqjJwqNpTcjRjE14=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=cu/j+Tdi7hECT0vkTK37df5dQbcTPIbN4hN1/la+OHVp93PBKpFm85cehyJJg35HYb6MVmwXgTDwwPFBJrzoh1tcFt9kT0pqUyetUE815DLNkW2CAIfXOYfgfKCT4KUl+hksHxYR9wcppYOouKDuWmH6h6O+B5Qk/0mI9UvNUZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CTudgZRf; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-640860f97b5so8962971a12.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 06:50:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763477457; x=1764082257; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ODEp5g3hoBFXtgMG8yLHQj2oAfrtxXSdzqfcf/5l9M=;
        b=CTudgZRfnSf5SPbtpQxTUCPi0aJWW7C2YOp2EvFB5r5K7mA7Pi+tYMCeKLlUXtIHJo
         +kL+LoPCJIoRGpKIMlzGcm8DzAywZDAkfh/jsTmTPPVqMnatHlu43iVLg278B2eJuSez
         8nuX3RMdWuh0/MBAFKxYS7C6g4pisXUlgReqbybMY2UPQuY9iIMWmyWDomAVu9EJ5ixu
         Im+ybZMlgoRNKByatBNK58DxLj3AZ3SdkngrkLIUv25PxSGEH0MDyzTlg4hl7hf8HlnM
         GYCgz/LO1kwcLdwWvIAm1AwERW//Rz5DFNZRZFEW5iomPas0kMSmY2q/MaFxeag3irW8
         HOeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763477457; x=1764082257;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4ODEp5g3hoBFXtgMG8yLHQj2oAfrtxXSdzqfcf/5l9M=;
        b=MkmO/A80jAG7TTAsYY31tDyEjQpaWNpS6fU+XWMAncq2t1P6UVyS1vgW3HPCF7yBgk
         MxG/3v2h2FIABzy4EQFCZIjPYilgmvgmTCt3q9a1N6qCihh9OxwDpvBt5MLBV9sTuGum
         2skVyh3mXm4u7mYdsmtIBdnnmG6KDgW8TYVI9tfuqMCCQaAQArCerqjXmQGzsrdsLMM2
         r9JsUSVDyYwqNWoBaBfci5FHx6WGp05uO76l3iaDrWCVvjzccLOaxFJEHZcpJYZnJ+64
         ScsWFz4a0Uuwyaveu6HnwrA8F+00lJH/RJ2ux3/aFumVxQ/evPmMYEdTZJQ65Lwu1G26
         mitw==
X-Forwarded-Encrypted: i=1; AJvYcCX3IksFHJvqEgXXKVaBPVywxE4DPsu+Pt0iAn3G7M7v0NXFXNLd9Y0aEtthA4n94fKqG6Dk8clj0hhe@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+ZRb6TCc3aawX/GU04c6fSBPTBNuZMfHIJDj+35VM68MDmJ3R
	5OSb0EY8S9K3Sbs5qYOwX8+wKITYOCKNjJ/SRkud0y7gAt4zhaIoM+kO
X-Gm-Gg: ASbGnctAnEpQHW6FZnzUROsr+5suyIGXvxOS2iErYo8uOMrN4riYfRiHOG2Xwe5AAA6
	JZxh5ePJGkLh+JLgq//doWBC9tRro+YyLLWeNPaOmclwTkWUS9JXXd34UICSVQn0062GznZOn6A
	VPdJlsJUc4C2BjHu1O7PicBLBDXTehMOE9SXA0EJLwL0+e7FzsIez3+gya03d8b0eV34qNfvhQ0
	4HfpqEi0MAjwrsI/jfDn+fcKevzO4Lv9MWH3CZOsm36MqWaHfY1F+DqX74InIaD3BI+Cw/qqt48
	7R/Ibru27RdQxiD3UMMqnV+ggrsfs7iYxNzfhQikWbr9Px7wxQ2d291h94/y4MA+KrzaoNPuik0
	5ngied7MUIzusb8ByMPPXMPoz+oDEJyzr4lLfbV565nuhhQQ3Ce3ioI6X94OsZz49Gum6JAkd7l
	IWfy4I3hE74aAwXhM8vg/ydFLZn9KYy04Iw+ctFyshpnasMgpT5jFrCl49NGgzb8STtpIOq0Uqp
	hM=
X-Google-Smtp-Source: AGHT+IEbPgDVza8qfJZo3JEw3mI76xfM7nycUKDaL0NKUdHMgMx7hzlIugTLL9c0WovJWHk2SHXoCA==
X-Received: by 2002:a17:907:5c9:b0:b73:5b9a:47c7 with SMTP id a640c23a62f3a-b736795d4aemr1818872166b.51.1763477456662;
        Tue, 18 Nov 2025 06:50:56 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.play.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fd809absm1372003166b.44.2025.11.18.06.50.54
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Nov 2025 06:50:56 -0800 (PST)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Subject: Re: [PATCH 01/11] dt-bindings: display: meson-dw-hdmi: Add compatible
 for S4 HDMI controller
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20250110-drm-s4-v1-1-cbc2d5edaae8@amlogic.com>
Date: Tue, 18 Nov 2025 15:50:43 +0100
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 dri-devel@lists.freedesktop.org,
 linux-amlogic@lists.infradead.org,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <3AC316FA-A633-4B6C-81BA-CCCA290E7F03@gmail.com>
References: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
 <20250110-drm-s4-v1-1-cbc2d5edaae8@amlogic.com>
To: ao.xu@amlogic.com
X-Mailer: Apple Mail (2.3826.700.81)

Ao,

Is there any chance to get this s4 drm hdmi series for current 6.18?

(i tried backport this series to 6.18 but have some issues with reparent =
vpu_0_sel to sysclk_b_sel)
  =20


> Wiadomo=C5=9B=C4=87 napisana przez Ao Xu via B4 Relay =
<devnull+ao.xu.amlogic.com@kernel.org> w dniu 10 sty 2025, o godz. =
06:39:
>=20
> From: Ao Xu <ao.xu@amlogic.com>
>=20
> Add devicetree document for S4 HDMI controller
>=20
> Signed-off-by: Ao Xu <ao.xu@amlogic.com>
> ---
> Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml | =
1 +
> 1 file changed, 1 insertion(+)
>=20
> diff --git =
a/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml =
b/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
> index =
84d68b8cfccc86fd87a6a0fd2b70af12e51eb8a4..6e0a8369eee915fab55af24d450a6c40=
e08def38 100644
> --- =
a/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
> +++ =
b/Documentation/devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml
> @@ -55,6 +55,7 @@ properties:
>           - const: amlogic,meson-gx-dw-hdmi
>       - enum:
>           - amlogic,meson-g12a-dw-hdmi # G12A (S905X2, S905Y2, S905D2)
> +          - amlogic,meson-s4-dw-hdmi # S4 (S905Y4)
>=20
>   reg:
>     maxItems: 1
>=20
> --=20
> 2.43.0
>=20
>=20
>=20
> _______________________________________________
> linux-amlogic mailing list
> linux-amlogic@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-amlogic


