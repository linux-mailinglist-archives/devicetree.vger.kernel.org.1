Return-Path: <devicetree+bounces-213161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9641B44C9A
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 06:10:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C3A7582820
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 04:10:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A18725784F;
	Fri,  5 Sep 2025 04:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="AJmhAq/I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443D1CA5A
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 04:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757045409; cv=none; b=Nknavkm4vwPhQBqB4Wc3w5RcBN6eS9GGXK3rU4qbg5h/KoefMW1kYaRkQMA1S12x1O+VWrLC6XMNHSLwms5h3/MxsudapJ0RQlm/Y837Po34/wSvpYaYvsu97WmdfBr6Dw5scQ1horCSsbfX9hV8kuYLFtKa8l7CoPdlTz9nh9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757045409; c=relaxed/simple;
	bh=KLKUHPIcRB0O4muuVCBP8C+yFYqPCsP1VfYmF9nYOvI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PezEe1+cyxhF6lGwMLE9EgBGXQkMFXDlzmYOVC+BH1XZs7iwsnUqMPxuXxhgAwjjts1wW4sP2bk//9/N9NXfouo0AEBY7HUMjDiTU2jEcfSp+iPOK/Bs/IULo5udpKDvPXYZLwdPdy6VZrXwACGx1TnZIysdRqUr1XbBaXKVMHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=AJmhAq/I; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-55f6f7edf45so1731212e87.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 21:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1757045405; x=1757650205; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KLKUHPIcRB0O4muuVCBP8C+yFYqPCsP1VfYmF9nYOvI=;
        b=AJmhAq/IP/BSeLkYccBXDi13Lp40Tvzens1nJ4WoC96MTkj51upPoaMdlbP2lw+rek
         HmuWGup7FR1jfacuCYzjWNmncw6qQwsRlHjJUpn0vB55FPRTxJZdnhEB+CjTekrH6Lht
         IhNDMHwmyGKR9OQW7QmfLz4Z7E3axvGkJpoXA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757045405; x=1757650205;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KLKUHPIcRB0O4muuVCBP8C+yFYqPCsP1VfYmF9nYOvI=;
        b=JWzG6oAcWjPuPkJ4Lz62giVdHoJY5gkMp3okMjhrz4J8Tz/UQY4uBqJWpL7xZPVj3a
         6btXkjfEA63Fak38m04gE5ZdjwCy2fFFM05nHC7xUXaAEr5c/Gl3qmdrnAlyWJ+5vHnY
         Xe9Ww/0Xp6hgIkwcBg7KF9vh4HxsH+P6NYOBgDgegjhS6rNFkRW3JXaame730Upy3KMr
         wU8ctkwbBTZPs7cZqPlakgAr1wPdad+Wqq5engifKNCpiKeWc/eQEhKCcbrQD1Kn6c7m
         hguRRy//Jn+Mxc3NfGk3PsE5sBESTJYxR7gIGB/oP5lAj7ekku9V7QSHC4dZZh2j8Fjt
         LAMw==
X-Forwarded-Encrypted: i=1; AJvYcCXQf0GjtZPKY9QwvfBgzl8C+8IqomOVbLUwMG9nB9Cp3VLgkMreJqoyEmQtxXnUwDA/IG9JUOB88Wg6@vger.kernel.org
X-Gm-Message-State: AOJu0YwQE8N6IUzj3yR/GEpJ4V0niUBL9yHSLin0ytC3yiPdi7l/CTDF
	pQl02Z7OslsIXrVJUNi3ztpryLwlzQyh7ouQmTUyLEkoSRMUPYiGoNCpWj1efNOYHP1GVCB7G3t
	229rZ1csyVyQoyenLN/1yMHOxbgbGLcQ8Onjq6icd
X-Gm-Gg: ASbGncv93EnZYnemo3/In3R5PsZneOu6o6fh2OH9cjR/vHFucO840JI2u4HCfhYs5oh
	krPHqURKe59WgmC+dK1/YM4EsJchIV/jKu+ZPCQXbcAgb1fAagEVMCksx53c8kW/CSpdyDM3+1o
	M3Lioy3S6gmP0MRIMfbSzgItkFVk2Spnn6rwhWbiIbng+84CByyuYz+pSSly2q399Meg52+ueLL
	9ga6kGIcT9uTsG92Q+Nd90wFO8OhegJjCl24w==
X-Google-Smtp-Source: AGHT+IH7HKhnxC6o9ewQ28R2ZzX9RmDQokY2C+2i+wMjE8WlWqsz+BTU++rL/6Yzgiv59B7OTvBGnUhQzmndeoe72TQ=
X-Received: by 2002:a05:6512:650f:b0:55f:65f9:512e with SMTP id
 2adb3069b0e04-55f708a2a7fmr4251279e87.6.1757045405415; Thu, 04 Sep 2025
 21:10:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250829091913.131528-1-laura.nao@collabora.com> <20250829091913.131528-4-laura.nao@collabora.com>
In-Reply-To: <20250829091913.131528-4-laura.nao@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 5 Sep 2025 12:09:54 +0800
X-Gm-Features: Ac12FXx6pAx7CiAA-H5MAQbshXKRXROm_6MtHlpf5-g4LpJf9Fu8XFakXK69rOQ
Message-ID: <CAGXv+5ELv9vR7i_Xd7XCC7gBciMXPfQfDAD1WyNy89=pJaLC_w@mail.gmail.com>
Subject: Re: [PATCH v5 03/27] clk: mediatek: clk-mux: Add ops for mux gates
 with set/clr/upd and FENC
To: Laura Nao <laura.nao@collabora.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, p.zabel@pengutronix.de, 
	richardcochran@gmail.com, guangjie.song@mediatek.com, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, netdev@vger.kernel.org, 
	kernel@collabora.com, =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 29, 2025 at 5:20=E2=80=AFPM Laura Nao <laura.nao@collabora.com>=
 wrote:
>
> MT8196 uses set/clr/upd registers for mux gate enable/disable control,
> along with a FENC bit to check the status. Add new set of mux gate
> clock operations with support for set/clr/upd and FENC status logic.
>
> Reviewed-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

