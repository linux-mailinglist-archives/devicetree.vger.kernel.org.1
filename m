Return-Path: <devicetree+bounces-133828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 049289FBCEA
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 12:31:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 387F7163B01
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:31:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D25C01B6D1F;
	Tue, 24 Dec 2024 11:31:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhSxux5O"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8D331AF4E9;
	Tue, 24 Dec 2024 11:31:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735039904; cv=none; b=aFq0ACf/OhmVCYxHrX+LiixeymszQB1q7tsWx/GoXjqbHn0XQLcGYvoBtCaZ55BL28GjU2wQT9vKSlk0Pm8a5C1Tc628EBj7N2I3uuTuwztfkr/qOr6IH3g3ADNwNc7q+TJOQzCzOklPBZwLoL+mHZYY5Pa2QBBjR0c7kpgbqjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735039904; c=relaxed/simple;
	bh=03ARuXNN1LYC6Y56lO4Z0KutZ2KDzQyEBAbl6atBMq4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Qek5TIo/qgkaKv++1jRG85DfPBlwwPApOGDjpu38TLE04gHjGmzqeYT+hoLSWuBBqsNfdvdQMF+lQEe17SgzNPMrfQ5P7bZvskYhmiILemmfRa9bWch+hOn1rqCug9VlLwJFJ2VHKpYXU6275GTPDv+V/ofCwfVriDX49yummAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhSxux5O; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 499BFC4CED0;
	Tue, 24 Dec 2024 11:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735039904;
	bh=03ARuXNN1LYC6Y56lO4Z0KutZ2KDzQyEBAbl6atBMq4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=VhSxux5OjALWeX9mJiVMA1KmH3gKWvY+37UDf0WLo2/An4aMSHs12zWW9u5uYHdtC
	 xsOMmh3QAC8HKxB0/zvHtlZILXhAhsEmzJGJceH9eczG1gLGXemamg6GBdW2OyrXcb
	 P4JhHTHiuOcsma/8QJXTgqdMPbt3qeQYlwFD/WNt/MMUiNio4iYcVOUX9KhW5CN7wf
	 AY8SyTfbZw35bw6LkY07y0CGwVaHljO9XtZwYjtbzqwckaG+cx3OXSWAVma3yXNV5p
	 jvg9dPkTLOtjHIXpAoTNO4sLNJSKupH/um9bt7bQxbmG+NqCnZU7+LwB1+JoIevYhj
	 HYtzM5wwESR/w==
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-21675fd60feso66205415ad.2;
        Tue, 24 Dec 2024 03:31:44 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUHUjN4DPaWObyEMPWTH3EPcDE0Fo/EVrf6c3WA3d+bR79fXrEMAcTCS0HKd7AO96aLiRIQO8y4asGx0AaK@vger.kernel.org, AJvYcCWajqYEmMIRr5VLIiMggJhaGfRAYpox16aA0cRpcm8LefvndWiBIYzlYKxDjwQseANgiJ6LGcVMkaLm@vger.kernel.org
X-Gm-Message-State: AOJu0Yxtku7TGRlvHXUixLDEZPMXA9deBeSNlBDJlgqFd9reTc1bSLvo
	ZxAzeRC1+ENcMxr29QaZbtikZM4n1weAsvWoqTVGG1nEaPtdPFTRUYB4nyWGxop+9u8Qyj0SaLa
	nbeog7XiiCndFw1u5b1K0oPdRsQ==
X-Google-Smtp-Source: AGHT+IF0Z2A1ZpCpDpYV0wej1AcD2Tjd35Ya5woNBEnskBD/S7v7TPAd15rnS+ywO0yVT1bM1GTtN5IF4uyo/ZC9CPI=
X-Received: by 2002:a17:903:234e:b0:216:46f4:7e3d with SMTP id
 d9443c01a7336-219e6e9fa68mr217969135ad.15.1735039903928; Tue, 24 Dec 2024
 03:31:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241219181531.4282-1-jason-jh.lin@mediatek.com>
 <20241219181531.4282-2-jason-jh.lin@mediatek.com> <6cbe2f57-a63e-4993-938c-7696a869dc2f@collabora.com>
In-Reply-To: <6cbe2f57-a63e-4993-938c-7696a869dc2f@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Tue, 24 Dec 2024 19:32:16 +0800
X-Gmail-Original-Message-ID: <CAAOTY_8mUutkz+q4-JggbmQRpNn6tukM_GuQ-0rwVRCoOd0mGw@mail.gmail.com>
Message-ID: <CAAOTY_8mUutkz+q4-JggbmQRpNn6tukM_GuQ-0rwVRCoOd0mGw@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: display: mediatek: ovl: Add
 compatible strings for MT8188 MDP3
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Singo Chang <singo.chang@mediatek.com>, 
	Nancy Lin <nancy.lin@mediatek.com>, Shawn Sung <shawn.sung@mediatek.com>, 
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	Project_Global_Chrome_Upstream_Group@mediatek.com, 
	Fei Shao <fshao@chromium.org>, Pin-yen Lin <treapking@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com> =E6=96=
=BC
2024=E5=B9=B412=E6=9C=8823=E6=97=A5 =E9=80=B1=E4=B8=80 =E4=B8=8B=E5=8D=887:=
12=E5=AF=AB=E9=81=93=EF=BC=9A
>
> Il 19/12/24 19:15, Jason-JH.Lin ha scritto:
> > Add compatible strings for the MDP3 OVL hardware components in
> > MediaTek's MT8188 SoC and it is compatible with the existing
> > MT8195 MDP OVL components.
> >
> > Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
> > Suggested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@col=
labora.com>
>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
>
> Waiting for an ack to take everything through the mediatek tree :-)

Acked-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>

>
> Cheers,
> Angelo
>

