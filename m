Return-Path: <devicetree+bounces-210176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3917AB3AA1E
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 20:39:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D2CB5980D7F
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 18:39:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8634A2773C6;
	Thu, 28 Aug 2025 18:39:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zQDqJvLI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA74F26C3A6
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 18:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756406359; cv=none; b=NgYXrvEYc+MaMEYPESm51dXU9D9jQ+7KUKnYUzVLgDlWz7enTFIK5kJsVl7l9gZadj/1JCLPcxS7mmkw4PGVyGkDwzqEWV2goNl/24usK0GvQkRjtca0AC9kpD/t3ZTGxf68TYdkzW9tpDMTqId+lETx2nXIlQj7vJJYj8scHyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756406359; c=relaxed/simple;
	bh=E0ckteGAESBs8jcf8OZOftDZRFDWIXrQjnpmEjqlDzI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OvsTOmgL67vNngsHXT2XDU6wt2FNnfFqdj6IUHPkaDHrNwhF6M/fqZuiOAZ9JWydupukAgoPcAxy2gmknAOyxHwI3DtpEIV7mLwlIE3VijBTRvlgkJzNzweIu4Kkk/PJvqU76K9myl8LAcVX5oxOAwRaG3adkLwPplyLxeQcMjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zQDqJvLI; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-55f44d5e6f8so1387412e87.0
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 11:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756406355; x=1757011155; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E0ckteGAESBs8jcf8OZOftDZRFDWIXrQjnpmEjqlDzI=;
        b=zQDqJvLIKbqGWjUKzrHVrChQY9QXq90cW8vvzTpfc8oTRFLyCDciuRJYg1b7fI6en9
         v8mquGDvp1BHivXI4AYJ7NAyvVWY9ahoZLO8pkbkSfEBZvcJHO5Pxt1ugONIb2DNmKeR
         /OGWmDUvUFDLiJIS5AxyibtUKF5inq50GhmDj3NOYZPDdgt2XYhUyYinQg0UsGQXOku6
         gEZBnCOesbNtEMyrud1AFZLwcNRXVlCqmlS/zceGoTzlk/gwHr4CEspDRdgoJsgkJdPT
         XNvMGxEjLBeekTsYWEpIwLvbwdKUveeP86l3ptC1e80xoK7cxk3yypjMAyovcFWOxzhX
         EjxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756406355; x=1757011155;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E0ckteGAESBs8jcf8OZOftDZRFDWIXrQjnpmEjqlDzI=;
        b=wkQtTvfmP5AouQzvxkrvSTDeNgN16Loc+9FW8z4WpS2cMcWXyAntlsyTXq+8xDWcfa
         /7i5754P69ezqO+SaB0C1acSReiVwUPiBU1qKddgXbvLlScoz7be7v5WiVvKqu83072O
         29H2A/5NcxboqOJzLyisluuCuei6bwbx5q1XOhFOoFrT5pWfHVAG1YyhSy48TGkTJ6VW
         qChH6QOeJ6EylujQGDeCTINrP5BO27CLxfmma2Evkj++OygS4ndwMWCKBZW4OI3NWGFP
         3W2MZXc1Pf0JZasHJeEUNXULajCqPZ3VuKGSGtXaZR3uNKnKBrtRAoAMwZeWyKtyI3UL
         yBnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwncvP3oxHBMokH5fkKx0wdNoOjMPo3Jxm1MGYJF/jnn9Z/8xiS5MhiinPo308WGHBbWz0f6atZVcv@vger.kernel.org
X-Gm-Message-State: AOJu0YzZcGV7c7mVxvZoBzTs8BhIyWun2XZmkvCfzw5oGqGPMtYjjplG
	pViFp4GMJP2m6MnKTFEa4E/igTDtVjWPguxxUpl/7WBJvdieTGn5AxNgFBsXzRDybaPZ6mo1Ri7
	7OCx30ZDEtQwlyWzzvl+sXZG/pKwUw3QpfuQVWiTlWg==
X-Gm-Gg: ASbGnctTNx7eYmUbxW14V4lSRRz/KXBPNni/Tx3o+4gebw+3a3oc7vCpIBFcqvlG2oO
	PFggrrkZWb4EEjzinODXOx2wZs62O4+a5v3184+ddSSovXlh0nYUKCe0jff5hwwZyMXg8Z0+2iM
	8/ia8+Q3PJsKrgDyRZ8Yw1FvD3vtBJiTH691BjGzhNL9CIa5oueIXjswipEbJdrYIUPoWeFapy/
	Fo9a96rmX6wA1W6PA==
X-Google-Smtp-Source: AGHT+IEW/rZTrjCCovtsKbGN3zvurPp8ZHpS2GVDC7ghNOSAMSVHLkB9FDrrp1lAJKfN2C09p5nry2jkSt7wbvI4iYo=
X-Received: by 2002:a05:6512:3b09:b0:55f:4839:d05f with SMTP id
 2adb3069b0e04-55f4839d30amr4000473e87.49.1756406354836; Thu, 28 Aug 2025
 11:39:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250823212732.356620-1-alex.t.tran@gmail.com>
In-Reply-To: <20250823212732.356620-1-alex.t.tran@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 28 Aug 2025 20:39:03 +0200
X-Gm-Features: Ac12FXym_RsvFHR0V-adi-Z38di1fxjCCKa-fkpd5JJ5TmFdT4-cHh1WYo-j-eg
Message-ID: <CACRpkdY4sCFZqK2D+XP7ctK_EJD3aOO4CGh40uQsdACyAUOofg@mail.gmail.com>
Subject: Re: [PATCH] arch/arm/boot/dts/st/ste-ux500-samsung: dts bluetooth
 wakeup interrupt
To: Alex Tran <alex.t.tran@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 23, 2025 at 11:27=E2=80=AFPM Alex Tran <alex.t.tran@gmail.com> =
wrote:

> Interrupt support on host wakeup gpio for ste-ux500-samsung bluetooth.
>
> Signed-off-by: Alex Tran <alex.t.tran@gmail.com>

Patch applied!

Yours,
Linus Walleij

