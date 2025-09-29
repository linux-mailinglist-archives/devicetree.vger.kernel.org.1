Return-Path: <devicetree+bounces-222353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE12BA8429
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 09:36:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0ED183B0A17
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 07:36:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E61EC2C0273;
	Mon, 29 Sep 2025 07:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jKcv5QVm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E372BEC26
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 07:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759131377; cv=none; b=gK65a4woWIwCtr0qy+qmEFU8WZ0dO4TyBhK9X9TUCkFCz3rJv35a0T9aqcXRN06zgubsBvRkQr+4beHRS61ZSMQe7F0mMQr+n+74pkVXs0g6Xcvl961vthuNPbh9CublnCem/0R5rBjAHAZqMCln/AGdk/Ky/KZ7tG8ay6LicM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759131377; c=relaxed/simple;
	bh=iI5dyLH2jL82quewevun1RJ+cRuVB4TU0GIEvBc+ppw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eVo5uBRC2pGGvezFLtrcEnQS7Yb7XU1QrYzi5+Ee00Jk2ql9QBZ1nlz4sk3PpiWoWl/Uct4VdEB5VuE9tY6zH98yl++x7TGe0+txGqoLEBLsksSuinadFxelkXWcmzZELi5nJdCHNyKcIaaR4u/T7ZboY2BSIPlCBPJB921eygY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jKcv5QVm; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-b554bb615dcso3356805a12.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 00:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759131375; x=1759736175; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WtpldhRDbRzoGsO+8pMp+y65v40hHUOFZZcRghWlbXo=;
        b=jKcv5QVmUNfgz6zP/NqcX1zRgPKHHscG77wdCIg/wYQTDeLophx6v6zwEdol5z/Y7b
         F7JSlvHazeewAG9GSOhVpsre5vuuitAqWyL7SlEEeVpj4rkXaTjxFkvLmccDjs3t4ik6
         6Zu7X/siZwYP9LsE+4R0Lm4BukyxGDNY6uCobb6pEEtXAF3+edHr9mSOIABVOYBBphCo
         tXzQt/WkBGcTH+5TsfZfY4/VN24cJ/mh9LL4mFNza37RKPEQA1by7mXFEbRaL/bVaZvP
         SjMMC4/K9KZjJWOK5W68KqD70yb14Kq7umdR5lmwDPbD8/7kWdIbml4PlIBeS4Qi7CSj
         Co2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759131375; x=1759736175;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WtpldhRDbRzoGsO+8pMp+y65v40hHUOFZZcRghWlbXo=;
        b=h03+EdKldYI7Fr5Js7oMJNHG0MWSoCqHril7ZIa+75XMOetfDBnoP9ZQny0IKdfyg0
         VGrFlm835/kiq8WyTH8B9dPeYyM7nUCyQqL15WHFqOVUpbf8PVjx5px2H4IYpWXqZxxX
         PmOv1Ogjq3r+9WSNiQZkUPMmOpM9h8Q/NRq5j3DGCo+8YsHLZRDyGqqJ0nF0yjUDl9T5
         2w04qH3Nj31v7VBnxoY0/LoJxst209fcKGDYt8nz9ef5a5ADk7cO7ov/WDbGcYzOs76A
         wem2X32QfxyLtTTSV7LM7e0mU07bWf+MxcQnHkPHU4SBSIUJ84JwDSnMmKpmd50DKVFv
         iiWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWxgpiR4D+YoOGDWzYmcvlETtxVGaKkklaiMcQtzJFwFZ2p5CxtaY60/dl0GhuVdor4WgYrVDGbBqq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2cd+kf+OAVnI8/Fljxhh/6nA1AzgW0WFvdDUbWdDlLaWNDPig
	9RvqhbRntICGHnoHxG4zrYTjB0Sa3mv2KhF3NPH/HmVy6xh+7U5+bSgzzL/o2keI
X-Gm-Gg: ASbGncsuR0dDM8/ol9HUG84QA6b6Tr8B7eVR/OnRTrKbOEQocjpmMJMZg8iCGJqjz8R
	8Pk1VT7haHG3hsMBWSl8ycGoxBGvP1wUeDCHFweudHyCu9ZwKn1q7FQ1uhKl9XSqSKb2HFOmZuT
	o1cJNro6elpWB8Q8D+OYD3+5Fgq1wGuxeOA86l7K9LPkU0yaH2dkB4WzFgshB91INXBO1smuC1U
	X2xxXgXNx0Pvc2bz8NgCjtSxqba9n5YqDzL7Dj0DtR89zYo8VrzMaEk8QM8Wa/qSKvutEQ+uFsR
	UbujgY4pANrz6Fgc3Hu3xLWeztkyVJoKr0fyoIOqrfekSQRhjrgyFpkOXaP5s3nt7zDqYyFHWF7
	2im17jJvPoQxg5mLJsv4EDBmFC0Dqkj/jfdhicemYPY0idBuxvLOaTrrYeEpYqTct3+rJUJ5QZR
	QB
X-Google-Smtp-Source: AGHT+IEWeCcdaLlQLuxHrfc5zv7vJMgw2RSY5WHEZHUZu8lif8TvLDvdNna1pOwRzpAobj4aitc+pg==
X-Received: by 2002:a17:903:110e:b0:266:64b7:6e38 with SMTP id d9443c01a7336-27ed4a47150mr170404685ad.46.1759131374689;
        Mon, 29 Sep 2025 00:36:14 -0700 (PDT)
Received: from [192.168.68.63] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27eec33b775sm92844965ad.12.2025.09.29.00.36.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 00:36:14 -0700 (PDT)
Message-ID: <5658a127-617c-464a-9651-5ab114161f84@gmail.com>
Date: Mon, 29 Sep 2025 00:36:13 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] Upstreaming Pinephone Pro Patches
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, "Leonardo G. Trombetta"
 <lgtrombetta@gmx.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Ondrej Jirman <megi@xff.cz>
References: <20250921-ppp_light_accel_mag_vol-down-v3-0-7af6651f77e4@gmail.com>
 <175856183851.499898.2147562889507523573.robh@kernel.org>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <175856183851.499898.2147562889507523573.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,


> My bot found new DTB warnings on the .dts files added or changed in this
> series.
>
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
>
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
>
>    pip3 install dtschema --upgrade
>
>
> This patch series was applied (using b4) to base:
>   Base: using specified base-commit f83ec76bf285bea5727f478a68b894f5543ca76e
>
> If this is not the correct base, please add 'base-commit' tag
> (or use b4 which does this automatically)
>
> New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/rockchip/' for 20250921-ppp_light_accel_mag_vol-down-v3-0-7af6651f77e4@gmail.com:
>
> arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dtb: light-sensor@48 (sensortek,stk3311): 'leda-supply', 'vdd-supply' do not match any of the regexes: '^pinctrl-[0-9]+$'
> 	from schema $id: http://devicetree.org/schemas/iio/light/stk33xx.yaml#

Thanks, addressed in v4!


Rudraksha


