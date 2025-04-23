Return-Path: <devicetree+bounces-169789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A52A983F5
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 10:45:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 180353AE99B
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 08:43:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BE85266EE4;
	Wed, 23 Apr 2025 08:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ckBh+lOx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5957B1FE45D
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 08:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745397581; cv=none; b=Mg7EM/pCyk15/1ell31oAzXTrV8dCIXPNsSnBVmVM7nCgu8qbH2X8ECeDdOmPcbj882KGGTbjpZooK2awr2rsTdXsrxCRAXOX/EWSEOjAhj2T8K8zsS7P9cel579RFouSrU1fYbFKnFyPBESOF/nPq7DxH2CQd99FdTPBj/Vlng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745397581; c=relaxed/simple;
	bh=grgPkLeDaak7FHXRcZ5Lz333Opab1u40+CL8LBRoWz4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lD2RzYroUuMqmD6BGK+1p7GnMgDfNX/BLM/LgotWypp4z3+SwiS1JUUqnsCfOyRSmnof1El/YITTa0zvqcDCPqWo0fyKa24UEilB5H1aOJws1BBbFC0qF7xK7IuAWDAMhLXF/UTtknHrh07NcuFyOJ3vsdelmCaEsuFyn9QJhDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ckBh+lOx; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-54c090fc7adso6605012e87.2
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 01:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745397577; x=1746002377; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=grgPkLeDaak7FHXRcZ5Lz333Opab1u40+CL8LBRoWz4=;
        b=ckBh+lOxNwBZ8KeFyLBDbbEqYs9mXUgi0OsWzs+ALI6xvUSFcyOhn6zKqs8BIFci5m
         zGrvwOrbsl/JOmBeFTziO7lRv4DbaDipvdzLJ8yFTd/TUYy3ac6fGFDti8vFyfQBUgOB
         kMvx9mKf4YFb5MZPY8WJjLnQ3tUBh4OWoYpRulNCCneovQM40qimNnDlzzanfM/byWd6
         Q8VWvrzcgRrlWX4WDSoRHcpBkLPU4IB8iCyhHsbNaHY8dTpoaCD3VXvu3Kwomjl1qIXa
         CyulGC/2iqTUxYNYBS/DIAliu9vQ3L5fcY7ngT++jLbxlSp2hlWxdmLekMJd+Q85V4Ug
         q8pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745397577; x=1746002377;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=grgPkLeDaak7FHXRcZ5Lz333Opab1u40+CL8LBRoWz4=;
        b=fSif0ZChTDET8Iv+V/7riBSFgwWF6CRgFVShhzRZh2P5ix1XtU59kg02TKC3xV9YL3
         uHJU+at4Q/ZiowgJys/0k58vP+NkiZkkd0nyNRqja/9VPc2vHzuQlubVq3jRFLNKBmCU
         FSZeV3vIFsrxzPZRZ7MQsvOr8wl/wDqgkS4ZCTjgkE2m3mWVX2dNFA2C+3FPYjTNHktz
         7odOhfepLyhga1GMj/yKD/yZmsDwdkr5BSVPPerSgtPj1c5q4HijPoF82g/pCWNOgacX
         3uiLU+wjvJvh1ZL5PS8fcNJyiWA4FpzZOnf4fCQ8xLmMcWb6qhUPX7T/ie0fhTKEhz0X
         JQ5w==
X-Forwarded-Encrypted: i=1; AJvYcCUBJqy4Bjzpt+2Fbl84UYJIkMEcAQeZQSbnsnG3qp4O0pF7QuI/yzE+rpWX8AwdjrvCs/DMKX4wHrAp@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4xAtmT+kkzSml+69B5W8yRSKvRCZn0lR35WBKGfT0IYojeG7q
	eNH451ygE+q9fkNcO62CY4v8FbSe8a1L+gcK5afzmF3XQib8FMTBUGK49Yajd+24h3Lk/nW8etf
	icCWCyLwO0qaqjbFsetHO6L5+vHWckBuX+PvHx9sxE70sEjER
X-Gm-Gg: ASbGncsEelC9Dg+ALIPJMfqwaLvuMXALBXJ5rkeWAywzTGjUuMd3jgFsudw5qPidgcw
	NgEi5u+hwRljikfbE1fquEoErUh7MUjwe2M4miM8YabmTCAovHQZa/vh0ASOI9lrfrrJz1cMpW4
	1W6yq+iRO6tcTk7/GiF/LfvA==
X-Google-Smtp-Source: AGHT+IFZTOoQ/SIoYXTZQ5HrYq6ViTZKpu7Uh98dkIsdaRSVIhl5RakX+3hvzmtcTmlbY+w9Vf4quwvNHMW9rpoPCBY=
X-Received: by 2002:a05:6512:3d8f:b0:54b:f10:fe46 with SMTP id
 2adb3069b0e04-54d6e633c8cmr4512868e87.25.1745397577343; Wed, 23 Apr 2025
 01:39:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250416-02-k1-pinctrl-clk-v2-0-2b5fcbd4183c@gentoo.org>
In-Reply-To: <20250416-02-k1-pinctrl-clk-v2-0-2b5fcbd4183c@gentoo.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 23 Apr 2025 10:39:25 +0200
X-Gm-Features: ATxdqUHd2AvWX21KS5yncubJtaT0PJGEz4DTRXuWL1cWY2BMp_E6mT4BPCkdw64
Message-ID: <CACRpkdZpHHvbu41xkK2n8-Hzf0euU14T6F42hXLsM277LJA29g@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] pinctrl: spacemit: add clock/reset support
To: Yixun Lan <dlan@gentoo.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 16, 2025 at 2:15=E2=80=AFAM Yixun Lan <dlan@gentoo.org> wrote:

> SpacemiT K1 pinctrl requires two clocks in order to be functional,
> also one reset line from hardware persepective.
>
> In this series, adding clock property in dt-binding, and activate
> them in the driver. But for reset, making it optional for now.
>
> For DT part patch, I plan to submit after clock driver merged.
> This may result dtb warnings in this version due to the mising
> clock property in pinctrl dt node.
>
> Signed-off-by: Yixun Lan <dlan@gentoo.org>

Patches applied!

Yours,
Linus Walleij

