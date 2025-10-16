Return-Path: <devicetree+bounces-227426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B38BE19BF
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 07:56:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC9E0188C906
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 05:56:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5567824A04A;
	Thu, 16 Oct 2025 05:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tAo2SJwE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC99242D70
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 05:56:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760594175; cv=none; b=BRryoBSD1HhIUhTiZX6k+/zH8Ot4X4s41WWKDoj+VlVhPAwaIcrFQA0jgcQyMDLBXPUhgwviZFoUB44asqcK0hrGHhn7gy1S54DHxsYfYJuJXJlVdWmfxc8EmRHzyoDTqUOVyusLF0wQCHsuapcqNe9Oo7CY0DUH2xozMGMrDwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760594175; c=relaxed/simple;
	bh=6ycztQkvJg+KdGCCiCnENVHtBhwB6Y+p5nrVTPjvpLc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=d/Me1LZgeV5n7sbbmF7Xucgg/yWrN56OnaLoirxQhM0AcuxUyLhD1I1zIdcOclwC95jY/vLNA8WmPnYjPLzbNG3dNrHtueiik9CoXi4ihviMbgVcjcFKsXfpk15rBP117TugOPabTows39cWUGN8OHAjqY0Cos06/jnopnKGtTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tAo2SJwE; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b50645ecfbbso67306766b.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 22:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760594171; x=1761198971; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6ycztQkvJg+KdGCCiCnENVHtBhwB6Y+p5nrVTPjvpLc=;
        b=tAo2SJwE9rpak8Mebz2GFYOXRsqg0Kq2i/y66sKssWolUVkV9CIztX8YztPD9Emt32
         XldkFvb09so7lXyzGB9nxKHBkREzD3ELC0PuwM1l+vZY/4OipY3aOWuLAT2VvkgQi0VB
         nsPrf6lmLMoG3kQm19zG4/lELk3W/6l0k4mW+xCRU5n6GgfBHz8tyBjhpF/8qZfxbYD7
         SHQi1bueqjmwosezRUMMwjH7qDKfOwL29tAlaPagOUi6HPdxINwLAMUz1PbKoVphWsK3
         GJtxP+fozZgho6HodUeDnboktHpi6RM4AV9tnj/QBjQD6QWB9FpoHKGSNB69hHaRTDFg
         tTXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760594171; x=1761198971;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6ycztQkvJg+KdGCCiCnENVHtBhwB6Y+p5nrVTPjvpLc=;
        b=PZfYuhkE/SGI7XmjbnMlaeyTbBEAougi/bGGtc58cByXXlN/GP90IXp+8heiBJz9LZ
         alVz5lOZMGnFT8lMW2QiiHcpR645St/vqGoUf6hjm1CGSR9sCV3fLy4wn7LVvfm3721r
         hZlBkStF+V28CdBhIUEj4pf91l2bVHRzBV/+L0mXqHRP4XC9yWi7GE2APACLC2MGmvLK
         DPF7U62/Wsi2uCD8qHXobNrC8QuCWVY5CoTo5Dq1pZUA3X44jTCcqigqvf4OYPaetb5a
         DqT7o4kIg/YAIMiAdDmMJk/rUxNfeDLNtnbtH1yqckXPomj8X+2tRZco+qHqZbEZRwKx
         PZPw==
X-Forwarded-Encrypted: i=1; AJvYcCVyp8ylLn3B5TXEgs2IThZiLvnpWJbwX/3ytn81oq6ItToVngwT+orMHTPncgFJYOmGOkGbxbKu5irG@vger.kernel.org
X-Gm-Message-State: AOJu0YyR8S/epg1XbsPPVyNFYG6eIlQQa1p0C+hG+oFoQc/8jaYChine
	mMph1Vcq+iF5pPmem7CWPhkW7tSjdg36urY1i8uNXudw1rMvS3eWuFpUjukZ5N+36HU=
X-Gm-Gg: ASbGncuRi329zwqrGyU50Ni1dDWoVt5TqtROmn0Dg/RP5xC+8+FuLtWIeZSsNQqHdGE
	JtQ+LZ5zVqm1CFDJeflpiIc74IVBFvlR/Hj28K98G5tZPK6F9u+eml+homhT7qqa7cocQSRDzFd
	HV5hYyBA3lK25gMxKx4uEYtm90d2yCGZmqavedyR/xu7JLmmy0svaNNUOtIk2BjZW+EWK1ylmJr
	PeGpKd+V5oHMJLjlfkEUbXOzo9QPArgkY3o1hOWS7Muh4+6sUoa7/9uozhoU5ZH+68iIyVbuL5E
	1+ebPCwG/rvI4wk1JFuW4aLm20P+qyyoJwLFJk5ROx485v4ZIIAgBwWfMKgLjHjFUQjogokUIEx
	Q8G4k4rbjpcubUHnz/W5dlXAP1Er8AkRvnvHy1qQbEQ4GpABBaApHBTOTVxFGmp2ZO8NucHaMwP
	97nssTgpuz8epSZbV2TQ==
X-Google-Smtp-Source: AGHT+IHRn6DJcub987XbIaCnD213XxBVwA1OkaUrOOTFR+bbpHbUgS+RyDdcriH37dmE0TK4LGPTbQ==
X-Received: by 2002:a17:906:c149:b0:b41:2209:d35d with SMTP id a640c23a62f3a-b50a9d701b3mr3125674866b.1.1760594170719;
        Wed, 15 Oct 2025 22:56:10 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5ccccaab18sm419863266b.48.2025.10.15.22.56.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 22:56:10 -0700 (PDT)
Message-ID: <30a0c50b682b990820d486e536f320c7ea31eabc.camel@linaro.org>
Subject: Re: [PATCH 3/9] arm64: dts: exynos: gs101: add sysreg_misc and
 sysreg_hsi0 nodes
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar	 <alim.akhtar@samsung.com>, Tudor
 Ambarus <tudor.ambarus@linaro.org>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Sam Protsenko	
 <semen.protsenko@linaro.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, Krzysztof Kozlowski	
 <krzk@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, Krzysztof
 Kozlowski	 <krzysztof.kozlowski@linaro.org>, kernel-team@android.com
Date: Thu, 16 Oct 2025 06:56:09 +0100
In-Reply-To: <20251013-automatic-clocks-v1-3-72851ee00300@linaro.org>
References: <20251013-automatic-clocks-v1-0-72851ee00300@linaro.org>
	 <20251013-automatic-clocks-v1-3-72851ee00300@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2025-10-13 at 21:51 +0100, Peter Griffin wrote:
> Add syscon DT node for the hsi0 and misc sysreg controllers. These will b=
e
> referenced by their respective CMU nodes in future patchs.

s/patchs/patches :-)

>=20
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
> =C2=A0arch/arm64/boot/dts/exynos/google/gs101.dtsi | 12 ++++++++++++
> =C2=A01 file changed, 12 insertions(+)

Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

