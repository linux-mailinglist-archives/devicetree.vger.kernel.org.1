Return-Path: <devicetree+bounces-187156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C77AFADEE1C
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 15:41:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 48FDA4022DF
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 13:41:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87E0B2E9EB9;
	Wed, 18 Jun 2025 13:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="G+DoVYbT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1201A2E9EC2
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 13:41:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750254092; cv=none; b=qFQvfc407JHR5IOq2YMbT6xMrxj694OeZxx0k5wkxoeGRtvUz79tNEKbW2YCL4DzvOJ9ubV+5NdtZOB+G3pD1DJJNG8lY/7X+HwUtIpM9zYUH9FA7hxEOASDPNPJhI3Hmf7FzyotBKalSqdbSM1on0QefGIcTQpd1T1ZsvNA9Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750254092; c=relaxed/simple;
	bh=yl0PcNOIcNCw+lBv442hGsxXVF1DxIoZVa0h3oivgnQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EbhZYxhjEl+gMed6s4KFjFcfVWgCjnCqVfV30lxePU9pQL2JQpvy3rHvUyLzfu8zjKgi65AJNCgiNlM3WoIX0BeGj+KkB2k7ft+lFbzd651g7hiD7QZ3eJXWUXsKc9lhIjO8WUBY3UGQIUbqlo7tFOiQNcRBb0nRVNzmGTKeQDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=G+DoVYbT; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-313910f392dso6120246a91.2
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 06:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750254090; x=1750858890; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yl0PcNOIcNCw+lBv442hGsxXVF1DxIoZVa0h3oivgnQ=;
        b=G+DoVYbT7hri/6qvYZB3mhlqwubCuoHu2hBDto/BLkdS8upFBHv3YBXAoUxCrHiwja
         XzJJPhotBdKpK5HRt7uA+M6YHwpTH++9jy93lsHVKSW9kJe0FCLWN6Ui6hNpLlPczbPi
         S16c3nrcu7FPp5PaAHWfkBRJV7upkZiNztyOkrjKLW7vAD+AvhjaGzDfCO3mdCPQ3Kup
         RzJx1cWqtnlC2GLr4XVEbJ9JBRLl9bH137shewyaHMXQS61OwzgCPG6kJlaKM1+ElvpI
         ikgCwKb2OkexDrvaY0VrnorV8pEQPS4YDel/fqLVbiNdw65dguWJ/zzjBAWtUIAH91zb
         wnEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750254090; x=1750858890;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yl0PcNOIcNCw+lBv442hGsxXVF1DxIoZVa0h3oivgnQ=;
        b=soVH6h0x1q584TbTTQ5PRC8e0gqdeWQenHAGJ9t+yU0qVGz+sYdQ5VSa3Xv4rumRNL
         5QlfvGhTC4ioaDdV3YYPkEFpTnuHudiFKMmtfbW/59QeLnVcG3udiDm6a3D19pZZJPyM
         r8YpfpAHNbFgOj2ae5TnGbEngO8RfvDIHos8XPx5n3Zkw5hr6oG0QmLW1u92nYnrkRzn
         EzseFHjE5u4SlgxyCeApa45dt1Ucb0aBpxHptdA1FmUco+fuJPuTklXRgK5cX+IS8sFa
         DVv/6ivmkavokcmKqPDGZyB4fMn3yThwyJHuNLwWWkdHiNbHFxLgYp3WUIDocvLuqaSZ
         xToA==
X-Forwarded-Encrypted: i=1; AJvYcCXPpqzP2ATkyiVJ8sna3ZcF73fRY6dx6mdyjo68kOVv3IPE7fI/PB4j0nbrldDKrB17koTmUVcipL+E@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/3f6yBpzVim//PEMSCmcwItzpnYPoCUqhzmyEma6L0WzylkXI
	Ex6SqXL6AwgvBjLeuf//96BtS1By/I7jqczBlr4Ap7EHu4mq7DaeQeHIgqPA0BJOjqt0ACeJkgZ
	Mm548xJofrwFo/HfyUiOpNHXbCHrPWtFoszfvFL2Yyg==
X-Gm-Gg: ASbGncvA8tGukh5qklUdZuxbgILnCHbh8KUr8w9sgCoRS6YIFcDGQLoXMMf9VcqZOlO
	ljLZ9uaCFwD7VMVDAjtGaFnS4JKTzi9Wl8azuE/b/no21Y4MNnayygoF/HHnqAlxUHEKNgne+yd
	cw39gSNEcgKtA2gfCJ22puEqgL6QE8ZG1DbLMX0adSIX01d2EuZB440kbqBskE9xYSinUPYNn8C
	w==
X-Google-Smtp-Source: AGHT+IGM3MsC055WE6RGdmTL7+xpqbeOwcWlIGInX1z822Wu3bYLUR0ECZj1HH7bbG4yZBVpGpNdgZd2k9tfvrFyAoE=
X-Received: by 2002:a17:90b:52c6:b0:311:f05b:869b with SMTP id
 98e67ed59e1d1-313f1dcbbc1mr25929568a91.30.1750254090220; Wed, 18 Jun 2025
 06:41:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20250618102228eucas1p1906803f73cc004e68f281b2bdf871da3@eucas1p1.samsung.com>
 <20250618-apr_14_for_sending-v5-0-27ed33ea5c6f@samsung.com> <20250618-apr_14_for_sending-v5-3-27ed33ea5c6f@samsung.com>
In-Reply-To: <20250618-apr_14_for_sending-v5-3-27ed33ea5c6f@samsung.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 18 Jun 2025 15:41:16 +0200
X-Gm-Features: AX0GCFvz_RthrqCGUMHniOjba_9qiDf9mc2HoVSIdoi-DY1O9poo5r9j_4HtbqM
Message-ID: <CAMRc=MfarMrUrdgAwa6dR2JuWooRhaqPmJeEY9H6LhVkCxf4kA@mail.gmail.com>
Subject: Re: [PATCH v5 3/8] pmdomain: thead: Instantiate GPU power sequencer
 via auxiliary bus
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Frank Binns <frank.binns@imgtec.com>, 
	Matt Coster <matt.coster@imgtec.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 18, 2025 at 12:22=E2=80=AFPM Michal Wilczynski
<m.wilczynski@samsung.com> wrote:
>
> In order to support the complex power sequencing required by the TH1520
> GPU, the AON power domain driver must be responsible for initiating the
> corresponding sequencer driver. This functionality is specific to
> platforms where the GPU power sequencing hardware is controlled by the
> AON block.
>
> Extend the AON power domain driver to check for the presence of the
> "gpu-clkgen" reset in its own device tree node.
>
> If the property is found, create and register a new auxiliary device.
> This device acts as a proxy that allows the dedicated `pwrseq-thead-gpu`
> auxiliary driver to bind and take control of the sequencing logic.
>
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

