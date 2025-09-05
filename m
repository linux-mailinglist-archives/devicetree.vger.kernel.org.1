Return-Path: <devicetree+bounces-213300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BCDB450D3
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 10:04:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3BD89174DE5
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 08:04:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 490BB2FAC12;
	Fri,  5 Sep 2025 08:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bGzL0syZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D9D2FDC24
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 08:04:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757059453; cv=none; b=JW8oyno6NmvtaFqNELOv7Lx3yfIKGB4Ejbowg4i1ZOAU1fW+itRtJpW59z1rc16yRFcJ2P/yhgaOz3mP6JQTszD5YUyySQBOi2GRmLyZpWVW8CA9LXb56wR4jtW/tB3ma2923kxMZySEfiAXV1ZHCzO4tIkuRz1S2iTSVX/x0iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757059453; c=relaxed/simple;
	bh=gPfnz/o3iNaHytOqe7truOjcGer8WrwACGpoW942gks=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=npTJng+uMB0TlBr69f2mR5NWWExlM9xuNOXGng86rFu/9LPNh3r7yj30tmfxtmL88ZD+juSv/GB4/EG/E8NhL/D074vUdtkIedujGvbwT0TfGHgrxppyPs3i0ZSOl8rZhn2084Sh3GtKejcpuNPvT+vZDrZzF2XQfBHX6pnORfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=bGzL0syZ; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-337f6cdaf2cso14391481fa.2
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 01:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1757059449; x=1757664249; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gPfnz/o3iNaHytOqe7truOjcGer8WrwACGpoW942gks=;
        b=bGzL0syZP9Tuw2/0AtF/bmdxZuSWwd+gXiqLXNd/9xOGMYNV9rMpUzhjtCVFNo2ZY3
         l78vFVU1pG0AWRrg7iWPp+lGTzRO+dzfsweZ5ZBqPaCH8FYiXGO26yAh+lzo2QBqvwa0
         ykCa59A+0TRJc6P+jYJO2uEWqA4ApH+alnp2U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757059449; x=1757664249;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gPfnz/o3iNaHytOqe7truOjcGer8WrwACGpoW942gks=;
        b=ta5EGoC3YyHKFORKJ4m2iZfGd2MBR1Hho+BovjYHfAEq/3sjCn3TkJehqqfrEuwzi+
         qx1KE4pgJd2mwXPRIJ8TmFClXL638CEZ6YGvmtu43grTFTf/ByxPS0dS2fTHCMd+/Tzj
         zoiVobbixDTQgCIOVI9YDdY7RRBjSimq/IMo1eSjgtLoRljVKE0p4q9kP74X4eg4fSm9
         yk/oYNyEw7VttdQpcUVOpuJJys1k4czUwc02pzrNtPwnvuqq9r5WdVHIEFy6ByjqQGjt
         ZEsOpzsyfDJoZ3l0OE61IgBpy+Nm0gMSC3xGQleGLGIlTAB+mffwB/BaUccP5bfBf3Cc
         sN9Q==
X-Forwarded-Encrypted: i=1; AJvYcCWxORp+QBL/86p7Hf99+1LAdacME/hoC797Ptct8LhD5KJKtq0H7Wb0lpIT+zxc0zlT8/AqdUE0HJ8w@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4HyH2zOlZ6ZSij9UJ6LTkdPn2ta8r7sPD1zGGzIoR61nWqPUz
	0UiC7BFtFpu6CmH8kMUgv5KOsjxjM9O9LwHLmKYYdKAVCa6Pai0IRk7RyVonrcVIOCgSkmEFYra
	zRG82Ef5bNYJLvYylQLDWoBKWM5XDk4+E++LdYC8O
X-Gm-Gg: ASbGncv4s9JF6WIbvMU/v/aqtPmcaIrwVNBiC6E/+mTHM81orncPVoSE6MqRGxk93o7
	nr4xGnUsFJjwOfg9lkoWg+tgYtWyEbKUO/qugph/reN/8UvRaIvS6Qal+4xareRv0vVYDx2a0RA
	14+685ByfI0d61EOW2A37re+BwEy1AuJ3VeNk3ftMwHmWq/0A0O6A3toWOlyWrxijPowfuV/LKB
	W2v1mcPK2kwfMdK2U3pwB1149XRxfhGAgMlGQ==
X-Google-Smtp-Source: AGHT+IHT043Y/TruREpGKZ+/QRl4lPJ5bvgN3xV40J/rToLhwUaxJ8c7vgtH50x+X4YlPrhw0jN/shKQPrGCvcazPsI=
X-Received: by 2002:a05:651c:1a0c:b0:339:1b58:b199 with SMTP id
 38308e7fff4ca-3391b58bbc2mr3260661fa.36.1757059449029; Fri, 05 Sep 2025
 01:04:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250829091913.131528-1-laura.nao@collabora.com> <20250829091913.131528-23-laura.nao@collabora.com>
In-Reply-To: <20250829091913.131528-23-laura.nao@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 5 Sep 2025 16:03:58 +0800
X-Gm-Features: Ac12FXzqjLPg1snoakkIHpjZL3gjVDvpLkfu1BDJJWXmMZBGn3rIna_U1tSPpG8
Message-ID: <CAGXv+5GreKJSz76EiHYzX-ByfyxuYNYB6OyBJk9ZhsKCapPjRA@mail.gmail.com>
Subject: Re: [PATCH v5 22/27] clk: mediatek: Add MT8196 disp1 clock support
To: Laura Nao <laura.nao@collabora.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, p.zabel@pengutronix.de, 
	richardcochran@gmail.com, guangjie.song@mediatek.com, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, netdev@vger.kernel.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 29, 2025 at 5:21=E2=80=AFPM Laura Nao <laura.nao@collabora.com>=
 wrote:
>
> Add support for the MT8196 disp1 clock controller, which provides clock
> gate control for the display system. It is integrated with the mtk-mmsys
> driver, which registers the disp1 clock driver via
> platform_device_register_data().
>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>

IMO removing CLK_OPS_PARENT_ENABLE is the right thing to do.

However if the hardware ends up does having a requirement that _some_
clock be enabled before touching the registers, then I think the
MTK clock library needs to be refactored, so that a register access
clock can be tied to the regmap. That might also require some work
on the syscon API.

Whether the hardware needs such a clock or not, we would need some input
from MediaTek. There's nothing in the datasheet on this.

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org> # CLK_OPS_PARENT_ENABLE remo=
val

