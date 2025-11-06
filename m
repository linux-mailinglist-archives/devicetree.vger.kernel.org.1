Return-Path: <devicetree+bounces-235496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A95EDC39759
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 08:51:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 43ADD1A434ED
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 07:51:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E18C42DCF72;
	Thu,  6 Nov 2025 07:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lcKsVyii"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219FB287508
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 07:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762415483; cv=none; b=QB5c3IMhOFKrRRBq5TK2AX9BCF6V/601/X5wGlsVQxEqzG9KiXmLgVLh7E/2K/sQEBOV+55Y1Jg2B0aa6rj/+TAx+2oLGcoa+VEsgXoizkJZDz8liJbokAyrY8hbfC03uvyqv8yD3o/do8M/Vgv5cVpJIhituW5t3sAIJgX6TyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762415483; c=relaxed/simple;
	bh=V3okf9oIEIU43qw5xYW1BwiN1gJLrWq2sN3TplwqiZw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lTXxg8kULkM7wRIJb3rcCn4M8HwrbBYtX7vwQHwlf0REgNpZRvqdEG70HWmlVnFPRHz6xwwKenBRhocQRxLdtwuKVNxKIAkdMxOzp4bv+L3YeOGYPLXP2kr1f6xThuJ1BmDsSsJCB5nyzWOtrw8OSRnVA7k6WIRcRUySM+Cl570=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lcKsVyii; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-6406f3dcc66so1134464a12.3
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 23:51:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762415480; x=1763020280; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=v7QbmE1T84ff08D3+wx9jlBrqSs8DUW5Q3gCIAzKNPQ=;
        b=lcKsVyiiD6AOqH2GqfPZQVE1DKIKKDtHcvOKJIU8xNp3Tj4x4yVLE+tj5VMQ1pch39
         qJ7iJY3YMryBVwfMWQl5Se9i6ksKa75bCsQTXAB7niCDQmgFOzStXJAVEwxUz1rcClge
         j4XV0U8DjZ2pgWL6lES0F+o+samexitYZUi73camA2v1LpX157rz7ctC2mR4iw9EA9zd
         OklA/1WJMB3DvDUceh+Ocdrhgf4GfKUPKw4hQQJiXoZJtijkT4+WZOwkI/mj1d1GfAkb
         A4ihScjaMVTSYEx5bEmoLYqqF8/TtdSaqkVJYQDHcViWBMCl0VmU9IsBjyCyNVeodi6H
         K07w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762415480; x=1763020280;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v7QbmE1T84ff08D3+wx9jlBrqSs8DUW5Q3gCIAzKNPQ=;
        b=Imi1uVICbKYluAge4eJSUpi56hy6oAvx9b3Jdz0PMafzPUrQNfDJbAm07akpeAgepA
         Zsx/bZ6BFAYyw6epoZGyIxqdeWzVx4idc8wa1sfN8yqTUMuqNzmhdDX9KZzyCgjTWRyG
         X8nEuO7UK0oMDFR/ycOE/2HDCB25RptJBCFSdFJQedL6YhLUwX/G0Z8yo1OM7ETav1gk
         P6ya7OY8xYLPvmlOuAzuyrz6eTA/eQri2gflj/b1NqyFkJvt/NHNDyQFIMfEkUGv3Fyy
         az4Y/RjKv1cJ8YLbTUw81IDwsuCg8VwjoJKgvoSm7e+uR6N2kFm7m8NH3oKKFSG+mzgu
         8/hA==
X-Forwarded-Encrypted: i=1; AJvYcCXG5Y6prGHJnQfkkBb+FTSYJ0mWbZCqrAsr8dQtPan8ooN0aWFAnRKwsMDOPmcUTCFUOniph43NBLNF@vger.kernel.org
X-Gm-Message-State: AOJu0YzX0dygG488bcr39PdgLKdUad9anqMNIi8tspVXWRpvyjrjipCj
	H1KefgPcjXiyGSMhiCs0w2+jo/qa9Sq5rCss+5oiPFcuo2WfNJnGRIDbC9jqNctnlWc96tjjDj5
	7fmr9I3Tq/xCX0EUddpGSBu8zkw5TVeqN8oWhlxQrNg==
X-Gm-Gg: ASbGncsg8iGAAbKlXUcka+eH6T5zCReWpVbbmYbLjtC6XvAwg/esGb6//SB1+bugfBP
	UBYTj+YfR3uyaWpPZfiyxkWdNg4rRn4NlhRpfCUT5Yf28JJSyhfnyMbp0NZIXdHSXZmopClmAI6
	lrQMlbRk3hM65CGPdqbREBaKS9LDZXuLjsq66+XBOShsudTIXUEdnNlG2pP8DyK69dTtht4iaHu
	KUbz/rjmyOSlBd/aeFGijMfKQ3Fv8suwvKhP0402ytnRWTLgg6W+GcCNd3JUg==
X-Google-Smtp-Source: AGHT+IH5mMQNAbO3dsRPBZZKprrZKG8gWiaT6H027FsLcjDm/NMQYqk1ZtvdWqQy6Uf2hPguHqWdFrxhl0EoZUCxvTg=
X-Received: by 2002:a05:6402:20d6:10b0:640:9db5:ba2f with SMTP id
 4fb4d7f45d1cf-64105b8ef06mr4773837a12.30.1762415480479; Wed, 05 Nov 2025
 23:51:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251022174309.1180931-2-vincent.guittot@linaro.org> <20251106000053.GA1932421@bhelgaas>
In-Reply-To: <20251106000053.GA1932421@bhelgaas>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 6 Nov 2025 08:51:08 +0100
X-Gm-Features: AWmQ_bki5HMad9R_EvGRCt6ZsgIelgkfzutK5gpeBF-eV1fPQRjJw2903OorBCc
Message-ID: <CAKfTPtBWfuHP2h+7ExJ_mm6zt_DviQTa5KEUwECCzxsLk5=pBg@mail.gmail.com>
Subject: Re: [PATCH 1/4 v3] dt-bindings: PCI: s32g: Add NXP PCIe controller
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: chester62515@gmail.com, mbrugger@suse.com, ghennadi.procopciuc@oss.nxp.com, 
	s32@nxp.com, bhelgaas@google.com, jingoohan1@gmail.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, Ionut.Vicovan@nxp.com, larisa.grigore@nxp.com, 
	Ghennadi.Procopciuc@nxp.com, ciprianmarian.costea@nxp.com, 
	bogdan.hamciuc@nxp.com, Frank.li@nxp.com, 
	linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	cassel@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 6 Nov 2025 at 01:00, Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Wed, Oct 22, 2025 at 07:43:06PM +0200, Vincent Guittot wrote:
> > Describe the PCIe host controller available on the S32G platforms.
>
> > +            reg = <0x00 0x40400000 0x0 0x00001000>,   /* dbi registers */
> > +                  <0x00 0x40420000 0x0 0x00001000>,   /* dbi2 registers */
> > +                  <0x00 0x40460000 0x0 0x00001000>,   /* atu registers */
> > +                  <0x00 0x40470000 0x0 0x00001000>,   /* dma registers */
> > +                  <0x00 0x40481000 0x0 0x000000f8>,   /* ctrl registers */
> > +                  <0x5f 0xffffe000 0x0 0x00002000>;  /* config space */
>
> Fix comment alignment.

okay

