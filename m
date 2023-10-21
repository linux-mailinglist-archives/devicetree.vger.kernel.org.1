Return-Path: <devicetree+bounces-10552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7127D1E62
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 18:48:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1A40CB20EC3
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 16:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69754DDCC;
	Sat, 21 Oct 2023 16:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=trvn.ru header.i=@trvn.ru header.b="RmvO0iEu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5380CA52
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 16:48:17 +0000 (UTC)
Received: from box.trvn.ru (unknown [194.87.146.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DBD9C9;
	Sat, 21 Oct 2023 09:48:12 -0700 (PDT)
Received: from authenticated-user (box.trvn.ru [194.87.146.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by box.trvn.ru (Postfix) with ESMTPSA id 64C3141885;
	Sat, 21 Oct 2023 21:47:35 +0500 (+05)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trvn.ru; s=mail;
	t=1697906856; bh=yICm6dRSai3l3BNB3f2xPBxCmxJwxpldtGL7sOQDsbA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=RmvO0iEu77pUW+VBiQ6/14IhlkveueWvBgs/uAMqO8W3PHAkomMHaRlI1JAVI1NUH
	 e3/BCc9k+feKmhLqKBvrZZFMWvHXz0RClKFiy9ajs4lXoLTiELs7KTK1Tx2q7ZKO7V
	 OLY9gmYnW580+aRCxxdrR3s1pqf/g5l2jRqaRbsY1YbQqY9pAiYzMPPXkMV7tiR8g/
	 G5tmO1kZps6OU9vCI1l0y2BQF9Rda9G4FPzTNa8i9gYWzG4RRrAgM5505k0yD6Qd3h
	 brmb5wrakeSxVbpRbiwo9NqxzvsgnYP30iS0hRyUElxRyr9lN4toZMnKIP7QTkY5ks
	 aCJQ+aX25Jitg==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Sat, 21 Oct 2023 21:47:34 +0500
From: Nikita Travkin <nikita@trvn.ru>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Banajit Goswami
 <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown
 <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 jenneron@postmarketos.org, linux-arm-msm@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-sound@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] sc7180: Add qdsp baked soundcard
In-Reply-To: <ae070706-2f0a-4932-b917-b8cc9a59b46e@linaro.org>
References: <20231020-sc7180-qdsp-sndcard-v1-0-157706b7d06f@trvn.ru>
 <ae070706-2f0a-4932-b917-b8cc9a59b46e@linaro.org>
Message-ID: <2b5dfc98e82fed3d2eef9eca3912c089@trvn.ru>
X-Sender: nikita@trvn.ru
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Konrad Dybcio писал(а) 21.10.2023 21:17:
> On 10/20/23 17:33, Nikita Travkin wrote:
>> Some devices, such as Acer Aspire 1, can't use lpass dirrectly, but
>> instead must use adsp core to play sound. Since otherwise the hardware
>> is, usually, very similar across the devices on the same platform, it
>> makes sense to reuse the same boardfile.
>>
>> This series refactors the sc7180.c slightly and adds the functions to
>> control clocks via adsp instead of controlling the hardware directly.
>>
>> Existing google devices should experience no change.
>>
>> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
>> ---
> s/baked/backed, unless it's a nice bread :)

At least I was consistent in failing to pick the correct word...

If we get to v2, I will try to remember about those, but if not,
I guess I will accept the chance, that in a couple of years I may
wake up in cold sweat upon realizing that this mistake is forever
immortalized in the Linux git history...

Thanks for noticing this!
Nikita

> 
> Konrad

