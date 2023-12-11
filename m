Return-Path: <devicetree+bounces-24088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A6580DE66
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 23:41:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8412A2824BD
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 22:41:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E919C54665;
	Mon, 11 Dec 2023 22:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qbiqv/+I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0191BBE
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 14:41:39 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c9ea37ac87so69564401fa.3
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 14:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702334497; x=1702939297; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ldqLGWfHHdvbUwKD1GyxpafQvpBsS3H8c08fLjicOiU=;
        b=Qbiqv/+IupOTeE9ngsNYNd/iI+7mKR8rfdJfLat1DgxtJrvYDgbXLPNASKRkrRiyBF
         vCJzXOxUl72dtOWCRMNgqJc1rW/nUCcHtjmmW8zzR4pY0g1jZblQgaHwlkqG4PdkWtjl
         7Uqxv3J0vt3kVWs+yJvMHaBb5vXtWPXy5xNnNFXAcTK8JqdSjOJU/fz5KKaKsOKBasE8
         0wHOHcEBub9+aQMLNd0Cyb4R0jGgAII/KomyYTdgHu8Ty5Tq0hfcVIXhlzEvhk6QDVYX
         6kxC0ypaq6FCELBn+hTBplQHxNIZVpbUh/DLXXEjRTtY50ctFPYgkKWupHwUOTMoj8gy
         X1jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702334497; x=1702939297;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ldqLGWfHHdvbUwKD1GyxpafQvpBsS3H8c08fLjicOiU=;
        b=LLT+zvVsCg0W4AIehhDrNt6vQCYy+eWQyriYNdMEkUmWhzVeJBsWUEQQ9ssYe2vR7x
         i05JICb2vVg1/+iYhDb9W8IMO+6ty9dmRUkfP7nTm5eQjG4ygn1UM/cCIjB5iuxxj9ag
         LWkeD4dcL1nKEZiW6M9mhVuE+ezY1JJyHIRS0qiWNc358qCR9COr6r/y5yzp5jvy23yw
         AZH4YdV1G3xTPlmqTibH+Ovqlw5Fzs4F3c82B+J7RNaW43qukSnGRauiAbCmVy6xPdWD
         OyoGdfNWHG4iWxJsn16x2RyRpviXHLyWQFbvipRAS0U2OwqrOTYv3RBK3HmY1PuTpfBs
         mNGA==
X-Gm-Message-State: AOJu0Yx0UqEj4cgdHyliFPnU+jEBMiTXCKzYt2hJjzbQnXFQaLQ5Yz0T
	9rNlY9ljRrc7SzxVg2jg0pQ=
X-Google-Smtp-Source: AGHT+IEAUjiQrbLH951RbveT3Oi7fI/Sd7N26JwWkank7zmfs/ErliOwEHVDevGgCD7UIjjsORySjQ==
X-Received: by 2002:a05:651c:10d1:b0:2c9:fe01:700b with SMTP id l17-20020a05651c10d100b002c9fe01700bmr1716736ljn.105.1702334496903;
        Mon, 11 Dec 2023 14:41:36 -0800 (PST)
Received: from [10.0.0.11] ([89.35.145.100])
        by smtp.googlemail.com with ESMTPSA id e12-20020a05651c150c00b002cb20f0e145sm1378451ljf.81.2023.12.11.14.41.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Dec 2023 14:41:36 -0800 (PST)
Message-ID: <5b285fdd-9d69-400c-978f-234665fca73e@gmail.com>
Date: Mon, 11 Dec 2023 23:41:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: nxp: imx7d-pico: add cpu-supply nodes
To: Shawn Guo <shawnguo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
References: <20231117232352.101713-1-lech.perczak@gmail.com>
 <20231206013247.GY236001@dragon>
Content-Language: en-GB
From: Lech Perczak <lech.perczak@gmail.com>
In-Reply-To: <20231206013247.GY236001@dragon>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

W dniu 2023-12-06 o 02:32, Shawn Guo pisze:
> On Sat, Nov 18, 2023 at 12:23:52AM +0100, Lech Perczak wrote:
>> The PICO-IMX7D SoM has the usual power supply configuration using
>> output sw1a of PF3000 PMIC, which was defined in downstream derivative
>> of linux-imx (see link) in the sources for "Android Things" devkit.
>> It is required to support CPU frequency scaling.
>>
>> Map the respective "cpu-supply" nodes of each core to sw1a of the PMIC.
>>
>> Enabling them causes cpufreq-dt, and imx-thermal drivers to probe
>> successfully, and CPU frequency scaling to function.
>>
>> Link: https://android.googlesource.com/platform/hardware/bsp/kernel/nxp/imx-v4.1/+/o-iot-preview-5/arch/arm/boot/dts/imx7d-pico.dtsi#849
>>
>> Cc: Fabio Estevam <festevam@gmail.com>
>> Cc: Shawn Guo <shawnguo@kernel.org>
>> Cc: Sascha Hauer <s.hauer@pengutronix.de>
>>
>> Signed-off-by: Lech Perczak <lech.perczak@gmail.com>
> Applied, thanks!

Hi Shawn,

Do you think this could be backported to stable later?
OpenWrt and Debian could then pick this change up - I have a pull 
request open in OpenWrt backporting this.

-- 
Pozdrawiam/With kind regards,
Lech Perczak


