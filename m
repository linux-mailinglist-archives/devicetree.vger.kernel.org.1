Return-Path: <devicetree+bounces-245532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 88387CB1DF7
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 05:09:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 65C1F305481F
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 04:07:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D763230F526;
	Wed, 10 Dec 2025 04:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TCwhRmx7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273F530E0D9
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 04:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765339674; cv=none; b=qo8Z2lBKlh+uE3sfKD9w0gwFRtppNI9w31EFFsnFPcfKdMdIeU6EI8FSk9FXFqa+HegK/iUTAi+ea+Ky86MVNEb+kBSfKrek3eioJ4AF+YCCE22aGM5lSSLgjQCy3afrvpyrmVGaXj/gF36WgUOsPli65vLmIeAig10DqiN3smg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765339674; c=relaxed/simple;
	bh=i1gpkRHjj52HV/bqp8fIanguYj2f3n3g7/smx5nUqtQ=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=bKMYhPFw4N7m+5ptlHcBsQS4LsW8kRzw2Xfyq2ufeab6ILwLHLlVnW108LPvhBJ7HuZPQv+VDsd/uBzH+nECSQuQ5M8bgadcGg5bPLjc8gT/U5j0ItwMEjNmALAGiACfhFFTq3O/MYE5dCKdpwog+NsQj54ajJpqDfzfExvlaew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TCwhRmx7; arc=none smtp.client-ip=209.85.217.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5dbd9c7e468so2812141137.3
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 20:07:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765339672; x=1765944472; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jCN+wOZwpo+EvlIubaoI595wTf7FwItvq914uZQahfk=;
        b=TCwhRmx7DKQcjs1fd2pZ00L5G2gMNwzG3ge9d5wMJcWkwm7PjeI0i1iAI+IvLQh0KY
         ZpT9+SvotPFyivH19cKXZMCiGBKTQfCddUiTeKmbN5XNpADMv2SDx00G6AL3RvK7KVz/
         F0htTaYiZ02mwLz5e1xPs2UE3v17LngYwg2LVceVWqwMBHkXBrCuaHaQvazM15FutHTs
         w0TweSXNXfttP2RmnSCPHYJ4cpGx8ZGHwWecGzHfpbqvP+ShIB6ECfFQ7Z5e+xyIWuq4
         4pdUa6QGZkGm87oxFzRC9sloq9NQ70PxgMUw2+or4Te8DtH9RfeTizWU9Z2BxJE0cWa5
         Jb2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765339672; x=1765944472;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jCN+wOZwpo+EvlIubaoI595wTf7FwItvq914uZQahfk=;
        b=GghskOcwofVQYfNan1+Vqt9pzLg2zFfZLhKEm/SWoT4VQmgSNw9veUa5kyZ9RtK0pO
         nDwQt/vkSMyaprfhaMORyFpIPUIkmiTNDEtW5Ag1HObBYA7SgDL6ddoSEqSLULlOKJAH
         6Ic50JBno3lv07Qny5Tv0PCTYJ311pNphQK+dFdpMRYKuqjnxKmU6lrffOnxyDHDvMof
         ytwTrpsCIGqmSbjsvmURzIDmDq09XPr5B9awu0XBgCwX4nsNo/P+oIPNxx2NaPYpNgNH
         mojFqPo1Jmu9lus68sK4V1GcgQNPlKkWlRK3toEKgSOx1LHQcioPb6mukk9xQ+dnl2IF
         m0lw==
X-Forwarded-Encrypted: i=1; AJvYcCW+5jfCEsoNImaiCZpKUpN1Y7iOs8nbuLtulaaBLcsXQGJ7RzMF2deeXP7rR2rBQ9owJId0fWOq/LOf@vger.kernel.org
X-Gm-Message-State: AOJu0YwT4eUHM5pM09fCJdpsNh0ywq08qTU+3fr9ja9wBuPLJl97ViEO
	oUFTt1Zk+1/liti1gWb+fNGcDHqZmZ0c4C/M8DFSzVvv7nPnNNPLKcJR
