Return-Path: <devicetree+bounces-39051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4458084B42D
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 13:02:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 012F32880F4
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 12:02:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B4EB134733;
	Tue,  6 Feb 2024 11:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T7ckRfl7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526A6134727
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 11:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707220026; cv=none; b=EaSjTrUl8gg/SJ5GdGERZB6ZakFbi/HQHtA5xkkiuEANAfi1paA+xGJ/ZlWIgYdRqKjTGSEAcdAslAZIsnGP2ObqecjordAGseW+EyNXzkpRsbIrutn4NCgskjxXTDDs6P4upnE8OdM1lp10umu9Cr5ulkYQHEuJOly2WTRE02c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707220026; c=relaxed/simple;
	bh=LgStSMzzVGruMHl1t/Pl1KmMB+700dD4gEWkJUh5cH8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=K5DYo3AQS7JaC3dSF1I8dV2lr/E+TOIEzFkZjOIjSezj5hO6kDvxg/WPXzSMj1nzaT5ep39geHhmDDm5kC9JnAlfkO8h1HK02RFPXlYvStnEt+NIka4NJ9oHC8/G6jhn6u+7WGBwrxo058s0OQky+SYSqRTZ574twkYYWn5r21w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T7ckRfl7; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-5edfcba97e3so54539877b3.2
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 03:47:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707220023; x=1707824823; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LgStSMzzVGruMHl1t/Pl1KmMB+700dD4gEWkJUh5cH8=;
        b=T7ckRfl7+rz1Il39jNvgCpmjsYDy5v1j7Xb30fEStr+SYZulnz/LrqIup2lAEwh/dZ
         OVH05SmtkTmyInfa/6LWxNHAd7ErBCQyqETpVptwxBF2UF8Dj6lC2vA6KZiZW2eDw2xr
         AQdfxjpUPXiGYpODFJgQpyJMapJPLxmTmkDZlQdrNQWOWx7UqU8YgupQx08eO3n1ssTy
         2zrKHL+6FD44jxLVpUqGbTkTqz5+Gq8o71dUv99kdjFOjChqxH+iyZOHfjc431D8hB9j
         zGV32E0gbo6Y7yp7S9JjQizQPO70A5lYbd10fXNshH+h85HvMveExZ6Thv2e8RY/rB94
         /FPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707220023; x=1707824823;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LgStSMzzVGruMHl1t/Pl1KmMB+700dD4gEWkJUh5cH8=;
        b=ZZdzC7QDA/eqJ9L54TwxEZqGy4LQOJAwbejCRfHy02yLFp3lQWzaq7i9gXUdAknLQm
         Zlj1ltIuqGhNNY2a8OqRnps/jKya4QvjFzzuwOUsSBxxrAY3FmOXVa9mUBcBLru39N5G
         cY1HxzPpYsqnvksBlX+rXwhVm/Apy2h4FzvUXn3Cfvg/OP6CN/UkilG+W3V+1Q1A+XHR
         tbB2VFm+qKGZDIlL33kan8sAkjR0dIrb50GtG6d1eksB5oM39YkkC6HaU350XuYJy1Fk
         5Edpn5p+KCHtWcgcMPjeBrah9rnS79foKFdJXm4JUO1dnoPrFi0krfzfRdJ5Go8TiiF3
         xKpg==
X-Gm-Message-State: AOJu0YzsphJiwGb9DEU5h4S1esqm36R8c8JJgUFVn9K/GSmYqIF8OpC+
	l7s9ROfUivKQGF/wFtk8eQbNEj7v7YAYFk+2WOhepQsv1qQavovzUSH+Mcb1r/g44V056nIlPCc
	/hDJ0AFrWNVljXdbrCULvG4B1jgEtP/l2qm33dw==
X-Google-Smtp-Source: AGHT+IEfuSnFGwsVfjXpB67ixsdZ+sH5jJ3p57j+957+Y+Qu/ANlFkY0BcCK6ARwCr2ZftAxxEvyAXpHsoHwk4FNWoo=
X-Received: by 2002:a0d:c1c7:0:b0:604:57e2:d87b with SMTP id
 c190-20020a0dc1c7000000b0060457e2d87bmr1263880ywd.40.1707220023286; Tue, 06
 Feb 2024 03:47:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127232436.2632187-1-quic_gaurkash@quicinc.com> <20240127232436.2632187-2-quic_gaurkash@quicinc.com>
In-Reply-To: <20240127232436.2632187-2-quic_gaurkash@quicinc.com>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Tue, 6 Feb 2024 12:46:52 +0100
Message-ID: <CACMJSevf1hRS42oBFw7UotPk6B71uAWn9sWDdHu+PMk1zeN5=A@mail.gmail.com>
Subject: Re: [PATCH v4 01/15] ice, ufs, mmc: use blk_crypto_key for program_key
To: Gaurav Kashyap <quic_gaurkash@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org, 
	andersson@kernel.org, ebiggers@google.com, neil.armstrong@linaro.org, 
	srinivas.kandagatla@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, robh+dt@kernel.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org, kernel@quicinc.com, linux-crypto@vger.kernel.org, 
	devicetree@vger.kernel.org, quic_omprsing@quicinc.com, 
	quic_nguyenb@quicinc.com, konrad.dybcio@linaro.org, ulf.hansson@linaro.org, 
	jejb@linux.ibm.com, martin.petersen@oracle.com, mani@kernel.org, 
	davem@davemloft.net, herbert@gondor.apana.org.au
Content-Type: text/plain; charset="UTF-8"

On Sun, 28 Jan 2024 at 00:26, Gaurav Kashyap <quic_gaurkash@quicinc.com> wrote:
>
> The program key ops in the storage controller does not
> pass on the blk crypto key structure to ice, this is okay
> when wrapped keys are not supported and keys are standard
> AES XTS sizes. However, wrapped keyblobs can be of any size
> and in preparation for that, modify the ICE and storage
> controller APIs to accept blk_crypto_key.
>
> Signed-off-by: Gaurav Kashyap <quic_gaurkash@quicinc.com>
> Reviewed-by: Om Prakash Singh <quic_omprsing@quicinc.com>
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

