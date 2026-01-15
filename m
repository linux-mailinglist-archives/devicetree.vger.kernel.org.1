Return-Path: <devicetree+bounces-255456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4F9D2336D
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:42:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F1CA3301FD2A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 08:42:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BE2633B6EF;
	Thu, 15 Jan 2026 08:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GKvh7Nwz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f48.google.com (mail-dl1-f48.google.com [74.125.82.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC7D33A9D6
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 08:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768466560; cv=none; b=cmX3sTOeV5Lzg6h3eCFEnZKhU1Xq69NS/6hTQvmrhULujT0a6H70hNvb/rN8faFtrEXXdm+oJiY+yqYQGjv7M9Qod9KG4aVc1uHhrsfn/dTxiQ7aX4r8hIDJ/3Cbm7RQRuoSarOl2Kglev5u0hGVsPW8R7tvUB36CdzJMHj/rcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768466560; c=relaxed/simple;
	bh=VUL6Odvz2BGJmEiErMIp7g1YPSC3jt6JjrwwVLc52zk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IaZvLDSDl9h3pHEoeN0QtZztvBSRfGV9e1WhoCF2BWVPpAyRjSCBdboncRibEf8qiLr/dD+js+1E9cArDEqZUA8/+eEHarR/5tGUl0l9BQHQPTFULBUYVjKQJ4N+gCx4ADTMc5eGXhKW0rGy2plMjOrjSUK5BxZyFBcZJtEX+1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GKvh7Nwz; arc=none smtp.client-ip=74.125.82.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f48.google.com with SMTP id a92af1059eb24-121bf277922so852383c88.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 00:42:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768466558; x=1769071358; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VUL6Odvz2BGJmEiErMIp7g1YPSC3jt6JjrwwVLc52zk=;
        b=GKvh7NwzgBdYiYlE70l/lFxzOru3vkQxO3vU9KGfnxWaOxLqzTn9Zn2GO4RY6H0JV/
         WTV7Sh3IzL+e22TIARy0575ItvU4RgCjw2o/Erlc4zEtnIR/Y34YNNO8XCmq9PZzbH7V
         ylIqiJRfKoxzu3ENdeI1jCpfgxF5PjL/ULj+i+96S7aK1q4OnLrOBuy7xwsxo+heoHXP
         +7IRr50rR19/FxGeGVxtzdgtzsXWrlu9KgBX70D/ZICQONTZ4qNtK/Kh0OhWv+FVV/Yr
         MnRKMYN5uyTvDKlbdw/JV7ZNemiY0enSUF+l1TLAfbuIeKdi9fLECNp9JK/Pk8Ll6vfR
         t/7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768466558; x=1769071358;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VUL6Odvz2BGJmEiErMIp7g1YPSC3jt6JjrwwVLc52zk=;
        b=rTKkrHbuSBx8cZPltFjLVbE6RHcSf4fYTd241FqQDBVeR1nWzH9MOgYgn9i4JHQBb+
         CfCmTchi6jyOIJig6BwKBFOR992dBElPnNBHkQul+RqPtpGzyt2k/pnFIfzJds2KbQHw
         AaJKDH48GiAJImIB7PhqiAhZMF2N4OAqX5vYOfmxqwe5wNr5FNQAclT39LsXPy/UdkVB
         2N+YbAoaSX2AW9e2g30GDhVteN+Rt5LJbEmmY0eONnc2TtPF+ZH4TSr4MtF8Wdg/zrS4
         9I1FGXsvCQ8AngwWZyNS1+4m8GwVrLi9UN7/hzgZyX91RFETTVS+jnnv7QXD7+tTcvX3
         qixA==
X-Forwarded-Encrypted: i=1; AJvYcCXXt8G5gnicJn8exz9BVz6P33yHLHVMepkEP5PiCTMbSFpCMCBm86FN7CX4hTyITxkEnDkjH6D9AbrM@vger.kernel.org
X-Gm-Message-State: AOJu0YzD8kuJFNIF5fI1a3e+xC+6hfbewZspDlzpVOOIECuhJHDm3I1W
	uXc6re3VQ1v35ssirtv1dzFlntio/bOnBjgiau5uZtZU5ZQre1SvJAXQVuBm31j32970pwnA3Ap
	6yLU5xQ3GSpP+M6CwPBqyoUMeZYZfIVE=
X-Gm-Gg: AY/fxX5QkbSo+ZD2s77+ue8abhp/CQNuZLC5eGnFslkTPntTIPDX3yIZXcqLsZVBmN1
	lUAVZGatPkp+EySzzxXsJsp3BKPm70mDw78voKa6OYx2VATnbpW/iNCZ6gN+3hmYsbmjP6OuhIm
	RGTT790pwq6k/g5ebNFOaeL6MKOQ7hVfI1+YK3zjh5q5jvxRArIeyfNs8CvEq/f2DeyGFhcFIaV
	XxdsGGkZLPre7ICldYmwxzqzll3LnY2Myva+BJ6TLV6k+oV7NJ1HFPILGcfKWNk+6j1TSLCLUb7
	S3+iPnDjaw/n6XnbYIB2nfSJFX5OBTX4QcsQVYf5pHoJfRMk+hRcyFtcmw+qUKyJ/a+WKCJgZSi
	7B2DH+UU4O0uC5jnFN2Ru
X-Received: by 2002:a05:701b:231a:b0:11d:f440:b757 with SMTP id
 a92af1059eb24-12336a8ac7cmr5154017c88.26.1768466557874; Thu, 15 Jan 2026
 00:42:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260114-mxsdma-module-v1-0-9b2a9eaa4226@nxp.com> <20260114-mxsdma-module-v1-3-9b2a9eaa4226@nxp.com>
In-Reply-To: <20260114-mxsdma-module-v1-3-9b2a9eaa4226@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 15 Jan 2026 10:45:18 +0200
X-Gm-Features: AZwV_Qi-TQ7lJMIQ3JWU_HIrOBnLtQtdsWIBSjxYFap9Y2nvd_jWRPWPx5vtGmI
Message-ID: <CAEnQRZBe5Q2Ejbf_-+Mo8zTc=mSDgpXuXbh3NVHcwjooggD0Ow@mail.gmail.com>
Subject: Re: [PATCH 03/13] dmaengine: mxs-dma: Fix missing return value from of_dma_controller_register()
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, Vinod Koul <vkoul@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, Shawn Guo <shawn.guo@freescale.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 15, 2026 at 12:34=E2=80=AFAM Frank Li <Frank.Li@nxp.com> wrote:
>
> Propagate the return value of of_dma_controller_register() in probe()
> instead of ignoring it.
>
> Fixes: a580b8c5429a6 ("dmaengine: mxs-dma: add dma support for i.MX23/28"=
)
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

I think you can send this as an independent patch or at least put it
first in the series as it is a bugfix.