X-Gm-Gg: AY/fxX4E9g/04bimye6Q+/I/LYTiSEFskVHBqC0inG1JMhtPOnSG5YHwdKUJYEufYki
	kB0VrE6+en/rgr8LtXXa5251bfxAmbVryrqjodEUDQkYBwt7SUR4ivr/fi7hpZS0mCwPTHxARMH
	NevNsUIUbw7Mo+C9vu5qn17qgB4T7/q+joaQE4JRNq69PazPsweTSiydwq6ezzauninhpdFPCnY
	BHnUq7a5A9EAFWwBIz8JR0oG6Y2yF7FcKv4J6ykS2zkMlnqwr54Xq481Gdm+oXCmdqgtWF/ljdP
	75WjVLPipnJRUx6kymeUUwlJcXZLigoWYsQHqxpZDoQBxc+xeZuY/wNvZp5chu8OB9XKMz/O4pn
	0TojWX6Fj4dg1D1qO70ngo3KF+hFhZ/L8x1QuP9abuw+JMCCtthQpXKFImK367WvGeOpXdSa9mm
	jkpHk=
X-Google-Smtp-Source: AGHT+IHM30DvWmYtT07T8M42FAxd4lX1UgnTiBhKzv5t+gCOoi7mVGJuQlvB9Bjp4pGe49Z4oPi6Rg==
X-Received: by 2002:a05:6102:390f:b0:5db:faa2:f3e1 with SMTP id ada2fe7eead31-5e571a3b7eemr309836137.15.1765339672002;
        Tue, 09 Dec 2025 20:07:52 -0800 (PST)
Received: from localhost ([2800:bf0:82:3d2:875c:6c76:e06b:3095])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93eed6c41c6sm7781948241.5.2025.12.09.20.07.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Dec 2025 20:07:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 09 Dec 2025 23:07:49 -0500
Message-Id: <DEU8OOETPWRO.12I8HY6SHTQAA@gmail.com>
Subject: Re: [PATCH v7 2/2] iio: adc: Add ti-ads1018 driver
From: "Kurt Borja" <kuurtb@gmail.com>
To: "Andy Shevchenko" <andy.shevchenko@gmail.com>, "Kurt Borja"
 <kuurtb@gmail.com>
Cc: "Jonathan Cameron" <jic23@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Tobias Sperling" <tobias.sperling@softing.com>,
 "David Lechner" <dlechner@baylibre.com>, =?utf-8?q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, "Andy Shevchenko" <andy@kernel.org>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Jonathan Cameron"
 <Jonathan.Cameron@huawei.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251208-ads1x18-v7-0-b1be8dfebfa2@gmail.com>
 <20251208-ads1x18-v7-2-b1be8dfebfa2@gmail.com>
 <CAHp75VcOVpGbb3UBm+QQrw25=yU+J624c29ptMk8yrJpNEL=jA@mail.gmail.com>
In-Reply-To: <CAHp75VcOVpGbb3UBm+QQrw25=yU+J624c29ptMk8yrJpNEL=jA@mail.gmail.com>

On Mon Dec 8, 2025 at 3:19 PM -05, Andy Shevchenko wrote:

...

>> +/**
>> + * ads1018_calc_delay - Calculates a suitable delay for a single-shot r=
eading
>> + * @hz: Sampling frequency
>> + *
>> + * Calculates an appropriate delay for a single shot reading given a sa=
mpling
>> + * frequency.
>> + *
>> + * Return: Delay in microseconds (Always greater than 0).
>> + */
>> +static u32 ads1018_calc_delay(unsigned int hz)
>> +{
>> +       /*
>> +        * Calculate the worst-case sampling rate by subtracting 10% err=
or
>> +        * specified in the datasheet...
>> +        */
>> +       hz -=3D DIV_ROUND_UP(hz, 10);
>> +
>> +       /* ...Then calculate time per sample in microseconds. */
>> +       return DIV_ROUND_UP(MICROHZ_PER_HZ, hz);
>
> If time per sample is in =C2=B5s, the associated frequency is in MHz, so
> the correct constant is HZ_PER_MHZ. What did I miss here?

I was very confused about this, but the dimensional analysis works with
HZ_PER_MHZ so it should be the right constant. Thanks!

...

> Other than above, LGTM!
> Reviewed-by: Andy Shevchenko <andy@kernel.org>

Thanks a lot for all your feedback!

I also found that the sysfs ABI specifies millivolt for voltage final
calculation and millidegree for temps. I will adjust scales to comply
with this in the next version.

Do you have a suggestion for this? I can keep the ADS1018_FSR_TO_SCALE()
macro but it will get a bit more complex or I can just hard code the
scales and document the calculation. I'm inclined to do the latter.


--=20
 ~ Kurt


