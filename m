Return-Path: <devicetree+bounces-221433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB01B9F986
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:35:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A1673878EB
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 13:35:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A70542620F5;
	Thu, 25 Sep 2025 13:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E+owLuDL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F8C261596
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758807301; cv=none; b=EBvEhWpffJfzTi9SYmmDXyE4GDYnEQmoPio3ubOEm/EwkY9HT641Nwc5GDAYueXSruq218TvcRKz7f9xzVnR+LgjYmbocyy/Xoe6+kff0vWhhlI+ePK/ybZi16LFBymvKMndL0nPIBDgSHwApMahxaMmZScIlgvC4IDdhsp8JIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758807301; c=relaxed/simple;
	bh=YDVkNcZQalJ2j010y9V0+C5w7+uerTdqWyV+aIv2oSE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pQ5Oum/gDzazzaPQOfP2Q/6WdGW2vTNDRlXBvrJQnk2R1ISxo715IQAeoNu57tQDpb7EQaVvLsdaMnDpewmPRdXQG2WWxdKMFi/+RUp/vvP3dvIQaG0Ey2n5hILvMmqTiaeRXsCrRZzbDXR/kWh3Qfx59KCUYrRQMnq30YuDIdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E+owLuDL; arc=none smtp.client-ip=74.125.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-6352ba3c35cso375004d50.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758807299; x=1759412099; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BtNjzQKudYD0ky97v1743lPf/WrnfS9KJCemG7a+/I0=;
        b=E+owLuDLYt4n1hzwq57nBBJ8yA0AlfUKkNZEFQHc09LedRYkZtyTwMec/67yXstYf1
         3Me1GFSvw7XqEf1n/I0rwC39f/TmdwoTaGy/Q9ANGAyknZLL+LzBvCvipuIeUUdZsoTA
         v3KqJx4O9P+004pW9tK4QuB4Ze6DF0lVi4a/ZAJi/1cXio62UYexRjOgihOLL47GfiUY
         A1QShO/ImHlRxq9eAYbYqLxe2pcOusl9i9qK5IM2Ix7Y8sT7d1MtN3kdUarMNDw2oNiF
         a3VxvfhMgkS4D0GTS4JjV5RpnnebLHkbmAig7F1PPCqyhdOax2Jj3CpI8IRUugX75Bgq
         o9MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758807299; x=1759412099;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BtNjzQKudYD0ky97v1743lPf/WrnfS9KJCemG7a+/I0=;
        b=do7OkbGtGD+VIziLD+uO/LYqKWEIvpXrjoV7gF3HYlodwDwzyk1uunkvfd/Xw4ntDw
         u60st48yl3JmaWYH+RK/ui4bGOmzD7n031hStY5uBOkhR1vNPjewN4fYOfWNoiuHMzgM
         g7a5Xc/WER/52vbtgLhxmYDtjRwD8LD0VePiKz5HgTyIZ8iSItbkS7k6vdJd5vtc0MuP
         lEka0m3HXNHnT4ljLrzHuuBgNBY8CzQe9e8OC2VQm2br1aNBL20ZFxBHMfLPyT1uMeY+
         EdKbiDU7lstPEf2phSqgHLB1yys12NUKQniNNgjxiFpqGwQ1GEttwsp8nco+MsvT9rTw
         Dv9w==
X-Forwarded-Encrypted: i=1; AJvYcCWHLLjhapwnPcfzCpS/205t/RBChB0YeQFmn+0XbLCLsxQIhkxT9nPD3zwZNgRSIh71XikR/vDa+BVN@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj2dFJgdJcXKxi/mwwYVGMdNcMEhu4nzPTOb1LbBpv5+J2dshc
	usWML6ziCjjew76aOdoKkkhzl/fBh22UuDC8kkHaMrQZdaV/kHsikQCdDiUkn587TGk3Np3rMms
	xJk8bBAhvesF6GrDtE0i8mh0sSvyfLYXjU/UbSYRIDQ==
X-Gm-Gg: ASbGnctgneNDP5KnK69ifHQlHAMP1p0HlQqNLeSzyWLawpfejKsyOum7Bx1+j2gtv8V
	UOTs1ttw4EfWlQCzvFskAR6nz/x+W8tHvsqzQBZZFJg1/+y8mghNcxd+SKZ8X4BYTaf6g6W0fGP
	1bnjMCdJvEssEyxH0nkS3wOtjlzKfy6K+c3J3yVHT0sfR9toH37gcHqAh5t7hiCt2pkduB0PMCS
	71d+NJY
X-Google-Smtp-Source: AGHT+IGimO2Q23ZQRuh/31hfKH0M0gM5VQ+Kb4vJFyOlHv/p/Vvr462F0FI6JqMOIO0OkAJ4FQSVqaMbzzoyb5VvJmI=
X-Received: by 2002:a05:690e:240d:b0:636:d335:2515 with SMTP id
 956f58d0204a3-636d335263emr142033d50.3.1758807298695; Thu, 25 Sep 2025
 06:34:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925090412.2068216-1-yangzh0906@thundersoft.com> <20250925121155.2401934-1-yangzh0906@thundersoft.com>
In-Reply-To: <20250925121155.2401934-1-yangzh0906@thundersoft.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 25 Sep 2025 15:34:22 +0200
X-Gm-Features: AS18NWBTeJE3De2V6Q2_nyOlyupwgaA4ybsnxBjHtD7xymMmZJcjw6ksT3sbAGs
Message-ID: <CAPDyKFp3onTDGgygvOrK-G40w4mSx4S5=PbdZ+26hsQ+nPVRSA@mail.gmail.com>
Subject: Re: [PATCH 0/9] arm64: introduce Black Sesame Technologies C1200 SoC
 and CDCU1.0 board
To: Albert Yang <yangzh0906@thundersoft.com>
Cc: arnd@arndb.de, adrian.hunter@intel.com, bst-upstream@bstai.top, 
	catalin.marinas@arm.com, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	gordon.ge@bst.ai, krzk+dt@kernel.org, krzysztof.kozlowski@linaro.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org, robh@kernel.org, will@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 25 Sept 2025 at 14:12, Albert Yang <yangzh0906@thundersoft.com> wro=
te:
>
> On Thu, Sep 25, 2025 at 05:03:57PM +0800, Albert Yang wrote:Subject: Re: =
[PATCH] splitting SoC and MMC parts
>
> Hi Arnd,
>
> I may have missed an important detail in my previous note. If I split
> out the MMC-related patches and submit only the SoC parts first, I
> cannot validate the SoC on real hardware: both the kernel and the root
> filesystem live on the MMC device. Without the MMC stack (DT bindings
> and the controller driver), the board does not boot to userspace, so I
> cannot properly verify the SoC/DT changes in isolation.

At least to me, I would not consider that a problem. As long as you
can test the pieces together "manually" that's fine, I think.

I mean, the platform was not supported in the first place, so it's not
like we would be introducing a regression - or break something, right?

>
> Would you prefer that I:
> - keep the MMC pieces in the same series for initial bring-up; or
> - validate everything locally, then send only the SoC/DT parts first and
>   follow up with the MMC binding/driver as a separate series?
>
> I=E2=80=99m not entirely sure which approach best matches the normal work=
flow,
> so your guidance would be appreciated. I can proceed whichever way you
> think is most appropriate.

I think doing things in parallel would be the best/fastest way
forward. Validating locally and sending the pieces upstream to
different subsystems.

>
> Thanks for the review and suggestions.
>
> Best regards,
> Albert

Kind regards
Uffe

