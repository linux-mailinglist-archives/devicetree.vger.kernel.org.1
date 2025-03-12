Return-Path: <devicetree+bounces-156857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE88A5DB5C
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 12:25:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BDE1A177358
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 11:25:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD10C24166E;
	Wed, 12 Mar 2025 11:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TW04dLOY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D924E23F39C
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 11:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741778701; cv=none; b=DTY7bcr5Qofv/pKbimxB8UvCRc4rL1lvEPRRFFCuCO3qUwmBUMTPcFG8gFngUjfKyVDvfM2KlkNUXG/pKtXNV9EnyP7xQtdqLTA2/5W/gHIVOXScqR+lZ1XNQ7xOdXpFIaLJQW+/68JO5QRDLZd0nopGU6a8S5qPnKgTB2xXk6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741778701; c=relaxed/simple;
	bh=EyLOE0jVe6Ot5eLlgUxopazARR5tkTAv5HgZzzFVFuw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=THUGPY/JzOqHFBmbJeLrC1kwtwYpERGLSH0G/6Wi1EgVU/Cwq1mH/pKxHQcgosAiTaPhvn3kNF33EHG4bVZ7dh27mEdFvMhKnR5/R9CVYBhQezVsC5CrBXcISRB+RwPa8h7XQlHLowj+rcos+FA1LNLVUYnqCuVguWanmhm5EPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TW04dLOY; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6ff07872097so21849297b3.3
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 04:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741778698; x=1742383498; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ESIBsTzEIcUZ/ECc1taqnCKMBy5hYudFtIt6EODPkzM=;
        b=TW04dLOYqmJcdFVfoD1FwNrpW6qBAaxIMLsDcy86bev1MD0l/2dia6uIyiG90guYeL
         Z1NWmiPuAfk+cg1pjWJGKQR0j4CyDec5iy3i8eqhqg+hRoz5pcQv7+4V9iAzS6ZsKy56
         kA33yT9zhgGkrcw8wGF1jLioE9MOLf8m813ZM0YHpqpBd3CC3Vqk7SLOKsbe+0iq1G7P
         oxxr1o9bpUIi+HOgOFWRAKT919GPnpwwXUjSmsotCwreJnfCDTv4otYoh7OMkdx0pf8p
         +72Ix1x0aNydFTV9UXKVaJob4sTsk2Ivq4L4/WE2G55mi6uNL/BYLYag2oF7hKemDybx
         fvhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741778698; x=1742383498;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ESIBsTzEIcUZ/ECc1taqnCKMBy5hYudFtIt6EODPkzM=;
        b=Dxr+CUp4cPqlAuMJU4kMkjSLy3OIMvrftmXEqihpUPXkWRBE1CZn/jcasXuNW/ZDOl
         h5fRr+uCDmlJpXjT0MIoss/tKemDPdWrBp3iVBW16j/mDYcunSD+bjN05um+I+2nTStI
         nc57ozOci2MpHnBMzK57tDN+BzLy5SQy9IzL7uxgSGk251Mm5htbdsQjV0ccZwXlSCx3
         A3ZN6CfcojQ0K+NVDgoFFr+o3HKWynYk/cLa/pRffKmHEBwjCj8wawyw+5F/uFuy26tm
         MQAzBTi/qDhaEijFWjI/RQ5EnYJ1HvqfA/uzPzT3rZe1QoCg2ogO6xhWWv6KzWJ0HcWY
         MF2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWKf2WOoX7uroc0db53E+Vxr6owVMOLFUdZfCf9YQ06K+jm+HWW6zbrhn+5SqSuGsb8f/lvjuCKC93P@vger.kernel.org
X-Gm-Message-State: AOJu0YxmrQvHIes0w17txpR5eviXgN3ATSBSMiAYav2BZg1AgWYqmXic
	rzBA7tXhG+p6y1Ef4pB67/M/gP5U0gLm40+YunwLiy4eIKQtgXGOeV8qUhn6V7WLOK8PESAl3jT
	NraDhPvOeSdxi7J7wYvaCgc3OuAFraWY+kiZ06A==
X-Gm-Gg: ASbGnctRMggMEr+blri3nXgGdPf4wLJ/XPeJc2r+HiTfb/Enl32+eRgFf8eNgBnZjQQ
	GjKIiAnV/jKHs3MR1gHso7qdydt5xkz8UtCPUJPuyx9tZktQWTICp0tinXElsXLXqdI23Qyy8t3
	B9bkBiPiJkhRm0WcbQjZmQsOWIfOw=
X-Google-Smtp-Source: AGHT+IHtmnbXh+/xWHNRtVc/+e25TtwDya77gAG3BQFWZJv3xY+g85qmMUghOraOvNz9vB+GjgG9TqOZpEeA4ZqkZEA=
X-Received: by 2002:a05:690c:30e:b0:6f9:8436:3d2a with SMTP id
 00721157ae682-6febf3f7f61mr306802797b3.32.1741778697916; Wed, 12 Mar 2025
 04:24:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250220164655.2081224-1-Frank.Li@nxp.com>
In-Reply-To: <20250220164655.2081224-1-Frank.Li@nxp.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Mar 2025 12:24:22 +0100
X-Gm-Features: AQ5f1Jo7KEKuskQ_5cOeKngtf3fN-L7jwpx8y4RoWNvAYB-ewPO61CKAdCrGxr0
Message-ID: <CAPDyKFrxGzyNsr5vQjcxPRzyQMTpoR5sZjreYbO_8ZA6i_-XkA@mail.gmail.com>
Subject: Re: [PATCH 1/1] dt-bindings: mmc: Change to additionalProperties to
 fix fail detect Unevaluated property
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	"open list:MULTIMEDIA CARD (MMC), SECURE DIGITAL (SD) AND..." <linux-mmc@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	imx@lists.linux.dev, shawnguo@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 20 Feb 2025 at 17:47, Frank Li <Frank.Li@nxp.com> wrote:
>
> mmc-controller.yaml is common schema file. According to writing-schema.rst,
>
> * additionalProperties: true
>    Rare case, used for schemas implementing common set of properties. Such
>    schemas are supposed to be referenced by other schemas, which then use
>    'unevaluatedProperties: false'.  Typically bus or common-part schemas.
>
> Reproduce steps:
> 1. Add unevaluated property 'abc' at example of fsl-imx-esdhc.yaml
> 2. Run make dt_binding_check DT_SCHEMA_FILES=fsl-imx-esdhc.yaml
>
> No any warning report. But suppose report below warning:
> mmc@70004000: Unevaluated properties are not allowed ('abc' was unexpected)
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> index 9d7a1298c4554..26e4f0f8dc1ce 100644
> --- a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> @@ -24,7 +24,7 @@ properties:
>    $nodename:
>      pattern: "^mmc(@.*)?$"
>
> -unevaluatedProperties: true
> +additionalProperties: true
>
>  examples:
>    - |
> --
> 2.34.1
>

