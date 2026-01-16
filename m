Return-Path: <devicetree+bounces-256259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB58D387E9
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 21:48:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3744930248A1
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 20:46:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02E6E2FDC5D;
	Fri, 16 Jan 2026 20:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="g0cS0o0v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com [74.125.224.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419F22D595B
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 20:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768596415; cv=pass; b=BYnYnZMq+WxFIZFIwfEYl1T5umdhfAw/bnTkOZCHPU5U8vYH5aBbTjjdniH8jnmnjx0nMLhpkfp7QMMPrsyRBnoSOmiO809HGhkfJ8BqttOHOnq0sHePRGdkJLLmQV5NgnqB/Fm250Wp1DmqPezPmRPJg355Bz/fRxwuTtfw4Mw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768596415; c=relaxed/simple;
	bh=AcNOPclJc/EhFlX0szxnG8r82N8U9VQwdVZFKPK0yLU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=npzUsN+PmHXz/4S0tIjrKajnZt3ABkENk0UiuE5JCv72RR+isvdAGYdIxFf+deisw0putjtmMX71wY0aLicCVKD5ZqNhyFVAjUj/OzSbI/tbK8d47JXSFAhuNfXRuPOWOz+YiqzQM7r1B29rLj+0gS8Jcb2ZHnQ7FQBca47GA4Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=g0cS0o0v; arc=pass smtp.client-ip=74.125.224.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f44.google.com with SMTP id 956f58d0204a3-647374e4cccso2153701d50.3
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 12:46:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768596413; cv=none;
        d=google.com; s=arc-20240605;
        b=lCey17Ka8kQYxdig7DC5EpI/EUTDk10sFma2+GAx56k+C07vcRxoyKJoE9lx7Bo69p
         iauG41qrANCQZeGF345ORy9CdaOWEHKyYOjZJIjBdskPlRWDLLSUTT6ipuU09aAu/AbA
         74DAdP7S5fCC9eiC1xC2d3sCCt21uL6w+FKttzz/dnKYBoTc7ILIWrkinO8rbZzs6hPP
         oevopncZCdKJc3Ijgca0hOlPvxuS6g0d/WccluHq2VNm6ADZPD/hfuF5VkpgeOoAn+sY
         Mwn5om7tVldxqH+oVYUbnft9mKmPAiM+fMTNcE8V3ere+oIKKY+6ZZueaerFQhfOepSM
         Ax3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=AcNOPclJc/EhFlX0szxnG8r82N8U9VQwdVZFKPK0yLU=;
        fh=Q1yuRkwOf/8eWs30GHnIf74759eNCru1/poqWZBWD9s=;
        b=fGrQBFaY2G0sRMxyjTz6J269LnmVesy7yjsyQgKeD/mzBbX9gjVl1l2HWve2iHeS72
         6cpH5Kv+s8tXV4YqmouAjRl74DUG7Tf5uvBw6ESgnRWjXnc6h8aqWp/y/KRwPoioofJ2
         Sbj65N7s3dAJvZS5/a97MRVc5/m9U10Yw7EyA+ld7c6jYMtEE//wnclMv13FhSUzsoPI
         m+A4QSHQ/kMLPiycFbI4PLO12KF3bnpbU3s/ShASPvKnul/M5vwG13k+AW6sHFHtLGA3
         uzabqO8tYzjeoE8mrDW4Xt41tOdfvi0kRcKY56EKBS5MfgFilFf56DoWw5FtcN7FygWc
         UqWQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1768596413; x=1769201213; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AcNOPclJc/EhFlX0szxnG8r82N8U9VQwdVZFKPK0yLU=;
        b=g0cS0o0vqhcljfECjHhmXQN+65JZ5VybKIplBkpE4Wor/Vi6oW69FsUs/eT9pAlJ2D
         heu4hxBcYrgBLcYE2LEGdrXRv5hoTcRsgaqdZkCILfMtbXVcp6wSfiZUa5vW8TOJfG49
         3a68+c+Xxbr5BrFcV0gh5OpduFqOtjWehNSCj3LhvLIErJxnuDQxIZru+TU1WnQaRn4I
         hhW7c8v5t04EUYN2KwsKkKYi0P17weEDO2Q1P/htv4P7PfxLNOWuKqqoCATSErWboE3m
         PqcNE3oqtefQae/yiYdRIUn4bBXZtR9627BCRtJ3hPzMFW+7T289D1kBoTwnb3cBRk/u
         oOJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768596413; x=1769201213;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AcNOPclJc/EhFlX0szxnG8r82N8U9VQwdVZFKPK0yLU=;
        b=nNN116cOUoa+WdLs2xV8oKfoRQaTqWNgabJPM51cKxZB/3kIQ5qHQsVJC0OZXEUnZL
         UgNnjVf6mdxlaITxJ9za06Iy8VYh5IfgJ2Cj0GVIsguI650FSlvNYEc7b8bQW5CFfqos
         505bo21OKuE9dZOHgJh4Rf7SjT+dO86kD3HZNG9PbmWqLzmTMkp0NsrW3Uu21DFcxd44
         MTDqPlMySJnDAZWeNqKJbXFuTA5YfxIT8gwEPsvqlEOoT0+KPFEvGmu+glcXen5N0htw
         sXa7kncNGycX4KaVBEv+Deg7lpyAgOR+TuwPVf0N/fPzVIviGHfrsHbYs5kjaqUScN+x
         FQvg==
