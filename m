Return-Path: <devicetree+bounces-30921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBEF829832
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 12:00:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B1AB1F25FEC
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 11:00:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FBD341746;
	Wed, 10 Jan 2024 11:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="IVNTihcm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75BD93EA9D
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 11:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-555bd21f9fdso4528048a12.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 03:00:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1704884424; x=1705489224; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ONi/SB9nLqgwdclaMN3RyBOpRG19jO44sGJgFACT67g=;
        b=IVNTihcm+vRSs/l7RJQ/Ty7O8XdgPaIZUKJnF8cpWhci6F2+kNMWB9wr4LcNEhMD+y
         BzhqC4OPpyFUzKzKJz4efIWl1sb3Jrq6wcV6r8zRt6gLxvSjSt6iHF/2frpuQQAjBnOY
         ILmj/85CJzSlER353HH9qJKo1bBKOaf4O4S70Hh4hwLjCJdBgJ4XU1G2N1akMkFQoT1N
         BIO/Wyc+qW0SsVh4ajxTm1Quc74ZpiH/KLA/o64NiDgvZk1cCrE1cZxUV8EanZrmD+ve
         CBFP+hYWWqSWYDzWBVCSIwXPx+WBV+HXEDh7Crzhrd7sHNlXrG1Ev2locE/XDCGSE5YC
         FkWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704884424; x=1705489224;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ONi/SB9nLqgwdclaMN3RyBOpRG19jO44sGJgFACT67g=;
        b=VmyKsESYZ7r6M7C+pDxtHOAe4oXjwOqlJxbcLaauynnNG/RKM5N9O0eA6B5LffK17W
         8POx4ZV9w+veYfoGf4xAz0kw9OpM8W/2KA6LI3TLVKyNPWDMOO4ZQw5ioO8yGSc8DPmk
         9dIJid+lWEICYp6gkuWhYnWn62DxMScy1oGTcyi7AKXRPPTECEP29rjU/3D70wprni3h
         ylkaTn6NmP4hgNw5c7GXD4+/ogYJ5ieZ2iM4r0aIWStD2Wd8cJMDnYtsA+hIfE3yH2oC
         hf5mJWmVFge6repJ5dRGu2Sxo864KibBOmSmKPxobHmEK9TfMKOp4S7taXlMSmAjvpQG
         Y2Ww==
X-Gm-Message-State: AOJu0YzLsGVgFDqHf7rhxtnYV2Y46C84CgYWeJwhYdz/uatPRPV7f0zs
	Ftyzq/1tTC0F43ZlZxkgC3y0rEMqVpsFXQ==
X-Google-Smtp-Source: AGHT+IF5G3ti7drOafPhH/oJnH4OEjkohZU5G6wl1Gh/kLq1Rluh5+3uo+b16GQfeNr7IUyy5r+CMw==
X-Received: by 2002:a17:907:9017:b0:a28:e3b6:ae4a with SMTP id ay23-20020a170907901700b00a28e3b6ae4amr400415ejc.57.1704884423732;
        Wed, 10 Jan 2024 03:00:23 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id lh13-20020a170906f8cd00b00a2bd425eab2sm464326ejb.2.2024.01.10.03.00.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jan 2024 03:00:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 10 Jan 2024 12:00:23 +0100
Message-Id: <CYAZ37LBKG4E.2096GKVUXN8Y2@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm7225-fairphone-fp4: Enable
 display and GPU
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Jessica Zhang" <quic_jesszhan@quicinc.com>,
 "Sam Ravnborg" <sam@ravnborg.org>, "David Airlie" <airlied@gmail.com>,
 "Daniel Vetter" <daniel@ffwll.ch>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "Rob Herring"
 <robh+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Bjorn Andersson" <andersson@kernel.org>
X-Mailer: aerc 0.15.2
References: <20240105-fp4-panel-v1-0-1afbabc55276@fairphone.com>
 <20240105-fp4-panel-v1-3-1afbabc55276@fairphone.com>
 <3fdc6e74-d817-4341-bf64-9096608990d6@linaro.org>
In-Reply-To: <3fdc6e74-d817-4341-bf64-9096608990d6@linaro.org>

On Wed Jan 10, 2024 at 11:58 AM CET, Konrad Dybcio wrote:
>
>
> On 1/5/24 15:29, Luca Weiss wrote:
> > Add the description for the display panel found on this phone and remov=
e
> > the simple-framebuffer that was in place until now
>
> Why? They should be able to coexist with a smooth-ish handoff

Does that work upstream? I'm aware that downstream can do this but
thought this was still missing upstream.

Didn't check what happens when you have both enabled.

>
> [...]
>
> >  =20
> > +&gmu {
> > +	status =3D "okay";
>
> Please kick the disablement from the SoC dtsi instead, it won't
> probe without the GPU being enabled

Ack, will include a patch in v2 for that.

>
> Konrad


