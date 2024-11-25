Return-Path: <devicetree+bounces-124156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8903F9D7C4F
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 09:01:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36AAD1634E6
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 08:01:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 384E3188006;
	Mon, 25 Nov 2024 08:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="CuSS+IOr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476651547DE
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 08:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732521695; cv=none; b=J+qpLU+EKHsYmSakvcX0FabszT9Js6PV2UX1Ie2DKbEsSXBMhuLqETYLuVf0Hf5/ZnA5x2ORzs/wTv0pGKm51wseUSQU5qkgw98xUicn4+DPh1ZDsJ1a6lZSLU8L2L8fQnRN7b9kwgdn/y36i31b37xeIj7nm6I+rxZKJBwC7jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732521695; c=relaxed/simple;
	bh=+tyiE9J0eGLoQYHuhhKZIa6hDUKaJOnKp7k8/yARY2U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jR2Z0FpP0FODeKCozO+je6iiqqH4KB0FLlBUlOVYPLQ9odKo+YeNZVHF8QkS6nPthYdTmA0PMlxph3HG4ZPO00mfwhzSM2fBPhP/jL4W7ZHVGAz6YZrpuyhut3AoHe42AztcpUBjE9ByuAuvkbirIbpGmqxbmtiL35qZN+toJhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=CuSS+IOr; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53de579f775so463129e87.2
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 00:01:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732521691; x=1733126491; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+tyiE9J0eGLoQYHuhhKZIa6hDUKaJOnKp7k8/yARY2U=;
        b=CuSS+IOrIQx0rIr8VG1BvtxWsRUBPsCNNWeT9ImG7exGdPZFV3WP3eatlAU2wKrtIg
         6qLtuTZG1T+NVe/Jx36Va9arXllioyLq+CKXqQypRnKxIttWIS6QmYzZVwq4xDZX2cCk
         zwXI6QzlUVd0RzaUXLgzVJpw4vD8Kx0DofHZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732521691; x=1733126491;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+tyiE9J0eGLoQYHuhhKZIa6hDUKaJOnKp7k8/yARY2U=;
        b=fpBS/fs6sautQSYRXrMMaFm0ZBu3C/X3Bl36ZRHB4B2C/MZivj11iV7vR2gU+jf2ry
         92Smg/2jsyMx23tlWlsNVmkxH1vQvCvB026PaHK2U73XjH/t7oOqVWIBn5c5gaupvVUo
         kRIaWHkXQro/Iq/563MIVt1+fx/9JbwTYFQCvWvBY+Z/9lHkpbqb1lMOyEpRDEtdYNOe
         VOjqzhwhk4Mbfn2v0M3loaalMhudPaVpzD9zvbAVe+V9OUj0MBoZUFJOALJABlAB/KmM
         5Z0h1Vkgd4ip3/7XYM0AjI8soF21M7QFAQXVye8n73ofmI53Noo7+TAfq9VkcL6F/U5n
         hmdg==
X-Forwarded-Encrypted: i=1; AJvYcCWWDSs5yZuJIDuGgww5MVF40ZkU3sN0NNzSPH2JsbuxVwuxCABWgzP+pfw6nW3dABCbchMvWRqRcv+S@vger.kernel.org
X-Gm-Message-State: AOJu0YxQWvyzYMWOdcoykbpIwZGrwgHKkT9oD5ZwpDDL4ovnpUb+/DhI
	iehVX2yCBRbbnJ55Gf/PtVVTLEUKvoHZv4CuP+2NV4AcvGNufreUPNUN7j3aXScZ7yXPdup3h/T
	+kHBYXfTszuznal6VoD/Is3/VA91S1YCNaDgT
X-Gm-Gg: ASbGncsDuzNEPOlhL06PA+uOLOKwXBrjNQVGIkXjaGVzW35LYKxT6WgEYHDLt2o4By1
	EQLFE3H+V2sFralKWDV21Ll1WuMFENnFlQaVFJ3sKdsxBx3of3RAJQX/icF8=
X-Google-Smtp-Source: AGHT+IFNA2YPDB29CKBTPo3ULGX/2k8v0BktEtEySMJsHpFYreImy/VSkDo3YvLTyiyt5hYDcUA3UR4cYjWGNCVrAeM=
X-Received: by 2002:a05:6512:6c8:b0:53d:dd84:a92e with SMTP id
 2adb3069b0e04-53ddd84a93bmr3341455e87.0.1732521691043; Mon, 25 Nov 2024
 00:01:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241106093335.1582205-1-wenst@chromium.org> <20241106093335.1582205-8-wenst@chromium.org>
 <1246d672-4370-4db7-b4d0-368524809435@collabora.com>
In-Reply-To: <1246d672-4370-4db7-b4d0-368524809435@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 25 Nov 2024 16:01:20 +0800
Message-ID: <CAGXv+5H8YwiTyk1eMSwPLuGw5sQxec4n8OKR-Qa5wz8QGH4h9w@mail.gmail.com>
Subject: Re: [PATCH v11 7/7] arm64: dts: mediatek: mt8173-elm-hana: Mark
 touchscreens and trackpads as fail
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, Wolfram Sang <wsa@kernel.org>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>, 
	linux-i2c@vger.kernel.org, stable+noautosel@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 14, 2024 at 6:36=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 06/11/24 10:33, Chen-Yu Tsai ha scritto:
> > Instead of having them all available, mark them all as "fail-needs-prob=
e"
> > and have the implementation try to probe which one is present.
> >
> > Also remove the shared resource workaround by moving the pinctrl entry
> > for the trackpad interrupt line back into the individual trackpad nodes=
.
> >
> > Cc: <stable+noautosel@kernel.org> # Needs accompanying new driver to wo=
rk
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > Reviewed-by: Douglas Anderson <dianders@chromium.org>
>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>

Hi Angelo,

Could Wolfram also take this patch instead of it having to wait another cyc=
le?


Thanks
ChenYu

