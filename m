Return-Path: <devicetree+bounces-211937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D998B415B5
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 08:58:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3923F6800A2
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 06:58:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F12C92D8DDB;
	Wed,  3 Sep 2025 06:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BVxBt29G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAC12D6624
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 06:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756882719; cv=none; b=eqnQGFXIvk2MEvQwdBSLCvx3ToeN1hcbtKDhbterAlAH5DD9j7LnN+FwcSiU6ZiA2d+6ciwMxkI2iDiAUrEeVghbEJtgzYcPM2ReW/jqFy5VcjxsErnwT8ZFvgUrs1MfIFaUyVOUS6bA1cm9jHx5Za35zwQ9fDCcwpFvCIgZiX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756882719; c=relaxed/simple;
	bh=Zvbg028o924LlAp46GQB2tjDgAbUJlME1N2hULgcBJ4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QSTIuTc7rCqwBnawQP0ACn0Vi4QMTqdd0VT/kQxNoEQ3k9ESQbfP+lm9sNljmv8MdvsLcbkTDQt4soG/u3RbN+gL/TeFryMyfg7XE6jmm/dM1vrAq23JNozO2gF7dVmGPl5xIY88IP0kjGorbK7OEDN48i82wTWMr/gxhokNPHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BVxBt29G; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-55f6ad5146eso3743628e87.0
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 23:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756882716; x=1757487516; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zvbg028o924LlAp46GQB2tjDgAbUJlME1N2hULgcBJ4=;
        b=BVxBt29GXSiFBaHseqW8DOAmQQ0xtH1KcZsfrb7b+zpBNY13JQYGE5Wh0GdnPqAR/X
         asEymHSrfSX157lvVaSWAJNn2KXA6F3p+6F9NAoyWDyFQVJfQEGVjjdHR6hwG60FCKx1
         aJQGOFjIrgs/i18oS8rqntD0v0/VEsHLDbtwwTvLrRp3ygw45yrdgzbc6G+u588y6i62
         VM9G7CQ1BSmQGFA28TXfFIyOrcZrZWwVy60qCLqY7B4aiNf0gfrU1TQzYd2ZiKoxKFDr
         ibqieOcSLpbjRGTIuh9GjvIcpLh6Geuj0sWZmJansQykytMeyX3j5KVr3kVQh3DGyE71
         gdAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756882716; x=1757487516;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zvbg028o924LlAp46GQB2tjDgAbUJlME1N2hULgcBJ4=;
        b=wP4VTYMXNVBCQaq1j8MPkhkfQtGrXJ8caUghEhVfaE+eVsTbLTn0x4p6G+HAyAbJ6Z
         GLPKs5kpNmGMZhyfkk48KG6haOT5qc/A9G2CYlvgIjcSaAX2n93/RpSg6IzlNujXCWly
         jn+C9WdZgSDcG+IsjUpMEHVRUWMfNY4gFVGbhEtghe0vOj7DM4+b+ppj11D6LS5I/HIX
         nZPeDNU/xbBWnPqkOTE6AnmQ4gdCF5e+6UgxDB9bgbf+yJ0Mt+1PFWD5YnKD4JaeFlkH
         SRSFLKiaxobnrytKxz9o5Wd9GsFka4ed4K/sjuBulpDOK6uXjUWiGEWTrs8jrfpRGKJZ
         uwQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXaW/P8QxvP8FvWahVbpeKirDSN6E4oBm4uYQWvW/cFs0RlsNchsZmp8gSAGLfSTc9p6GkB0RjKsJg5@vger.kernel.org
X-Gm-Message-State: AOJu0YzkfiKiKbuXz306AW9IROFLeoUZfPCd6ulAUcZYhVOWdDpEdFs/
	u2bnD2b5hcC2ThOFuZSjGKeAsoMBI1jGsrIYwKMBar3S+7HAe73CbL2RYv/IJYu9E20Mn5bJrm7
	ZK/qoq1fVKQCXX9ZqgRvbo5MO/KFfalokDaBi9WkFdA==
X-Gm-Gg: ASbGncsbcXopZWuAqxxVDj+LI8tDKx7ciLkzeLs6aNqy/rtqGe0Xcudfa/JjF+Yx1/l
	ZKZRqvUWpoK5dRESHmMfKq94ZYAn2Bn5vBkIBRhyD4/atIRHBd2F1aW9Ft1t4NwPDCHY1Z/C+DN
	3z1FPAS72Sj34/NFJzmz0K42ksgjHmNMsB3Zu5NmoO1ryFtY1oJWU1x+fdX/aFpulqX1ImpfHCa
	ZIeoE5dwqZYPQ3WRg==
X-Google-Smtp-Source: AGHT+IH3GxfscI6GGSr/NNb7LHY9u9DqMXt7p2udpQ/Pdohy0CbQd0xJDDE+ctimHiSeoPF/quwYh4dzc17DcEr2yUM=
X-Received: by 2002:a05:6512:6702:b0:55f:486b:7e5b with SMTP id
 2adb3069b0e04-55f70995c72mr3489756e87.41.1756882716285; Tue, 02 Sep 2025
 23:58:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1756372805.git.andrea.porta@suse.com>
In-Reply-To: <cover.1756372805.git.andrea.porta@suse.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 Sep 2025 08:58:25 +0200
X-Gm-Features: Ac12FXw-cperMlNMDgWs1JD1q73qBaU6s0VdFIuvSNEdtJCo3HZmhANsMkTdUts
Message-ID: <CACRpkdb8fFvgyWPAaP6AumwHUYhnvc7BXX0V5kwO4sts6zSGUA@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] Add pin control driver for BCM2712 SoC
To: Andrea della Porta <andrea.porta@suse.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	florian.fainelli@broadcom.com, wahrenst@gmx.net, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, iivanov@suse.de, 
	svarbanov@suse.de, mbrugger@suse.com, 
	Jonathan Bell <jonathan@raspberrypi.com>, Phil Elwell <phil@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 28, 2025 at 2:45=E2=80=AFPM Andrea della Porta
<andrea.porta@suse.com> wrote:

> The following patches add a pin control driver for the BCM2712 SoC.

I have merged the prerequisites providing .function_is_gpio(),
do you want to do any last minute changes or shall I just apply
the v4 version and fix up anything minor in the process?

Yours,
Linus Walleij

