Return-Path: <devicetree+bounces-194037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B19AFC86C
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 12:29:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 080A6165565
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 10:28:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24CA62BE035;
	Tue,  8 Jul 2025 10:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Xm8Sccn6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9B1274650
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 10:28:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751970486; cv=none; b=DoNbYUmdQwIY+VYwYc+rPzkKS/UjQINPI+fBJBWJpPPe3d5+E7aC3Ux0ghSGFaXE3E6jchxH4rMt7M+mcWrdT5SReqZJlsmUz8coIEESY8qBLmGTtERLVk3GYbVdQvwBTLgN6YpeOcwjS+HbF9o/AY6Bp9dcD5a2UIYYh9UtKvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751970486; c=relaxed/simple;
	bh=xCTHOoLkdgQybEw/3ClPgB6sXkkKcXIzJacv5a1kNQ4=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=KNCzXAYUyoGXGmQCQEas2YdAPFjPjw7BxPRV4Y9eUr1RkZ22u3Yw8Y7P9zUEZxEQjxAEsyq3Y0Mc7vc6l15l/SOwpi7/SBDueBfoN8bo1YhZ73lQiHnogKmHuOVsYDz6xGXLa3BRqEKHCNDHEIQL9n5rmB+epsPgTTr1rkPM+ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Xm8Sccn6; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ae35f36da9dso796765766b.0
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 03:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1751970481; x=1752575281; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JVV21gJNFvfXkrcluM+ctHAzr5MoawVmcTeL4xITtek=;
        b=Xm8Sccn6g+fIOw/1UgTMXMfJHRkXTxHeh7lnyug324Q2Yfixn91FM7iYrX/oWchM+o
         uVidExvPDCJ8Gi00lB+O269f0FFAKyh/qiLJC9sLZzm5oV/5F9ev9NO6ENxsh8ghspYt
         Zz/klc9S2ivwIDOXrOkWi3bt7k5PPcjKficHRssokf4hps3ruL5OCaBn1a7WkxcDOn7n
         JT/4qibsfY4thAz92QSeESeRMNO0c3R+cZB380KWx2lNSeu0aP0MxQkk7LGHdj1hs+hE
         k7G6sum77esRt1CsTIMhqc5ZVloi6dY4mdhLYzh2zWWo9SshbBj7biAqwadrUveGB5U4
         agiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751970481; x=1752575281;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JVV21gJNFvfXkrcluM+ctHAzr5MoawVmcTeL4xITtek=;
        b=nRXeoUKg5+WG0bol33o57QXslHayVg6mxJgERCVz8Gs7cAKtOPLnsnTkerMGauQUzq
         Wk8kEOs8Oku2vel72qVuNABMK/lRjsws9ETV4IPBAjCE4ahLEvldp3V+Wg7jR192gHMq
         tyYoyqC/z5brkizBChG26TEpfPaZb51ed4nZGY9nAfh8x0YwUj5oGhxPD2T1o5l2lOSq
         rlZXcxrfTIiMLo3C6AX4rQNFEyAcPknmfcV7pqqgxUH7sQoyWlJPb77qkGeF0lVJgxx4
         4tZKSBAFgGUyrYLCbbBtmYQrOCTxJxUAsAm74x5f8ED9AnKn697k2+AImTWsOakda20k
         gvtQ==
X-Forwarded-Encrypted: i=1; AJvYcCUWetKtn9SYB9o4jypHiMfyyTqz8jowlCRYOFFs5R6qVl/l1iCyEwxEwpLQIA1TJ5iTtvajKcBH6ss/@vger.kernel.org
X-Gm-Message-State: AOJu0YwXl3LJIrbTthQ3H5KhHb2jE39WxoUSGQlYnVlnO15KKMZ7SfZR
	75ZByWyooh8l5n057TXcG2ybDlN+5aVPxvYliQo/A3axLOkj9xvAyLMuZkeoT06ZtRA=
X-Gm-Gg: ASbGncu4wJcRHLKNgO6ijwXAkfepInK+zM8EsXeoQuyjhlkhXZub9Vmd5VafDdjopoW
	/ZanPEy+uOh6/mf6KJpANoZ3o+Y6o7LONVbV3ZYGWM0byRrsK8KyiQIvEX63HUYle8yTt1DXxGv
	lE1rOShNt/ETzHfJhAyoijG8UeJH+8PaQo05DndDN5gYMQnLOJ5utyHM0JifUugCru29oEKkusc
	qydE7vY5w1yCnbEI7H9obwiDgBJ3r5t5YQL7YLUcruew6miMiW57+WgUCI2UqkneREPSwVFjJX/
	8YF9v7kHvKKqJbLVpuAQ+TdLFtPK9T4WvccnXPX69+n/zX0CkcfI8Cn9eRTjxrjLLq6EjwOX3Mq
	KeoHHvSBcYaa0R0r7xotK4M9al1atDO4=
