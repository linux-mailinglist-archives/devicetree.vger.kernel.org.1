Return-Path: <devicetree+bounces-108828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2EEB99408E
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 10:07:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D59F287EC5
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 08:07:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 235C3201264;
	Tue,  8 Oct 2024 07:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="U/rMMB0P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91CC201245
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 07:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728371854; cv=none; b=BsmqJzTOY0FEntV/W007rHDuq3oJmocCwAOvlx6BzdmGtBS96NvtPvoL7K1phOdMNX0NERvyo5BzfcI4j7HWF/q7pEBs247Gk2rY492xzYb82lq82jLX/u36XbVOKDuIjtoh6UsUiXZ2bjeJnpsIWRjqQKxP98nL1wek92C2/yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728371854; c=relaxed/simple;
	bh=BPDeWWSp9i5LlUOnDAuUUB2xgqqYj8TgywJmLv174B8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FaWfYvCpqQW56sBsdTxtBBmhNCM6Nq4p2mPvWplO13rpHr6oXm4eIMG1iBSc3Ayc5hATiQqTAhBBCwxb+YoqxXn6OXMz3/bNuC19fELta3/iXEbmKjjToRoma+uCi++zFVOGpl8H8CgJ63tRHa/i8O388kjJsdFDp2FMCjPc8QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=U/rMMB0P; arc=none smtp.client-ip=209.85.222.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-7a9a30a045cso452076385a.2
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 00:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728371850; x=1728976650; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mi3QRDDwcLms1UvC8yNmkM/qLj9SFeO3lw18C6Sbfk8=;
        b=U/rMMB0PnycJiyhG1vHkW5jAdwmB6NztxGM7xujjuYQUwuHxdBQ9QNWece6oB4J/fj
         9zXSo2zdbVV2JXPg6sb+d3h6hzXNVfxiFw+lWmhpRNm1yjLHokUfQIvAYVl3iJoD6Sl9
         778zLQ27Vay1kXTT7c/5lnZ9F/uuvue3LhCbo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728371850; x=1728976650;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mi3QRDDwcLms1UvC8yNmkM/qLj9SFeO3lw18C6Sbfk8=;
        b=vWca+8POg1OluNpv0cFe2MmW02b7EfhBMAZblOMwcZgGjHokSYkoca06aWxhnnkqZk
         qaO0j1gi689zuYPiiRN+Xgdr1O5ZdnV7gXpD4s7Ab+mnOthdb0gama0vJuDcwzjASgwT
         NiQPP2gzsie+PTXQqQ18BaTBAbeYipWwN17az2geom1b0KCdUAAJIXz+8933uy9Rq1Fi
         zu7qIcxR8Cmh1aPcOgzTIXWEheLpyeHUhg1r7wVwdK4JqyZWkdODdDsnxuw5ipFcyZfd
         ilFRJTUjFoakoI3eCu7mSFd9OimO2O7bxiFywPiVlASHYXTFZB50V0Qknpm3FiJMpany
         M2Eg==
X-Forwarded-Encrypted: i=1; AJvYcCX8TGSej+tz9Lnpu+PHDjp7Yrv6cUnxLM25igBLJwyvcZL/0jdiXeqoihTQahFYHLpl5DHfOn6zYc7n@vger.kernel.org
X-Gm-Message-State: AOJu0YzcDHSKpLbWz5E8niWRLXQHgdRJlpPQ0frkerluEBLXrcXsi/V6
	25lo75mgCugrYeYDxPoXpF8yeQUxQzq7+b0/xH9/3oeLieDKmpRraTTMeuH7CEZ1tNnR2na4gYE
	=
X-Google-Smtp-Source: AGHT+IHK0RPb2pCtM4j5AjWu3X4HbEwV9pLkI7r0WmyOPbG1m8U8j9OBbWNl9vABN94QFpudmgotRw==
X-Received: by 2002:a05:620a:40d4:b0:7af:cdec:dc16 with SMTP id af79cd13be357-7afcdecdfedmr2487485a.26.1728371849689;
        Tue, 08 Oct 2024 00:17:29 -0700 (PDT)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com. [209.85.219.41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7ae756200basm331531085a.1.2024.10.08.00.17.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 00:17:29 -0700 (PDT)
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6cbc28f8e1bso1227456d6.0
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 00:17:29 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVIJNCSo3UvyMXqUWPkF4NZedqDLWkUr8vA4I2rzAgpqg83KtYkw09mf0XDThx6b5DvrR5EYLQTXKVL@vger.kernel.org
X-Received: by 2002:a05:6102:1613:b0:49c:8d2:8ec with SMTP id
 ada2fe7eead31-4a405745478mr7873579137.3.1728371439139; Tue, 08 Oct 2024
 00:10:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241008053514.6800-1-macpaul.lin@mediatek.com>
In-Reply-To: <20241008053514.6800-1-macpaul.lin@mediatek.com>
From: Fei Shao <fshao@chromium.org>
Date: Tue, 8 Oct 2024 15:10:02 +0800
X-Gmail-Original-Message-ID: <CAC=S1ngrsDxQ1Fe9xB_EevGbGB5nDoCB_n2oGb2VTLiv1vSsGA@mail.gmail.com>
Message-ID: <CAC=S1ngrsDxQ1Fe9xB_EevGbGB5nDoCB_n2oGb2VTLiv1vSsGA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8195: Fix dtbs_check error for tphy
To: Macpaul Lin <macpaul.lin@mediatek.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, Seiya Wang <seiya.wang@mediatek.com>, 
	Tinghan Shen <tinghan.shen@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
	Alexandre Mergnat <amergnat@baylibre.com>, Bear Wang <bear.wang@mediatek.com>, 
	Pablo Sun <pablo.sun@mediatek.com>, Macpaul Lin <macpaul@gmail.com>, 
	Sen Chu <sen.chu@mediatek.com>, Chris-qj chen <chris-qj.chen@mediatek.com>, 
	MediaTek Chromebook Upstream <Project_Global_Chrome_Upstream_Group@mediatek.com>, 
	Chen-Yu Tsai <wenst@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 8, 2024 at 1:36=E2=80=AFPM Macpaul Lin <macpaul.lin@mediatek.co=
m> wrote:
>
> The u3phy1 node in mt8195.dtsi was triggering a dtbs_check error.
> The error message was:
>   t-phy@11e30000: 'power-domains' does not match any of the regexes:
>     '^(usb|pcie|sata)-phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> Fix this issue by dropping 'power-domains' of u3phy1 node.
>
> Fixes: 37f2582883be ("arm64: dts: Add mediatek SoC mt8195 and evaluation =
board")
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> ---

Apart from this, can you or Chunfeng confirm if we should make a
similar change for MT8188[1]?

[1]: https://lore.kernel.org/all/20241004081218.55962-3-fshao@chromium.org/

Regards,
Fei

