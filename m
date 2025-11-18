Return-Path: <devicetree+bounces-239591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 85863C66F6D
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 03:08:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 066934F12C4
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 02:05:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDCDC317709;
	Tue, 18 Nov 2025 02:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NhbEKtwZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C19C261581
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 02:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763431403; cv=none; b=nMpj70KkL7M+LIcMSdR6WFNBd90cggK9rfSoAgC/Wz9pAO4qpTGKNd5bu8sJ/ApkuW6eOyRfh/dcGlJ+D0A3knSwWwcOef/BvoZvWHkjedTxy0V2fFhvWRXoOrWvnKwMox7XWG5U53cIJDCch3e00jjOu5IVuWAC5WlOQvbJN5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763431403; c=relaxed/simple;
	bh=J3X5fpB0c0gkKARax5gEJVufrLC1KValpdEY0HMaLZg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HXP2iMuyT8v9t17RfuJyAzmxR/9iPI7uUUqBFJQU8y2s5CKIXzEBUjai40lvlenVtrgktMZF73XukST6mGjEAc2DgCm20iSSS7lh6zc++doXSOFW4Uu4N6BMVW6rlCJF1fY2XuMCMfx8D5dlp9aCuwxBoeuTx/MGKIR7vhW4Pp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NhbEKtwZ; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-3d47192e99bso3867526fac.0
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 18:03:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763431401; x=1764036201; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/qVmRi0NteE/YXczfuFxl13D9hmQFXTc5aT5+o7KMeA=;
        b=NhbEKtwZgBnHq89dejTzif5MBIPfeNEUKSEr2tthizk4AhoONn81FJgjnn7K7eRnsR
         DLmEzKyydKWBgoHTruxbnHJwRMFzP0iveYQ4NsgnZ5WDbl9uTFW2o9PwtCMoT5FjftCe
         RATspo3wV+BW0e0p//KgNKTLvvwF6TFQpRK4+qNbkaWvP6dxYFk/1jweacPDQQ6x8SnM
         ifD18/JJxUeRLFsBemDxbYIqUZrW/JoYcPfjGPKzhjJ24qGPFX3TwuNnm8JaRXNijvoz
         M37TadWbnfm5ijHqsUYltIvHJyVV9I8du+v2aF1wwmGWbRXwPwTKJL1QlL9Q9O++m4PY
         eD9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763431401; x=1764036201;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/qVmRi0NteE/YXczfuFxl13D9hmQFXTc5aT5+o7KMeA=;
        b=C6HCAVEGaJkgZj3eDxs6P5xpw06VVKRCKk66CT6XIfhhHePZUqVqpchzKm5wrBm86z
         IqfS+5Y/ZAtwasXlcZrldUMh4Hw6Y6bn62dMuxHhYnb187GwKZZzh7hN+/KSbwFb+6lO
         0aAu1YBaVK+aPe6GMqwrlDgxp+6iJQ6+krsccJRxIf2A9OjvOvFJ+7yNfYfEdHIr5W4V
         EKuzgX3eHgD3t9QiyFNsjkgIoXy9W6XfpvHu27DiklvK6dfwD9/hSjfEBbG2Pr7neJcc
         VIeCsdExOpnCn3aZo3mJ/ooA8eYVY2QpWW2dyO3JhOAytbJXSooBW/Gc4dcGPx5mDqHd
         bNnw==
X-Forwarded-Encrypted: i=1; AJvYcCWQxlTvpy9QXlKaydgPHpEsBYMggEP8nRzLXw9NSTKcC7hsh01Ibg1jL115TAjQo5UgeGLSURXVp0fb@vger.kernel.org
X-Gm-Message-State: AOJu0YyJa3sBhVrNQr2Fb6jva5I+YUpYL4L9m/wxSQC5AsagDW8iIdqt
	24IB238brQ4KnUbOGlHlvlSXdNoHRwfGQWUz4hxLIVQ1NmIi7q7jdjJe6R9Ls0Gu4L0fzdYOcF3
	Qc1acQx4GAy1iGsn/0mhO2drBhC0nGJM=
