Return-Path: <devicetree+bounces-94268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E0B9548B9
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 14:30:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6474B1F23DFA
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 12:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7425C1AE050;
	Fri, 16 Aug 2024 12:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="g1ydmzpZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 873E117C9B0
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 12:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723811413; cv=none; b=g4tC6YrzZCPhlubGcbF0Qy4qba5yFj7+mdNqRAh4qPNyIHvCcE8qAtwNBtFTuwnANWUJy4ICF0nNFsFL5P61wTYCJjcYxDKlwatgSnTtP1PuhP6lgAAXh/qm7Ruf+IS//G/v96Uhkk897PqSR1x+JRqvIZMIpCCxvA+rW1kEhiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723811413; c=relaxed/simple;
	bh=KEWMVxcu/NLQtr33F3tQHy3IBtqOb4ps9ENmIRZm+W0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tpIXZec1v0fgVYowB8EWAR5iKvmUExRx2JfeNnxZkOm/4BiWDgmvVr0FuAYlqKv3Xlm8VNy4N3npcjfuUeagr2OYd4GWzSOXLTQcZeUIN3mDJUJSJcJ17ojsqw6W+qKY+vZ2syl7RcQb2NtKiUTEYmM84Y9KJQAh9KqDNgoC9b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=g1ydmzpZ; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53301d46c54so2681300e87.2
        for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 05:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1723811409; x=1724416209; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w96eQaH+JFVwUc2NHdKcq4o8sWhYVnxpQd6m10yEznM=;
        b=g1ydmzpZlyIoAsEzBXBw3+psyCyndmGoztl8ZXN7uGBj7hwOEUkoFeBXh+bBeIR/TT
         Nk37KNPO1JhHyJgfr22aAMtI8Gjf692Pua98WGbchNLopYyAX+upK1RV/20nyH+wdGfJ
         ICzRciSIqNlIXtHtpGP4IFnXFu2mzNxZlxG391grEfPsu35kgnCWz/sD98zfVVsxilPU
         TidTK+bVnngIVG/JUUN9mijqm6NaNmRpo4CU3Ir4QpIoVmHalU2gfmrYXGs9agpW1sGd
         OCAYf/TkhTAZN7vBMLIWrRhd98pDYFKbQ/25qSE5Hh2zNphmf32Q3N7k7uO+0xq4JXq9
         mFfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723811409; x=1724416209;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w96eQaH+JFVwUc2NHdKcq4o8sWhYVnxpQd6m10yEznM=;
        b=xCovxeWBK3ut5fKkur+s/5eNCUCMtvOv6evd5hePz+1vki9Tm7gvt0xOOiD3M0JEln
         u1mfnAsD7OQHImJ3WxQNM0dq12Wm0lsGGp8hr5g29O7squ3L4l+3AlZ/fJsVOY1+WLWB
         OEE0EOTWebHRtZxriNZDP3bs+UJMmXv9xBl8bMFnU4dIJorm/0ExYiHdpNmJvbCQkL1g
         IsnjYXe1PXa/6GPQgTZgepicELwU/ItoDQxfjrgClZ9GsuB2FrM8eAHzU+hOQj75org8
         YjJYybiUP7ozds4Qtniwt0Z4wUzmtTmcETBRihd51fXeDIVJLYxqxSVDmj0Y4Q0zQibn
         rzNw==
X-Forwarded-Encrypted: i=1; AJvYcCXAOlN2CwWM+2Ua8g7UYhD+FQ0X27szT7dNHxCAbMo8hAYzAB4BXwMesDvCtKLH36gA8Trgztl5/P88/EWhZrPfSjqqA9iI1pIwcA==
X-Gm-Message-State: AOJu0YwTPMpZs4wg8Y6QlonTQ1MPWWEgXP5yHhiEgsxKG0ZZRrzNFuKd
	pMVR3ITJQcoq1xvmKqx5jTULVm0CqY1TixsS4LVXZDjRkzlhYkv0eDx6rqO/iDuwmhtz4KqxsxQ
	fcZgY88blFc1NX7oFrUCp2QFOU3vWIH1dKxC6tg==
X-Google-Smtp-Source: AGHT+IFZaK4vjw4Aem+81rYMCtAGdtY0O6D4wq9Y8v3rCLdzZcg4Vb5soplVtVkp/6l3JtM6+jGW1KtRA1lR1iP6gzQ=
X-Received: by 2002:a05:6512:3dab:b0:52c:c5c4:43d4 with SMTP id
 2adb3069b0e04-5331c6f0065mr1560017e87.53.1723811408941; Fri, 16 Aug 2024
 05:30:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240816102345.16481-1-brgl@bgdev.pl> <c0af2eec-c289-4147-aca2-aac438451f5e@kernel.org>
In-Reply-To: <c0af2eec-c289-4147-aca2-aac438451f5e@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 16 Aug 2024 14:29:56 +0200
Message-ID: <CAMRc=MdmgcRUfYGo25spPOKqjpebiaZUP34B7PuuoAxMAupAYA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: misc: qcom,fastrpc: document new domain ID
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
	Amol Maheshwari <amahesh@qti.qualcomm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Tengfei Fan <quic_tengfan@quicinc.com>, Ling Xu <quic_lxu5@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 16, 2024 at 1:21=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 16/08/2024 12:23, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > Add "cdsp1" as the new supported label for the CDSP1 fastrpc domain.
> >
> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml b=
/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
> > index c27a8f33d8d7..2a5b18982804 100644
> > --- a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
> > +++ b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
> > @@ -26,6 +26,7 @@ properties:
> >        - mdsp
> >        - sdsp
> >        - cdsp
> > +      - cdsp1
>
> Are there more than one cdsp domains? Why adding suffixes? Driver source
> code does not have "cdsp1" domain, so this is confusing.
>
> Best regards,
> Krzysztof
>

It does, Srini picked up this patch earlier today. I'm not an expert
in fast RPC but it looks like the domain ID number matters here.

Bart

[1] https://lore.kernel.org/all/20240805-topic-sa8775p-iot-remoteproc-v4-4-=
86affdc72c04@linaro.org/

