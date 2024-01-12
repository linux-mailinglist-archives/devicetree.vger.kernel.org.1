Return-Path: <devicetree+bounces-31756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0ED82C75F
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 23:40:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E5511F2464A
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 22:40:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19A0D182A3;
	Fri, 12 Jan 2024 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="IIc4+vCn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82A0F1802B
	for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 22:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-50e7c6f0487so7767179e87.3
        for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 14:40:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1705099230; x=1705704030; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:user-agent
         :from:references:in-reply-to:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=32kOpc7jmHfTKnUipGkgywWo/WFBVKADG1CFjMO63QA=;
        b=IIc4+vCnY6m6uYTPT3feMgpLWU0jUnTycmofqEUYLWgsoiTM3gcq8M6va6dZbt0bgv
         y0fNw3ANaPTdY7atwqHlzGgGNm83CSGxu9uHy4CDVQvulTNCc/Yg/vn/zbj0sWX7F9B4
         3QnG1dNLvFGy2a+7mxl8HA+iD/fy1rnb4Atxk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705099230; x=1705704030;
        h=content-transfer-encoding:cc:to:subject:message-id:date:user-agent
         :from:references:in-reply-to:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=32kOpc7jmHfTKnUipGkgywWo/WFBVKADG1CFjMO63QA=;
        b=VEpaz3MRY3WS3EdPaqy/NhFT2rFY958EKk2B2tX9jR+iLri8lIhlKNjU6KLQ8pBg5C
         5vA0rIqIm4dV6Q7h6wzdQF1sYcoWlASxwyc3WTKC4aRFBbpmbr8x+9D3AVFYkAZ+la8A
         Do3kp/rONLNQU4OTjr5dNWm1M23HfqjYQCo3sDj9KQjsLr2/OGGJgEUtPaDuuUwzpH3R
         MW+TIXYuuuccx2YWjN0NjvlXPojhHois85RjxznYshif4NVlzIHZzvwD63F17JxiUNpP
         KrXkKyNSa6xmS9plv9BdUQ59y2yBG0W0cXE7fqygHVPXwogfFzCykSQ5bc3LAu3Y24Rc
         GoPQ==
X-Gm-Message-State: AOJu0YzrFRCP4BDu5SBeLZqtn2IOVN69ppvRH2iEOsyiMZW1pqJSeS1F
	G+1I5MCXXTX6oqgdTxsPqKH8JgWYMkRoAfE5B/EARLUz8RKl
X-Google-Smtp-Source: AGHT+IFAGDRltzrOuwOjfQw3BbOLAGH99OOdLrJfIuQiRQpUY3N7PM2+1jOwKqS+5bXXF/pZCJmDPVeNB9k5DbXpKmQ=
X-Received: by 2002:a19:9116:0:b0:50e:ab9b:c1d with SMTP id
 t22-20020a199116000000b0050eab9b0c1dmr695685lfd.37.1705099230506; Fri, 12 Jan
 2024 14:40:30 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 12 Jan 2024 14:40:29 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240112142032.909736-1-nfraprado@collabora.com>
References: <20240112142032.909736-1-nfraprado@collabora.com>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Fri, 12 Jan 2024 14:40:29 -0800
Message-ID: <CAE-0n52sbshmkROspU4Hg=G_-RzhkG11q8ktc9uzHuo0JXn93w@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: mt8183: jacuzzi: Remove CrosEC base
 detection node
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	=?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>
Cc: kernel@collabora.com, Chen-Yu Tsai <wenst@chromium.org>, 
	Conor Dooley <conor+dt@kernel.org>, Enric Balletbo i Serra <eballetbo@kernel.org>, 
	Ikjoon Jang <ikjn@chromium.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Quoting N=C3=ADcolas F. R. A. Prado (2024-01-12 06:20:28)
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi b/arc=
h/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> index 7592e3b86037..8c9f7435cf4c 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> @@ -484,3 +484,6 @@ volup-btn-odl {
>         };
>  };
>
> +&cros_ec {
> +       /delete-node/ cbas;
> +};

Usually we add nodes instead of delete them. Can you move the cbas node
addition to the other files that include mt8183-kukui.dtsi instead? It
will be a larger patch in number of lines but then we don't run into
problems where the node is moved later and this breaks because 'cbas'
doesn't exist.

