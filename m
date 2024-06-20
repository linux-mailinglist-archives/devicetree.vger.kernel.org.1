Return-Path: <devicetree+bounces-77739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CC990FD4A
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 09:07:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 79FE2B2136E
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 07:07:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2515641C67;
	Thu, 20 Jun 2024 07:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="JhVI2imD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 789704502B
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 07:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718867240; cv=none; b=g7apJzAdc7L4xLrtt+PtKM8oB7qCY6JR+x6TKmiqCJgk+JxcThAq2UCxMYtmnoLPhDbrciN0cTbqA0sfPqtrB+oEjc8YFPyk28QWp3va+6ILrgNDKQS9e8FgH+2gyGEsQzKVO/Z+JaspY+ha+idUKk8F5EGICSJxvEvhT5tTccQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718867240; c=relaxed/simple;
	bh=xkborBVQqATfxeYuZo0pqhRK2jK4AIFNMSFgIY20WZ4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FEHQK47Osj5BgVFU0kWe2oPz4m9c8sn9waPySPDMrZ+HMDEHyn0WAwLqc+QjuWFZY1wtPk9EfDi7PtTYGJ4UiYH3VM9HxZ9JaWHW4leCoO6+uvqRVUDF1b8ZkHqJCherZ7Wvk+la5tB7xS+WQ/JLjnouPu9La52Z+JJUPa/sGvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=JhVI2imD; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2ec1e5505abso13326601fa.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 00:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1718867237; x=1719472037; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xkborBVQqATfxeYuZo0pqhRK2jK4AIFNMSFgIY20WZ4=;
        b=JhVI2imDWXMunBxbUd1ROI/FGgRBWx5GAF+G+hjysWhRHs170sr3YZ8bZkWogTForn
         1zeAORmlKXD3uMGOoXrAEOeX3qFDW818Zcw9SN+7RbuTykyiJC2f+32ayU2x+BmiMW+M
         IYXgvmI5Y2WKnI/mtGXgU6Lvb8kzBc7t5Lrztqo7IdTntTaoUhsef+YLVav7mOTKJZzH
         +MbT8D6FuMud5z+RHJcIqhfsql91LPeoQrYORZWJgGlr9hiOfWLVclFR8nIgLWTzeY3l
         ID23HEvsj4ypwsknrLd3O7H202m32X86SSm0NhLDnXdKkE27mSl2l1kjPIghBxuOZ36I
         D6aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718867237; x=1719472037;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xkborBVQqATfxeYuZo0pqhRK2jK4AIFNMSFgIY20WZ4=;
        b=iD43PGeQhrNX5fFXq03wCbFu03ua0xkTbmoYxSBF1s7+6erkxT76/vzcoKF1EKXEct
         pMIIVoMqp8ABw839E5cp4WO5SSLt1cJy0gxo05kZ/eEn4GlZmTHhmBnTzG6iqLW9g97c
         uYQWAd3xSUXwBJQkWBG//wIIbI9CC2/uy5ipzvfOlfPlaxIEHoI570Ntj0AuOHO4nXjC
         Z64xitvIGy0RLcn9U/Art5RNphq/9HIoeXeaF2vegIVZRz3qGw9fR1i6a1pLloYK2zCp
         5P/1DurutWsl7jYiz/V2/UecyhvgfGv/lUxTnmANhBnIjCj5hZE8zkvB85JbhlQF89Nx
         /xZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUXeGWF037leyrQbv80r58qklu/qGiiLsIdJiJA8SalhmxidwcuUJ5wF5zEDzXHO6mLs7SHzoSptQeiEDQqDHeQkbG2gMUaMaQlxw==
X-Gm-Message-State: AOJu0Yxskkg0Suo4h4owZ2Y3RIyq1vUYj7pkVjOTScKxo84Hitg2yAML
	hO9rUL1fVYxCIEV3Ma8eAcB+SgNPUoyG86Kmlwh0ueW6ERcwtjGakqv+8vIMoQdf+saJ8cTIRfl
	P5+j0RMN9N8a3V1jRrbsG3Wlaoe2Bk01l293jfA==
X-Google-Smtp-Source: AGHT+IGznKypN67m5DazZCw9I7mRhhfCAaES87tn5Nfb7CJ3RodSunoLhO3DfVgiL8JmRA7ov/LfT+ssq6hhezZHP/U=
X-Received: by 2002:a05:6512:689:b0:52b:c023:6e53 with SMTP id
 2adb3069b0e04-52cca1bf700mr1557692e87.11.1718867236530; Thu, 20 Jun 2024
 00:07:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240619183255.34107-1-brgl@bgdev.pl> <4df2a52c-c21e-4da0-9ca0-13f28e81018c@linaro.org>
In-Reply-To: <4df2a52c-c21e-4da0-9ca0-13f28e81018c@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 20 Jun 2024 09:07:05 +0200
Message-ID: <CAMRc=Mf4dZHMyexj1Xaw1dMVw0OT3=1t8OMfpHCB0xGJ9JdvSw@mail.gmail.com>
Subject: Re: [PATCH 0/2] arm64: dts: qcom: sa8775p-ride: support both board variants
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 19, 2024 at 8:50=E2=80=AFPM Konrad Dybcio <konrad.dybcio@linaro=
.org> wrote:
>
>
>
> On 6/19/24 20:32, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > Split the current .dts into two: the existing one keeps the name and
> > supports revision 2 of the board while patch 2 adds a .dts for revision=
 3.
>
> Are both gonna be actively used?
>

Yes! This is the reason for the split. I initially wanted to just
change the PHY in the original .dts but then I learned there are a lot
of r2 boards in the wild at QCom so we need to support both.

Bart

