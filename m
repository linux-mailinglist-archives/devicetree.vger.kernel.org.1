Return-Path: <devicetree+bounces-199017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0E3B0F0E2
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 13:10:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DB3BA189967A
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 11:10:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8E4B2DC348;
	Wed, 23 Jul 2025 11:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="lH0nf79q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com [209.85.208.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6B04289E07
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:09:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753268979; cv=none; b=RF1QhfIPsfgDnMqn5f2/WkboVRuKimdCtg6Byz9W2g+ISjBcLcPE3Hu/yIfBJ3uf4mBvWurcdJC6mSMsDhCBS1tyMnhMvEzaPGVSVD8D/U9V42xkg54rMHBsgNywZFOTinXIYwnRh2eWAlK/ly49/U1pgLxWwdGV+xkhZolsos0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753268979; c=relaxed/simple;
	bh=RI4f/Z3SE/X4N72vDIGv1owBAPo8cR1uNdwgSgPfEhU=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=u8hA5okNQSorCfSEsDbMdhVZoNEHTuoyWp+0UjkYhvR5VoHsquTcTf052uAyqLMjb8jiwfncB+C2Edn+yk3zHTrKFr8ApjVy0uSfl3NRzcwh3LsD/YBZIYN0rng1oVyV6Cgl7EHuFB+O+VGkw6v4m6awl8iKVpzkDAuHB3rqARA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=lH0nf79q; arc=none smtp.client-ip=209.85.208.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f66.google.com with SMTP id 4fb4d7f45d1cf-60c4f796446so10119515a12.1
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 04:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1753268976; x=1753873776; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g3R+RLDGTGe3/dGYkfQsVctb8blA4LBzgoSO+v6ujHY=;
        b=lH0nf79q/KYhIRIi45N+vnmNP3b96ibkAJBkFIgfXPJjsMaSODNwST0V/AG3aQxJ3e
         FeGVrhZ20jk1u3yWxc/27UenH7HjHSyulUvKEinc1xUWggHiwMO9bbaBDvddOq3F/VPx
         JGf3Q4ZFanq3VyjyT3kZDPJKjCp1kFiPzhtexs6eApuvqWSDofiiZqRcMx2EMaVJBLRB
         /OZnG/IEMv9Un14BPiREjjLhA9QJXw0ds5wbqA0JmFofDWyisSne5C4Az4ffNzDfJrKm
         xgomlw5+qF8Ea9887re6EVOp4BIrBlVwyjrtjoqKr8pvaCpfiBxzoaMJyx7Ko3LB/rEO
         0LuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753268976; x=1753873776;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=g3R+RLDGTGe3/dGYkfQsVctb8blA4LBzgoSO+v6ujHY=;
        b=P3XhhpO/4586hHTclRbJLIgzcS1lu4Mpj1AZ9+13bFyMR3V9wzeWHb5hMVK5JJSF/t
         D/N6pSi3/0b7/thAgTvrjCuwsa8MYbxpTGNDYmNpnPkuM/DbPg1mMo/4PXZWBYMmTaHd
         CGAjXT0iVGcIJ+yNgVVcPpuAf5eVEH+l09UOctr7+HGVas45v7gresGGVdKi+xx6jfs6
         IUkTNJF7DMrKF6RLjWt4WnSPBdKJGp56iWhp5ujOTNYzasotCEwupZ8b/WLfg+2Oek67
         T0nSuWgaasux7VGQmB5/rZpwtliOWM+WwbMmUJdhAyhewdfPWMiAZ1wQ2vX33WuHiYlo
         8CeA==
X-Forwarded-Encrypted: i=1; AJvYcCXyAAdF3YMcnRvaCjqSQ8GHKMzW4IjA8FLbRP3fEhOzjH2Bxbao51SmJveBIcNiZn3NN1D9pyiQ+L8R@vger.kernel.org
X-Gm-Message-State: AOJu0Ywm9nO2uqV9w3/pWWUYEyLqAzh5PV5fmKYg2ej4fR8TKsy3q5JN
	cgiiB/A4bWauBfx7z9GB+XYIzQhAXMkA0Q/A7rauYY87t6PxntTFACMWkc2tAlKs9/8=
