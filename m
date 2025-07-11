Return-Path: <devicetree+bounces-195598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 47141B02396
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 20:26:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2BEB51CC2A1A
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 18:27:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 380652F2C59;
	Fri, 11 Jul 2025 18:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J9ZQpNgQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73FD52F271F
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 18:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752258409; cv=none; b=PP/rsyRes8z5gGA5nM3+7dtaTtAVvBaqUNY0AHhDgsaJ2oZiHJLLIbOJGuwzvmLZV54MIXZfOzg2ieEMUXQpwVyHy65ZkLMbsETr5/MzVn2voU/Y3dFnkQZDBoDHHtxDNnQKvZyluKLO7sNC/3DpeNAGW7Vuqd8RnuUDfuQZ0tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752258409; c=relaxed/simple;
	bh=su517mkk+oxzFqk3UP0BekUx1TUAeS3VlwMBUTxhr1Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=badT7oflj4BTHbvnwMPUzvQIqWsnh881aLEkqjJeQK0DhG151Ry3GM9UIJYE3p0DCFGJVJPpeGgxKZfTbS50VIqCRcwfcMsT4n9aVvz50mcqQplXcCciDnUaVu8KKyLiKOk/S6C+O5Ciol7RcUNdp+8aJiNTStbbUU04ZUO0dR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J9ZQpNgQ; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-555024588b1so2704360e87.1
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 11:26:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752258406; x=1752863206; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=su517mkk+oxzFqk3UP0BekUx1TUAeS3VlwMBUTxhr1Q=;
        b=J9ZQpNgQAtAbEjB0+/XpvKMHMa5y2yOfDmprEzkl0/qsPH3CfQrTAXr6Np7Xb870j9
         zREf516urqki4bA8vb9SJzJv1fRnnOG6pNnzCSL/Ff84DmLRdBY5f20VBz5/2xptMo9J
         jLPhH4OjJkuqhfVSK+AJylqH4zptq0mzbEzD1MuWtpel4evb6mn9X8Rv2rEXZzwwmY6k
         7gesmyTAqPaSCnP+KL/9s7vTUnQhuWXe/GiVa9u5dZg7C2KCrxnNi3U4KhIDXknnhOZv
         FCMT1V3WuBdMIt24NvEcNtr+tOW7qUQiVBpz7QMRFYYlb538QozqmKm3Jf0QKUHWEGMv
         gVwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752258406; x=1752863206;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=su517mkk+oxzFqk3UP0BekUx1TUAeS3VlwMBUTxhr1Q=;
        b=cDsdx75G8UvV+g6vgsb/E0hzY1fF/x2+hSS4P/5fO9ncOFarHzdWglm+00k2Ut6PSt
         KF/fwPqZ3s9tqmAren5EVWokmJOY348cqyqfkQDZAWdWf+DNSe6Zpx7XAkPx+r0oQm2Q
         FY/cGk6XuuaWRkXgdKtWSCPYsBe47XGf8Gley3FTZpsCSBKR6DG2/KwXZBPxEOnfAPZg
         XwMTAWWXKPVxCXkn7h54jQAqaqEtx2Z52nvboJdsGeCjcPTSPr779xiDigD2CJKA4v2t
         oQBNgvwFIVRpvjUrX/Xk8AWzTYAR9BCTKXN/QxjjsaIHSIszoVw4zczl5rUC+yhyXHsA
         rJgg==
X-Forwarded-Encrypted: i=1; AJvYcCXYR/7yYU81melIwwrIgY5nk/+yYC84ZxQTxAF0p9M2d5hzrF+BgaF5pRqurSphSD3WMTYpEsXDlktc@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7p8D1arV35UThkrd14R04DDXyVKb1ZsRcsafs5Pxkura43EGQ
	Lh1mpTf97SIrDZHWamAt9zw1xJaHpK39BUTyuo6aDFkpYUUyNXDFODyZNF8a63veLdCiWcWUh6m
	RRLrM0izIefGwfxjR0jAnMc9sCiu215WKyJaLT7rcRA==
X-Gm-Gg: ASbGnctHjNH7vouHEAb1i/yCDG53u8a4dWtnSzswAqo+WlLBwyVjTagkgqnbcYtBq0i
	4uDRf83cKUab4iNVDUp5kf5qU0yWFDKpibAdaDhTB3ra7arVI4uBI/l7EmoSqncdWoUPJs2+bL9
	EXhVXgv69/Km03iW7FFv1tCbiop5su+rdkaUTQIPhUgp5chOnYA6yI2/U2DjjfWXwPVrhJibtFr
	8R/0K4=
X-Google-Smtp-Source: AGHT+IG/MoMOERMcdwRe0u2MCnKNH5c6G0Ju9EQCtJSlh1jp+ka6aa2/4j15Ntd51i+P9QmOojm9ELTDBk2mPF4JmWM=
X-Received: by 2002:a05:6512:3a89:b0:553:2ee0:7728 with SMTP id
 2adb3069b0e04-55a043e9350mr1420176e87.0.1752258405544; Fri, 11 Jul 2025
 11:26:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250702-sm7635-pinctrl-v2-0-c138624b9924@fairphone.com>
In-Reply-To: <20250702-sm7635-pinctrl-v2-0-c138624b9924@fairphone.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 11 Jul 2025 20:26:34 +0200
X-Gm-Features: Ac12FXzxbq3zhEMygG1ywvm57ienmlxEOsz-4IQUAfbc1IiUJliLFPebYAlPvr8
Message-ID: <CACRpkda8+veE-qQdQf=LMFO_URiUAiFvkc2QCbJBQizqyg37Eg@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add pinctrl driver for Milos (SM7635)
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 2, 2025 at 5:56=E2=80=AFPM Luca Weiss <luca.weiss@fairphone.com=
> wrote:

> Document and add the pinctrl driver for the Milos SoC.
>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

Patches applied! Good work on this Luca.

Yours,
Linus Walleij

