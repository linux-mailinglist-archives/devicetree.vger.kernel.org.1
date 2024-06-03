Return-Path: <devicetree+bounces-71792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC6D8D7F6F
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 11:54:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6F3191C2377C
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 09:54:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5043180C14;
	Mon,  3 Jun 2024 09:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y3XkSH6c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7FA97A140
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 09:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717408231; cv=none; b=g/+DG7iDpbAH58TS1PCjTg4ElBIcZ4IVuhCLG5/Edphp8UxTGRpecTo7Vn+Hk8QGKog0+X4QfiQykbitnzEXaZMEVYVUI9HEvNb+gOCHNwqbyz5fmteQSPl5f7JRktJqXi9UK4c378xlfF9XHdygP+y/rNeNb0gpbfK6Vesv+Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717408231; c=relaxed/simple;
	bh=UGbpAXfiIffXUhT5cT7RbwPaAQgHyUQYJsPaby/ZjwM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kNuASoDMBQrG5h5kalSTUsivAvuOTksC/lpbhNCSDjnsdzt8xNnwtAPIOLWN2OgLFfDMSNzWFWjHxLVyh9JrFab98aKH2+2pDC2o76QuycUjPrIgRHJi7I33tyFlBiEq2DVGFHhyj089P/eB5BH74kYABtoRTvQkwFX1FdRliPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Y3XkSH6c; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dfa59545e0fso3986161276.0
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 02:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717408229; x=1718013029; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Q5nz9246Ps21QPYHtyYcEBDruS5lYzYtnj0CsAL8tho=;
        b=Y3XkSH6c2i0tnQ0IERCv7eKHgjirio+/IYwb1EPn/wr2bWU7Lr73cjcKgKSr0R4BDV
         Ncy0kUX4ZmaDTJOW0oiCp5MXuSqZ08myRUy/FWyflmg64cXT1EPE/97kEkg89mjzLIuT
         8EKJ4YmBMgqIR4u3SmqHxejC929XbhuPOB3FJZOHL6+Y5gm+tLoDuJO3dup3+hUuSbug
         6UhcJkjtVXL9UQX1W16E/RkTvgRpnrDF2CHMTN5P667x+cf6TMh3OgrDiNhA3rBU/3e6
         /gt+/VwIWeQKIoIjWoY7nu3b5Gt/OBpKXl2LAONKXoxXrwFqSU8Uqevi6uX1dbkyBgWJ
         UNCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717408229; x=1718013029;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q5nz9246Ps21QPYHtyYcEBDruS5lYzYtnj0CsAL8tho=;
        b=NNXNMw18C7l96aDUjAopujH4PuOkQRcBu7ocKknfA2fl+doJJuwNF3TYKCujhkCRN4
         pJrIjbd8l3XNzuM13dBfep1ZdPOCbVkuSk9eIfJkH7H/x6D2koM19c4GrARWrTJJxkgM
         ij9Xd8yjaJbSmRm9gGRhTDvFdYtE0HluIMBVBKfgUhqTt0TbOwtM3Lj9++j/j9HGjmIU
         2oxIPR774Y0N2lcdPsoyUugP7eDeZLJ/axpB/r4M3/mvYZt0pJ+vuLQjfDHXc0R8uMzL
         IqhMC5QTj8rKj74dys5b12auwNl1lKnnq7qPtay2wS/qGnKaZNL7LBxxrbHG6GXYKlBJ
         CiFA==
X-Forwarded-Encrypted: i=1; AJvYcCVj0C8LhDDdZvv1e7KH7d7j18bQFJYU7PoDdigeWqCead255Y1BjmdRNX5A+eqHuGrqBOQUy2i5O+hQZPezNdR2OFEAkxtS/NytFQ==
X-Gm-Message-State: AOJu0Yz63sqOdVkCsfcaoN3wz7xMZpM7tDbhK4mnavdGx788VP2EUBlG
	cUTAgR+gi/r1sYh3g0JhkfM8YE1OU29YJzmtz4BZKwmBLXtUJ0Wzm0aMPNAgV+tyvv5i4s5W0RK
	4/voftthsObvfRYkCRcQuiMDNZQTsR/wX1/m7Eg==
X-Google-Smtp-Source: AGHT+IFX8/te7tIpL5Qv+VQ9vIlt9MUlzTuq3gwcja2kJCQVfUhpQiWc0hD9HOlOLPLd6cmtI1+BGOq1zlez1/x9fJs=
X-Received: by 2002:a05:6902:4c2:b0:df4:d05e:2286 with SMTP id
 3f1490d57ef6-dfa73d89123mr8208938276.49.1717408228703; Mon, 03 Jun 2024
 02:50:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240527-x1e80100-dts-pmic-glink-v1-0-7ea5c8eb4d2b@linaro.org>
 <20240527-x1e80100-dts-pmic-glink-v1-2-7ea5c8eb4d2b@linaro.org>
 <Zl2DUXWUN0088-Af@hovoldconsulting.com> <CAA8EJpp2hK1P86vrZOwXfNBz3nBXugCcERE9yBRCaCE3aDbqOA@mail.gmail.com>
 <Zl2MRMqY0Y3siXFm@hovoldconsulting.com> <Zl2RkMMk9B12t2CM@hovoldconsulting.com>
In-Reply-To: <Zl2RkMMk9B12t2CM@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 3 Jun 2024 12:50:17 +0300
Message-ID: <CAA8EJppHv+L-FxMZmroZvpGfp9nE+ENPPD8qJH_N8pNGDQN8Tw@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: qcom: x1e80100-crd: Add pmic-glink node
 with all 3 connectors
To: Johan Hovold <johan@kernel.org>
Cc: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 3 Jun 2024 at 12:49, Johan Hovold <johan@kernel.org> wrote:
>
> On Mon, Jun 03, 2024 at 11:26:28AM +0200, Johan Hovold wrote:
> > On Mon, Jun 03, 2024 at 11:49:51AM +0300, Dmitry Baryshkov wrote:
> > > On Mon, 3 Jun 2024 at 11:48, Johan Hovold <johan@kernel.org> wrote:
> > > > On Mon, May 27, 2024 at 11:07:28AM +0300, Abel Vesa wrote:
>
> > I don't have time to look into this right now, so only reporting to
> > Abel.
> >
> > Looks like there are two more warnings earlier on boot which appear to
> > be related:
> >
> > [   10.730571] ucsi_glink.pmic_glink_ucsi pmic_glink.ucsi.0: invalid connector number, ignoring
> > [   10.730656] pmic_glink_altmode.pmic_glink_altmode pmic_glink.altmode.0: invalid connector number, ignoring
>
> Ok, it's just the pmic ucsi driver that is hardcoding max two ports
> still. I'll send a fix.

https://lore.kernel.org/linux-arm-msm/20240527-x1e80100-soc-qcom-pmic-glink-v1-1-e5c4cda2f745@linaro.org/

-- 
With best wishes
Dmitry

