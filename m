Return-Path: <devicetree+bounces-210199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ED012B3AC71
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 23:06:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A56FD18821D6
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 21:07:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD6D829BDBA;
	Thu, 28 Aug 2025 21:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qDx38l6W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1FA2C11E9
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 21:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756415021; cv=none; b=Fug5TRlLpl6lWpETfdbTy46vgh06kGyXBaONQtyPio4v7oo+N0aaE2OzcFF1ZTMcsEWEufWM62t6Gqtr6w1KNLATW9xKAfNKBpraw2F2aIonZCYz1I1MkvblhGoYhIeu/23CU5if8ni/2+ITSs60gIFBsAqy56KtG+Z07LbMRBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756415021; c=relaxed/simple;
	bh=JpqemiYOa4qZgBu4emt/PYSqWqeke/6L1n6Biqi6C3E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cT6OTeqv9uP41c+4Id1AGOPKv9R6Lo1XeFFeMoLxuRdQt13YD3Fjki4T8tKlHOjCwHqCxTZLoXJnogD2zcQSrjdlFsUbQ/Gf72xrScyGM041Kh3EpXD4S8lJgordORLOc/hco8E/JdOpfMthvT8cHSMNzPIeLujGUbG4Wb0mAXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qDx38l6W; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-55f5dd58ee0so1271416e87.1
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 14:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756415018; x=1757019818; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JpqemiYOa4qZgBu4emt/PYSqWqeke/6L1n6Biqi6C3E=;
        b=qDx38l6WdYgqxoFkRbvHMZmaBo0wsUZvg1lzXTBD81YUIeKxB9VRgpoPveh4Jus9T5
         QlvXf0oPQhy0WodEb1wYlt03dSeV/kTK0L3y6AXRBqU4xZ8cxj8iNbtBoJwe/b/tt2GY
         03Zn6WRhN/MS2xJ7Lb8VPns2VzzdQ+gRa9Rd1o2vEzpFoZpHbZTI+6UM8HyEcsJB/4Jo
         xqhP7su99DofEiGTMcLtEbgH2SFkRpvUeiVWCp3k8WRQ/hY4b0IxeR/kbaxzgkrSWuEk
         l3EE0a/B5cu4cW94B4EQVbq6Sw1zq96CjOLNDDmjNOWyUScrM49qW0FSTtboaDw7kYNG
         leDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756415018; x=1757019818;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JpqemiYOa4qZgBu4emt/PYSqWqeke/6L1n6Biqi6C3E=;
        b=r8dRNRdb+yiYcHhijnRcNu4YKQyDc+90K4Ug8/+hgOlaGyLoGuUGmIQ/WFrBQWBbs5
         kopQ3SOvao3UauFCvK1Iyo4N3WhzqnwazFr2nyPBRqvduGVw3qE1ihvZcMbDlHFuVfmf
         56uugyIYS/9/HCaNnWM6XX+hSVATi+sQnHPyzAygV+5K8uizvuqwhndkpgwX/IbkT+Os
         PuEKeRw5GrnFdfKtAG5AZd0jvxgka3l6eolNMobTVdAXD3uPpiMUcfKxHuBsfa3gXgQY
         P+cjyBnfcrYEZKg+yHjeiRK8ukb9RdYm2QaA5MANzSKJZ1sADn3w2ku9KJosC7+4pcWM
         Aqnw==
X-Forwarded-Encrypted: i=1; AJvYcCWxgu9sTg8fsuHOFpJWR8v1w7oHi52n35fdAN/p6CiBbTLP2ONjKQvups2Zd3ClTgNUAvkDFKd6TEfP@vger.kernel.org
X-Gm-Message-State: AOJu0YwObWT4+opD4pfW46HdVhLvRymQbtlREVRzIwIiRjAHglrF/kc7
	zvP3lNrMDr1YpESmuZtq7CZVpmvXdnWjg4vnShtzfX3JizG1tL6BX+5C7xDbcc5ytE6+TiiUZmW
	V9KdO8e+P+uXEqhd/E0WoSJ5SIabadcIkAkT0oi9H0Q==
X-Gm-Gg: ASbGnct3JT/33CJ5WDM697AaJy8IUprTwNQcr2u8dzOqBltpz+jjLbIJOlc/5mDGKd6
	JOIoOIFul6REHaDQA99DAIVLhpaEJPQs/XFs9xW3YbcBydbwKm2lpPlDuH+3iK7IhB2tZtfxiQQ
	hRItXBgs5XU1phLZZreZ6s+yQDvwze3RJiVVTZnouC+lKXdpoWt5UYdHngdFUWmmf6+dwWzdAyd
	bwqVwk=
X-Google-Smtp-Source: AGHT+IEBjFJWFLGkbXGuhHAtRjCVWrmXlPYLpQwfq1rarphkzkuwgBTA1g4AurEUs7Vb+ka2DgQY9BMQPqm+5bNSxi8=
X-Received: by 2002:ac2:568b:0:b0:55f:64b9:3ab4 with SMTP id
 2adb3069b0e04-55f64b946eemr717027e87.23.1756415018205; Thu, 28 Aug 2025
 14:03:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250827024222.588082-1-gary.yang@cixtech.com>
 <20250827024222.588082-2-gary.yang@cixtech.com> <d5c85ba7-77ec-47f4-8ba1-39199e96da11@kernel.org>
 <CACRpkdYXy9ZgbAZKUdquxdp0X0m5AHT82K74Ex-ZAyEx=Uwi1w@mail.gmail.com> <67e58bda-3cac-4689-831a-4e4116a0e19b@kernel.org>
In-Reply-To: <67e58bda-3cac-4689-831a-4e4116a0e19b@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 28 Aug 2025 23:03:26 +0200
X-Gm-Features: Ac12FXxBf9FMZVXj6RcmihJXxBREGp-5LZAybPVE_Wl0j-njgxfgbqyikM_ygFc
Message-ID: <CACRpkda+iUfHKFnnsTGmXrvxpPSy7WTQRKaAu=YgXtcrsjXthA@mail.gmail.com>
Subject: Re: [PATCH 1/3] pinctrl: cix: Add pin-controller support for sky1
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Gary Yang <gary.yang@cixtech.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, cix-kernel-upstream@cixtech.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 28, 2025 at 8:02=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:

> > If you see that the "hello world" from that driver is missing, you know=
 it
> > isn't probing, instead of finding it out after combing through the .con=
fig
> > for the third time.
>
> Any tests for driver success should be checking in sysfs, not in dmesg.
> Most of platforms have smaller or bigger tests for that.

Yeah I understand the thinking.

The typical symptom of a non-probed pin control driver is however
eg that the system does not mount root because some pins
connected to the eMMC are not muxed right.

People find the problem sooner or later anyway, it's just that the
print makes it sooner. And the mistake is pretty common (or
at least for me, but I'm not the best developer...)

Yours,
Linus Walleij

