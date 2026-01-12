Return-Path: <devicetree+bounces-253758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB72D1127C
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 09:19:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7A8903059A63
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:18:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17F7233D511;
	Mon, 12 Jan 2026 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cUmk4bnA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A48E33F365
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 08:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768205896; cv=none; b=jlHDRSA2kq8YQBILzvcRM32nUQ/GGUK8SnJttxXA4u/NAb2X64rAo0NcEsc7geHepdfQvMgSIy2fJD54GZipjDEXgoYU/qWHHuMeky17V3GTjD0ksGzAtE7FAq0Zy9yFINpebuTc3gsDqY9TydjQgB/z1qvBmpRpg1+j4WCQLsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768205896; c=relaxed/simple;
	bh=Kt62OmWNgAkc9wLh99OWIeUZ7UDyhb5HWbuPmDCRPzs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eEM3lJwa+u+NfDgVssoB2Nb46kHFifWqpT9m6IBlMk2Q7DNy0hjWma0jU0X+iTvZE45tVdNvFMdw3ZszhrBe9N2PnT7rxVBcYh9UWeWCovLTmtDyxs35zqWm3pSophOWIJYtGCIwL+0+C0iSvM5Lynpmmy4hW6UGhcETbSXGU1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=cUmk4bnA; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-59b8364e4ccso3065633e87.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 00:18:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1768205892; x=1768810692; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kt62OmWNgAkc9wLh99OWIeUZ7UDyhb5HWbuPmDCRPzs=;
        b=cUmk4bnAevG/T5hqwUGny0+9poXDQKWMhWixnghMcL/4U+q5DLjhv8CvuJvPXtddkF
         0VhVDBo+cLTksOaGr24pVSY1sh6gpA5rUnbAs1+wXkcI/jHH7kXKaIEXwArBnqaxlmcg
         HZk1aYSUGMq2YxuJaJvcr/98WOnoeHHiaw3RE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768205892; x=1768810692;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Kt62OmWNgAkc9wLh99OWIeUZ7UDyhb5HWbuPmDCRPzs=;
        b=aOjUgvV1+8DCGyMryxZzDA5qEOYe7Fph6sLTcQ3uvlSRERrmrpswvKgrV8+oD5sC94
         kYzIG2X3D42Avd43+NvSX3+8y3mH/bZy9QJwsVKt/3NKBHgoU4pJv8WZOw9M8ZotNYSj
         NTaJpf5advss7k0lM+LCgcQpVniJQgGQY4jGRrbh31x8d8co6cs352eIvjzB7Ot6T3JT
         FLI93MJM+ZjyJNf/bEiqYOCRTPjuagEhyniXlLsnt74a7UUd1bpuixavabK3BWDz6AgQ
         c15PqMqvlz2h8VIVUsx9bGg974YOAlzbhUh1ROTzYfOdLk2IzMe+hT9FAGZHKJPZD/gT
         XhGA==
X-Forwarded-Encrypted: i=1; AJvYcCWBKRPZtXsiSzB3dLBEcJzyKYHnJKnOIwzPFV+YVRV7yOShdX0YOQK+xUeXtMHEYwKl2Q8VIZGfBMRn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3WYtz9+AnqaFdcNdgLweELZi0xAafmyfifSX/d3wr6K6RgST9
	Jfr1iMlUUwOUG8HLpfZv/Yolf4WReShcZXqYJtqGQ6ItExMHObEZnESuiSIu8pqqt72Dqk2xPUX
	u4UGYvYJunpmLiZiCDZUWR60x1pLBh8B7od9Auc3t
X-Gm-Gg: AY/fxX6UmQsss1K1plgY4LFEe76Qf/yX8hyVwwzFjh/vdbrnYcX+uixr3Kc7RU85x7c
	lC8iSmHipFNMy/3Fh0Zhu43s+jy15pr6jXteKbXn7r6GtwiK/kOTjGDUAshBmJnD9NucTjArPUP
	zczii0h+UryIPTXWKWMssfGZBXypDlE/GvI8lEs6RJNAFxF3SerFreqQu8yTVzC3UbGEYQFSfsc
	8AnWafXKLbA0rClbMq9Csr0nbg6JR4hgB3+ugKfuAyuuZ1yVfe9m8I870zxjzWcHJyiCQdqu1pp
	jO0qOnE5Q80f0ukPPPGXMfyd
X-Google-Smtp-Source: AGHT+IGx4V1mUXbU15GtT44eKVpOEb29WTKJMzbAoN89WgC4hrv7YNIuzZX0Gjd3/5EsNVcfP279dNFvkxagu3pPvnM=
X-Received: by 2002:a05:651c:50c:b0:37a:5cb7:968f with SMTP id
 38308e7fff4ca-382ff82552amr62183761fa.29.1768205892531; Mon, 12 Jan 2026
 00:18:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260108143934.69634-1-angelogioacchino.delregno@collabora.com> <20260108143934.69634-2-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20260108143934.69634-2-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 12 Jan 2026 16:18:01 +0800
X-Gm-Features: AZwV_QhZ7-2DT35BSI-MBrcYVBSsLnJPqpTs3jsSxKZmKUrz-0wsA0fkQDOVy4M
Message-ID: <CAGXv+5GXcH48fy4WBaB7J0PM0Kt71L3H7ASTW_J72cV1TxE=cw@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: mediatek: mt8195-cherry: Fix warnings for
 vdosys0 endpoint
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 8, 2026 at 10:39=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> This machine needs only one endpoint (@0) for vdosys0: remove the
> address and size cells declaration and rename the endpoint@0 node
> to `endpoint`.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

