Return-Path: <devicetree+bounces-117417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F4B9B628F
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 13:06:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76CAD2828D3
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 12:06:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C48D51E9091;
	Wed, 30 Oct 2024 12:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lSSUQXSs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F481E8858
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 12:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730289942; cv=none; b=l5LJTNnGnebkFV0ZNf9lafnn3WYa+uh7IQhOMmE1EWHq8tCmgNchP/mw41+z3w9G4j8BGzXjRvPBXyUboX8xP1a5k1YIfBBu670wagAsZCin8JdRMovAYvv+9KMWZUh1urBPo1zr2W7543QPQFRoCT2l/4pm638njUvm891/vBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730289942; c=relaxed/simple;
	bh=i1lP8I2grHrCyE9c+t46FjNKQ7k/gGdFLb+BmlfKGdQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Tlhc9dAL7fQ/qDFpNHBlIkeCFFxbju8mzyqTN331x27vLkC+hcxkP5SiSBtCIQzpnwNromBLlpdsjMZrNoCM6M0iOM1ERRDE+jjzS43hD81690WLmnQua+EO9SEIG+Itg9yR/XwkK2tUps6rnRUplWN+kM1MjKke+MpvyHtJzqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lSSUQXSs; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7180bd5b79dso2635214a34.2
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 05:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730289936; x=1730894736; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=i1lP8I2grHrCyE9c+t46FjNKQ7k/gGdFLb+BmlfKGdQ=;
        b=lSSUQXSsaSOgZU2f3Daew00I6NL2+efCPSGiItNwWeeRzKSK6U54gb3nn52IIHOm0E
         R3EW5AxP2G06TB5+Z/ZLJ1Pdk2HrWXvtMzDQUajg+cX3/OG0VpMr2xAyL2B+645X0kZi
         U8jort3N65efeTQM7zhvjI+QbYkgrk6MSaOHx/aCWxbJarVEfdFW9oZ99juJkCGOVPNu
         H5zdJIxuCmC1K43E+EsKeo0BzclI2HP/02K0Xz6hR7lrmABQ2UFytPvGZLKbqwxtLQ1v
         ijuqhe8ZG1OR2H8ARNspiNoYX/EmvYi/YrSQMBCHkZ2/OAO6XcFI/uL7HF78LmNQkudF
         mBbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730289936; x=1730894736;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i1lP8I2grHrCyE9c+t46FjNKQ7k/gGdFLb+BmlfKGdQ=;
        b=GC2a/QyKRf1qFTYwlHb6QVRVCShiHtPOnC7lgIyFkdxJ+D9bhIT15AvIxDWkvaMe1L
         pJRocGK6/rj3+rXl0ddbcZgTfEDe2iRhtBfii1eFMICHvWcUdDlOZFubK6sJoHLgTWLL
         OeSqR/WnIBqFbC5H/fKIYUe00SzIWQ2d9EqbJh7hDYfLCAuyaIF95VleYuTzgT7zZbsN
         9z6iCiaABGOAoSkHq/jrhMZrqP34Bvg5fUBNFf4lTPklfqeH+HX/PfsGa1oKArGct59y
         R3raTKnSImsJG59uREv7L5FzHvtxJDW3mFeYQ+aP6tC5XX2Cxc63GKUlJNYhLyG+Eff5
         2jcw==
X-Forwarded-Encrypted: i=1; AJvYcCVBm0i90LG96Gr8VnQ4kV3dYj+ABJnYr3w+HqpmZB1/725+Jp2iDS8FJIjEWlD03I6r8jppgQR9d1nR@vger.kernel.org
X-Gm-Message-State: AOJu0YyKl06c+4xuL6Ywlzbqx4bZMjJmlvKE4qNuUha3DV5U20IzS7IS
	+cNJciReocz0ttBR0DuB4gcoqeDTiXG9jhIA3/KaRIabniwqwrPYCfMKd4D2x/C7oYDFExeSZy1
	6oGq/fLNsK/E1tCkVim4lykJR+YmepQt7nrHf9A==
X-Google-Smtp-Source: AGHT+IFn+twCzCSyeeaogqHqxJtlAhMOH/0ALCX8dQKWNuWWzUxem8EDdoP/Zy/JRJuXvAkQG9PBSSTzZU3c7V6LoE4=
X-Received: by 2002:a05:6830:3146:b0:718:531:c190 with SMTP id
 46e09a7af769-7186827b1abmr13608345a34.24.1730289936015; Wed, 30 Oct 2024
 05:05:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241025131442.112862-1-peter.griffin@linaro.org>
 <20241025131442.112862-2-peter.griffin@linaro.org> <74458ba4-af0f-4c41-92f5-c6c0cb79e930@linaro.org>
In-Reply-To: <74458ba4-af0f-4c41-92f5-c6c0cb79e930@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 30 Oct 2024 12:05:25 +0000
Message-ID: <CADrjBPozRnsf5a0fNchbuokUK6y00SNSqEGDJ-sHojSvFzdd2w@mail.gmail.com>
Subject: Re: [PATCH v2 01/11] scsi: ufs: exynos: Allow UFS Gear 4
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: alim.akhtar@samsung.com, James.Bottomley@hansenpartnership.com, 
	martin.petersen@oracle.com, avri.altman@wdc.com, bvanassche@acm.org, 
	krzk@kernel.org, andre.draszik@linaro.org, kernel-team@android.com, 
	willmcvicker@google.com, linux-scsi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	ebiggers@kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Tudor,

On Wed, 30 Oct 2024 at 08:04, Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>
>
>
> On 10/25/24 2:14 PM, Peter Griffin wrote:
> > UFS Gear 4 offers faster speeds, and better power usage so lets
> > enable it.
> >
> > Currently ufshcd_init_host_params() sets UFS_HS_G3 as a default,
> > so even if the device supports G4 we end up negotiating down to
> > G3.
> >
> > For SoCs like gs101 which have a UFS major controller version
> > of 3 or above advertise Gear 4. This then allows a Gear 4 link
> > on Pixel 6.
> >
> > For earlier controller versions keep the current default behaviour
> > of reporting G3.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
>
> Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>
> some nits/personal preferences below, no need to address them

As I'm re-spinning anyways I'll update it like you suggest.

Peter.