X-Google-Smtp-Source: AGHT+IHaVz54M2Q9j7+0i4eoVqmwHKKm2/tqIC6pa1mIZEuAjoN4jfZ6/QMktPzCNPmSHVfF4oInMA==
X-Received: by 2002:a17:906:751:b0:ae3:b22c:2ee8 with SMTP id a640c23a62f3a-ae3fbd8b392mr1292958866b.37.1751970481431;
        Tue, 08 Jul 2025 03:28:01 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b6007fsm860633366b.166.2025.07.08.03.28.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 03:28:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 08 Jul 2025 12:28:00 +0200
Message-Id: <DB6LPBOU5TDL.13B4A6U4NQQZQ@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-pm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] interconnect: qcom: Add SM7635 interconnect
 provider driver
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Georgi Djakov"
 <djakov@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250625-sm7635-icc-v1-0-8b49200416b0@fairphone.com>
 <20250625-sm7635-icc-v1-2-8b49200416b0@fairphone.com>
 <3f8bcecb-4c5e-48b1-98be-96f3c0c8329e@oss.qualcomm.com>
In-Reply-To: <3f8bcecb-4c5e-48b1-98be-96f3c0c8329e@oss.qualcomm.com>

Hi Konrad,

On Fri Jun 27, 2025 at 2:48 PM CEST, Konrad Dybcio wrote:
> On 6/25/25 11:13 AM, Luca Weiss wrote:
>> Add driver for the Qualcomm interconnect buses found in SM7635 based
>> platforms. The topology consists of several NoCs that are controlled by
>> a remote processor that collects the aggregated bandwidth for each
>> master-slave pairs.
>>=20
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>
> [...]
>
>> +static const struct of_device_id qnoc_of_match[] =3D {
>> +	{ .compatible =3D "qcom,sm7635-aggre1-noc",
>> +	  .data =3D &sm7635_aggre1_noc},
>> +	{ .compatible =3D "qcom,sm7635-aggre2-noc",
>> +	  .data =3D &sm7635_aggre2_noc},
>> +	{ .compatible =3D "qcom,sm7635-clk-virt",
>> +	  .data =3D &sm7635_clk_virt},
>> +	{ .compatible =3D "qcom,sm7635-cnoc-cfg",
>> +	  .data =3D &sm7635_cnoc_cfg},
>> +	{ .compatible =3D "qcom,sm7635-cnoc-main",
>> +	  .data =3D &sm7635_cnoc_main},
>> +	{ .compatible =3D "qcom,sm7635-gem-noc",
>> +	  .data =3D &sm7635_gem_noc},
>> +	{ .compatible =3D "qcom,sm7635-lpass-ag-noc",
>> +	  .data =3D &sm7635_lpass_ag_noc},
>> +	{ .compatible =3D "qcom,sm7635-mc-virt",
>> +	  .data =3D &sm7635_mc_virt},
>> +	{ .compatible =3D "qcom,sm7635-mmss-noc",
>> +	  .data =3D &sm7635_mmss_noc},
>> +	{ .compatible =3D "qcom,sm7635-nsp-noc",
>> +	  .data =3D &sm7635_nsp_noc},
>> +	{ .compatible =3D "qcom,sm7635-pcie-anoc",
>> +	  .data =3D &sm7635_pcie_anoc},
>> +	{ .compatible =3D "qcom,sm7635-system-noc",
>> +	  .data =3D &sm7635_system_noc},
>
> One line per entry, please
>
> In addition to what Dmitry asked for, please also look into porting
> QoS settings - those will require additional clock references in the ICC
> nodes and as such, the bindings will be altered (which we'd prefer to get
> right from the getgo).

I've forgotten to do this for v2, which I've just sent.

But we already have the clock references in the bindings, so the
bindings should be final, also when QoS is added, so just a driver patch
then.

I will put this on my todo list for a future patch to enable this, if
that's fine with you.

> As far as testing goes, there may not be any apparent perf changes, but
> if you get the clocks list wrong, the device will lock up at boot (unless
> you're booting with clk_ignore_unused and friends)

Ack

Regards
Luca

>
> Konrad


