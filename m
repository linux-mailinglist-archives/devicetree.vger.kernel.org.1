Return-Path: <devicetree+bounces-196888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7B5B077E1
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 16:22:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 11258581A53
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 14:22:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97B0422127C;
	Wed, 16 Jul 2025 14:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="C0weJCt3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229AC19CC37
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 14:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752675715; cv=none; b=ePTDKYaIKZrgm0yeeQRjw2H1xJfD+jNWYVltG7NhJ/fxSx12IFqlgX3q/mCPsEZWA/qUWEZDgQudM+3mv8nGE7LqvLY47MFoL5jKfXNER463hnrs8lmuSg2Fyx4f7K2mLUec3U+UJ3/+Zk+t1FgH/clIig2C74OGN484974hJ4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752675715; c=relaxed/simple;
	bh=b5WU0cXHr7v+e7BT5Ibw9679ejdgncNvKBhfc/UOLmY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fc7i4tGIgWHGxzFCv3oCPTm1+woZFZF8Qm4Nxc+M+KZmXtD+Al7xRBlI1Melhugv/9Ah+qqAPviaMJdeGFV237/yF7HEvkn8R9/CckfkfPqeC8V6aGj61lGpRS/gaBvAUbiBqo7L3/uVGMwEeWHk8SFUmstTwJ0bJH7ckyWNn7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=C0weJCt3; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-742c3d06de3so7459221b3a.0
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 07:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1752675708; x=1753280508; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iRgANhiZNBnDfTk3Cs6H1fGZwr7ZYCqusPX7KWdZOuI=;
        b=C0weJCt38dB9cVd2YJeazsDLnFdjy5rfq45drAFRjOg3MuccYU9xxtnFmLjTSLKXKD
         NpO6ifW5adadc1cZOFNZQmCj0doY3XO+UBQe59vgfiQEmEQOHNjdvrTBNrZpXJgz1quq
         VaQxMAy/pAfochemRJZbFgBfov5OHJJ+wmjCs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752675708; x=1753280508;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iRgANhiZNBnDfTk3Cs6H1fGZwr7ZYCqusPX7KWdZOuI=;
        b=MyKjVSnnFna1c+7t5W5go42lWYydePsG4Wur08THQxAWHLIHZmd6zLN4l9Jks9CP2j
         aG1gdl3os6dnhytiRtivsei4QWCncXmZw/U6b4HdT8fCVeEGyrOSM2LnZIdOv8CTlLns
         RLhi1DbIsTTDAAVEn3ggG0Cm8E0Sd1RZWnVxd98M0ktroeZ7dJdz+lu7us515neLy/C2
         U9cqE2YPmNvKKTmV5kjKk6VaAlc6H/z00Y/OcQ96naCrV4tCT0phabBRwv42MrkPhuxI
         GGDvOUvSSGM6CKKXGUvFEZbLarxx/PwnrMVDB5Z6JbFJI/7NYCfhYIP15gSqdZhhKa29
         tsJA==
X-Forwarded-Encrypted: i=1; AJvYcCWyefTUOPBnbht06Xd2q2ibYN+2iNf9YegsTn2DaXJ3c91okeNOksc+DiKEnTJ3QHHHNUqB6q6ZCC6S@vger.kernel.org
X-Gm-Message-State: AOJu0YwnocGJvoripj+KQFDasX2hOYRNoaS8mNI6CQMOwmKZq0Q+RRF7
	y1iElxDcPPyAH2S3TzI5bJZc9gzqTsyAVRuTDI5SKLC24vrJU3jDPm84+yuK69uqeJ5Amz9WjHm
	vp9E=
