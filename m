Return-Path: <devicetree+bounces-71308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DB88D64C2
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 16:48:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B3B0E289211
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 14:48:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 119A75644E;
	Fri, 31 May 2024 14:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=savoirfairelinux.com header.i=@savoirfairelinux.com header.b="dOdOJWcE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7849558B9;
	Fri, 31 May 2024 14:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=208.88.110.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717166899; cv=none; b=dcXnRmyOsBSObhrvm+twPMK3O6K1QhI6rUbkyfTmZ3xYzMwOQ5Ll6BLunEGAIbZyTSneYvxni4nIozA1PLxLI/rbUEGYXCnlFWju4qu30BqUKBgDgB41QjzFSxVwIdPD40M1ndmpTUbxm7GbPQx4Z9JEbjfviqmPhGY8ClpcL5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717166899; c=relaxed/simple;
	bh=fbwm0L2czEYAPW6jgiLOul/mhTB+DhMoOqJhXVu2zTE=;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
	 MIME-Version:Content-Type; b=rrKaydUEi/LUozKBFB5nIa3ZSK5GVxKAZyl8xrosHfrwHe0oEiZv43i4jjMnO4ojN/3NJbD4D/K+JmFv7CX0LqTYqiwyrZlqL8+uVz33TlGz/153DjEQL1XHsgwToW91rNDCGJmtb8jl6mgseafFWxJeY57RQlT4sUANkVtJrOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=savoirfairelinux.com; spf=pass smtp.mailfrom=savoirfairelinux.com; dkim=pass (2048-bit key) header.d=savoirfairelinux.com header.i=@savoirfairelinux.com header.b=dOdOJWcE; arc=none smtp.client-ip=208.88.110.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=savoirfairelinux.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=savoirfairelinux.com
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 36E239C53DB;
	Fri, 31 May 2024 10:48:14 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id OWmkbaQti6vx; Fri, 31 May 2024 10:48:13 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 328EF9C584C;
	Fri, 31 May 2024 10:48:13 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com 328EF9C584C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1717166893; bh=4gJOT2TZM2vOr96kCkDrX091SaTjqssoW8NSELgeEzE=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=dOdOJWcEsLtRJnvmZHrd7joAl03hH1oLp9K4prLenwv82raBUOBImRW4hxEktPxXA
	 EYyPIxUtmyJFKap11cje6hg71HRxQKTFEn+8oTyaqpLhSw6XWZxobCVOr3RKeAyNtn
	 x6bfE1KhLhAnYzMWhEc/DwzKbfQ6CZQfBckFeP4mRXK/MV0SUpO+GcklsYZTOkb+Kj
	 XL15epmwTYJ2exGvzlIFi0qyvm+CXfbfeb9JdK32vJSszSUNpgKPGzrW/RVr/BK9LU
	 LjYSQyTy1TVR+0E/uNLt0Vox/0OiDrYus5FMBOIThFzilOQk0WOgkuVJgf6kRhLJTK
	 1VeDckfjArpdQ==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id 7DO2Pw_eVkH3; Fri, 31 May 2024 10:48:13 -0400 (EDT)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [192.168.48.237])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id E7B269C53DB;
	Fri, 31 May 2024 10:48:12 -0400 (EDT)
Date: Fri, 31 May 2024 10:48:12 -0400 (EDT)
From: Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	shengjiu wang <shengjiu.wang@gmail.com>, 
	Xiubo Lee <Xiubo.Lee@gmail.com>, Fabio Estevam <festevam@gmail.com>, 
	Nicolin Chen <nicoleotsuka@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	linux-sound <linux-sound@vger.kernel.org>, 
	devicetree <devicetree@vger.kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	alsa-devel <alsa-devel@alsa-project.org>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Message-ID: <1200863744.706237.1717166892907.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: <826f6c22-d1f1-42ce-a8d1-2d5cb894a970@sirena.org.uk>
