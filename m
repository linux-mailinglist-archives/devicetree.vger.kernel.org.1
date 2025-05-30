Return-Path: <devicetree+bounces-181889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 37ECDAC94EE
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 19:46:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F91EA426E1
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 17:45:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96CDA263C69;
	Fri, 30 May 2025 17:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="w80jX+rx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4AA9262FCD
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 17:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748627160; cv=none; b=ZLY72RW/7eS07VLNZ1iicgXxq0Lflkdv9WzvkbZnVBvikYlS/3R4pLIoFKxVwXfWT42cFtXuUSilzwgIqZatdK7Qhkm5ao6UaH4p4VEGCWztpujN2SeAmCb4vnUxKXIMDVTKJdOof0hKGMnNqnJDij1Fj8xNfi6cP26/nBVHov8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748627160; c=relaxed/simple;
	bh=gAMcET+cuuKL0RWwCyWMytv8F9RmoUjag07rOTeO4/A=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=PR4oR5YQ47VNQJNRso6qzS/RYcvVUdJ2XHjcBA/+1zKoO5smF3ejcSReD6Na+ciA3N9thKTMww2+anRc6qXpZgjRNTqLhpHYfNELvfCTagZCs+DtK9z/scJ0S8FZvIlxDR39c1Z425ena0tL8R/Ii6IDCieS3ww8CcpPkD9eU5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=w80jX+rx; arc=none smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-60d666804ebso96896eaf.1
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 10:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1748627158; x=1749231958; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gAMcET+cuuKL0RWwCyWMytv8F9RmoUjag07rOTeO4/A=;
        b=w80jX+rxmo1ljwTTY7so/w0xWQwJRLILwKK/1bogFysKkZSoi2ZBg1gWJOMC+YRjmi
         djNtbAlHOuXlWm53069HeRFVHU7H4RbNOMNkxaqOUsQ6mYNEvgv/X4fvjUR6+2FYRUTS
         uRT78/lnLxIaEkTqsAPInhwfkWsc12ohQPvUhWpgJNhSwDXFZlXEwI3LPG1kVSJhUXQh
         EN/D3TNvycjgol6G/rNCwf/AO3pqR++iSXiDKTPuqWMCGQMm9nRvRmfhZ1tvIeceh4PA
         8hIXEDXfZtjm6oMYOOwwPz1F+BmIWsmhvJTT+bhgGc5j3acQAVRGe1Y+vJ31GZGrMXB0
         Re4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748627158; x=1749231958;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gAMcET+cuuKL0RWwCyWMytv8F9RmoUjag07rOTeO4/A=;
        b=E2FzF7tRzqvb2MisLVMY/hMFWFXqCftWFLnp+iDJzmNS4z7fQ2CrtwBM+IrC8dadPi
         84X3n8p/j5G8d3z6p9KYWLQCg4oysJFGvSOeN343wnDTeNSUCR6uDdoleLVxmDrqM+Pk
         NZ6nGgx5a4W5WMnCaNgGx7209vS6ljwGn27OY0ySUiqHGN6B/mQWboR1VHgkWBn1Wy2z
         ZYkmSsPifVT0Fgswnkv8Q8yS8tivyaSK9AyaHem2/619QF8ldVwy6jM0pD6+kTpiSLKk
         x5leTueo2gIzwfOBvqtERvKorTVlamT9BpVHwXEc35wn17N65oC9DlhfCxqqT14ogGuL
         Q88A==
X-Forwarded-Encrypted: i=1; AJvYcCXlwYYzJ2denx3HXRkj8gOJOi/aafJgszcUVIbuN4QE6B1tOE7+ZhwWsTCrlqgqLt7OQ5g8xYKbh8nN@vger.kernel.org
X-Gm-Message-State: AOJu0YwbYJfDapraY7v3lgaxrX+R9E2qxc8DMCz/3k+R9Qfhw2OeGNBx
	0CZZXy82Qppu95fSaHwQ4va/gstYqUtoXUE89RoWNYb3I29teHPUYFYtoc8hbWyX4XDiRsdw4dM
	INWDayCw=
X-Gm-Gg: ASbGncuIuxVBoi1Uyt0nnkKopVeEpCvM7udonHARXY2XBF9jG/sSayMdtWuTVO8Zijk
	QNAfYrkN0IEFAomkD35wgkA0MfPrHyGR0TzAWtlWdlVRnd+OCgkC8ictUDliIS3okmMQD4vMlw+
	6PVfyVLMcFvDpg7JW22JAllaQVWDES8YKbR7SUzPKRlg/YAXH0v5pe4XFrqzvxafE4okTDyg/2G
	1fgrvHrrMFan1bhCNbAzLSI9oXSAQJiZXq3j6LsbmqfwpRAm3oSKeaXKt6b8Lj2F60EvkVWOp/h
	IJ1uUmEcFZVDHZHThzLgXQAwHS+UDhH9GefLrBxXNgzzwsBHVaoBSymrEbjeA5u3+fo=
X-Google-Smtp-Source: AGHT+IHyl1e3Yym/gxdy5g4CfoGGquz0lE1x+UxDToQUNLQVwUIPOg1TJW9EOWFrIUF4GMcwRcWJcA==
X-Received: by 2002:a05:622a:514e:b0:4a4:3f16:c2e4 with SMTP id d75a77b69052e-4a4409b955dmr70951691cf.15.1748627147504;
        Fri, 30 May 2025 10:45:47 -0700 (PDT)
