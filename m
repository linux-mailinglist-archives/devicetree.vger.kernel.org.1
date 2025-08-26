Return-Path: <devicetree+bounces-209318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B85AB3592F
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 11:38:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 53E79206A72
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 09:38:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE69E31AF36;
	Tue, 26 Aug 2025 09:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bIYOhQPi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9705E310647
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 09:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756201040; cv=none; b=cwmV6bplrRz0M+nPpHmigq3zPkTMDZvq112qDnDFrPVo5V/18rgURxuUXzQXVLmzZLBwGdYtceJG5wPrIV4nnXQk2OcdR+RW4Ilx4Hu68tm273On+cprxbY9vfdNcjxCHWf1wPNpmjPYEN8FFlrmr/+AlylcjXN+ndn/z+MO9HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756201040; c=relaxed/simple;
	bh=hL0Hr6jYqYEbDXRMZ0OdI59nC7QIyOL8hWqNW+Mahq4=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=QSIk6t6zum75wenEh1UEpmlAvfjsV2W4AwF7XNon4Vr7/ZnrVn133CB33vCAEgLi1TmpFu6Wji1BKIauo08oNvxT2S/xfktiKjfCA7yiWTGpRXZRR/sm5iUG14ztsSBvCAL0pQrQZiYU/8F9xTIVVd7YtgZ4s6PSmhPzIRG0++0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bIYOhQPi; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45b618e067eso11626555e9.1
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 02:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756201037; x=1756805837; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hL0Hr6jYqYEbDXRMZ0OdI59nC7QIyOL8hWqNW+Mahq4=;
        b=bIYOhQPifDe4lZ6bNSOChpS8vN9lXRcdVu/rZiMZHCPuj0MrQCnUNjkdRkTN7gjc8v
         /ssbfpiRPi1MENMVfbfoRa/QbH83Q2gkvDvPmY9DMFfw5L9ToPyi8ucXcOvGkLkK48iD
         NR6Ol4KRWo0RgsYpbdt45+gjxcx0ZEpzVkCsiXyP2Z76ry+H0+Qdw1JQSWvtfbeLRaVU
         QVZSK7h4evDIo5kuB1v/JOtzKXv8kQ7XM+QWlGZ4vSUQ1ivtdOzQ8u6ccfL8rnvbatrE
         8NlcsiNk0yDM+UHUZbTgyN+tLVyDzTWk/PPHWmZCcgOicJiDbiRSH07S6wEjiIabquaV
         KNMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756201037; x=1756805837;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hL0Hr6jYqYEbDXRMZ0OdI59nC7QIyOL8hWqNW+Mahq4=;
        b=EX0ac5/miLcZD4Jul3S7TLEqTyCE1pQIPIqf3lehroYtU88uNqJzmcb4XNmUl60sgp
         TRRvp7dr+rxSn5izhx/Vt5gOhw1mcmh9vMU0Nj1RAL64fEffVaR4TOPh1oh3ae/K8jv7
         FYM0FRtOL2+WXUkkxocNn8K/x51mRSgDHltH5BQGfXOqgi+GOGypovhzxbDxfXWvE4bG
         ADbercFf1/B0tbM+rQr1ZNopMN1bfhq+RwEZ6wKtzJb5HXmGk/yG2CYYmZ2FNdWZbj8t
         ouCmIiNDm9MHoU39lKAXBluXkbL1Anctlu+DyqDr9CZ117/5q/HZyajzMG5wLV2Ctjzy
         bJmQ==
X-Forwarded-Encrypted: i=1; AJvYcCWVbxkXuPpoV+ZpyPoOSqycSkXOxTMVLtzsQSb1ZzF9E1hwi57iMhBMfaFz1bljNUPZr9NLe3wq4+Qx@vger.kernel.org
X-Gm-Message-State: AOJu0YwGhrEzo00sFhYvuDCU6f5B1DvpnQ2sSbQaeH0QNGOdie1ze5PT
	tNk8Q1tcNPMDsbt1YBQ/GlrFYKAOppq8TVFQpTQ9YaObF2HzLz+u1zofYWfj23rm9tw=
