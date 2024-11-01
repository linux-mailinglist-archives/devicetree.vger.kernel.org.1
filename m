Return-Path: <devicetree+bounces-118020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A853F9B8C66
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 08:53:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B32E1F2231B
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 07:53:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6ADD15531A;
	Fri,  1 Nov 2024 07:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VXhYaqFJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BA4614A0BC
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 07:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730447590; cv=none; b=NvBv1OL5Zkrnr4acrEYL/Ovl8XX/kg4P172uVa+Fiq2UDMW2uY524kwdJr8zqPU68nDZ6P3YTh35e70Nm9qJOz8GKtEtDyR7LbGWjLtQYrOINfsIKHw98yucIeJt2aNjVVZWbsx86rWWzd6LqCPRdqJrDSKT/Nu1NvgbFWFA9sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730447590; c=relaxed/simple;
	bh=DT4BUUrZlHb5wtWoqaU9rjK51tJ5tSI06XldWy/zGcY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lwlfsNm9NLCfeB7Y9t1pC8Wb6pkgt4Uwl/lRl5z/wx2VBHKeP5pNsKryHAipOax31/T5gYrlHvUbY8u6myUwCxxHcIfCebOfg6LqXhuMJO+49s/QYCryDNljeycHCGrC/2xBtzTGImiiBgxzEb0JSkqz5CqeDeoBksw5l/1bG4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VXhYaqFJ; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539e6c754bdso1570918e87.2
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 00:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730447587; x=1731052387; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DT4BUUrZlHb5wtWoqaU9rjK51tJ5tSI06XldWy/zGcY=;
        b=VXhYaqFJ4/9YUguEph5IDDC9YrOoWE/wfuiuoRJ65zOCpvuXNG4Dg58xuF5Za7g3UP
         WwPkoia0/ndqG6gi3LHHA5vJLOulcrJD6m0lNFyIGdFGMHxqj1nS2+9YU6GNEYTWe2Zr
         ealpjOnYqf9XFOy62wGBnY8i4tTJav/mqEdjRPcdaskfR8Z/oElsywIV+kSroroaNKnI
         uiddrZuHETlbhGdcQESh7kZb4FH+s4XaolqDdAX7cSbGL+CkwX2t70frKFGPXxaHtbiM
         tYeh3J8Fpk9NqQhvPjfxLma5FsxXuIPkC+P3vfmRILnZjgxwuTJh1WOPMZWi2q4RunlS
         NFqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730447587; x=1731052387;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DT4BUUrZlHb5wtWoqaU9rjK51tJ5tSI06XldWy/zGcY=;
        b=nhy5GDGZw1v9D1W+pU3cXcvErRBPWzrj3oOCP2FQWatJhQqa9Bi8Cn8MHXAGTbN77D
         Xws2G6vzFG9j14CrOLUoW+MtpWsq3oU9LcwMd3coErK2I0y0Drbs+TQTtlNuebi1hC/Q
         KmB+az9fltTwir7Bm+jp97q36NcaJYCZHYH+skmTqx6p/Mj6O0dqCm9HH18ycAaEcTRx
         SYpmIHVmb8MLyiU5yIksVG/nWcGFiRA0JweImvB99jvX1hmwdkmvXcffdS7WCIW38M9e
         BGtn7JQVYcG3gVzxFH4Ul53l2emwbChAMQei+Bq8Jb2gEps6/d8vL7rPDxL1xlAIG/Rp
         Rc7A==
X-Gm-Message-State: AOJu0Yz9FBwkApFCfH8IbwiMCZNORb20iuL+/ssU6u/5r1GN/hj/OLNi
	koE5ZUibRcn2NzA7vJZLPNtR1rbOyU669bwvyT6iC1GVZCgXvRkHdCv8zgzp6V0YZ0rtQzvbCkm
	9KZLzaXAVgWUNIUwDDtUKUhNz5VzAwYonMZgZiQ==
X-Google-Smtp-Source: AGHT+IELZSUI2DVA+FzMz/42W8qvFTlg9IGK8lEs4ICj6atJj/tU1JEoUYcgsym6ki0o0frp0CDKeHj6QhhvuKqrWYM=
X-Received: by 2002:a2e:d1a:0:b0:2fa:fc3f:d603 with SMTP id
 38308e7fff4ca-2fdecc2f1b2mr24393451fa.43.1730447585232; Fri, 01 Nov 2024
 00:53:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org>
In-Reply-To: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 1 Nov 2024 08:52:53 +0100
Message-ID: <CACRpkdYThSfotnE4Hra1G3kMrn=SNkOEuKpq0U2nSjG5Xz+yqQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/9] ARM: dts: Add some BCM6846 device tree
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, William Zhang <william.zhang@broadcom.com>, 
	Anand Gore <anand.gore@broadcom.com>, Kursad Oney <kursad.oney@broadcom.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Benjamin Larsson <benjamin.larsson@genexis.eu>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 19, 2024 at 10:39=E2=80=AFPM Linus Walleij <linus.walleij@linar=
o.org> wrote:

> This adds some silicon blocks to the BCM6846 DTSI file and
> adds a device tree for the Genexis XG6846B device that
> make use of it.

Is this series good to go? All prerequisites and ACKs should
be in place. Pending on the list for two weeks.

Yours,
Linus Walleij

