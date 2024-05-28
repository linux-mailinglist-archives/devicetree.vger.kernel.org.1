Return-Path: <devicetree+bounces-69738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 256848D1554
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 09:26:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9BB0284AB1
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 07:26:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20E2B7344E;
	Tue, 28 May 2024 07:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="nZNYbyvQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 896B273196
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 07:26:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716881193; cv=none; b=VNCh6gah1d3HwcePwEna17X+rb5EJNazXSy7msedljRdYu0iIYxi3fzD3de6ndC2SJXb4ovHZYH6Lo10WvDPAQQRBdkLXJaZXJepYLLPjjSevU2VJiYmlqljD39xZeMpM5XhT2L2Fv2VmOpEsmwkvPH+PAm0owvELO/PGoBrY1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716881193; c=relaxed/simple;
	bh=Wb7/vxmVn2sLhr5nQIemWiJRmtkq/q6L+aljI3e6J2Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=d5Y5GCIxMtuKvw1ohCiCWOGwSFQKiHiLx3hB2uVJslrVyd57aPiVgT1wB61ScSRqK5Bhi0LxnUS4JecWztEF8zQJvUgpI403BYklIAQpoSLYgAZhvGA3gwQXFAX2NUa3klkmxb4mCXf6OraKNo15FcWW2qlcBIIDrRcIqfekFVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=nZNYbyvQ; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2e96f298fbdso4541431fa.1
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 00:26:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1716881189; x=1717485989; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wb7/vxmVn2sLhr5nQIemWiJRmtkq/q6L+aljI3e6J2Y=;
        b=nZNYbyvQouo36WbOzltHwO2RGZZSFKaJqbl3qhxdfNjXXlovCDkO25r4k//d7AVgDB
         tR+h5zVO4C0IlFI1t7E374z4KcJfQ8qrhQXTtZ2cJuuiN0y2nAYHYJpC7f1nleWTdeiV
         4qN0yqnYrBGVdO9I9QK9HrfGSOiSXb0yuwECs1o8q51qbhYfQLToeh7zhGJZRRexp5pN
         9BIe7+oegzWVdpYDCRVxln9jxokQlnZ/VtEYveMCfJrK6pTXUgoftbokE2h8yhR1qVrp
         AE9doHCra7mR+vLLSW69mYezRiyro16h5JxvK6BgUhAda9aDkMn3DnijrslpneK4FgvJ
         jagA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716881189; x=1717485989;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wb7/vxmVn2sLhr5nQIemWiJRmtkq/q6L+aljI3e6J2Y=;
        b=pYtpEr91ufh3um32YsDxfCiSemwneC9eJmarU1Ryv2KOCMkNTX1W6obGagjTpzW5lz
         2Qz103RmlZSUyySOOouz9H9tE5xEziFG4ClpAWm27lftD7jdWazBtPa0WVVEviLtW2bm
         UGuq3LzpXyeDi1kalE3cPRr3WtMWIOJpzLu+1Hpgnf4ohxpyIfR40p0IW42+33+vDvP5
         Nqz6HzyKR3u6XZ/BfXxN/oCPf5pthgKjdYzje0a51ec51mu4295KIXGGBmynrOFxWfkf
         V9zzWPyRZi0Cg1z3htf+oHIkuE2VtjZQaAhwiptOAD/j3YoqaErUUjr6kylJELT7jSt1
         x5iA==
X-Forwarded-Encrypted: i=1; AJvYcCVqzol75YeKnG+oYGcfwPtX4IbPtz3JbmesQMC+zHV9pi9ba6aWmH/h4lN6Hr6pmrc1v7wMsUg2mU9i8F/F/1qZmE+6FSHtJ7jUAQ==
X-Gm-Message-State: AOJu0Yxh+mx28hzVpntqty4ocomxXTYUXVZCDxbVJKk7o2QpEhOpC79K
	BO8V5osnT6zvYdILA+6nyvkFQj8M8FITMiEf1RN2NJ09TA3Z1srjzUSgvtPGA1BEQ4GMJJu8y2F
	HgOPr583sKdVo4K8UAUxdI9WTkvndr0vZpmjBhg==
X-Google-Smtp-Source: AGHT+IEqwG8lGB63TRtEHQ50qoCp6W8M3rlfT/je1S6Zp1mGlceEHeIquoczIa/UPZy5YbMAUDrdbQWUFj+EH+rU4f4=
X-Received: by 2002:a2e:83d6:0:b0:2e7:1b8:7b77 with SMTP id
 38308e7fff4ca-2e95b0c163cmr71809171fa.22.1716881189068; Tue, 28 May 2024
 00:26:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240527-topic-lemans-iot-remoteproc-v2-0-8d24e3409daf@linaro.org>
 <20240527-topic-lemans-iot-remoteproc-v2-1-8d24e3409daf@linaro.org> <ae768bb2-cb96-4a05-8752-66bc6bfdab1b@kernel.org>
In-Reply-To: <ae768bb2-cb96-4a05-8752-66bc6bfdab1b@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 28 May 2024 09:26:17 +0200
Message-ID: <CAMRc=Me9B3H9NM2VKrVSSce0-o=ZZuC2TQxt7eYLD5aWEKy+SA@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: remoteproc: qcom,sa8775p-pas:
 Document the SA8775p ADSP, CDSP and GPDSP
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Jassi Brar <jassisinghbrar@gmail.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Tengfei Fan <quic_tengfan@quicinc.com>, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>, Alex Elder <elder@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 27, 2024 at 10:56=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 27/05/2024 10:43, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > Document the components used to boot the ADSP, CDSP0, CDSP1, GPDSP0 and
> > GPDSP1 on the SA8775p SoC.
> >
> > Co-developed-by: Tengfei Fan <quic_tengfan@quicinc.com>
>
> Missing SoB.
>

Does it though? The patch never passed through Tengfei's hands, I just
wanted to give him credit for the work modifying the sm8550-pas
bindings.

Bart

