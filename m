Return-Path: <devicetree+bounces-196892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF24B0780B
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 16:28:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1F8AF7B434A
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 14:27:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DF9F23E34C;
	Wed, 16 Jul 2025 14:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="iF2k/ckZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E7572606
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 14:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752676124; cv=none; b=QHhllh+mndMw20KNwhwiRv98nO6LOGZYO1wtQU6We93jFnSx136dcMMhBEzNoyqSAMjlB0I/5b3w7GY8SE5zyBxYrF73guP9zlcL3L296amwt9S7zMUnX1BYZtEbxkukVnvUo5Yuqd/VX8EVhm4Dj9fz3bEvmtLC3yDAnic9xWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752676124; c=relaxed/simple;
	bh=t9cGAC1V8k6SxfXrsLQjmHsOU+fuaxnp8/UHtdTovTs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mjNDzVJKbIlgBviFnKPWCqsKZrSoXQjW7+KjMKpYfQMtqDtSMJ5Dk3fF47wQ47lIHw4P65Ai+ZnQSz1qBHoPYzIpPEawme91RjnVpkb9RLOQhSuGMK+mSo6HW7uQjWS05YkScW+1T3/HP8GySVkHIWzcYwxuzHvPbfmN+zYv3Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=iF2k/ckZ; arc=none smtp.client-ip=209.85.166.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-il1-f169.google.com with SMTP id e9e14a558f8ab-3e28058c18cso11217855ab.0
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 07:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1752676121; x=1753280921; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ptfKV/lWd5XKyT6rmwDogz+72ly7gZepKQSMRpdWixE=;
        b=iF2k/ckZEB+tjpOOlk/7aUzOrF5tqqpKjDgfSr/jlVVsJ5gdDlsR585A7BzsFIrpnQ
         oX6l2pTrmNXhWli1UavYxNXM/AdU8TOyMZeyv8JOtXVpe9T5PIP2NaZb9RlM/2HQ8HSL
         vINwCsN6XyVSOjwFpYr/oEWcNoeWZZjgY4TUY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752676121; x=1753280921;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ptfKV/lWd5XKyT6rmwDogz+72ly7gZepKQSMRpdWixE=;
        b=WZlYedjSe4MQ8qqZ/MxL73Fjv/owKND16396/+UcFvmq4P7IWl+JY9Y+gi6yyFsblu
         b8zg/sfkd3OyIlIxJsX11gSYcbN1sfZN0ygKkly93AhJFGjpWrw3woMzoPI9qRSnJt8k
         2ayXJO1ugUPoPkgK/3MzlOwYKoUCBFsTsKZhQUiC0N4qwnpw4MlNLYU4jpwigMQ9OEbg
         NjMfOfeieOvye4l+wnOIJj9NHfwVYkMRnwi2ShnHxeTilj6wkrj1d1zmUJnpuEAPeIwL
         +0JAEbjdBVQqW+oClGK+Rzoil2+lcJG7Vg4CkFLPwM3MbM4p6oTtRt+3eZHXVGSELjcR
         o09g==
X-Forwarded-Encrypted: i=1; AJvYcCXA4bUWWF2sJeUe/E7w2LD6wh0dDb0/EVp0MTGBom3kUssfMKBOCYdrwzQFklVeXf6SGwURuXXgvEAo@vger.kernel.org
X-Gm-Message-State: AOJu0Yzl1H32pnoqn816s8MzjQjxce42JcTsVBLl+6xz2wBl3g4Dt7x6
	vb6bxrUjsRoLwc5nYIrrbzj2QUwm+/JTrmAMzHrkkhTCRVPCgEap5ENr27c+N5mAmeE08IJQVRr
	uMio=
X-Gm-Gg: ASbGnculw1rYdAwkvuP81+EEhaveIKq0Dsm/4bYaaNJRftZE7gDAPfIzoPiZARHWJBa
	MzSCcB7g3mbr4jZBSM2e01dXdQd5DDsXh16mbev2a8KNiCnVnknVLla8P8DFU7Ga/+VlCgvYAX5
	nTHXrbuZmcHdd5YT8yZTq1L4RwrdFfCahNL8vnMYR6kz/Qn5PPyn/midl01V3YiWkNlD6hdDmaa
	jBnpT/ov9izHttCUXokJobCzDR4pKtdNhRC8gXYvQl8BjJBjWnTzsQLTzEaYW5Yfa7ujBhKhnOT
	Zn2O/1yY5pcfURAS6SItqVz/+nXBPzcz/JHknZ2KN7ONCvDq5WQhJy4k3k94bbXSIWl/d/3UO/I
	4hoWAUqRf1+2IdixWBHazkdi26qCXnetfV0nJG43j5OTsH+mdDNgUzkOvKbSixw==
X-Google-Smtp-Source: AGHT+IESAensycZl7GqPs8jWqQnlyYmVBVpMJHgfwBgAgTLsPmUfMZTpUioo9nm1iRSbCFezIrK37w==
X-Received: by 2002:a92:c24b:0:b0:3df:4234:df71 with SMTP id e9e14a558f8ab-3e282e551fcmr31061545ab.10.1752676121581;
        Wed, 16 Jul 2025 07:28:41 -0700 (PDT)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com. [209.85.166.48])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-505569c534esm3072587173.92.2025.07.16.07.28.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jul 2025 07:28:41 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id ca18e2360f4ac-87967784150so354856439f.3
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 07:28:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW8nLIRSTrjTY0D/GPsMbCGHDXFfTYYkIgGzW4xRTzUlu5EHrA4VIoGk+AVO25MPbf0P78pQiyB1M2g@vger.kernel.org
X-Received: by 2002:a17:90b:3c4b:b0:311:fde5:c4be with SMTP id
 98e67ed59e1d1-31c9f45c8e9mr3962513a91.35.1752675732176; Wed, 16 Jul 2025
 07:22:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250716-topic-goodnight_cheza-v2-0-6fa8d3261813@oss.qualcomm.com>
 <20250716-topic-goodnight_cheza-v2-4-6fa8d3261813@oss.qualcomm.com>
In-Reply-To: <20250716-topic-goodnight_cheza-v2-4-6fa8d3261813@oss.qualcomm.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 16 Jul 2025 07:22:00 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VnE0kUk58GxmfwwZ7eP-9xe1Hqv8n9y2tHkiMK3nwFGQ@mail.gmail.com>
X-Gm-Features: Ac12FXz8ywMx4qZ-nfHra53TjelQ0XaS7lSbI5YSdJlI09vDJzDmVP6OfgYR9ro
Message-ID: <CAD=FV=VnE0kUk58GxmfwwZ7eP-9xe1Hqv8n9y2tHkiMK3nwFGQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] MAINTAINERS: Remove sdm845-cheza device trees
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
> Cheza was a prototype board, used for developing Snapdragon platform
> support on ChromeOS.
>
> Since almost none are left in existence, and none are left in use, the
> device trees for that family of devices are being removed.
>
> Clean up the maintainers entry with it.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  MAINTAINERS | 1 -
>  1 file changed, 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

