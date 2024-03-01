Return-Path: <devicetree+bounces-47621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6CB86DE55
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 10:32:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 30DC5B22D26
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 09:32:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0D836A354;
	Fri,  1 Mar 2024 09:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="fZoVZco/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872EF69DEA;
	Fri,  1 Mar 2024 09:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709285568; cv=none; b=JjTNNM/pEEv/TrEIp4bHWCdGR+5edy5yimyLNW2jwDtYMlr8Qd7kctu9gSLG1EVlBXRVQnfKnHokcirD5vK2MuSjviCG804pnt+4elLsR3MVrxiEN+nvpY2DrK+aH7t2d8QzSKzGzVTf2DknV9RicVSQO3T/lP6B+Akx52Vxcoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709285568; c=relaxed/simple;
	bh=DC2Cad3KEwAqbvBLXkQCORcnJPwGKb3sLm5mgUrejMk=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=pbzsnCNUyL5i1MQ+drx38giPSFYjPkqY5kNzltsxu+08MchvnXx4745umWSpJso9rtLAHkReX+Gu9cuHb5ydyis+yKKaWdONsuNDvhXpy9W+HLXQvXr7bKSc3jn/AQMweM8q9iBjvqNRm8yQhZFo2yk/C5pHbzPEBwxcIEBX2qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=fZoVZco/; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709285564;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xWnCAqlRky59uzjgS2pvvw8UDh0s4NIkuKC9sP6iSjQ=;
	b=fZoVZco/LUMLOlBuONfLUCRLh+wagOo3Ww6wG7ahhpmduuxyVjk/j2fYLtIT1XAhZ/U9BM
	9+lw44/haRw7Dqzn7MWn7C/KPCbTq0rPOjdXN+S9B3LbxTVMtochpLyxjKUS9cFIDkaUvI
	FUvhkZpgD1UhcavQoSbJon8jUFYmVscsqWZXAqgi25iSnf87TB0ncW89L4BigG3MFsvzDA
	mXFNOSBNJbAuakQCMrB0sKM9tzOd5jDV/Wpm4IA7amOtF4T2xH4lvdbEPEjn4ykjoUoYDS
	e1Z2vwOY3R55GgvhU7WROc2N5hBd4X2Uf7XDty6+LQO7vePZq/qBgszUDuh4RQ==
Date: Fri, 01 Mar 2024 10:32:43 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu
 Tsai <wens@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/5] arm64: dts: rockchip: enable automatic active
 cooling on Rock 5B
In-Reply-To: <CABjd4YwAq28C6gKTJKJdZQ_Fw1oEjR475oTS96xEXRj=XQ5_pg@mail.gmail.com>
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
 <20240229-rk-dts-additions-v3-2-6afe8473a631@gmail.com>
 <823379825559bb76088c31f44f998dd3@manjaro.org>
 <CABjd4YybaQnKm+VpU_xVrCb=pxQ7oQXPHGZzn_u1w_h3yn7gwg@mail.gmail.com>
 <a8ebe39b28a34c3544481a4e43e61d2b@manjaro.org>
 <b16f1d40549554598a3658679ceba9bf@manjaro.org>
 <CABjd4YwAq28C6gKTJKJdZQ_Fw1oEjR475oTS96xEXRj=XQ5_pg@mail.gmail.com>
Message-ID: <45f5c18094d9e2f8861c5d9ff37ad124@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-03-01 09:30, Alexey Charkov wrote:
> On Fri, Mar 1, 2024 at 12:25 PM Dragan Simic <dsimic@manjaro.org> 
> wrote:
>> On 2024-03-01 07:17, Dragan Simic wrote:
>> > On 2024-03-01 06:21, Alexey Charkov wrote:
>> >> On Fri, Mar 1, 2024 at 1:25 AM Dragan Simic <dsimic@manjaro.org>
>> >> wrote:
>> >>> On 2024-02-29 20:26, Alexey Charkov wrote:
>> >>> > This links the PWM fan on Radxa Rock 5B as an active cooling device
>> >>> > managed automatically by the thermal subsystem, with a target SoC
>> >>> > temperature of 65C and a minimum-spin interval from 55C to 65C to
>> >>> > ensure airflow when the system gets warm
>> >>>
>> >>> I'd suggest that you replace "automatic active cooling" with "active
>> >>> cooling" in the patch subject.  I know, it may seem like more of the
>> >>> unnecessary nitpicking, :) but I hope you'll agree that "automatic"
>> >>> is actually redundant there.  It would also make the patch subject
>> >>> a bit shorter.
>> >>>
>> >>> Another option would be to replace "automatic active cooling" with
>> >>> "automatic fan control", which may actually be a better choice.
>> >>> I'd be happy with whichever one you prefer. :)
>> >>
>> >> Sounds good to me, thanks!
>> >
>> > I'm glad that you like it. :)
>> >
>> >>> Otherwise, please feel free to add:
>> >>>
>> >>> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
>> >>
>> >> Thank you Dragan, much appreciated!
>> >
>> > Thank you for putting up with my nitpicking. :)
>> 
>> Perhaps the following tag would also be deserved for this patch:
>> 
>> Helped-by: Dragan Simic <dsimic@manjaro.org>
>> 
>> I hope you agree. :)
> 
> Definitely! Thanks again for your feedback and contribution!

I'm glad to help. :)

