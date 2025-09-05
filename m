Return-Path: <devicetree+bounces-213164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE17B44CA6
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 06:14:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 29EC558133F
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 04:14:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEA8C257830;
	Fri,  5 Sep 2025 04:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Pa0nujBX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16E721576E
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 04:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757045639; cv=none; b=BNQoL4gN476DQdK/EdrouzmB1v0vfIifGNfjZfz6b5UdX2z+3nI67bGp+PUAO06b0zX2rxRWTry7VyCSfM8N92EzjQg001x0wwR5TBEyhp/5HvE8V5+6TXgRnAiHDGZBFIVapD8yg/73XITof8E4rkct/xop0nI9nWIODhPWrwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757045639; c=relaxed/simple;
	bh=0fYRl15KIX0WePQH2MFQdJgEu6wtt4B+4sM9XqpEHp0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xxm+hEaDZ1Gx5UO8FQ6F5hUttHte8xHWlYlHUnJ31/+CLazwrO/A83PcPuvl8EQdyBKdzRjTMZ1Q5w4ckyCH76+515TGSVM/fQWM9MnNYiQr+dx/v3UDGMoO98iR8MToTk14Ct4YLJBianvCh/6QrBqiiJA3AiVOrXNmI3cH+YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Pa0nujBX; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-337e714b3b4so13850581fa.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 21:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1757045636; x=1757650436; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0fYRl15KIX0WePQH2MFQdJgEu6wtt4B+4sM9XqpEHp0=;
        b=Pa0nujBXCifPQc3nIHCWUFY3HJpuGZw9+3DSEDyNLt7E6+n5KjdX3pLQI4hxrfHixA
         lln7Gh9oqN7xgSaWqTJLqCrnDbX+b4f3yCy2mKf4+mVZpEWnmJDLz+JPP7kITlHBT7yq
         VJlYjFM2/38gZsSnil4Vi96SpNsC2vB8Legb8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757045636; x=1757650436;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0fYRl15KIX0WePQH2MFQdJgEu6wtt4B+4sM9XqpEHp0=;
        b=l2xoQnACigupZccyV2riL5FRV9JahpItcLQnkTgNwL4n1x4tkrGsMhgSfHhbkztsJ/
         0NUSYFJGMdXJxJ685MqU6L6JMvLf0c0ZP5nnNv4CnkYN5PT42ZaKXYGMBlxldPT0W8sP
         Srar4oyMM9YG0JJqKqy/9ABtkQktVgwinC4HTOfvDJAO78wjO0JUA4YjbMSOH9crw4KH
         z+GA1sS1SqV1i2UKv2QniAeHOBYIKjHHHzpZBpN4VLMznX5mzILnBe0IxjkiSND9EE7i
         UvVxEyLXdElx/wUmNlLGhs/XCF++U5zh6VrX2u9X8zUYCzSj1Zu+4Ff9Jo+2T7mEmV2o
         oddA==
X-Forwarded-Encrypted: i=1; AJvYcCX1FyykvfqlYoXzAbj28rIzBPPBWud5cOfOj6KPKwevL9R5WYlvW00WsZVphCYOQNsQaowO54AS0RJ8@vger.kernel.org
X-Gm-Message-State: AOJu0Yzc2r8XFB+3oH5GL7vcuQpyNJg1uUuguMbmpCIn6jrvCioDO7r1
	ZPDJNebIDu4GLRSBZpQLuFOquX/i3OY7QYiAuwsy6pccrQXDOuMZKMsfkr/d+RS5iP0YHBUc7uY
	GKD8KUx+WrCy9LULOutVe0u9SG0q1wGc4zvyrbQ85
X-Gm-Gg: ASbGncsZWjrfPrQQfYZQsRlQCR6unYBd2yjK+TqYmHU1/0o6Pv3XfT+yxi/SlsRYO6o
	7ASYsJaimp8whgANPOMc1EH0qqCgMhnu4ZdSsAYC8DnKtwtYOZlQG3OarpO/DfccmFVWe/WVFpq
	M/DcmPAHsEVFzBWyn0B3XqBpQsKVZvN/mwv5mjBhNQZzcMZ4MBxVty6s4vM/fMnqU4T7ZOj2vcP
	2smb6+or9DDUOWMT/5JdS/dxgOwyRTkHH65YXxRCrhz6Z/3
X-Google-Smtp-Source: AGHT+IEa0TMIVMFiRNiOTeyQqmllYD/2S0wrm6EQ9v6TWvwu76YIEfNVYAC1dteqcnsTmIHsn61yA6m1gNmuAQeVk3M=
X-Received: by 2002:a05:651c:2129:b0:336:51d4:16b3 with SMTP id
 38308e7fff4ca-336caa4a818mr59122681fa.10.1757045636072; Thu, 04 Sep 2025
 21:13:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250829091913.131528-1-laura.nao@collabora.com> <20250829091913.131528-7-laura.nao@collabora.com>
In-Reply-To: <20250829091913.131528-7-laura.nao@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 5 Sep 2025 12:13:44 +0800
X-Gm-Features: Ac12FXztQWtNoog-vK5ygrU2ksjNm_shuXo3XvVwDmyxsQtnU3LNJR6VMH81zew
Message-ID: <CAGXv+5HjikmVaK_++METYBvTciQt1OTm77TU_e4Zh52MpCZ8bw@mail.gmail.com>
Subject: Re: [PATCH v5 06/27] clk: mediatek: clk-gate: Refactor
 mtk_clk_register_gate to use mtk_gate struct
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
> MT8196 uses a HW voter for gate enable/disable control, with
> set/clr/sta registers located in a separate regmap. Refactor
> mtk_clk_register_gate() to take a struct mtk_gate, and add a pointer to
> it in struct mtk_clk_gate. This allows reuse of the static gate data
> (including HW voter register offsets) without adding extra function
> arguments, and removes redundant duplication in the runtime data struct.
>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

