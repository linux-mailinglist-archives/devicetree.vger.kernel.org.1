Return-Path: <devicetree+bounces-30945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA473829913
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 12:30:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 48EA2B24C3B
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 11:30:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D09C47A5C;
	Wed, 10 Jan 2024 11:30:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="oa4UMU8f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A304779D
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 11:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a28bf46ea11so704089366b.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 03:30:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1704886238; x=1705491038; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wtz+7SKzz9hrXYk9v1Im5ZeLktUFRpb9DhH87gAT8QU=;
        b=oa4UMU8f9mjsL1+9gLAnQGc7qlR2gvwXI9/2liENhu3hG/shWwOHGHJeoZZoVO3/OT
         /XfrHKnYvym70kLKh/tXF67jhJ3vflPY0FmhdnWQYZ34ok3Iz07vFLcR9n8sBxdXDiN0
         QSZw/ACvCG94iRPlKJ0XmEishyC34ym2aJp+VPeFsd1+OcOSdeKE87xdFGo/46Hc25e4
         +IVgNrsaD081SIBU2fSwifGJD5Ud8OjaHz1dEiCZABig8o3WO37nEFkwr+HkNlK8KXLZ
         MAthXvUbhbklKN/8XvWXlJrLj9N0mYPZpKNHejZ06m1NyDyXewJjBHRgKXW8TUyXnhbc
         tQGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704886238; x=1705491038;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Wtz+7SKzz9hrXYk9v1Im5ZeLktUFRpb9DhH87gAT8QU=;
        b=v8FNQjVeEEkklPrckX0xVaVkJLwRLpnEi+Z70s8NoGdWtx2492Mhl4BadxjywpPE44
         4F/QkhuWWNGHbAUQ63ZV7h6d/+tduC1bKE5cXKLAFOoeruOSxaWwyTAQGZCfcbE9Y+Eq
         RzzgfN7xskLW+3gHGrVvAcaNJQwaYK50ih/KAtCjvVzClCJLkEGT/MkhWCpGcSf5+6zk
         bkg5AI/nrLr9lI37a0qM8L2FcieK2DDkik/Ye5f+tEtu4jcg/y9GrYsuZ7vDYsoUYctV
         wBe8ryylQwW+CDwDqBBTQGMAjR7nQvXOzo+vkNqAgo5dZZatJzjbWOstByesYLfRUOIS
         ZKHA==
X-Gm-Message-State: AOJu0Yyg/QizUa/O08R0bj5uYuOXF7GqAMiOFua1b3OeJ8Tn0oEg9Ip5
	rNnabyTp/I/w7sGyvCxW+TJRb6/mBn4j3Q==
X-Google-Smtp-Source: AGHT+IEB3j3STyR03J4HjEjLzAll3scW8AwBkIZIUi1cKmGpqPuNFR86aXfkJfwks7yIurkH8kGntA==
X-Received: by 2002:a17:906:f82:b0:a28:26e9:a13d with SMTP id q2-20020a1709060f8200b00a2826e9a13dmr919135ejj.55.1704886238293;
        Wed, 10 Jan 2024 03:30:38 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id hb21-20020a170906b89500b00a28d438a1b0sm1992896ejb.83.2024.01.10.03.30.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jan 2024 03:30:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 10 Jan 2024 12:30:37 +0100
Message-Id: <CYAZQD6AWM6J.10P13VNGRYNPR@fairphone.com>
Cc: "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Jessica Zhang" <quic_jesszhan@quicinc.com>,
 "Sam Ravnborg" <sam@ravnborg.org>, "David Airlie" <airlied@gmail.com>,
 "Daniel Vetter" <daniel@ffwll.ch>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Thomas Zimmermann"
 <tzimmermann@suse.de>, "Rob Herring" <robh+dt@kernel.org>, "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm7225-fairphone-fp4: Enable
 display and GPU
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Maxime Ripard" <mripard@kernel.org>
X-Mailer: aerc 0.15.2
References: <20240105-fp4-panel-v1-0-1afbabc55276@fairphone.com>
 <20240105-fp4-panel-v1-3-1afbabc55276@fairphone.com>
 <3fdc6e74-d817-4341-bf64-9096608990d6@linaro.org>
 <CYAZ37LBKG4E.2096GKVUXN8Y2@fairphone.com>
 <2zkiop7xg7w4vkpjpol25qna5wwbq4ja5o6iwuqh25m34k6mgd@aemrbzqgx2oe>
In-Reply-To: <2zkiop7xg7w4vkpjpol25qna5wwbq4ja5o6iwuqh25m34k6mgd@aemrbzqgx2oe>

On Wed Jan 10, 2024 at 12:23 PM CET, Maxime Ripard wrote:
> On Wed, Jan 10, 2024 at 12:00:23PM +0100, Luca Weiss wrote:
> > On Wed Jan 10, 2024 at 11:58 AM CET, Konrad Dybcio wrote:
> > >
> > >
> > > On 1/5/24 15:29, Luca Weiss wrote:
> > > > Add the description for the display panel found on this phone and r=
emove
> > > > the simple-framebuffer that was in place until now
> > >
> > > Why? They should be able to coexist with a smooth-ish handoff
> >=20
> > Does that work upstream? I'm aware that downstream can do this but
> > thought this was still missing upstream.
>
> It depends what you call smooth-ish I guess, but KMS handles the
> handover just fine. You're likely to get a flicker during the transition
> though.

Right, seems to work. Also visually looks okay.

fairphone-fp4:~$ dmesg | grep "frame buffer device"
[    0.250511] Console: switching to colour frame buffer device 135x146
[    0.284146] simple-framebuffer a0000000.framebuffer: [drm] fb0: simpledr=
mdrmfb frame buffer device
[    2.576712] Console: switching to colour frame buffer device 135x146
[    2.604907] msm_dpu ae01000.display-controller: [drm] fb0: msmdrmfb fram=
e buffer device

I thought before that having two outputs like this would cause two
different framebuffers/display devices to appear, but yeah as I said
seems okay. Will change in v2.

Regards
Luca

>
> Either way, the DT isn't the right place to choose, you should enable
> both, and the distro will choose its policy through configuration.
>
> Maxime


