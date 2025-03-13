Return-Path: <devicetree+bounces-157239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 73976A5F647
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 14:49:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D62243A795C
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 13:49:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31FED267B15;
	Thu, 13 Mar 2025 13:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xqZhhW4J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FFD041760
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 13:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741873782; cv=none; b=PHOmravDRImQT8QR6NDy0fxmaEcXTEUKGodzIIxBZrf/XF243fMI11J+ITaaKAobADFgzWs28sOOurvFRKcH1wE21oScsSXVViG2xDWry6PuqEO16Lj3rk94rZ2IO39jsqzooJhCFxyQqKf31y1K/bgwLlulyvkKFPpNnKzd2KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741873782; c=relaxed/simple;
	bh=s72E+WiRW3VjWXLF2oTp3RR6w8yjtvEkUxbaH/xY8NM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RyxssL/aWfBuKftmc3Yz/4uk5wJKs8DPqTOBL0nLCrlFa/p+CS41FxRY+mtEzSY1i08TzWjh4IkeFTU/t2CU5RnWrxA/AgwB/ydglzpVFmTyi28wVEr1vqX5mhuC879xxdJFktk6hE6KKMpUPIrqCwTKN/tNX+MKMBWX4zEUPmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xqZhhW4J; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-54993c68ba0so1124106e87.2
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 06:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741873778; x=1742478578; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s72E+WiRW3VjWXLF2oTp3RR6w8yjtvEkUxbaH/xY8NM=;
        b=xqZhhW4JohVTUOHFheAsOQtE6SJv9dP80A83z3yd1jtaMdKuDVNoEhT9MdfNGMtAdA
         1WTssz3u7a5UrYp7w2N2sdLhjtvbGX74TfaGOZwolASBdLLaHCmHIWdH/a7RMt4McxHe
         txAzu7R3bxmOiQoC+EHZYfgPa+c06ZzVYPdakDtXRI+PpCgZNppCTzAyC1QoPhruzeLv
         t6Vl0J/aw1LmIxx1TIa6kJTMWmnOzHZVTqR//vBaxrZ5JZ0KDup+VurX5/kBz+yaMhQ8
         Kre8CEWHOknIwbIbq1lR9N2XulpReP14Ymeyy9Bp4N/6azqgxRlekUtrSGymcExZueKq
         3+hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741873778; x=1742478578;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s72E+WiRW3VjWXLF2oTp3RR6w8yjtvEkUxbaH/xY8NM=;
        b=IWINRTyn0iMdgu5VDspyleObCjdKZcYDZ5tJ6NKiQmQfQs4NsTZJhs4JEEO2xJxFxq
         3A1dHv+rbPUVxcfS6ODiN0VkrUGTOSTFCz5wfmMoxoLN1wqkOzpiAQHWs2OZ+xq28+l0
         Ezg4Wkxp/U6ifgIUA9nLiRuVD6e57903bOOLHQW5OGJUcMSM6ryA817CAcrgq5MidpAI
         zizFCOnLCrhEVCBujNVNC0C3WMMd4rALoUW7UEG3AsRthluta//qd8pH0BTGhzC20+hE
         VW4khCsfF3hp/6WOcnDndw+tXuK5hzya1u5VA9KcomyRN0vIV3bC8Xs8qvRfL3Lympt7
         v9+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWgYIKdu5S7AnLeYDpVYM2SwK7C94iq+dTvr5nUq8b25e4UDoz7iw8e6Y2KBMU17I7bUP7tcatRZwWb@vger.kernel.org
X-Gm-Message-State: AOJu0YzjYjQxwA2P862c6SEIT+cZhU11tsXRJmyRhC5zzMmaDB3Cplxm
	zgyVEYRENanRsRkJE3ZHkpHjnokitMgEN2uG6mCmWEQuH8qZkv5DMF3M8hj9pkmHC9NyGKAaWqk
	lQL42nH+WyTlz1/oLiy2UbwXbiF7UgsV9wwp2mw==
X-Gm-Gg: ASbGncsysn44iqPIeCfJPwgL9VbjQzXmVJcZNAykGv3nqieWxJDCeuEOfmh6q1AJrPk
	V6j69rFjONpnH8+dv+9Pd8WZnhxyM5rqHV6ekSOJPRjI1pILZ7vbMFyI17bZxPgpqAXDhCDU4F8
	av+mrFyqgXEAi8pih9aNq0dIPH7Q==
X-Google-Smtp-Source: AGHT+IEccZO3i5+lVUwnSS/WaACh7JJj5Xo6UXfk6dLNaFoPEkEoI3mENp7/zCsA/uhLA0RMiNFyQBBG0+AbjlILsis=
X-Received: by 2002:a05:6512:304a:b0:545:6ee:8396 with SMTP id
 2adb3069b0e04-549ababc849mr4033095e87.13.1741873778434; Thu, 13 Mar 2025
 06:49:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250306235827.4895-1-andre.przywara@arm.com>
In-Reply-To: <20250306235827.4895-1-andre.przywara@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 13 Mar 2025 14:49:27 +0100
X-Gm-Features: AQ5f1JrLPVPuCTomUP4jXqnxl_0p1ehI2pivoJIVPNCchweDQ93p9WO-dULZ7nM
Message-ID: <CACRpkdaVH8GAx_K0a01FbRKe8CQ=jh7jwfVrs_PgS9og4vnWmQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/8] pinctrl: sunxi: Add Allwinner A523 support
To: Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 7, 2025 at 12:58=E2=80=AFAM Andre Przywara <andre.przywara@arm.=
com> wrote:

> this is the fourth drop of the series introducing pinctrl support for the
> Allwinner A523 family of SoCs (comprising A523, A527, T527, H728). [1]
> This time only a small fix, spotted by Jernej, thanks for that. Also
> adding the new tags. Changelog below.

Patches applied!

Yours,
Linus Walleij