X-Gm-Gg: ASbGnctb+3fWYddwMsQm/YqxAaWCcFwV1Rod5sSgHnkLI1EyFmpo/CwRobybgMm8pdi
	TdaJlQ3OxZDCs5RrLZTZJjgYBT7MMJ/O10T95vphbFQPXFEyWk0IvXddPKHWHAzRrRgbOrL8TB1
	hX/fDHVswG0i3IIVKFUuEmG2Hi+HsOvMOCWT+6wpqY0mmBug1uurjCONxCvLtZiQXBOqXLLdP7v
	jeLl6MiN9E1J7g2VryCVIkRIaFUgct8dzj52Wcu8u5zNnXDwK/FPlYeui+s4bjzMkvnRtDd9AhY
	SwCUaBCkB7xiD2g9hZ2OpAv8PwxvtnfZrmjauHPp6LB2p8GyOYlVsTKSTI6dNOoTPWk/Wq9AA94
	OQKjkSjbsVRSK4JfF2q+vA6K/P/+oYHKnI5IVEojynVulTJ6Ofi27GlMkvNWiW/5Kp9A=
X-Google-Smtp-Source: AGHT+IEnlnbgewz5ArcfCq7ZHFS6Ryv2VXYRZKE9xkEMAwJ9/yNzgZ0lkdiJuTPpFfnJ3XOTmn+y8A==
X-Received: by 2002:a17:907:c26:b0:ae0:ca8e:5561 with SMTP id a640c23a62f3a-af2f6915e5amr241315066b.13.1753268976160;
        Wed, 23 Jul 2025 04:09:36 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6ca2eb90sm1033906466b.90.2025.07.23.04.09.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jul 2025 04:09:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 23 Jul 2025 13:09:35 +0200
Message-Id: <DBJDZBYHR94V.1QGVALCL60M1X@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Mark Brown" <broonie@kernel.org>
Cc: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Felipe Balbi" <balbi@kernel.org>, "Srinivas
 Kandagatla" <srini@kernel.org>, "Liam Girdwood" <lgirdwood@gmail.com>,
 "Jaroslav Kysela" <perex@perex.cz>, "Takashi Iwai" <tiwai@suse.com>, "Bjorn
 Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Wesley Cheng" <quic_wcheng@quicinc.com>,
 "Stephan Gerhold" <stephan.gerhold@linaro.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-usb@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski@linaro.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-sound@vger.kernel.org>, "Dmitry Baryshkov"
 <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v2 0/5] Enable USB audio offloading on Fairphone 4
 smartphone
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250501-fp4-usb-audio-offload-v2-0-30f4596281cd@fairphone.com>
 <DBDAPORDD5IM.1BHXPK225E2PP@fairphone.com>
 <DBHIM4SA3OIK.PXX6HMDE93B8@fairphone.com>
 <ac3f1eb2-5830-4bda-bc57-c4d29c22aba0@sirena.org.uk>
In-Reply-To: <ac3f1eb2-5830-4bda-bc57-c4d29c22aba0@sirena.org.uk>

Hi Mark,

On Wed Jul 23, 2025 at 12:57 PM CEST, Mark Brown wrote:
> On Mon, Jul 21, 2025 at 08:22:06AM +0200, Luca Weiss wrote:
>> On Wed Jul 16, 2025 at 9:19 AM CEST, Luca Weiss wrote:
>
>> > All dependencies for the patches have been applied already, so this
>> > series can land as well!
>
>> Is it still possible to pick up the sound patches (1-3) for 6.17? Dts
>> has been applied already.
>
> As previously discussed they won't apply until after the merge window.

Sorry about that, I thought the conflict was for the 6.16 merge window,
not 6.17?

The patches this depends on have been applied by you on 2025-06-09:
https://lore.kernel.org/linux-arm-msm/174950282564.277844.46348045130952041=
60.b4-ty@kernel.org/

So I'm not aware of another conflict, that's why I was asking in the
first place.

Regards
Luca

>
> Please don't send content free pings and please allow a reasonable time
> for review.  People get busy, go on holiday, attend conferences and so=20
> on so unless there is some reason for urgency (like critical bug fixes)
> please allow at least a couple of weeks for review.  If there have been
> review comments then people may be waiting for those to be addressed.
>
> Sending content free pings adds to the mail volume (if they are seen at
> all) which is often the problem and since they can't be reviewed
> directly if something has gone wrong you'll have to resend the patches
> anyway, so sending again is generally a better approach though there are
> some other maintainers who like them - if in doubt look at how patches
> for the subsystem are normally handled.