X-Gm-Gg: ASbGncsKPDp/UC75e29OS5guke1AU3q5n6XhyKluX3OAkV0EQ6ben/vp/hiVVFAkEfz
	kVRBNCtV2Y5236Ib7HWuHhRJDwnmzJ4tXDGs9mpj100hzx8eokWEWRfajfQtRTDendsk154psXK
	lwcbwqmeOPLyYiHoxKGkfvN3+uW7DNyTbVYEhd/sAnSRXV3UTr1WyRXRJWvnPrJdxKpiFQz2v9E
	VS4UOBCN5VaT0/s9IXZzCZXJSth40mLNKxUDzVSll65DNupuAlmn9t0+kM3+6/5Vl1k2lSDU7yz
	WE+oMpDkvepPwAWt/3h3iT6/Zsjsy8W/jCcKiupLaXp5vPfPbFW1dPJkk+kDW0j6gT2khW3BYu5
	iM81dlIlYiPoKMHTZMxBHN/4k2qkXyCN8W4aWRjtZxQlTZCt8TZr1fbvuIDbbxQ==
X-Google-Smtp-Source: AGHT+IHOxoJuXvvXES6u0zGO0tYD3iPhsuJVNKBb1iMk3zrRKc9q0f2VRreBA8rJATT+5VrZ3oFFBw==
X-Received: by 2002:a05:6a00:23d6:b0:748:33f3:8da8 with SMTP id d2e1a72fcca58-7572267d51dmr3186312b3a.5.1752675708333;
        Wed, 16 Jul 2025 07:21:48 -0700 (PDT)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com. [209.85.216.51])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9e07585sm14732017b3a.65.2025.07.16.07.21.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jul 2025 07:21:46 -0700 (PDT)
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-3135f3511bcso5263630a91.0
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 07:21:46 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWZjCeY/bJ+ggwmjuSjOEZptbjEOvf9LrqbW9c1b1nuDjxtdeX+VuwxRp4smccn85FLonMfgz5GPOpk@vger.kernel.org
X-Received: by 2002:a17:90a:d2c8:b0:312:1c83:58f7 with SMTP id
 98e67ed59e1d1-31c9f2e1b97mr3914439a91.0.1752675705212; Wed, 16 Jul 2025
 07:21:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250716-topic-goodnight_cheza-v2-0-6fa8d3261813@oss.qualcomm.com>
 <20250716-topic-goodnight_cheza-v2-1-6fa8d3261813@oss.qualcomm.com>
In-Reply-To: <20250716-topic-goodnight_cheza-v2-1-6fa8d3261813@oss.qualcomm.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 16 Jul 2025 07:21:32 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wn4C-cs1y3obzxdtdYcSM44m=AJVnb+Pn3kaaos2ng5Q@mail.gmail.com>
X-Gm-Features: Ac12FXw3qS1FXk204atE8vfiTTzOmf0rWggWMgrUTIEYVKUJNOkL9pqvkeQi0pU
Message-ID: <CAD=FV=Wn4C-cs1y3obzxdtdYcSM44m=AJVnb+Pn3kaaos2ng5Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] arm64: dts: qcom: Remove sdm845-cheza boards
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Rob Clark <robin.clark@oss.qualcomm.com>, linux-arm-kernel@lists.infradead.org, 
	iommu@lists.linux.dev, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 16, 2025 at 3:16=E2=80=AFAM 'Konrad Dybcio' via
cros-qcom-dts-watchers <cros-qcom-dts-watchers@chromium.org> wrote:
>
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> Cheza was a prototype board, used mainly by the ChromeOS folks, whose
> former efforts on making linux-arm-msm better we greatly appreciate.
>
> There are close to zero known-working devices at this point in time
> (see the link below) and it was never productized.
>
> Remove it to ease maintenance burden.
>
> Link: https://lore.kernel.org/linux-arm-msm/5567e441-055d-443a-b117-ec16b=
53dc059@oss.qualcomm.com/
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile            |    3 -
>  arch/arm64/boot/dts/qcom/sdm845-cheza-r1.dts |  238 -----
>  arch/arm64/boot/dts/qcom/sdm845-cheza-r2.dts |  238 -----
>  arch/arm64/boot/dts/qcom/sdm845-cheza-r3.dts |  174 ----
>  arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi   | 1330 --------------------=
------
>  5 files changed, 1983 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

