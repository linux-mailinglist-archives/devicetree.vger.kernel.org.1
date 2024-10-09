Return-Path: <devicetree+bounces-109466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DF09E9967D2
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 12:56:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1CEE81C24A1D
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 10:56:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32802190497;
	Wed,  9 Oct 2024 10:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hxZ6/PIx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A7E190462
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 10:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728471369; cv=none; b=WEJ62sr4YvLMwKofbfLQcsW6dWye+bpmUU22wJBKEdi0f1YZYEG6UBEISDW4sr/MaRVOF/fQ/Cow+TwuqVx3z3rcQeW9SiMsrVqMqfWKcYHmdvVZhzs1tsRhGkvvcUJ4Gr+AgQKRmeusk13YFSUT8560PW+3iDj0nsVJqux+vxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728471369; c=relaxed/simple;
	bh=9V8jwIrSgcFpXYzIEYnO4UoXcbhff18KzNRe9Nwd0zA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TdRaOgy22rTAgXR5W8DX68zvD6lEhucaOJ3E86sFoJKyDU+ilP2nnDASEVzbKb9PfP5CcRO02RcQzc24yqxyMMZ7ABUUkujHhsqJH/47MWJsjIsehT17I28Ik1CGgSLzGgDG/70hdksgBeh0EllyhOnlzef0xgqdj3tXzsmigfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=hxZ6/PIx; arc=none smtp.client-ip=209.85.222.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-84f1ac129c7so2267515241.1
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 03:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728471366; x=1729076166; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RNG+QhTQAdWb1KvFrYofboNFibFz2WosHRUzPUAB8Y4=;
        b=hxZ6/PIxwaeZLsMeTNc9oh8cZTPyBqJ6JV8r3ryKLSFH5TCpJ6cz8dyJLb5053nhdO
         VfMAZt/n/0ZmOsPv80r+UlP3VlI7u+AS6syeeqb+a2gwybeS0bGaQmTkIdBt5x8rCln7
         FS5Ksf/2iBG/MhXXjRz9sO3fbBT+l2i6Z3mT0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728471366; x=1729076166;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RNG+QhTQAdWb1KvFrYofboNFibFz2WosHRUzPUAB8Y4=;
        b=BtEttDESbvPEG27x3OIT/4E4LjiRJQBKOnnD1qAhcMPrkCIcxZPKzzUNFJ8z8hzu/W
         6A/rjJdYdNzvQhlDs1TVSV34QOmIbR7Oh+8c4hIi/vOpqTbuCO66qx92nsLRUwu2xy8W
         4YdMkOgOciMX7rERwKCXTwv6pFmGLQw0XJ9SF61QAoSsi7r8sQBKQr8H24/IE/IUM+dE
         zWfD5vePxY0SaRm+dO5nL8js8l3T7gbt3mcOL0R2XxHUYm+1vtfkDy2JoIT3gda/AhDm
         Bvx8PlQwbxc/Vqamvq9SEnPwsPp6cbIqc1j+nZOeoQshvJ/5YE1dVelz+rJFkoFv/mNb
         yn6g==
X-Forwarded-Encrypted: i=1; AJvYcCVadZ+a0awqtMrkS+c0bSzhorY+EoEfH73RjZXbNnFcfteqGhFQ8jniHUZ4DNEmZLe5WQ3T/oPjeKTb@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7WHz7eq18kotwbLqSiAYnOIGVS6XxjcIpz9i5BWSkU4EKzwg1
	v+A31bBFWHJ3OrTeKHMqHDHQbNBM20f2K1ZJq9Yfxbsx+3lOEVFcxQaD4N/wZupsI0VTGwphydc
	gPg==