X-Gm-Gg: ASbGncspl2QxrP0U0UKai3MO8GpS3Rp2MinSUhpCsc9rCQuCgA7x3JNT1i1cM7MbaAa
	gIsm8fQ16hFC8/pw9zHQOwfC3mUQYyDLNpDENYGn/TJp8dS9waMCgFbGztr4jz7i2Mh7S4HfYoO
	tK14XlBuNbNQoSguehmTgQvgM5T05gTBszOamSapehlNJwcfsjcai6qLwmxlhQfxgtjRl3GfkGu
	boS8n4VXA2kQGoVi5AKaHkDxIb0X8vk/EbAY3+LwO2IpyZ6vxLx4WNSmQ4MbW33CVaCmjuFmjx0
	hui6wSMtZYkyif9EHtk34a1N3/YAEkARhi0=
X-Google-Smtp-Source: AGHT+IFf4HoPVdF1D2Dq0kUgFXbCkFY5Shj56oQqRiOuswD+DalQx+DLGD9MLFw70f0thGXQi9YEq1Y8fqcSQ5gPOlo=
X-Received: by 2002:a05:6870:8317:b0:3e8:9ed2:8846 with SMTP id
 586e51a60fabf-3ec60e5398amr949345fac.14.1763431400919; Mon, 17 Nov 2025
 18:03:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251029155615.1167903-1-robh@kernel.org>
In-Reply-To: <20251029155615.1167903-1-robh@kernel.org>
From: Chunyan Zhang <zhang.lyra@gmail.com>
Date: Tue, 18 Nov 2025 10:02:44 +0800
X-Gm-Features: AWmQ_blABZPIY3PCnvqPqY59qi0zCRk4_NQxtuoStOd3Gc1Ffnuj7DRe7wBhM80
Message-ID: <CAAfSe-u2F4x6fCvimKvgiT7gaquhqPkbHCCOQEfKk_adS0r93g@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: clock: sprd,sc9860-clk: Allow "reg" for
 gate clocks
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

On Wed, 29 Oct 2025 at 23:56, Rob Herring (Arm) <robh@kernel.org> wrote:
>
> The gate bindings have an artificial split between a "syscon" and clock
> provider node. Allow "reg" properties so this split can be removed.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Chunyan Zhang <zhang.lyra@gmail.com>

> ---
>  .../bindings/clock/sprd,sc9860-clk.yaml       | 26 -------------------
>  1 file changed, 26 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/clock/sprd,sc9860-clk.yaml b/Documentation/devicetree/bindings/clock/sprd,sc9860-clk.yaml
> index 502cd723511f..b131390207d6 100644
> --- a/Documentation/devicetree/bindings/clock/sprd,sc9860-clk.yaml
> +++ b/Documentation/devicetree/bindings/clock/sprd,sc9860-clk.yaml
> @@ -114,25 +114,6 @@ allOf:
>          - reg
>        properties:
>          sprd,syscon: false
> -  - if:
> -      properties:
> -        compatible:
> -          contains:
> -            enum:
> -              - sprd,sc9860-agcp-gate
> -              - sprd,sc9860-aon-gate
> -              - sprd,sc9860-apahb-gate
> -              - sprd,sc9860-apapb-gate
> -              - sprd,sc9860-cam-gate
> -              - sprd,sc9860-disp-gate
> -              - sprd,sc9860-pll
> -              - sprd,sc9860-pmu-gate
> -              - sprd,sc9860-vsp-gate
> -    then:
> -      required:
> -        - sprd,syscon
> -      properties:
> -        reg: false
>
>  additionalProperties: false
>
> @@ -142,13 +123,6 @@ examples:
>        #address-cells = <2>;
>        #size-cells = <2>;
>
> -      pmu-gate {
> -        compatible = "sprd,sc9860-pmu-gate";
> -        clocks = <&ext_26m>;
> -        #clock-cells = <1>;
> -        sprd,syscon = <&pmu_regs>;
> -      };
> -
>        clock-controller@20000000 {
>          compatible = "sprd,sc9860-ap-clk";
>          reg = <0 0x20000000 0 0x400>;
> --
> 2.51.0
>

