Return-Path: <devicetree+bounces-129984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 24FD49ED750
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 21:38:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7888D163CA1
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 20:37:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06AF22288CC;
	Wed, 11 Dec 2024 20:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gejs+bbB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162AA225A52
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 20:37:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733949471; cv=none; b=foSVuf9k0XGZWqDGQBOArn7iDC5RBVA9lrX1MxHxDXI/j289tNnQRNMKij1JUxXpPVTdXBnHNwRu1y3fU9YWItStkxHdLFNl1prm/rEYQ/ilLInAc/SCOihhSqoJLndTKSgZVvERuoWQlqMClPrtCVJ0CJMkxCgJAPsnYmlDYFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733949471; c=relaxed/simple;
	bh=py3efSUAyRMleagDedwpV2XljaINIU+e6U/z0umBLxs=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=qdygu1AoPBi5eWB+PqCtHK9jX5zMKt7NnFbLaiyP8uvAS9eRU1/dYN59iL4hRh/5EZGtYZi2H8yVcIiPtky2yqaKP9R1ow4fJ5GB21v2l4fWs8ETwFEdek1PlHMY3lakA8gv9bTP4tgOu7rMqqvU8lLn3YVGXVXXKKAc0ViDOwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gejs+bbB; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4361815b96cso13758885e9.1
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 12:37:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733949468; x=1734554268; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HlaSWtOv+uqBTc8ZWTohBmESKhd/YTad6Sqvxj+0fo4=;
        b=gejs+bbBIH7xBtEifsPyN7YEwSTJuxCzXsUoBzRCiio33Ymlf+BcVhInOm8OxL/xH5
         8ZGWdudPENKYgSruWg6ZauU2dgj0GH35/9cXo6DjxLGS8bCtBlSZdL9VPaNVqAqN0lMd
         MB6eZX8RT+fIwpneFjkwJLoqm6RcIwwxMhYjBf7Qk6GYj/ZGf3lya7x0m5GYFn16uXSy
         vBUCUGi6jUzlCt/04x75yfXWscZVyCPa85Ngzj4ulMw/ctlqIzBeFyb+jZKIqBlAiUq7
         g14zGq6Sm+JaIr2Ow5qCLzycGhaKJk9+/r8ZWbgOU4ohyuDPd/2v/JXMlY0S0JlJtghG
         fa+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733949468; x=1734554268;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HlaSWtOv+uqBTc8ZWTohBmESKhd/YTad6Sqvxj+0fo4=;
        b=S8XMmnlg7t2ycs5chdlBaRBq4iQY4kXz4kyv+765j0ZyCiw23LDJ6OUzZCl5YUdI60
         ECK60zTnVYk+qW2G528BUF79op3ANrcCTguM8b2RRUCK0RQYklWnkqphiDuzLfuMPEZU
         FDuMku9bNhMBdsXQ/UwtNyzpmGuC8ul6+cUfjxyXnhi7D5KECtBHh93/9sIpoUCpt/WB
         aymPFuT68pxxDrzQ1YvGzUhl67Kln549WniNdbiJNaXiASqjwFO1zbyrm5ogLp8pwRZ+
         Vvutduu3m8R+y3GcIEWk544feB3xa3wy3oM3m6Ojr1tUyneAbbF3BMENkI/4UpB/EgMi
         eDtw==
X-Forwarded-Encrypted: i=1; AJvYcCVKbnu2SNG8stNv2Cl2EjbddYkViob+NO52b6Z+TGQdg8oDpDb8IvrUX1afCz626wOCHXr8kGx0gzaw@vger.kernel.org
X-Gm-Message-State: AOJu0Ywr8UzXSXMd5+ph7VNlooOfnbVL8ZRvIjSev6laLGjgE54EP3+y
	r+i5aoh0IuxwndwW+r0d+W6c4Uix5oiQH9byEqkIIjYO4nufLerFeY0E5g6C25w=
X-Gm-Gg: ASbGncsXnvhWnsdPnz0JpKAY+TiTW7Yt8lOUfRiR7ffjE196CHy+GjxZaDLdzcBhh4w
	7pzbHU6+xhSiCkkRxlsFF1DqnmFMhUJitGRqX2O9uY46zo0HRvoB/COStSfaLwxj19TrFB+/wru
	jGiQsU/zcJW4zSTEs2Vb+xd06Z2TaElXAWH6MtohcehVYi1D4wFQ9QG5FZJOTsGPUFcc5rhzkCp
	Wn9UW9QrjT6zNf7MlBTIH7/aDqSqqKNdXuog5ayF4CiB4I50Tc08Tib
X-Google-Smtp-Source: AGHT+IHMqAvhHC5dNEzt4Ji77GJgaTqFedpYNmwmOTQLG9a8yXEQAvuJOLZ9//3kNsztFbc6usJwig==
X-Received: by 2002:a05:600c:b86:b0:436:1c04:aa8e with SMTP id 5b1f17b1804b1-4361c3746c2mr37514545e9.16.1733949468341;
        Wed, 11 Dec 2024 12:37:48 -0800 (PST)
Received: from localhost ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434f44eaac7sm130892245e9.42.2024.12.11.12.37.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2024 12:37:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 11 Dec 2024 20:37:46 +0000
Message-Id: <D695SBZSGF7W.3ONJO2E84XN0@linaro.org>
Subject: Re: [PATCH v1 03/10] arm64: dts: qcom: qrb4210-rb2: add wcd937x
 codec support
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Cc: <broonie@kernel.org>, <konradybcio@kernel.org>,
 <konrad.dybcio@oss.qualcomm.com>, <andersson@kernel.org>,
 <srinivas.kandagatla@linaro.org>, <tiwai@suse.com>, <lgirdwood@gmail.com>,
 <perex@perex.cz>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <dmitry.baryshkov@linaro.org>,
 <linux-sound@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.18.2
References: <20241101053154.497550-1-alexey.klimov@linaro.org>
 <20241101053154.497550-4-alexey.klimov@linaro.org>
 <a4z5awo6xodgjnmgrqd2hvf2ta2yhexsoyilbprz3vkimymc77@pqp3bgc2fgdh>
In-Reply-To: <a4z5awo6xodgjnmgrqd2hvf2ta2yhexsoyilbprz3vkimymc77@pqp3bgc2fgdh>

On Fri Nov 1, 2024 at 7:59 AM GMT, Krzysztof Kozlowski wrote:
> On Fri, Nov 01, 2024 at 05:31:47AM +0000, Alexey Klimov wrote:
> >  &tlmm {
> >  	gpio-reserved-ranges =3D <43 2>, <49 1>, <54 1>,
> >  			       <56 3>, <61 2>, <64 1>,
> > @@ -691,6 +731,21 @@ sdc2_card_det_n: sd-card-det-n-state {
> >  		drive-strength =3D <2>;
> >  		bias-pull-up;
> >  	};
> > +
> > +	wcd_reset_n: wcd-reset-n-state {
> > +		pins =3D "gpio82";
> > +		function =3D "gpio";
> > +		drive-strength =3D <16>;
> > +		output-high;
> > +	};
> > +
> > +	wcd_reset_n_sleep: wcd-reset-n-sleep-state {
>
> Where is it used?

Right. I'll remove it.

Thanks,
Alexey


