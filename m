Return-Path: <devicetree+bounces-91810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A82B394AAD9
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 16:58:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AD47FB20E13
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 14:56:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C8B3839F7;
	Wed,  7 Aug 2024 14:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a+tO24/L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A02118248C
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 14:55:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723042560; cv=none; b=lS8SBztbXF6yf9/NkaM1bWCTRMjv9cUOjxer8lyhKV+LU1TnxTN3w8CZ77thMg738y/57tCioRv2vcuUqknX36I5b7SWSriFhw0usLVdRIzd9EmLnud17riGgIahMOKgV8BmbFqnq1G3Fd+nQFYBQnlVQRb4GDw2LotD8Gvpe9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723042560; c=relaxed/simple;
	bh=xo9elGsvRTScVV4AackKBXuQzEuvaugfM58oKCMoePg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rgZs6ifCtBw70NRD0CUvhDUw5QagTYTO6U/bT+2OVM2HLOlBRLxo3oWfHwIFiOJnzPgDcHlVVr4nUd3ihGUPoDrXBRrgCI68s3LnNi+kokKFbBcn0DD+LW6LJQekOiI7fkpDdbiWk0wgqPUt4SKab5oMGfrn8KyfKV/iDBxfw2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a+tO24/L; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2ef298ff716so3893021fa.1
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 07:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723042557; x=1723647357; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xo9elGsvRTScVV4AackKBXuQzEuvaugfM58oKCMoePg=;
        b=a+tO24/LH6GJRNrtw0PRvGVKPkuDd7CseruS4Vwt6Blnq3dy9TuJEPcmio3m83J7WO
         2+anNXMCZgu9EKkepTLIzq1f4KPmhwgVKhzwnijXKYW9zx9yA3LPV4OKOmbOyMHUfJwg
         AbjipBMC7C3jQwTa2lZlXNZPhyM8mfPj4zZnCt3UCybkCDMs7WEqL3RXwBSlHBVxeHsZ
         RV9XBoIcR056SWw7W3c+1u42AzKXRnWXcTriuSUSIu3zOBlIWWxD3eKhThh/s4YFNLb1
         Kl8V15z1KwGRyvxEdmVcKZ5esQ0QvXBOOpuGQDHK8xraW+XPHvtKslus96GrcvcMAGzR
         M2ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723042557; x=1723647357;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xo9elGsvRTScVV4AackKBXuQzEuvaugfM58oKCMoePg=;
        b=m+RLg3/4KQj7H9kg3d1yZqDkRw8dygPRHKmclJu0iuQmnF9N5SyzmoI8CYUW8oXzA9
         ZeZ6MWMiL/aCx9goEX883W0JjNL8V8BHuxjYF6b5CPzi9UPvb63eRFFHhxP8xZ52TLVM
         CBGNphc5jZJfKlTesPuBkRTouIq4ewGx6xtNBiNebY0+dXKMOhGYNxh8WCamh3j9QFYy
         7/Cn5w7lmq0w8kmViGTqDZHDFSV8Z74wmFfQyjEV651lz03SAT9BbTeEfjrdiV108cRT
         0AF80MLvt2hdft6I5H6s8hT1wwbRv001E+q9NNk+uOoCYS5kfFiIzY1e5isWYpMbkhum
         BTiA==
X-Forwarded-Encrypted: i=1; AJvYcCWXo8OVLT3tJCXieOwbsI7Y4DDcMyrCuYHY60mnRygx5MPGwZCqRoYzUKqDwwsT9JlCULAwNeReIR1AitCl5IHh5rzd7uhb22Jd6g==
X-Gm-Message-State: AOJu0Yw9CtKNs+0DCMLAs0vHmq1PJmpdgub1zXItah0bbF/Rw7ArC44c
	2eSAvHGFHpc3BymCEMMLLzxLZkrJVRKCgHIkW5JeKYc8ZNgtBH73+9j1NlVOJWfDlKeBgBo5K3p
	cODbFZrxk9aRCcw37KCYeJUQ+rU4=
X-Google-Smtp-Source: AGHT+IHH3Th5RBMef6rTaNUiMx4WFciYUZ75uhkrUa2Y9KwggP4leL8PFwqLHDptPjIcGz0f0QOC5ae/b6w0eGUBUgQ=
X-Received: by 2002:a05:6512:ba7:b0:52f:cf27:69f3 with SMTP id
 2adb3069b0e04-530bb36725dmr7964384e87.2.1723042556282; Wed, 07 Aug 2024
 07:55:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240807135419.248219-1-jpaulo.silvagoncalves@gmail.com>
In-Reply-To: <20240807135419.248219-1-jpaulo.silvagoncalves@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 7 Aug 2024 11:55:44 -0300
Message-ID: <CAOMZO5C-hmrH9J7=JKOn9cUi0bVa=dKhgsnzwaq=ttqE7A4n0w@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: imx8mp-verdin: add HDMI audio support
To: =?UTF-8?Q?Jo=C3=A3o_Paulo_Gon=C3=A7alves?= <jpaulo.silvagoncalves@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	=?UTF-8?Q?Jo=C3=A3o_Paulo_Gon=C3=A7alves?= <joao.goncalves@toradex.com>, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 7, 2024 at 10:54=E2=80=AFAM Jo=C3=A3o Paulo Gon=C3=A7alves
<jpaulo.silvagoncalves@gmail.com> wrote:
>
> From: Jo=C3=A3o Paulo Gon=C3=A7alves <joao.goncalves@toradex.com>
>
> Add native HDMI audio to Verdin iMX8MP and all its carriers boards.
>
> Signed-off-by: Jo=C3=A3o Paulo Gon=C3=A7alves <joao.goncalves@toradex.com=
>
> ---
> v1:
> - Fixed wrong "From:" for the patch

Reviewed-by: Fabio Estevam <festevam@gmail.com>