Received: from ?IPv6:2606:6d00:10:5285::5ac? ([2606:6d00:10:5285::5ac])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4a435767a5csm23220391cf.10.2025.05.30.10.45.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 10:45:47 -0700 (PDT)
Message-ID: <23ace820d130e5d18c599d29e960652be49e1457.camel@ndufresne.ca>
Subject: Re: [PATCH v5 00/12] Enable jpeg enc & dec multi-hardwares for
 MT8196
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Kyrie Wu <kyrie.wu@mediatek.com>, Hans Verkuil
 <hverkuil-cisco@xs4all.nl>,  Mauro Carvalho Chehab	 <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski	 <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger	
 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno	
 <angelogioacchino.delregno@collabora.com>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Cc: srv_heupstream@mediatek.com
Date: Fri, 30 May 2025 13:45:46 -0400
In-Reply-To: <20250530074537.26338-1-kyrie.wu@mediatek.com>
References: <20250530074537.26338-1-kyrie.wu@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi,

Le vendredi 30 mai 2025 =C3=A0 15:45 +0800, Kyrie Wu a =C3=A9crit=C2=A0:
> This series adds support for mt8196 multi-hardwares jpeg enc & dec,
> by first adding mt8196 jpegdec and jpegenc compatible to install
> kernel driver. Add smmu setting to support smmu and iommu at the
> same time.
> Secondly refactor buffer and clock setting to support multi-hw jpeg
> working.
> Lastly, fix some bugs, including resolution change handleing, stop
> streaming sw flow and others.
>=20
> This series has been tested with MT8196 tast test.
> Encoding and decoding worked for this chip.
>=20
> Patches 1-3 Adds jpeg encoder and decoder compatible.
> Patches 4 add jpeg smmu sid setting.
> Patches 5 fix jpeg hw count setting to support different chips.
> Patches 6 refactor jpeg buffer payload setting to handle buffer
> size bug while resolution changed.
> Patches 7 reconstruct jpeg dst buffer layout.
> Patches 8 fix multi-core stop streaming flow
> Patches 9 refactor multi-core clk suspend/resume setting
> Patches 10 fix decoding buffer number setting timing issue
> Patches 11 refactor decoding resolution change operation
> Patches 12 fix remove buffer operation

Just general comment, you built your patchset up-side-down. Start
with the fixes of things that was already broken, then do your multi-core
support refactoring, and only then add MT8196. Looking for a v6 with
a re-organization of the set.

Nicolas

>=20
> ---
> This series patches dependent on:
> [1]
> https://patchwork.linuxtv.org/project/linux-media/patch/20250424090824.53=
09-1-jianhua.lin@mediatek.com/
>=20
> Changes compared with v4:
> --fix kernel robot build errors for patch 4.
> --add reviewer for patch 1 and patch 2.
>=20
> Changes compared with v3:
> --change patch subject of jpeg encoder and decoder compatible.
>=20
> Changes compared with v2:
> --refactor smmu sid setting function interface
> --Some modifications for patch v2's review comments.
>=20
> Changes compared with v1:
> --refine jpeg dt-bindings for MT8196
> --optimize software code to manage jpeg HW count
> --refactor smmu sid setting function interface
> --Some modifications for patch v1's review comments.
>=20
> Kyrie Wu (12):
> =C2=A0 media: dt-bindings: mediatek,jpeg: Add mediatek, mt8196-jpgdec
> =C2=A0=C2=A0=C2=A0 compatible
> =C2=A0 media: dt-bindings: mediatek,jpeg: Add mediatek, mt8196-jpgenc
> =C2=A0=C2=A0=C2=A0 compatible
> =C2=A0 media: mediatek: jpeg: add jpeg compatible
> =C2=A0 media: mediatek: jpeg: add jpeg smmu sid setting
> =C2=A0 media: mediatek: jpeg: fix jpeg hw count setting
> =C2=A0 media: mediatek: jpeg: refactor jpeg buffer payload setting
> =C2=A0 media: mediatek: jpeg: refactor jpeg dst buffer layout
> =C2=A0 media: mediatek: jpeg: fix stop streaming flow for multi-core
> =C2=A0 media: mediatek: jpeg: refactor multi-core clk suspend and resume
> =C2=A0=C2=A0=C2=A0 setting
> =C2=A0 media: mediatek: jpeg: fix decoding buffer number setting timing i=
ssue
> =C2=A0 media: mediatek: jpeg: refactor decoding resolution change operati=
on
> =C2=A0 media: mediatek: jpeg: fix remove buffer operation for multi-core
>=20
> =C2=A0.../media/mediatek,mt8195-jpegdec.yaml=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 8 +-
> =C2=A0.../media/mediatek,mt8195-jpegenc.yaml=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 8 +-
> =C2=A0.../platform/mediatek/jpeg/mtk_jpeg_core.c=C2=A0=C2=A0=C2=A0 | 169 =
+++++++++++++-----
> =C2=A0.../platform/mediatek/jpeg/mtk_jpeg_core.h=C2=A0=C2=A0=C2=A0 |=C2=
=A0 21 ++-
> =C2=A0.../platform/mediatek/jpeg/mtk_jpeg_dec_hw.c=C2=A0 | 112 ++++++++++=
+-
> =C2=A0.../platform/mediatek/jpeg/mtk_jpeg_enc_hw.c=C2=A0 | 112 ++++++++++=
+-
> =C2=A06 files changed, 377 insertions(+), 53 deletions(-)