X-Google-Smtp-Source: AGHT+IHLFWxY9hGcn8IV8ZmQiBcp+Yc1MlHzFme1adFdKGTIFwXg57t+C1QQ6DtZMq2TsMCeUburQQ==
X-Received: by 2002:a05:6102:370c:b0:4a3:3d4f:edd2 with SMTP id ada2fe7eead31-4a448d7d503mr2183281137.17.1728471366272;
        Wed, 09 Oct 2024 03:56:06 -0700 (PDT)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4a412eb367fsm1695313137.34.2024.10.09.03.56.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2024 03:56:06 -0700 (PDT)
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-4a3cb09e28cso2053201137.3
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 03:56:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXrzKpuWeEcBSADS8UNsNaPgKw+CVVzCc/6OsU8iK7z8+eygN1sF85VlmX36tSpb27KXx1kmGFi7tNj@vger.kernel.org
X-Received: by 2002:a05:6102:1612:b0:49b:d1d1:8f7d with SMTP id
 ada2fe7eead31-4a448e347d3mr2296143137.26.1728471365444; Wed, 09 Oct 2024
 03:56:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241008053514.6800-1-macpaul.lin@mediatek.com>
 <CAC=S1ngrsDxQ1Fe9xB_EevGbGB5nDoCB_n2oGb2VTLiv1vSsGA@mail.gmail.com> <f1bb941b-cb6d-32c4-2cf9-268fc3f43bf9@mediatek.com>
In-Reply-To: <f1bb941b-cb6d-32c4-2cf9-268fc3f43bf9@mediatek.com>
From: Fei Shao <fshao@chromium.org>
Date: Wed, 9 Oct 2024 18:55:28 +0800
X-Gmail-Original-Message-ID: <CAC=S1ngHAf+CNuyMB9ZEW38e3mfVRNy7upsoKyAp1gN8=FGrxg@mail.gmail.com>
Message-ID: <CAC=S1ngHAf+CNuyMB9ZEW38e3mfVRNy7upsoKyAp1gN8=FGrxg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8195: Fix dtbs_check error for tphy
To: Macpaul Lin <macpaul.lin@mediatek.com>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>, Jieyy Yang <jieyy.yang@mediatek.com>, 
	Jian Yang <jian.yang@mediatek.com>, Jianguo Zhang <jianguo.zhang@mediatek.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, Seiya Wang <seiya.wang@mediatek.com>, 
	Tinghan Shen <tinghan.shen@mediatek.com>, Alexandre Mergnat <amergnat@baylibre.com>, 
	Bear Wang <bear.wang@mediatek.com>, Pablo Sun <pablo.sun@mediatek.com>, 
	Macpaul Lin <macpaul@gmail.com>, Sen Chu <sen.chu@mediatek.com>, 
	Chris-qj chen <chris-qj.chen@mediatek.com>, 
	MediaTek Chromebook Upstream <Project_Global_Chrome_Upstream_Group@mediatek.com>, 
	Chen-Yu Tsai <wenst@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 9, 2024 at 4:50=E2=80=AFPM Macpaul Lin <macpaul.lin@mediatek.co=
m> wrote:
>
> On 10/8/24 15:10, Fei Shao wrote:
> >
> > External email : Please do not click links or open attachments until yo=
u
> > have verified the sender or the content.
> >
> > On Tue, Oct 8, 2024 at 1:36=E2=80=AFPM Macpaul Lin <macpaul.lin@mediate=
k.com> wrote:
> >>
> >> The u3phy1 node in mt8195.dtsi was triggering a dtbs_check error.
> >> The error message was:
> >>   t-phy@11e30000: 'power-domains' does not match any of the regexes:
> >>     '^(usb|pcie|sata)-phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> >> Fix this issue by dropping 'power-domains' of u3phy1 node.
> >>
> >> Fixes: 37f2582883be ("arm64: dts: Add mediatek SoC mt8195 and evaluati=
on board")
> >> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> >> ---
> >
> > Apart from this, can you or Chunfeng confirm if we should make a
> > similar change for MT8188[1]?
> >
> > [1]: https://lore.kernel.org/all/20241004081218.55962-3-fshao@chromium.=
org/
> >
> > Regards,
> > Fei
> >
>
> According to the suggestion and discussion in
>
> [1]:
> https://lore.kernel.org/lkml/20241008-disorder-slacking-d8196ceb68f7@spud=
/T/#mccf978d76f52cc26970f3f3be6120055e4698fe6
>
> I think adding 'power-domains' to PCIE node of MT8188 is okay.
>

Acked, thanks!

Fei

