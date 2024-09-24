Return-Path: <devicetree+bounces-104962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7864C984A1C
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 19:07:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 224B11F239F3
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 17:07:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D30E75473E;
	Tue, 24 Sep 2024 17:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="coVFyBa0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6D436130
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 17:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727197671; cv=none; b=kGbVDmuJVA+hrV/Yl6cAU9i2ZN2D6UaCQKNTRlt4iiuKDnQ3dTd12LPbCHaZ8pt6eXsg39H0taC2lcu1TkqYVzYOaGGBWya6lYZIzAwAnWcymliDIVGZ4t56LBQQg7d24eLd/7qGtFum98mS68Ec+N6fPRoiRWtSDrkpwf/+TOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727197671; c=relaxed/simple;
	bh=PmWonUm1P39vQKCEWJndp/5X/hfo7HEf9pMTOa+OnQg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=O0/DpKIgNSIc6aUWfumfI5ECZ8gCXtEWEKppiKVmUP1+rdHyXhrTbMZUxnxCbSX6FvSbTaTNwUkhQ1i2mebcZhk3NXJ6+Lkg7cC5YbW2ioAgmyUnCpgIJmFKNnDOj0A/F2nk8fbmDAYeazKvtOdIDmQon6fj+OAZgFs/o3epBGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=coVFyBa0; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5365b6bd901so6860732e87.2
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 10:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1727197668; x=1727802468; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PmWonUm1P39vQKCEWJndp/5X/hfo7HEf9pMTOa+OnQg=;
        b=coVFyBa0bCxOwTosLmoXXSFp5fgvOG9nkCPTGk68hFrA6rYiFdpR/MYIBDgObFJxbn
         hYuCY9IO3SVd3NYJKlN1M2gTl7IeNJcixbWNfs0zZNTwBgwTNs7Nx3TCz4Yx8iEuKZoc
         rT4daUauI+csjtkUHTp+ptw7JDd60wABEMQLmYW5UQuFTQCjUW6nJ7W2IE9Zuspw8nkN
         1EvtocQYOpEDtYkEC1ysrbe0KYQpFLcKY8qeI0Pcwnp1yv6G6ZET+2FvSjwwmOYndRrU
         Cff0JL95u8m/fccaYXyoKk9d8H/0X6FXwnhjqIPNR8MppXBM81FGSCt80kx158LPz6B5
         D0SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727197668; x=1727802468;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PmWonUm1P39vQKCEWJndp/5X/hfo7HEf9pMTOa+OnQg=;
        b=kDnZq31d5aDuHLPruEud3oeuIX5DmiwrRXQcc5+kZZ7BbJzMPUH3Bwq09UcyqLu8xl
         taVTv6b7Xn6Ab5lfVoB6HbtXabVuyzAWALIUsccUNRt0qH8YRM/KhboHttR7a6V9oVZD
         DhRYIQ0Ub2+X67oZoYmFnpt+QfDyXHJN0vWnBZK0hzfjBrm+reTO39TIR3P+X7/n8R37
         cM5SSBt2xtePVJH+V9AgxpTjzLGWtrBuUYzUKdtMytfW9viEq0L6q650qQEs2fPkzq4j
         qJH2rKVsqZAeo8TBXRf03bxvHPw1j3xy+3Spy+x+nqLHtuu9Z1TuI0+eaPgl/Ho8xafW
         CRYw==
X-Forwarded-Encrypted: i=1; AJvYcCUz6EYwS11fDDG+YNQdIaa9x97ueOawOJcDd6GOuA8QOE3SQyXqNj3DzzMlnAJ39kocQVxuguRscjB0@vger.kernel.org
X-Gm-Message-State: AOJu0YwWDYlaX6VFEvqKhAnKYay/lt6cm7LU0WwKEnr8/qGLx3RIiAFB
	SLlp/6N0UrRFKAM9bBPR9T3DvLf7FnMiqWsw9zdDv863fzoAoW6a5ZDW0/uWXB0Lcwy7VtkPeBX
	oY51ScJa8GEjmpQTbXodRyz6M9E8E8FUrtHrAvg==
X-Google-Smtp-Source: AGHT+IFQnrBRXhzqzSbxxq2DuX3Rr7dDGfruh+nq0Bk+q33oxwalD2WnXbMn4dLD7JssdiRP1qllG9ZevtZnEADLc0c=
X-Received: by 2002:a05:6512:2348:b0:51a:f689:b4df with SMTP id
 2adb3069b0e04-536ad3b7cd8mr8126306e87.44.1727197668160; Tue, 24 Sep 2024
 10:07:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240814082301.8091-1-brgl@bgdev.pl> <83c562e9-2add-4086-86e7-6e956d2ee70f@kernel.org>
 <87msk49j8m.fsf@kernel.org> <ed6aceb6-4954-43ad-b631-6c6fda209411@kernel.org>
 <87a5g2bz6j.fsf@kernel.org> <CAMRc=MeLick_+Czy5MhkX=SxVvR4WCmUZ8CQ5hQBVTe2fscCPg@mail.gmail.com>
 <b7fdafd6-5029-4b80-b264-11943740b354@quicinc.com> <1e79d94e-2f83-4762-b126-ed865142f1ed@kernel.org>
 <312fa408-d385-4b90-b8f4-729af4a3ce65@quicinc.com>
In-Reply-To: <312fa408-d385-4b90-b8f4-729af4a3ce65@quicinc.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 24 Sep 2024 19:07:35 +0200
Message-ID: <CAMRc=Mc4AZR3aztmODtpgLt3P63=WGGfupjNSSJdFseH=pAhtg@mail.gmail.com>
Subject: Re: [PATCH net-next v2] dt-bindings: net: ath11k: document the inputs
 of the ath11k on WCN6855
To: Jeff Johnson <quic_jjohnson@quicinc.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Kalle Valo <kvalo@kernel.org>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jeff Johnson <jjohnson@kernel.org>, linux-wireless@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	ath11k@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 24, 2024 at 6:46=E2=80=AFPM Jeff Johnson <quic_jjohnson@quicinc=
.com> wrote:
>
> On 9/24/2024 1:06 AM, Krzysztof Kozlowski wrote:
> > On 20/09/2024 23:02, Jeff Johnson wrote:
> >> Again, since I'm a DT n00b:
> >> Just to make sure I understand, you are saying that with this change a=
ny
> >> existing .dts/.dtb files will still work with an updated driver, so th=
e new
> >> properties are not required to be populated on existing devices.
> >
> > Did you folks rejected patches acked by DT maintainers on basis of not
> > understanding DT at all?
>
> I personally have not rejected any DT patches. Nor have I accepted any.
> I'm deferring to Kalle.
>
> >> However a new driver with support for these properties will utilize th=
em when
> >> they are present, and the current ath11k .dts files will need to be up=
dated to
> >
> > It is not related to drivers at all. Nothing in this thread is related
> > to drivers.
> >
> > Can we entirely drop the drivers from the discussion?
>
> I brought up drivers since in the discussion there was concern that this =
DT
> change would potentially break existing devices that have a DTS that defi=
nes
> qcom,ath11k-calibration-variant, and I wanted clarification on that point=
.
>
> /jeff

How could this happen? DT schema is used to validate device-tree
sources but is not used by the kernel code in any way. I've said it
several times over the course of this and the previous (qca6390)
discussion.

Bartosz