X-Gm-Gg: ASbGnctQ8l67qwHpnJ1N4JgtvZ68zoaHizo6HpWnPcUS2LSSmeWexVisQYTvfJb3z28
	nhoYDMpM03lIqC5vFrXImwHPKp40xaDGFivsBabtvMMQXMKw/FsWxC/FZl9KGWp6uq+ePesep2r
	TRbAxQY4kzVX3OuH2dqCs6IG9svZDCOQkfkIg2yhQGt+T1uSx3OOh48cVsjQ6R66GLwzC36H2YF
	m/z6qon7WGm2I6ZkILFuWq5bW+3D0jGvqA0Y7U6Vjgu5DEB6Z5oMc/JSU0wo9VUUB06zS0oybru
	QXywp8rCCG/9RJ6kUjs9l5X4buJtCGUMe6y9dKqjgIvnqVD5cU4MAlWfi5i3JDunRtv0zEKo+6r
	c+RqSnruWd12SZI0M5y+KoshelSE=
X-Google-Smtp-Source: AGHT+IGrDK+quNOm+R+59A34XZn3umLuzfZj+sWAvq95GJr+cP+OmXy85+fBFYFu/LRVhA4av2Y1tA==
X-Received: by 2002:a05:6000:4006:b0:3ca:2116:c38c with SMTP id ffacd0b85a97d-3cbb15ca336mr851001f8f.2.1756201036785;
        Tue, 26 Aug 2025 02:37:16 -0700 (PDT)
Received: from localhost ([2a02:c7c:7259:a00:e633:2c7e:2d3c:f5ec])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c711f89a11sm15275246f8f.64.2025.08.26.02.37.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Aug 2025 02:37:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 26 Aug 2025 10:37:14 +0100
Message-Id: <DCC9B5C7SSU2.GRI1UY0VUDHF@linaro.org>
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Cc: "Praveen Talari" <quic_ptalari@quicinc.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-serial@vger.kernel.org>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>,
 <linux-kernel@vger.kernel.org>, <dmitry.baryshkov@oss.qualcomm.com>,
 <psodagud@quicinc.com>, <djaggi@quicinc.com>, <quic_msavaliy@quicinc.com>,
 <quic_vtanuku@quicinc.com>, <quic_arandive@quicinc.com>,
 <quic_cchiluve@quicinc.com>, <quic_shazhuss@quicinc.com>, "Jiri Slaby"
 <jirislaby@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <devicetree@vger.kernel.org>, <bryan.odonoghue@linaro.org>,
 <neil.armstrong@linaro.org>, <srini@kernel.org>
Subject: Re: [PATCH v7 7/8] serial: qcom-geni: Enable PM runtime for serial
 driver
X-Mailer: aerc 0.20.0
References: <20250721174532.14022-1-quic_ptalari@quicinc.com>
 <20250721174532.14022-8-quic_ptalari@quicinc.com>
 <DC0D53ZTNOBU.E8LSD5E5Z8TX@linaro.org>
 <577d05d4-789b-4556-a2d2-d0ad15b2c213@quicinc.com>
 <dcad137d-8ac9-4a0b-9b64-de799536fd32@kernel.org>
 <DCC8WLEKNS8W.9GAJHQGYPZIY@linaro.org>
 <8689a8b4-75cb-4f01-ad6c-0a8367851257@kernel.org>
In-Reply-To: <8689a8b4-75cb-4f01-ad6c-0a8367851257@kernel.org>

On Tue Aug 26, 2025 at 10:21 AM BST, Krzysztof Kozlowski wrote:
> On 26/08/2025 11:18, Alexey Klimov wrote:
>>>> May i know what is testcase which you are running on target?
>>>
>>> Boot the board?
>>>
>>>> what is target?
>>>
>>> It is written in original report. Did you even read it?
>>>
>>>> Which usecase is this issue occurring in?
>>>
>>> Boot?
>>=20
>> FWIW, what said above by Krzysztof is correct, there is no usecase, just=
 booting the board.
>>=20
> 12 days and nothing improved, right? if this was not dropped now,
> Alexey, can you send a revert? Author clearly approches stability with a
> very relaxed way and is just happy that patch was thrown over the wall
> and job is done.
>
>
> If you do not want to send revert, let me know, I will do it.

I am okay with sending revert, just trying to see if there is any interest
in fixing this.

Thanks,
Alexey


