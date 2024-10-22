Return-Path: <devicetree+bounces-114195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A4A9AA259
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 14:43:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8803D281C87
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 12:43:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9221219DF4F;
	Tue, 22 Oct 2024 12:43:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BHEBE9hE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 941971537D9
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 12:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729600980; cv=none; b=nv4HNvAy2WZYg6RKtr+ctS73tr24gAWhne1OnMWT7WqaZ0FcCW6fvdSvRG9ihpBsuoliMh7GVquI71JiapOb7lfz4ciSzMb1TyfcmefyhbDSlPeFzPycfXIH3H6JZ1NTRRZGMaV3jZqjaeKsfd4ItSqAn2BE0iD9eWywN/inbfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729600980; c=relaxed/simple;
	bh=ARtJ6kvqIGcFruTXV6okIoHVDlTbGuGMZPlyUCFrYwk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=blex8Y4zYw+RwIXkmNUPtBYGw0K/JSLgoGHrHTYj/As6Z8er/GO4GFx9I63KP+FDUTEfrd5Gy2WO/fJz/S9N1bRhpdMyX/KVSjW1drxtdGsr4Eom4U4jscCJTP/MTnAoFFUk/Q1GJUI2QpzLKBVVKq0IBP/faNX7iHwFXiBnV2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BHEBE9hE; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-539f6e1f756so6530200e87.0
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 05:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729600976; x=1730205776; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ARtJ6kvqIGcFruTXV6okIoHVDlTbGuGMZPlyUCFrYwk=;
        b=BHEBE9hEaqC6baMwuNBt5nYatLvADUvDXL9ZHcL3GcqprjCwLoe0MFvdQcYnOaIuf8
         bfg6q4TtTS+CyqfLkgH48tpq2TIs/7MzjtrgbqH3rRpDWDKEmBU84+eBgEFJ/J4HZxoP
         GolojXA9o5l91ZNCM3vBKGu0ktjcuJR/YZhFuypxwSfxzTn11jqmhmJffniOx6kxDQFt
         wC5JSF7zpKfIBJC6REu9MoPfu6Z7br0oVn3MU4yaKitIUTVQXY/iaq1bpQg08t+oFqVP
         pggl4lPEXz9hwyY4qgEQFinI6Bhf57bYwkGT8U8UcXJUO/oghEyMrbRphcd3xA0mjp/8
         6/NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729600976; x=1730205776;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ARtJ6kvqIGcFruTXV6okIoHVDlTbGuGMZPlyUCFrYwk=;
        b=rzxdBaPmXDS1CJLkkLy4dWn6mEeFZFaYg4qYDxV7p8HeO0MBouMkbrIC64+BUj6Dtb
         MC3zynjJ159tIea173tXg7R7PNf0Id01fYb0qcSqnS+9k/+D88n+fb9nu5n5r0Qv+IBZ
         ngju+J8cVcSOmVTj2pBNjHD5sKFWSR5fNTAqX3bgECdai+KH09bdNThZyxWQj+pCqcdv
         oPrUloCYWV4QxDCUrfDFCxXxoWsoVdo1YTRxQ57C+Xj6hsOanVLyqhM9349kN6gDJjcb
         7mAfPgCnKwpuhG2YD3C84vYdi4OcWK7J2tt/i+dHtTdwpDYK7mW5AGZU9JRkYN+CRBGv
         8XcQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1ZRTf50BNwoLZBWJAelmAL0Aw0PLXL9B5I+fjdGl3VIPuA/Ld1dcb2O0geAtF+GKbqzhZH0nxd3uS@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq80yyvp1YysPmx667iqUbn8ABq6F3l3pjmM19jv37VyrNK0bD
	RHyH6tdu93GvsjX4ZyigVXMTLOFhmZ9tWWMZOCx2Q99JaksIijiAPZjO9h5sIdG/A7h3tI2azK+
	ZaszPl5t6roZub1vR0hmM+yrxDdNEGOp/XA0Rhw==
X-Google-Smtp-Source: AGHT+IEBcVfZ3JWaOM04XJNSL54UsLyONVoNwTnqh64hkWL8NFdGQD13XXBI25QnSA6vmIj5FcVBmPLEvaztSgYOWOI=
X-Received: by 2002:a05:6512:2393:b0:539:f65b:401 with SMTP id
 2adb3069b0e04-53a154a2413mr6984977e87.57.1729600975700; Tue, 22 Oct 2024
 05:42:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241018-qcs8300_tlmm-v3-0-8b8d3957cf1a@quicinc.com>
In-Reply-To: <20241018-qcs8300_tlmm-v3-0-8b8d3957cf1a@quicinc.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 22 Oct 2024 14:42:43 +0200
Message-ID: <CACRpkdYY=qLocvD_c-1TkJep3QMAOOWkmAYanvDzhyBgsC0RYQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] pinctrl: qcom: Introduce Pinctrl for QCS8300
To: Jingyi Wang <quic_jingyw@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Richard Cochran <richardcochran@gmail.com>, quic_tengfan@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org, quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 18, 2024 at 5:20=E2=80=AFAM Jingyi Wang <quic_jingyw@quicinc.co=
m> wrote:

> Introduce Top Level Mode Multiplexer dt-binding and driver for Qualcomm
> QCS8300 SoC.
>
> Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>

ACKs on bindings, up to v3 and no maintainer comments, driver
looks fairly standard. Patches applied!

Yours,
Linus Walleij

