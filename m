Return-Path: <devicetree+bounces-238809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D72C5E399
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 17:28:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 975DB353A93
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 16:08:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61CBE3271E1;
	Fri, 14 Nov 2025 15:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="oJ88zzv/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3E831DDBB
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 15:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763135971; cv=none; b=HycZn0D5nIXKlKwlk2vsALtnwySKVtqeoZ89tYUrAZNEHcptcOJS8MAkv5kN8gGlyaRTV4vfXGK6UCuOdDKMqiIa2PiDUrpseHnfqE/5iyPjwByi4Zd0KC2erZ57r09xsX9posJcL0d2ZANRgOmJlzan/XuqTTE0sGJlTmHEedg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763135971; c=relaxed/simple;
	bh=yXgFpiaxg0LZlcZZHrI9y6mWIPy0APOxvyrLswjcxuo=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=ryKmAzr0GTXLoPyNJ7WraVGJuaY/C3wS4QM3g53t92WtkaXoWVcwzWXFlk7u0J6IAufux5ORxGCfQWbsag7oBa1KMAXupofJP5aXLbG5lQ725a7CUXW5L34ACcV7SKGgQ60zkfrUIv05wtz8ggx76a0MdxF2NIktykVQIjmXBHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=oJ88zzv/; arc=none smtp.client-ip=209.85.218.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f68.google.com with SMTP id a640c23a62f3a-b713c7096f9so273130466b.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 07:59:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1763135966; x=1763740766; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yXgFpiaxg0LZlcZZHrI9y6mWIPy0APOxvyrLswjcxuo=;
        b=oJ88zzv/L6p11dI3kq9GolQii0X1LIitDEiGab06zALjLLGcKy/2pUt/AiIdWcBaj+
         t7LeXLBj4WKebtmH1wfCs2K8ap4pH/IMSIChyi3vpYe6K5JR1TRwTG6hyyhjdHvirNlL
         JzEpC4dUzprfsWOdsJFf7/YIEhCzYnO7QQwhXmS4gL8d/cTy/dRPRYeN5DYzE3y+ZJus
         6cZ3JVRwj6OWitFAxGyVeWLmPPYJj+dIqUdh85s7btp/ncy3ApPFUkGD55HgsnblooxM
         jJGwj+q1HslgvaUSF+SNHnqI2qqJ8iYHggQVYKEaA4rxyquj7kuNajK49+6ZtmYhKng+
         t0SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763135966; x=1763740766;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yXgFpiaxg0LZlcZZHrI9y6mWIPy0APOxvyrLswjcxuo=;
        b=RZLU8qJpQ6sQjZ8wIcc9UI9l+Ts7ErCzbCpsZgq7JjmqZWt7S7QKhemn0GYqRPRMWz
         ss/cVoK8JydlXbui45ELUzCqkbQX24S2QyRZEI4FUEtwhflThoH4KGKdA683WVmGFbuC
         WpfvZiiyqAw6qY25G+ydZkls58iGV6xnXAMqQuqL4YzLvvtsvoq9OfCC1xiGWHhDLDuQ
         oJqk1MXzKqrAKjMq/4kdqPUPQKKaH+jO9oI/MdaGsMv6RRX0Ou5t02DJy/UDfbgWJlNt
         A5cUhVE3UJY0+JiIl6blMrmM3htotJY7hyjjv17XZWEo0fUlakLUzNH6Sun/lyeXnyNC
         ohNA==
X-Forwarded-Encrypted: i=1; AJvYcCWA13SZFUG7Nu9M8jqCFD+WItY0zIfcluKm15IO3+pv04QFrbp7SyNTsXfq5T6Ov2VeTCcV1MFxW+nC@vger.kernel.org
X-Gm-Message-State: AOJu0Yysk0O1idRFTTGvPKh9+7ErbtY4vD+kt6oGguGtWlv/oTaQS/gC
	tmZ/dTs+VIh+1xWzSD9fte+7WBOfWK9HLm2BBi+Irqw1hsnLyOD4g6+kwowMUqVhmzM=