X-Forwarded-Encrypted: i=1; AJvYcCXlmXeA7RHyzCurT1zjPe3Jw+Jn+DsxXWq1JOVlhZSpHDWeTbMZZpTnwzbhB1+43yBJSr2cKgFgf0JW@vger.kernel.org
X-Gm-Message-State: AOJu0YwGFtGNefdvtACHtI+nnEYt80iBKgui/Sw/AybvQysEdkGWzkVd
	IgKlpdFhbZPatKCn8y4Pfkxf0tANp3nVqYcP/wf2sPNr6nSeIuBR+LyGEQHnRYm3ujke0dPjd4P
	wgnYCcb/cqsaSff3VJd9dvN7xY5BvlkoEJ2Yd0N7YWQ==
X-Gm-Gg: AY/fxX5dEDP1JzCRg3PwvAABwVoCiDQ99O6YEH/ZWQ0WerUKBjVzZpZtlAiPBFHNJMH
	NUqXfjaFH9qxKComFsDlBtnAgK2n/MOBbWqYg5M7KAj3NcCAcVRal9PwhbbWwqYA4LjZKnqY9Hz
	7aP10139ifB+v4FnYu8fH60eokqKqIElyYOXEgoVFtWe3FLageVYdOiPQI5AiugSmGcJGF5rwJZ
	2uUSVBOMj4S923+325BwQ3OvrSw+YciSerGw0GmueNyjgiR5qBI26EcFNOO361MrzzirD+1K8SJ
	Is1VJJynKXyAyIpu2/Nav1yWa+B7xtn1RVrJH0A6akRTFiSrh/TCxnu9lDzi
X-Received: by 2002:a05:690e:b8a:b0:644:4259:9b64 with SMTP id
 956f58d0204a3-649164f80c1mr3486002d50.59.1768596413369; Fri, 16 Jan 2026
 12:46:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
 <20260115-atlantis-clocks-v1-3-7356e671f28b@oss.tenstorrent.com> <aWmc73irBAM8DZwF@redhat.com>
In-Reply-To: <aWmc73irBAM8DZwF@redhat.com>
From: Anirudh Srinivasan <asrinivasan@tenstorrent.com>
Date: Fri, 16 Jan 2026 14:46:41 -0600
X-Gm-Features: AZwV_QiHsFgdKPq-3jvX1L38hlBJ19C7RbwabDn7wX-L0sq8clCAb2c4AtrN_hc
Message-ID: <CAEev2e-wOYPYVMtCVZw=kQiZeXjM3ZUmsAMGG8MuM2Oo6SXE-g@mail.gmail.com>
Subject: Re: [PATCH 3/8] clk: tenstorrent: Add Atlantis clock controller driver
To: Brian Masney <bmasney@redhat.com>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>, Joel Stanley <jms@oss.tenstorrent.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, joel@jms.id.au, fustini@kernel.org, mpe@kernel.org, 
	mpe@oss.tenstorrent.com, npiggin@oss.tenstorrent.com, agross@kernel.org, 
	agross@oss.tenstorrent.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On Thu, Jan 15, 2026 at 8:05=E2=80=AFPM Brian Masney <bmasney@redhat.com> w=
rote:
>
> Hi Anirudh,
>
> Thanks for the patch!
>
> Please sort the headers. clk-provider.h is listed twice. Remove the
> unnecessary newlines.
>

Understood, will fix this, the newlines and add the return PTR_ERR(hw)
statements.

>
> Should the parent be defined in device tree instead of statically in the
> driver? devm_of_clk_add_hw_provider() is called below, and it calls
> of_clk_set_defaults(), which will allow the use of the
> assigned-clock-parents and assigned-clocks properties.

Yes, you are right. I will switch it over to this.

