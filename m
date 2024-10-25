Return-Path: <devicetree+bounces-115575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7251C9B0117
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 13:21:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2004028181E
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 11:21:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A27D1FF7B6;
	Fri, 25 Oct 2024 11:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cJm5d/i7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A9E41F9EA1
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 11:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729855284; cv=none; b=K20b9kezensUV9Rj+oIZ7z7USJvJ31PuTzhE4rXCw56vTQ3BJ0egKS4D+esDyjdhSSzu01wvBGSeQwB0FbUWb3AA66KjazaDzTwHYSQAcSuCGCNWHwFRBzXrp1SLfaI5x3EQt+JFFJUPQFRcuJLaM/LcKnuYVXbvCKvxv9mJBhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729855284; c=relaxed/simple;
	bh=6sRf6jyLr7Lp7D8SrksXFJe24XLraz/lmXNXBNiv60s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=opQe2naw9ISYeSsbrw0+tXcV0K/4X2Ku9l2xGguiv2QD6uSDFRJ2Cs4tNKLBw0txrUrCCOAG2ylph6DkQL2IDCS85AwGZygRuGw5BkZxqnmnwg4zZoTfAGBl7br45pM7rnTIavW0AL09zKn0lMwq3InU7VI7T5c3MeySOj+vVds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cJm5d/i7; arc=none smtp.client-ip=209.85.222.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-84fc0212a60so522128241.2
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 04:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729855281; x=1730460081; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6sRf6jyLr7Lp7D8SrksXFJe24XLraz/lmXNXBNiv60s=;
        b=cJm5d/i7lfWEi+0lpKgOR0W+ypPvL0PbgXi8NpArrRZfss3eLLzIpkymIzUaZxyO2A
         qDQv3uLf0W6uruGnHomLRE6Vbr9Kqc8/yOJ/M2tGRp49Kwm4zpmfAhw6/eDkmp+xhJG0
         /ObI0fXI4ubbtO+luoUDjclqR/zyZ3VxzYsfA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729855281; x=1730460081;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6sRf6jyLr7Lp7D8SrksXFJe24XLraz/lmXNXBNiv60s=;
        b=flv9QqIOloftiwdIpS9yDOHb6xsfro6MTnk0UqxBgdsCJ+FLle4/O/gM6NGYzDl+HV
         4MAmzfNJUelbh8l9Aec8wPaqFMol0Tp/Kul8T5ZLnFBaC1mdSBLdKEaCUkU4kpFV5IjG
         KWy6LyQo5+CaqUVXIB+VIRq+OYH8hAw1hJTFAnhjuqoUPApPrUGKsKfzpzEAJYFOCfpB
         ejx8Y55RFiI4CCw3KQ0jgUHk5iJVqOLXkHijQ+mcN7DEr4Ur3lPvTuN3jOcuTjN7eRb/
         dWDgwS6qv2bU2x7DRfxsJEFiC35lGZVsZQM/0mZ9h39ndmyvqb6UFTNFERX+DirXoR9K
         p2Hg==
X-Forwarded-Encrypted: i=1; AJvYcCVoONtC8JyzKaLedHHz3bDxNrPJGiEACYrPxV7j29FsujdYnvQHic1j3y0qc40D+CPIHs1XhwP4uyoR@vger.kernel.org
X-Gm-Message-State: AOJu0Ywf2aBViNGNQQ7LpfXinnjpNbHTTe8J9SxfJTpRMe7LGp2pneqP
	Sc2AeSj9L0rdjBmRrYUpAsqQXjW68qOOT8+aY9IXRkPfcApmOYI1EbSJD4fe5nO68mCYazan+7+
	VMQ==
X-Google-Smtp-Source: AGHT+IFMEQWTZmo16tjt7q+hIVq9jLb6K/+wQtTw8W7M50jm4BlR0hTFUJ+TXEeF92YW99EyrgJnog==
X-Received: by 2002:a05:6122:3281:b0:50d:3ec1:1546 with SMTP id 71dfb90a1353d-50fd01ff67bmr10272944e0c.4.1729855281049;
        Fri, 25 Oct 2024 04:21:21 -0700 (PDT)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-510043cc8b7sm121813e0c.22.2024.10.25.04.21.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 04:21:19 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-4a47f8a9168so669337137.0
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 04:21:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWWY3jkbqwGZljSnPUVqI6bqsbPSSl2J0ahq+bYFzyQYQADeKAix7r2YRUeveKT/IPVf5EpzekI7lFu@vger.kernel.org
X-Received: by 2002:a05:6102:a47:b0:4a4:8346:186d with SMTP id
 ada2fe7eead31-4a751cbd6ffmr12043723137.26.1729855278733; Fri, 25 Oct 2024
 04:21:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241025075630.3917458-1-wenst@chromium.org> <20241025075630.3917458-2-wenst@chromium.org>
In-Reply-To: <20241025075630.3917458-2-wenst@chromium.org>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Oct 2024 19:20:42 +0800
X-Gmail-Original-Message-ID: <CAC=S1nip+CN=YEA7qWgZzx4wY666Qpn1-S2yMHw_jQTcjGcRDg@mail.gmail.com>
Message-ID: <CAC=S1nip+CN=YEA7qWgZzx4wY666Qpn1-S2yMHw_jQTcjGcRDg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: mediatek: mt8183: Disable DSI display
 output by default
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 25, 2024 at 3:58=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> Most SoC dtsi files have the display output interfaces disabled by
> default, and only enabled on boards that utilize them. The MT8183
> has it backwards: the display outputs are left enabled by default,
> and only disabled at the board level.
>
> Reverse the situation for the DSI output so that it follows the
> normal scheme. For ease of backporting the DPI output is handled
> in a separate patch.
>
> Fixes: 88ec840270e6 ("arm64: dts: mt8183: Add dsi node")
> Fixes: 19b6403f1e2a ("arm64: dts: mt8183: add mt8183 pumpkin board")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Reviewed-by: Fei Shao <fshao@chromium.org>