X-Gm-Gg: ASbGnctWg7DjCWIYOjOmv1WSkPb+1XBSfTs/KO8+8CgYD5MXRfS44CdURYFr2vqJv4Y
	rQsZ0WpvTnUghtT3QJ8QWRKXk5+gTt75MlmKJpLwjXVSxu81EKuN4QtryxLiATMUuogEQqlWKRi
	frajM5iQ1cXOZbRlKwTLTpd37UIZfObr5NA9cG39e/lLL55s8dDrUKH8VKlUtaKjDSMUZCkNzKy
	IxlvROD3eCQrSJwhxbmlM+gC0WRlRdApuQXWmRw7Sz2hZRe6YJ4iRL/+eGiyXuVl+UiLR9FoGjq
	iq7R+Twd0Pz5XMnVO4wDeSUyO+5Zu13HsVP9wjx5NganX582YRC2fH1ePBBxpEJaoSfi5Cl1+Wv
	iu7YkgP3u8bx2YSIpy8p+zNsfkguM1jSpKvoM3MLRtP8YgwpugcSAOL7u7D6M4OBiqAqli/4OtK
	dbLU9+kCRsFsrAhha9VD2kTF0uA2+c+qeJx0TjYThnHmMNuIwSI9MPeC4pE+Ubhlg4Ye5RFqQMq
	yqmzyREQAPdY86Eet6RvI4=
X-Google-Smtp-Source: AGHT+IGWzubFZLtvC9cNEOlO/RkzPlBtEEASvIevatDsvh+QoQs8cTds4ZRPcjtgHk3tw2xqDW/ZxA==
X-Received: by 2002:a17:907:1b04:b0:b72:ddfd:bc5a with SMTP id a640c23a62f3a-b736780b420mr340472466b.14.1763135966460;
        Fri, 14 Nov 2025 07:59:26 -0800 (PST)
Received: from localhost (2001-1c04-0509-ec01-156d-fa6e-7f19-0b67.cable.dynamic.v6.ziggo.nl. [2001:1c04:509:ec01:156d:fa6e:7f19:b67])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad41cesm406031466b.16.2025.11.14.07.59.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Nov 2025 07:59:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 14 Nov 2025 16:59:25 +0100
Message-Id: <DE8JJCQA0C4Q.35NEED7XG0K0V@fairphone.com>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-media@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 0/3] Add CAMSS support for SM6350
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Bryan O'Donoghue" <bod@kernel.org>, "Luca Weiss"
 <luca.weiss@fairphone.com>, "Robert Foss" <rfoss@kernel.org>, "Todor Tomov"
 <todor.too@gmail.com>, "Vladimir Zapolskiy"
 <vladimir.zapolskiy@linaro.org>, "Mauro Carvalho Chehab"
 <mchehab@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <3ph8XeidoxkUIsK7qiOH29pde94sdwa3ReWKVVrPabgS5enIAmwVAC5plyFnBMJGKQBnxFB6df6j69OMFIeavw==@protonmail.internalid> <20251114-sm6350-camss-v2-0-d1ff67da33b6@fairphone.com> <df4a6a77-9004-4dbe-9b11-7af2bea7e068@kernel.org>
In-Reply-To: <df4a6a77-9004-4dbe-9b11-7af2bea7e068@kernel.org>

On Fri Nov 14, 2025 at 4:51 PM CET, Bryan O'Donoghue wrote:
> On 14/11/2025 11:15, Luca Weiss wrote:
>> Add bindings, driver and dts to support the Camera Subsystem on the
>> SM6350 SoC.
>>=20
>> These patches were tested on a Fairphone 4 smartphone with WIP sensor
>> drivers (Sony IMX576 and IMX582), the camera pipeline works properly as
>> far as I can tell.
>>=20
>> Though when stopping the camera stream, the following clock warning
>> appears in dmesg. But it does not interfere with any functionality,
>> starting and stopping the stream works and debugcc is showing 426.4 MHz
>> while the clock is on, and 'off' while it's off.
>>=20
>> Any suggestion how to fix this, is appreciated.
>>=20
>> [ 5738.590980] ------------[ cut here ]------------
>> [ 5738.591009] gcc_camera_axi_clk status stuck at 'on'
>> [ 5738.591049] WARNING: CPU: 0 PID: 6918 at drivers/clk/qcom/clk-branch.=
c:87 clk_branch_toggle+0x170/0x190
>
> Do you have a full and complete kernel tree we could look at here ?

Sure, this branch has everything in:

https://github.com/sm6350-mainline/linux/tree/sm6350-6.17.y/

For further refence, at least two other people have tested this branch
in postmarketOS, nothing particularly exciting to report from there,
apart from that the sdm-skin-thermal thermal zone (thermistor right next
to SoC) is currently configured with 55 degC as critical trip, which is
quickly achieved when starting a video recording, but that's not really
an issue with camss, but will need some tweaking regardless.

https://gitlab.postmarketos.org/postmarketOS/pmaports/-/merge_requests/7281

Regards
Luca

>
> ---
> bod