References: <20240515135411.343333-1-elinor.montmasson@savoirfairelinux.com> <20240515135411.343333-8-elinor.montmasson@savoirfairelinux.com> <ffb3624f-2170-4642-aaa5-fb6736a75d59@sirena.org.uk> <822567441.349330.1715936735603.JavaMail.zimbra@savoirfairelinux.com> <da74d276-b028-448b-bb28-295de49dbcda@sirena.org.uk> <1660761484.701255.1717159615755.JavaMail.zimbra@savoirfairelinux.com> <826f6c22-d1f1-42ce-a8d1-2d5cb894a970@sirena.org.uk>
Subject: Re: [PATCHv4 7/9] ASoC: fsl-asoc-card: add DT clock "cpu_sysclk"
 with generic codec
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailer: Zimbra 8.8.15_GA_4581 (ZimbraWebClient - GC112 (Linux)/8.8.15_GA_4581)
Thread-Topic: ASoC: fsl-asoc-card: add DT clock "cpu_sysclk" with generic codec
Thread-Index: KvvrpDg7ywtOAT1UfAfWnw0nFmtERw==

From: "Mark Brown" <broonie@kernel.org>
Sent: Friday, 31 May, 2024 15:05:28
> On Fri, May 31, 2024 at 08:46:55AM -0400, Elinor Montmasson wrote:
>> From: "Mark Brown" <broonie@kernel.org>
>> > On Fri, May 17, 2024 at 05:05:35AM -0400, Elinor Montmasson wrote:
>> >> From: "Mark Brown" <broonie@kernel.org>
>> >> > On Wed, May 15, 2024 at 03:54:09PM +0200, Elinor Montmasson wrote:
> 
>> >> >> +		struct clk *cpu_sysclk = clk_get(&pdev->dev, "cpu_sysclk");
>> >> >> +		if (!IS_ERR(cpu_sysclk)) {
>> >> >> +			priv->cpu_priv.sysclk_freq[TX] = clk_get_rate(cpu_sysclk);
>> >> >> +			priv->cpu_priv.sysclk_freq[RX] = priv->cpu_priv.sysclk_freq[TX];
>> >> >> +			clk_put(cpu_sysclk);
>> >> >> +		}
> 
>> >> > I don't really understand the goal here - this is just reading whatever
>> >> > frequency happens to be set in the hardware when the driver starts up
>> >> > which if nothing else seems rather fragile?
> 
>> >> The driver allow to set the sysclk frequency
>> >> of the CPU DAI through `priv->cpu_priv.sysclk_freq` when calling
>> >> `fsl_asoc_card_hw_params()`.
>> >> Currently it is hard-coded per use-case in the driver.
> 
>> >> My reasoning was that with a generic codec/compatible, there might
>> >> be use-cases needing to use this parameter, so I exposed it here via DT.
>> > 
>> >> Is it a bad idea to expose this parameter ? This is not a requirement for the
>> >> driver to work, most of the current compatibles do not use this parameter.
>> >> It is currently used only for `fsl,imx-audio-cs42888`.
>> >> In that case I can remove this commit.
> 
>> > I'm having a hard time connecting your reply here with my comment.  This
>> > isn't as far as I can see allowing the frequency to be explicitly
>> > configured, it's just using whatever value happens to be programmed in
>> > the clock when the driver starts.
> 
>> In v3 I used parameters `cpu-sysclk-freq-rx/tx` to explicitly
>> set the frequency.
>> In its review Rob Herring said that the clock bindings should
>> be used, so that's why I changed it to use this `cpu_sysclk` clock.
> 
> So you're trying to use this as the audio clock?  There's no code that
> enables the clock which seems worrying, and I'd expect that if the
> device is using it's own clock the device would be querying it directly
> via the clock API rather than this.  This all seems really confused.

It's not specifically the audio clock, I am merely using this
in the machine driver to let the user the possibility
to configure the CPU DAI sysclock frequency.
The CPU DAI and codec drivers already manage their
own clocks.

I agree it is confused, I am trying to expose a driver option
for this generic compatible without really knowing a use case where it
would be needed.
With the S/PDIF it isn't needed, so I should probably remove this commit.

