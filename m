Return-Path: <devicetree+bounces-131827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C729F4AA4
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 13:09:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 06B417A36A7
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 12:09:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C20F11F12E3;
	Tue, 17 Dec 2024 12:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AZ/ACVu5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74621EF0BD
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 12:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734437369; cv=none; b=eZdwErCtMeQC47rUl094WUYQpxF1QwisR/gglxYoR4rIFwHC8A+TVOj4Kn8Hb+uaeokvU+QlodreKyFiTr351J+dIIXTlm3zSmZuH/uvv7pQiTuc/biptIl4TD/C8urf/DM3h1ZVXV+MOzjgVNsZ/3xHIU8Wurr1Ts+VcI4ZwnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734437369; c=relaxed/simple;
	bh=16XPmy2jH/zD27A72OtSAQ/rMDX0OJmNbRLWaTM298k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SKLioWhzIMfAEHplYg89JxuqPQNX9qWL8giwn3UB33DkwHvd7+IXPEru+01wPZwyZYlU2dNV2CRoqmbed2dw+5K1IXBP4+u7jreC4cJtRkxw6vHUOLcxHgW0XKG3saDIDjnuKeAJITH9QS5N9TTHtsW0Gh7WYISNDu37aGNQS7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AZ/ACVu5; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53e384e3481so4762359e87.2
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 04:09:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734437364; x=1735042164; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=v2zlUatx24q8uGjuBR7tMIQ8jxT+mtpak1Ok6qCQguw=;
        b=AZ/ACVu5PIcKCEJuyLrxVKh99Uzm4W0y/ASGt7tFbau/Ph2Bhdd4Ric3mCzeviMIrD
         SGailBdErUEih2AuvFQgjAdlu/TB3yWnrtFH0e9y+sg2EJhCJ1a9XXZ4aWYxUYCBoQ9J
         yn+u6soIQ5MLvQHZkPYmRCEH92kQpzEpVJ2PSqj+r1vLUy+LktqEgvgQ4oj+CuIMeQSd
         HZxVg1EC2tDdERs9FMq1+qOCyR16gL+GRYsh6L2nFVomXL5DbtUqXaQiZcPWhhrPF5FX
         evzkNV/WL3E0VZi0yaGsva1sD7V8y4RNnSrWG3FueKCjwTlbrxzBeztRx84QWStI6GIQ
         bfHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734437364; x=1735042164;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v2zlUatx24q8uGjuBR7tMIQ8jxT+mtpak1Ok6qCQguw=;
        b=EiuHb2oRaUPztGETwhU0Ce5VMW+8cog5xOpqz7jBxXGQmlPlSkFCpqRcUcxNG4KYo1
         iaACBeZcm5Tss5uL3MXdrgZAP3TE7tW9hiz/tOK3WOLsWWMXaaSZ5GmsQ7I5Dju63tbZ
         GGgTUT3jV0E9wWsJLKiOnA1O8eASnL26xVCxkN/cOZrv6KnskQp/Ilaw2whHWtb/S8eG
         OsNWzCaLh54VnNRNYRJjbJSg+cbCXdProFZM7Uhc/Ub9lovrRFzLqvJno4HaG5IzkSb+
         dQb6lqs383/inGC66AXvwTqbSXitLygXklAx7NVbXjImduvSVMLxE7EXIShMqJiDivzJ
         LMQw==
X-Forwarded-Encrypted: i=1; AJvYcCVJedP2xI4gi4HNYRsdwg5bkoFM/Lrizl2taw45JPLJCJ093C2iM28j5KvNAIQTvWTPvou/Lm5U/mjG@vger.kernel.org
X-Gm-Message-State: AOJu0YzEwIM6tIItIKp2pk0czDxuu0FPi34Dk8ugI/PUgf+1vAyyZkiD
	1jInxDOHl1W8InIQurU4zvZQS7To5V7y0ZMu2XfnTXJVQUyJz+8a2ReT9s0xm1k=
X-Gm-Gg: ASbGncuW8YJUmjSw5B+tF/hgojQ531VktzYqHdPRO20SySKz8oNQWTLUZOO1Tk3lPtN
	cmanMCQOt8oHd1BCaArrwWg19vWHh3yTSSnkUjGmLMVLUt292MTweWK3XMd1pbXwbaCb1VUPeQ3
	6ygx5wuBH4Dn/dvTseomxpa6G/CK9tUoy/3VEB2YAK8mlmIBitSnWLyuquY7/8Nku2ubFCi0Kuu
	rQ3O30CBOb1/7UdSl/L5FR5gNO1lhp0Zv8CFOyeqqRLsZr0Dc7p94tdjt4NpmWxTWk6hYRxBqLb
	s8POBU8Ki7AXYt/6mJIkG6A20FaSEGxXQyki
X-Google-Smtp-Source: AGHT+IH3yIaXKqPUlVfDov4PSCpBT+vDZFRyKj3waNb6em6MSG5hbhb05XacOHw8jeYisHOZJ9kJTg==
X-Received: by 2002:a05:6512:6cf:b0:540:1f67:689f with SMTP id 2adb3069b0e04-54099b72cb6mr5558607e87.56.1734437363989;
        Tue, 17 Dec 2024 04:09:23 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30344045d28sm12351511fa.49.2024.12.17.04.09.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 04:09:23 -0800 (PST)
Date: Tue, 17 Dec 2024 14:09:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Renjiang Han <quic_renjiang@quicinc.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, Vikash Garodia <quic_vgarodia@quicinc.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Stanimir Varbanov <stanimir.varbanov@linaro.org>
Subject: Re: [PATCH v5 3/4] arm64: dts: qcom: qcs615: add venus node
Message-ID: <hu5nkn34gkx5x4wdtpvstf5atrgl533vynlgvjec4z3jdo4rac@yt6t5mmfcwtm>
References: <20241217-add-venus-for-qcs615-v5-0-747395d9e630@quicinc.com>
 <20241217-add-venus-for-qcs615-v5-3-747395d9e630@quicinc.com>
 <83fcb683-d610-4e47-bcce-128453a0afef@linaro.org>
 <3cb0d715-3756-4cef-bcc0-3bb550811c73@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3cb0d715-3756-4cef-bcc0-3bb550811c73@quicinc.com>

On Tue, Dec 17, 2024 at 05:54:57PM +0800, Renjiang Han wrote:
> 
> On 12/17/2024 5:38 PM, Bryan O'Donoghue wrote:
> > On 17/12/2024 09:17, Renjiang Han wrote:
> > > +
> > > +            video-decoder {
> > > +                compatible = "venus-decoder";
> > > +            };
> > > +
> > > +            video-encoder {
> > > +                compatible = "venus-encoder";
> > > +            };
> > 
> > I gave you feedback on this in v4.
> > 
> > Could you please provide some commentary on why you're persisting with
> > this ?
> > 
> > - Driver configuration should not live in dts
> > - A patchset exists to mitigate this
> > - If you don't want to use that series, what do you propose
> >   to resolve this ?
> > 
> > Please don't just ignore feedback, either act on it or add to your
> > commit log _why_ you didn't act on it.
> > 
> > ---
> > bod
> 
>  Thanks for your review. You pointed it out correctly. As replied in v4,
> 
>  I also think your change is a good change, but your change involves many
> 
>  platforms.

You can help it by reviewing it and then providing a Tested-by tag for
it.

P.S. Something is wrong with your emails, I see a lot of lines separated
by empty lines. It makes it harder to read.


-- 
With best wishes
Dmitry

