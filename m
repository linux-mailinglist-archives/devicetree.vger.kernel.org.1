Return-Path: <devicetree+bounces-44514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5835585EC8A
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 00:08:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 131C5283681
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 23:08:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 531E886AFA;
	Wed, 21 Feb 2024 23:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LJ907JAM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A861B81752
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 23:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708556884; cv=none; b=KNW4U+iiIqHu1HIJQCyjXeZC3uMygQXCBbL8r7HtqUBX7o4pBh1J//Mx4XiOKWMLJCmatS3OrDf22IcwNsE1NPCLu7+qLJxMfn1JaxSikq7vvgGfNVNVLz/hPgqM4c+Z6quf9ERDB3Wt8unu4KXi862NsOZeyfdsVqe59++uzMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708556884; c=relaxed/simple;
	bh=lVVt4cd6uaVryAH57NfvJaB+/vJBBdplCM95n6hzzPI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BXD7gCSh8oaRu4cBcLdYVSbS+Hn8JjD7bwexL/lsnitub/ntLf43dY0HG8xy2xqAGHKJvdyJqJCVG0+DVGZ3VkNmt66B/mugo6wjsj7qFmH34Eb5cp0DLK2bXvGpDW6/uQMa7bEHZ6ozG5FWWwCGCd33NB7b+3Qp/s+TsHtXJ1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LJ907JAM; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-dc6d24737d7so6566991276.0
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 15:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708556881; x=1709161681; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kYBbmRXDC5OSdjJgBE1Q6+6CYsK20VTrcWQxbaA18DI=;
        b=LJ907JAM0KZ3rh+wX/0fGafmuf+VI8G8mlYpSpCEbJ3D73rwPzzznxccPb6Q3Efh/p
         4Gh9RK/mWNrHsUzncuC+Rbr7HlRc95FVleY6x1+9Cwt/e6wRD13xxLQbv/Ke/I5Z5+Wd
         tLg7ruRbFD9qaom30VkhQ0LcINRX+sfrGJjIGju7BAemEoOU7xOOrcV0+JRsjEHl7Wcd
         OJzYqY6oOZl3jOmPdHIw82a70AkyzMYufmpbkeJcJO/F12KThYvKCoBO1HBLRu+LqUnV
         i4H5Yr2V9GX8XCeRJStmk7Sg5GMzxdXtlVOUWZeovAOpZ/FR3RQJi3BaMAarqAokWni8
         rQew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708556881; x=1709161681;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kYBbmRXDC5OSdjJgBE1Q6+6CYsK20VTrcWQxbaA18DI=;
        b=rg6wQUTNdbIfDjqid10aAT0/nKcRTEkVX2tCqYu9nbFFpELpQCHNjxAvJaFcOnBPKj
         Xou1wLMtgFU/CWSBiYuzza/uPMABjTr3WsA3pr/mQViPlFcbSxsTr2L5OSI0VWKwWvI4
         rkdbMgV9FTuJVrxBsaefpLVbjHSukwWzyAQAkyDXeq9jTWKgdtPhFKSX+xiOoui6d9Nk
         2kMoY4Y00nHfaYNajuCUd6vQGEAB6BFWnPQvHE8JaSZL170a8TmCZKZJK/fSzmtXa3ws
         XRshWf5z9fZEaCjOzI5ThHf8jRUAc65QQu6J3MogR6TNapOdGivOAX/Mp8c0U2wG/33T
         zGAA==
X-Forwarded-Encrypted: i=1; AJvYcCV5eOMTS1pL6pNzWlg8+zoKGFhQ3iHJc3f8yFZ+I9w3/gMK2W/MbTjYTzUyo88vw1qphn89KySKDIFOEXwZJUiED31VWUil+Onrmg==
X-Gm-Message-State: AOJu0YwA/nwVcESSp3QpbavwC81FTeEAe0QIQTSzt08/XcpaQ5kwwlDm
	G208vdQkmsMiA6yvQPrwOPpr/xkJgPq/5iFyOjmHkW+yI1KsBDbdJZVszv5pp2HEBYOpbKI9B9W
	7v7uKN/pEEbNZf/ffrqEyTo4bjp4wzbu2DYk9aA==
X-Google-Smtp-Source: AGHT+IELSuez3wnkWzi8gUjXrk1ECFLfUvg+ZkAvG67cVdS+sTX65l5nPJGAnEdTxvcHLOGMpEqSWoalBsmdwXNDC2c=
X-Received: by 2002:a5b:f06:0:b0:dc6:8534:bb06 with SMTP id
 x6-20020a5b0f06000000b00dc68534bb06mr807288ybr.17.1708556881671; Wed, 21 Feb
 2024 15:08:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240216223245.12273-1-semen.protsenko@linaro.org> <29090d97-9118-4765-a4fd-3bbe271a39bd@linaro.org>
In-Reply-To: <29090d97-9118-4765-a4fd-3bbe271a39bd@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Wed, 21 Feb 2024 17:07:50 -0600
Message-ID: <CAPLW+4kmoCoqO=+zXbVw7VsGc-VB2At91ZnJfyTDRtVFmN4aiQ@mail.gmail.com>
Subject: Re: [PATCH 00/16] clk: samsung: Add CPU clocks for Exynos850
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Sylwester Nawrocki <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Tomasz Figa <tomasz.figa@gmail.com>, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 20, 2024 at 5:07=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 16/02/2024 23:32, Sam Protsenko wrote:
> > The series implements CPU clock support for Exynos850, adds CPU CMUs to
> > the clock driver and enables those in dts. This is the first step
> > towards cpufreq implementation.
> >
> > The breakup by patch:
> >
> >   * Patch 01: Add bindings
> >   * Patches 02..12: Prepare clk-cpu.c for Exynos850 support
> >   * Patch 13: Add Exynos850 support
> >   * Patch 14: Init PLLs to be in manual mode
> >   * Patch 15: Add CPU CMUs in Exynos850 clock driver
> >   * Patch 16: Add CPU CMUs and clocks in Exynos850 dtsi
>
> This crossed the threshold for a patch bomb, which is in general fine
> for me, but then please put v2 changelog in each patch's changelog. If
> the patch did not change, annotate it as well. It's not possible to keep
> jumping between cover letter and individual patches.
>

The above list is not a change log, I just tried to show that patches
02..12 are cleanups. I'll reword this in v2 to make it less confusing.
And as usual I'll keep the changelog for each patch separately. Thanks
for the review!

> Best regards,
> Krzysztof
>

