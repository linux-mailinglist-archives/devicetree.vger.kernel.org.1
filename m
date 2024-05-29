Return-Path: <devicetree+bounces-70323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA7F8D319E
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 10:37:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D48ED1F23DA6
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 08:37:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE57C169AC2;
	Wed, 29 May 2024 08:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="llMMIBaE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0349216939F
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 08:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716971595; cv=none; b=K5VsWlE0cHPdCEZyf7vLf70ppbUshnLh8EUc3zEvvma8jzm7yxYc/1Q96UqSSTtLbMYkzlfQMgurfJ+iB13PNCuzdq8K6Hu+bZgxT+mLNTRNLK2pQT20fsNy/HdNzv7IEyJxN/QdC05JT2oIVUA4K6MMaAa4ubGgPPqgJnQ+mVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716971595; c=relaxed/simple;
	bh=srXhUFh5PL3ztOWujk+vtJukyejJQvhmVjmJXbT1D9o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dzfBOjHQQh5C/A63h7pZ0ta7QVYYjbT7EToJQNKnPkBm/+v9IT81rJMz1g0S25M7xtte5j5VRKeV2REBMkuj0yaKJ+k1wd6dPrYTofIQboAMKJfOBMxXcYMQFF22Kwl/ko15upP4rfjmYgEn7tFPHU6OQdH3/uSyhUPD9vWA0Po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=llMMIBaE; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-529682e013dso2111382e87.3
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 01:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1716971592; x=1717576392; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P/LaRze2iReVdITozRxpSW8O9Q/FJCbbeSJegkgQVeM=;
        b=llMMIBaE/32bu3ymUDYXso8809Ry1gOm5W6d8jfh+OpTOjwP55z1aF4SaricXu0KxU
         Sde8xVBPeORQbWCI12AZqHETPCCVjdOmwM/2cKGhvUOBrSXXBwQNktJET764omdD4QP2
         0udO88jZ0kiHrh6lSEG/497W54YuR/Tod3/64=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716971592; x=1717576392;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P/LaRze2iReVdITozRxpSW8O9Q/FJCbbeSJegkgQVeM=;
        b=MhivJQUBeX8G97RCrgAHmMXnLvP5C3mjDGn1J/Nf1RW7n01zMUibeetBKN9o7OgOXB
         S+dvatKIZfRUjARpXq29FAD99+UEIgH62DuyffYPfIGSOuR15pJPHa8spfZJIAqoolgh
         w+NZyc2DsYHtDJwpaVL47lwuXP5YYDvkQv4eOC9dPE3UYs3H7A0PFs3E+rRVcaiFwDx+
         9kXZvT6wo56OYOiE99brfE0zuJT7Ju/NLjHSsOx0KosDxfLXMrQkFDdHcp3LdBuMRL0s
         RQzrmBu+7bghGnjSfH66GdqEXsYEH8ZwV/HNQhpw5+fXiw5TPhQ48aF865FghcbGYm0q
         TUgQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFfAFQs6wYh1mmxkXU409gRyCD662NbXq3lUtJhsSMjs/c0UDedsBPL5lwSZEEepHeBx0hw45lVU6GOJulAv5iPFwy97ttRbWAQg==
X-Gm-Message-State: AOJu0YxiuI6rk4wVqbUNbwn//at0TMjTFxqE8T570su34zTKFtPaPfny
	fw2oCblSl0NOoRgOpnkjwoVK1e610D2AEuDF4+sU8AGogKM5My54lYpcg1yBbNMcnIwa7EGHYnz
	/0W8bBVaru6kvsHITSMSCH5k10XQk5qiJmp3x
X-Google-Smtp-Source: AGHT+IHcO+FygnC0TbWkPGa0nLxOhGY7/OgenVpFufgaX9HqoJKiSuswBtm8hAFMkn+oyxq2QoDGhVBhj3hQ94XJHIU=
X-Received: by 2002:a05:6512:4da:b0:52b:78c5:b058 with SMTP id
 2adb3069b0e04-52b78c5b216mr44428e87.17.1716971592060; Wed, 29 May 2024
 01:33:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240529-mtk-thermal-mt818x-dtsi-v6-0-0c71478a9c37@baylibre.com>
 <20240529-mtk-thermal-mt818x-dtsi-v6-4-0c71478a9c37@baylibre.com> <75826085-fd59-466a-b1de-b4c323c801c1@collabora.com>
In-Reply-To: <75826085-fd59-466a-b1de-b4c323c801c1@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 29 May 2024 16:33:01 +0800
Message-ID: <CAGXv+5FPG4ob3mTU0Utm8Wgk0_ZLw=NLPbfFerWh4OUeAz7UHw@mail.gmail.com>
Subject: Re: [PATCH v6 4/6] arm64: dts: mediatek: mt8186: add default thermal zones
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Julien Panis <jpanis@baylibre.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Nicolas Pitre <npitre@baylibre.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 29, 2024 at 4:17=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 29/05/24 07:57, Julien Panis ha scritto:
> > From: Nicolas Pitre <npitre@baylibre.com>
> >
> > Inspired by the vendor kernel but adapted to the upstream thermal
> > driver version.
> >
> > Signed-off-by: Nicolas Pitre <npitre@baylibre.com>
> > Signed-off-by: Julien Panis <jpanis@baylibre.com>
>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>

I'm getting some crazy readings which would cause the machine to
immediately shutdown during boot. Anyone else see this? Or maybe
my device has bad calibration data?

gpu_thermal-virtual-0
Adapter: Virtual device
temp1:       +229.7 C

nna_thermal-virtual-0
Adapter: Virtual device
temp1:       +229.7 C

cpu_big0_thermal-virtual-0
Adapter: Virtual device
temp1:         -7.2 C

cpu_little2_thermal-virtual-0
Adapter: Virtual device
temp1:       +157.2 C

cpu_little0_thermal-virtual-0
Adapter: Virtual device
temp1:       -277.1 C

adsp_thermal-virtual-0
Adapter: Virtual device
temp1:       +229.7 C

cpu_big1_thermal-virtual-0
Adapter: Virtual device
temp1:       +229.7 C

cam_thermal-virtual-0
Adapter: Virtual device
temp1:        +45.4 C

cpu_little1_thermal-virtual-0
Adapter: Virtual device
temp1:       -241.8 C

