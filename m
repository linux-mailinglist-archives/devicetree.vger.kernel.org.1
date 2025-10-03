Return-Path: <devicetree+bounces-223522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8188DBB67E7
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 12:55:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0E2AC4E1EC0
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 10:55:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F28BB2EACF9;
	Fri,  3 Oct 2025 10:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Dt+2do/4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F78F2EAB88
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 10:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759488908; cv=none; b=oCCoJ8y0L4/3VTzZXdw0r8hoKWFKGApLZt14mGRSuQBtlQPnRR9TdWR/Ae+putWkNHQE7/RrMXKKQw9UCyu5vHc84J3eepErHagRn8At+5w8W8She11MHKlzTtk+VKKqwNKoKIX3QuCFE9YmLfBrloTZIGyn+qsALu4s6LIRKcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759488908; c=relaxed/simple;
	bh=cAECDx1sSxxHnbecn6VuOU03juzMj+AYiQE0DPv5YUE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dUcpx1qsO4/TkiQEluaKWf5e7ZjnkESWJ6rtIMd3xRTG9xxiSbVXvJgmmCrnh6A0Wxi9Dz/aY8hXxbettJ3LHJ5wZVBZeU9/AicUuXA5qO+LQ6zDsRYZfM/iOU1uOpLXjrtwvWthpxR6N7otbo39UgckLTU/BjZyFL01WlfNemg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Dt+2do/4; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-57933d3e498so2800100e87.3
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 03:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1759488905; x=1760093705; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cAECDx1sSxxHnbecn6VuOU03juzMj+AYiQE0DPv5YUE=;
        b=Dt+2do/46SGcsGlqutC2Q/beezSoVs9eXPKN5p4FKJxnCrCkMHXrFEv1Pa0koWb1E0
         E3ylkTaRcOxyh6BZxHlh+rP9wzmHFm1G7KxB2fVhYuaG6x589AbsxP6vxrSvRrS5vR3x
         oh+kBAzL3k6rz1y8rRZi7VMcbKuVRc1z+QRe+tJJLeZqIC9jEIj7LCWdNXNjAjOzm/XE
         B48aP0YzfnBskXW5Xy5JNslpK4lkwWyMtGGcWHydOubqHA2wHw/iGjFPnS7pZMs01azt
         Y3V8rr5hGGRgUITB7xI4DWDkwDg/eR1PARpPsg1VkjP+gdv+dyCsyGIPFtgoclSivWzQ
         pDbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759488905; x=1760093705;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cAECDx1sSxxHnbecn6VuOU03juzMj+AYiQE0DPv5YUE=;
        b=ePh147u2Uf+XYXWy9muXlaHGmGdYaCY1fOhNFSxbsygyHM2VbjB8QactLzQOiirwX2
         bLy1r/7syEmzX16JDNdug0YtAJbHoWgKw1AWVOnYb822hlHVP+9N6KXy6Qeytc0sYNW9
         eYm/EggFbn3qMcUiNcdE1KZCJQ9CB3fSt5de0dgCse8c+iJICUO0nVZpcvo/F6BvBbUl
         kLsz/LnsW7UR7wGlSKKJVQblV3ub2kfQ1NNykUoXTwK4JSYfKBC82m3jG+Lu4FZxfn7H
         PqE7be+NLq4j/ABKP+i0wJDrbW+KqhUq9OClwvSZzMJhdn3FldTbJmlM4g5NBNrSkY5s
         eILQ==
X-Forwarded-Encrypted: i=1; AJvYcCXO08HbGWYiKMSG1K1HM88NqI43vTM1/nVSvOJTYQl/jWjxUZttXB/zoQatA+5uTCIqw8xfAWJjhEkS@vger.kernel.org
X-Gm-Message-State: AOJu0YwpehMc9jK6tgOHy1PVYMJcyy/xDVZKuWhRjDKv9W5utAm/CyjL
	L7QSKhNPm+sMFwFuMrlmTyyU1SCrvhhKCgXEC/zIKCOp9efvyytM+PsKViYZB2rsBcg6YZJ0OZz
	pWg4etWykmcsPu2wH+oBPRX6nJ6DU9W8IL3PUm+gcjJUrlTIdsCndomE=
X-Gm-Gg: ASbGnctJoFnU0/pZQ0RpwbhPWUs7G/nhhTm/iuu6mAq5Kx2xxnpdtT/5GFSp12GqVDM
	qa6oskWjR64ZgceXcNiJd3w+7NNpbLnDDxkywhGn3/YnTSc6jNgvFK8+3C8mZKxUbfDPj/Ouv3E
	stfr8CikDFel6o34T3Yfk5UlnpjucwhWEuZQR9wcWMhziogEx/+ZwQ0ZYe9NtChw2jZwE+clIfG
	3ZpDTaxN6og/k/t0qGz8qCO6VsUpLnw8o7ja0/Wu5d8vrIWybOqYjXyKlSfEA==
X-Google-Smtp-Source: AGHT+IGo1Glv8ZcBFFkRNiPBtLkYhJhSKCGq1mD+OwgNLadjXj8hOaQai5wx3gNPSSCbTSSPaFVxfKegSNtXTCiWc44=
X-Received: by 2002:a05:6512:b96:b0:57d:8870:e96a with SMTP id
 2adb3069b0e04-58cbc2a5121mr956262e87.43.1759488904866; Fri, 03 Oct 2025
 03:55:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250924-knp-tlmm-v1-0-acabb59ae48c@oss.qualcomm.com> <20250924-knp-tlmm-v1-2-acabb59ae48c@oss.qualcomm.com>
In-Reply-To: <20250924-knp-tlmm-v1-2-acabb59ae48c@oss.qualcomm.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 3 Oct 2025 12:54:52 +0200
X-Gm-Features: AS18NWD5PiAgE6Z0yAwhzxIEi8uvGvV7o02AtdVmxa4WxKd4BMM2EBFXwJajs9U
Message-ID: <CAMRc=MdaT-ZSep-VYBUvS29XPje2FF4EvCfuUrXUUE1+8bGTaQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: qcom: add the tlmm driver for Kaanapali platforms
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com, 
	trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 25, 2025 at 1:18=E2=80=AFAM Jingyi Wang
<jingyi.wang@oss.qualcomm.com> wrote:
>
> Add support for Kaanapali TLMM configuration and control via the pinctrl
> framework.
>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

