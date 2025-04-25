Return-Path: <devicetree+bounces-171110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CE82DA9D40E
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 23:19:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 043167B10E0
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 21:17:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 584F3224AF8;
	Fri, 25 Apr 2025 21:19:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b="t3ySosra"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECE5F52F88
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 21:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745615942; cv=none; b=F2E/wwZx+GZMC5lF5KfE//l77QQAIXaIsogIXDHyHWle3XZADcCag4nPq1LBqQ6Ol2Q/+bd+J840TxztebW1murO9PuEaMqx5X1bJSGIwAHZYD4uNLkgSsITmbxWmSb3x2yjBWze99q6I3Ev8Ti33PLZAA+KddPHSGWlDD2TAjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745615942; c=relaxed/simple;
	bh=WW0GWD5uj9x5p0tP4n0sOArwVvQMv2F/U8r6AcrskO4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZUo1n8dgFxGggucG1TwSbjKBPAURnUD2oqOnl2BCn+J+uH493eEAo8HLaneYiSWfR/tYrkm7hpJPb+R0aOleGrS2IGtEBWk5th5UnTKQu7xQ9meZJX3e3IQfOXq1xBriKGIA+pnF6tpy6994ky47j9q01haLHizO68kMxYHylBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com; spf=none smtp.mailfrom=wkennington.com; dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b=t3ySosra; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=wkennington.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-7390d21bb1cso2830120b3a.2
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 14:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wkennington-com.20230601.gappssmtp.com; s=20230601; t=1745615939; x=1746220739; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lATh3MzWZf790DjubzFS9bFKySh0fZR6epsOaU8Hl1s=;
        b=t3ySosraZKuIdXxeoi2btN0M2i7ypY9U/sLKnJ+vmiwxIl0LYUnv0x9azzuvWSn+uf
         E35Z/q9uWbsriSkY79B/jGGLhsZdEbG972lwStENBrSPZBaxPoMl/pqDKWg/GTmVzBNT
         i3kk3QMoxwtuFby5KFM7wzKdRD0XM5A8QCAW9RUhSApfmOhdcKe/xhlMwBVlKq7PtnnI
         C/ZBhL5s2QdnXDN/HcLOJNb8SPMJ6awkYv1tgCgi+TCvRB4hWoIXEGj1+nm12WnjLAoo
         CCaB8cxItMo8g5NE/bDo+30j4ejStgeWryhFxVnaCShXklnWKH1qMGtd+8X8+0SEnRvT
         oYKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745615939; x=1746220739;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lATh3MzWZf790DjubzFS9bFKySh0fZR6epsOaU8Hl1s=;
        b=atOXD6Cso1Pt6Q0aakRECqjpXqD43bM8olMf086jT6IAPRda5R0DBpgRX2l6yl06dP
         B7WOeia68eqtzLfqq6zjfrKTmi98fPbhX3KclQ67KK6m+xvCPiq0MUQ5X9LF5Ymo5c98
         Ef2CTIgXOSBMYpl0zpNlwdEHlt8YgZLU3MiQv2t1jNo+4ux/aPV/0E0sER98y1A5Ea2U
         zcQXGQjExB2PO/PxgA0hzpOu/dMEBHTh0S3P/BjZE+aVUeHtVePWvkbG03eXBLXF1K0v
         xnNhAZkvbsbYEmv3q72O2u5j+O5c0m3584f9LQjzYr35oFrfnSEFv8bP1DO7zA2FUvZ/
         8NBw==
X-Forwarded-Encrypted: i=1; AJvYcCVL457DrLfa+a9KHomRMgWdD8Lu35sLV71Q7MW0YcRWecmSRBFA349w81Ei+Sd9LUYmJ68FcmPyEpy0@vger.kernel.org
X-Gm-Message-State: AOJu0YxWklfDCEG5w5pJwdLriUtVB99BV0kb5ORryOsd5lphoTeHSaYy
	wHVPK9e5Zyj62wVWtEhE0WvnfZ1XbbnjD4a99LxDsoh2JpZpcF3zva0CrnBSNGrFTVRz06mGV+w
	EtsA1j4cbLe5VCmOhofDHImlsfA2cZqOxl6fK0g==
X-Gm-Gg: ASbGncuSijqoA4JGBFmhZ+arLlvICjvh11kpMWsub/QYN6mu5pKvuQ8p5hKeAHwo1BJ
	vY2H2MLlLYZqFRoFodm3GJeEmvUkZ2Q7061oGhtQOgV9bDNyr0udpHxMIYWlbd98hDBPKuo7LpK
	PraNbfQLYw+wlsLKtETimWcvzBADSgTRkGz+Xm8QXGB0PeKnwssQ0nf7nT
X-Google-Smtp-Source: AGHT+IGw80kl4ZXc9yR6ePSrRktKcGbiCTZafn6ezncHtVQMleospHvav/bCV/gWizv9s55n/3wlzQ+F9qTLlIn8Vpw=
X-Received: by 2002:a05:6a00:1305:b0:737:9b:582a with SMTP id
 d2e1a72fcca58-73fd9051555mr5917894b3a.24.1745615939152; Fri, 25 Apr 2025
 14:18:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250416001818.2067486-1-william@wkennington.com> <2d3d4240-65ab-4fd1-a86a-503bb40f34a6@kernel.org>
In-Reply-To: <2d3d4240-65ab-4fd1-a86a-503bb40f34a6@kernel.org>
From: William Kennington <william@wkennington.com>
Date: Fri, 25 Apr 2025 14:18:47 -0700
X-Gm-Features: ATxdqUHn5xbT-hR3gBoWGv61BKKLQ9iPSFwEWRthVuTJRHfVClR_7BcDCNCHOtA
Message-ID: <CAD_4BXgO3F0JVKQTAZxLXjPXHv4Rgf2Cz+Cm0PMzLDTx5C56tg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: nuvoton: Add USB Hosts
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Avi Fishman <avifishman70@gmail.com>, Tomer Maimon <tmaimon77@gmail.com>, 
	Tali Perry <tali.perry1@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, openbmc@lists.ozlabs.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 15, 2025 at 11:52=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 16/04/2025 02:18, William A. Kennington III wrote:
> > The npcm 8xx chip has 2 EHCI and 2 OHCI hosts with driver support
> > already existing in the kernel.
> >
> > Signed-off-by: William A. Kennington III <william@wkennington.com>
> > ---
> >  .../dts/nuvoton/nuvoton-common-npcm8xx.dtsi   | 28 +++++++++++++++++++
>
> Please do not send 10 separate patches, but one patchset for given
> subsystem.

When I send a patchset should I add the reply-to tags for all of these
previous reviews? Or just resend as a new review?

>
> >  1 file changed, 28 insertions(+)
>
>
>
> Best regards,
> Krzysztof

