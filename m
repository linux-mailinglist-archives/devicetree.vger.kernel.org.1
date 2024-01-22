Return-Path: <devicetree+bounces-33724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5937183622C
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 12:42:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C5061C24AEE
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:42:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 997063AC2D;
	Mon, 22 Jan 2024 11:35:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x9zFhEFR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E8E3B196
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 11:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705923336; cv=none; b=K1c8k3m7NUDLJOHq/puY12rzw/8RulkVd+lkEGwDW+fLJXOWGcr7RH3nBtpJ6XPEvWnX/vADDH3yjMGDxSpHyOU+EWYWksPWIMN/qTg2Qh5KGHRKgN613QVDMlN4JDCfE9WWc3uHjYLLvUO/ROYnjlqmoXFy8UMfOS13NFctd7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705923336; c=relaxed/simple;
	bh=MKhp81vARlwnJymH/8tghIShD/bDEWbnCKTlx0FV08M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PifJGZZSmStTv0Fq9yozcwoW6uxpECunLf0U5sBvXA0xy3OQXv/Lvtq8amzeQotRTqrTpKFBNMS0WGFN7UazROHBY3kUucIo9Q374nMlOav+3UXMfm2GrcaNMTh+9iCZ27UKN7mr6JAeOlO7sN0W4myTqlvRZK1zy6CfNyDSEoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x9zFhEFR; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-68687ff4038so9155176d6.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 03:35:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705923334; x=1706528134; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Zp69NjIciMowFkuRsLGhE3n0Q0pkwwaucBTFCSL5onM=;
        b=x9zFhEFROzvkm4Ru5Gq13L0nJXA3FyGCSifSUNwwzeKxL1CE0aPaJIIpICDzIuB/hO
         whqIU4Mn2Wt6/ug5QsG/TYXHaA34+SWf/gJ9oHzUf5+V2Z+SkSTEBBfcH84ToxFudQ3I
         E7fNVnwm+6Aa5qNjIixW/eWiPklIHOEEbPYWIoY21nrtbBX53fdkoTST3PTQoh3k2X/r
         eSj994rm94QIYd86EYFw3Bps40KfGrodioWbegUtzH2uP4sMQWoRgSmkvggRhmZk9jiW
         EaUjxWPHeyQhDwKg/VOOd7oqCOgAaKXM5OvWn8Yb9zN8Yaxp3kIBBFXN3O5VRoHi96Hv
         qp/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705923334; x=1706528134;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zp69NjIciMowFkuRsLGhE3n0Q0pkwwaucBTFCSL5onM=;
        b=KGl1T4VIDfqztjUhmRTcMtlKEMAHuZ78e9Ktqot8g3opHbsAYuVBCgkuvrDhiCQoL5
         yAYYzbP8qa8Z44Rl0/M+L/FZiAcQTyTzbm95n8zp04gw4fGbZ0W3IHz4dYH9SvSoxH5M
         F8y1PWNTKGbV20KQEayUM31cWvLKXfa4XQi21nOcvcnsG31cz0qYpA8Wr9alZBUpJ3EY
         uBLCoFiAyqc4leWRalXchJxo3wAf9jJeu+5eH80nMqe3w9LLC33E/bNmSn5GHHePxeQB
         mvQ/g2Uu0Ain4p6lyZtRevMYMMPua69cUMCksQ8gWaMXOb2k6Bu2Q9M+Q9qfzy9k7Ywp
         Ga1A==
X-Gm-Message-State: AOJu0YzidHT8FEbe39sfw8xUPTMGDraSP6yEHMsQJ3r+UgL//njzCNxB
	0PvqoLWbPZQT0xvRzgASzPp57hX3rvGy9/TrLRB68kCjDd7I2H0LBgHF6KfZqxyQ9SurlfP542P
	aNOFxrGkm8Z/EVcWTZVgLNIwYEI5eew1Oza78NQ==
X-Google-Smtp-Source: AGHT+IFfbt1twZUvmT8z7VGChIkCgPKQHHxqBGrS63BoCbyR/vAH+owtPtC2Qv6lTuo0zS3m2FS7umRwUXkd5pMbv8Q=
X-Received: by 2002:ad4:5baa:0:b0:686:94cf:d742 with SMTP id
 10-20020ad45baa000000b0068694cfd742mr792478qvq.122.1705923333904; Mon, 22 Jan
 2024 03:35:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231222165355.1462740-1-peter.griffin@linaro.org>
 <20231222165355.1462740-2-peter.griffin@linaro.org> <4cc6df4c-504c-499f-be83-3b40d1ee6240@linaro.org>
 <CADrjBPo6YqxDAKUe629Z3e0MtmEgyTqEzVLLc1bZ8xJe_dw5SQ@mail.gmail.com> <f4901720-9df8-4433-976a-47d60da49f69@linaro.org>
In-Reply-To: <f4901720-9df8-4433-976a-47d60da49f69@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 22 Jan 2024 11:35:20 +0000
Message-ID: <CADrjBPrPjkiPCxLj2D4YVXxGuSinWtzQO0CkDM5-5scd_Nx5ng@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: timer: exynos4210-mct: Add
 google,gs101-mct compatible
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	daniel.lezcano@linaro.org, tglx@linutronix.de, conor+dt@kernel.org, 
	alim.akhtar@samsung.com, s.nawrocki@samsung.com, tomasz.figa@gmail.com, 
	cw00.choi@samsung.com, mturquette@baylibre.com, sboyd@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel-team@android.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	semen.protsenko@linaro.org, saravanak@google.com, willmcvicker@google.com
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

On Mon, 22 Jan 2024 at 11:21, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 22/01/2024 12:19, Peter Griffin wrote:
> > Hi Krzysztof,
> >
> > On Mon, 22 Jan 2024 at 11:00, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 22/12/2023 17:53, Peter Griffin wrote:
> >>> Add dedicated google,gs101-mct compatible to the dt-schema for
> >>> representing mct timer of the Google Tensor gs101 SoC.
> >>>
> >>> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> >>> ---
> >>>  .../devicetree/bindings/timer/samsung,exynos4210-mct.yaml       | 2 ++
> >>>  1 file changed, 2 insertions(+)
> >>>
> >>
> >> I applied remaining two patches. Let me know if I should grab this.
> >
> > If you have applied
> >   clk: samsung: gs101: register cmu_misc clocks early
> >   arm64: dts: exynos: gs101: define Multi Core Timer (MCT) node
> >
> > then if you can also take this one that would be great.
>
> I know that you want it, but what I meant:
> If Daniel acks it or if Daniel does not take it in some reasonable time,
> ping me. Reasonable time starts from rc1 :)

Right I see, thanks :)

Peter.

