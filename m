Return-Path: <devicetree+bounces-199352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC2AB10586
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 11:17:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1E62A1CC50B4
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 09:17:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1689259CAC;
	Thu, 24 Jul 2025 09:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CfDQOpDG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7650125291F
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 09:17:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753348626; cv=none; b=Yw8FACj2RXNmElRRZjSLziZb5oZHwFxWQNff51ve5Cy2TPeqVT3O87HQLIeGnbWpybHNQqKmlq9zZxa/VQ5uYMNQf/uK5I+DJCNNAzvg2UqPh4sH6P4TaX75nNhWOLcmTsQK0Um9A7l/v5RFllsu+Bn1BQMCSSOFNUirIP+aYZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753348626; c=relaxed/simple;
	bh=PzAImXvw7ltOkAeF9aE1vYSBycD64FXcVdqDkDZASUk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VjZ0Cs9FKFD3eBulNlMV9zO3XgxYny5Vql9kCCNjrToZQasj8vYjBOfjhHt6iel03c8JKDgR0GiOfLS6L9kIUpXU2yaYkva8TqW5k5mMFDjkaoQyh831654g4xLO7HaS5WWdTe3ivmEUI0hArxWMcYl5WVEGx6iSax9m6F+zE6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=CfDQOpDG; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-553b584ac96so777063e87.1
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 02:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753348623; x=1753953423; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PzAImXvw7ltOkAeF9aE1vYSBycD64FXcVdqDkDZASUk=;
        b=CfDQOpDG7+H+rT4gcjxVG7nzL72tk82jIG1UHBBO6Be6KGFhDBbZJ8nSvH5RpDu+4W
         PhPhs0uFjfTJfcg3Dd/GGYRXi+YHgjZedHEcOGMbkyqaB14T4bCyZ+c26Ve1RhBXkzNJ
         Shk5METhMqgYWQyIaU1Eg7XI8HUByzQshRM18=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753348623; x=1753953423;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PzAImXvw7ltOkAeF9aE1vYSBycD64FXcVdqDkDZASUk=;
        b=WiJpSwLpifclNqdncP/8usENXiXrSEdYAR9MFZ7cALYe6z31kA780n8c50aST8fN46
         mqgEeqxEGGaR/fgmOOh5UPieCyDJrO8Mq9wK8OoyXZenPN6qlm78ClYmNkm+ZXOHQTx9
         jkBZwDBftD+9OgbqHYFoHiH2VsttEX1xEDfbERE06BdPjGQkaMWg96rzyYwUluo7UfYi
         c1PA20RTWJxvJAlBnnpU+2pBr1xNw0pOhVMYrW1rKQTDNkf2o9bz+t/T0iNvdBvsSPi2
         qDrTl/MXUhSPI1hyAqNb7W5fg0iHWIVXsANmxHs3T5uSeT2kkYprDlz4oh01e6tPUrZG
         Z4mA==
X-Forwarded-Encrypted: i=1; AJvYcCVnkPq956/ze4n9q2jPDGA2lAZeC2nfU1jwDvUtXtYKTyzv049id0n6xQxJeaWehlrjgLCg3vM1Kukz@vger.kernel.org
X-Gm-Message-State: AOJu0YzUFwKxAd+UZ2vX88epI7bzHhew3wjocKHlo2kV9qz4bv7cgkIb
	BbxxF2GTilDv+C2R82Hge10LIyPEMaNNzKE6pgh+/+bu0FYDEg7tV5q/FkZMWFvt/Yagv6qSTJl
	jd9YQuOty3lAyHVBwMzSZNPkgMAb+QB6yr97N5o0O
X-Gm-Gg: ASbGncs9kznK65orBZkylN2Uol8c0D831f4XmqSYXeu7oMCe+NOpRkPIx6xOYurl9Ha
	/xjgW+TebzrfiDVg9TCljTkrf2DmHwZhXxbVo/gJP87JhloMYz3viq3ZGFoDsYUBt+vgK7TD585
	23zVhHeqkgD3yHc8Wp5bibeNNfZ8G873VAnqt5rT/4t8tnV/SgCIpY2rlbvwWRfTBoec6gBcGWa
	DTQYcclMvYGvrWWLWAIW7MoUg1fWce1j32OqhF3FWY3DQ==
X-Google-Smtp-Source: AGHT+IGEMdfa/7pI/vtQhZpE9t+GCiAKzWTtoHMGXUrvfqlTr4xGM3G4p6O55TyjazqugJ0Dpoksr/xy8ncvPcXnu9I=
X-Received: by 2002:a05:6512:3a84:b0:55b:57e8:16a5 with SMTP id
 2adb3069b0e04-55b57e81981mr94240e87.32.1753348622453; Thu, 24 Jul 2025
 02:17:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-3-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 24 Jul 2025 17:16:51 +0800
X-Gm-Features: Ac12FXxEOfXERpbm54RTrpt_sFAe6oyRhPRCsENRyO12HQ_K_abqIUXAGxmi264
Message-ID: <CAGXv+5Exb0X-6V=bdJefaz+m=eXSrrw6_SgWY6vDF3rF1RmVBg@mail.gmail.com>
Subject: Re: [PATCH 02/38] dt-bindings: display: mediatek, dp: Allow
 DisplayPort AUX bus
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, 
	herbert@gondor.apana.org.au, davem@davemloft.net, krzk+dt@kernel.org, 
	conor+dt@kernel.org, chunkuang.hu@kernel.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, jassisinghbrar@gmail.com, 
	mchehab@kernel.org, matthias.bgg@gmail.com, chunfeng.yun@mediatek.com, 
	vkoul@kernel.org, kishon@kernel.org, sean.wang@kernel.org, 
	linus.walleij@linaro.org, lgirdwood@gmail.com, broonie@kernel.org, 
	andersson@kernel.org, mathieu.poirier@linaro.org, daniel.lezcano@linaro.org, 
	tglx@linutronix.de, atenart@kernel.org, jitao.shi@mediatek.com, 
	ck.hu@mediatek.com, houlong.wei@mediatek.com, 
	kyrie.wu@mediatek.corp-partner.google.com, andy.teng@mediatek.com, 
	tinghan.shen@mediatek.com, jiaxin.yu@mediatek.com, shane.chien@mediatek.com, 
	olivia.wen@mediatek.com, granquet@baylibre.com, eugen.hristev@linaro.org, 
	arnd@arndb.de, sam.shih@mediatek.com, jieyy.yang@mediatek.com, 
	frank-w@public-files.de, mwalle@kernel.org, fparent@baylibre.com, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 24, 2025 at 4:39=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Like others, the MediaTek DisplayPort controller provides an
> auxiliary bus: import the common dp-aux-bus.yaml in this binding
> to allow specifying an aux-bus subnode.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

