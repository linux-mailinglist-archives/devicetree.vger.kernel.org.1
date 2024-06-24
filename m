Return-Path: <devicetree+bounces-79242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2608914719
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 12:08:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3FFF4B20BE4
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 10:08:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21FCB136649;
	Mon, 24 Jun 2024 10:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LpPqKTX4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75BCB135A69
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 10:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719223727; cv=none; b=QHBdI0rAlUqi5yNwyursu1noZkJlmDszSJRZG8HmQA7OEd78PODj81ETlGHDh1VvGkBNhHYA3VQZJLX1on2yU1EXxbUmaE1YHdKCcDpwdtwUUH9K5er3GgcUFpeGEvRWHObhcc89l7Rdfn2dju3TLt43tPEg8zGjBHp8A2MRNHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719223727; c=relaxed/simple;
	bh=/UbKLukxBkddIvRRKzhPewkQPsvqcr7e+/63nHw+Zbk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pfmS7WzeDKEaqi4GkOKETuFofryBqng2snTe6FE9xz0Q/lR1zSI8PbIOTlLF1S3q5QG4yYlfjQTUu1tos1iPzJeiDnZAmrkYtkwPURYtasidy1PhMQHjvoahDMNIBI+6ok6Rjm6OKu0GbfzQdK5G6ejSDqx6ds4P3XqaTi7/UDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LpPqKTX4; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-35f06861ae6so3236156f8f.2
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 03:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719223724; x=1719828524; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RliwQr7oKKeCWRGlffC526R8LGHslGlTF14dPvseJ7Y=;
        b=LpPqKTX4YGyXxuM2x4uO/4eFX/Aq4w29njaBPGHnDp4mUj3uNC33oCvwt4f9VVc36u
         +YJ+JLtKnL71DcgZgNEFoWVnEFHMAkKvnRhfDJowsysy1kPZs4JTh3srIJSB5VtflNfO
         ed0KreP3duvJeLyV5XDDWFT0wLzKmdaxdQle3ElEaXdcyRmP3YedV/kdDYrKEeL7uBpa
         92Qmhe57H187ga2a2wvNob5V7WxXh+8owLlPhpHbT+eJNLEbU2O+LFLx45bKh5mtzc3F
         Uth7k/MejEy8kTw8+IL/GBHikM9zp6xZ1UVrjnrJWgg5nYkc2+hkp4GSZjUfRGH1+veF
         vS8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719223724; x=1719828524;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RliwQr7oKKeCWRGlffC526R8LGHslGlTF14dPvseJ7Y=;
        b=fHiAftap6gT3fR6FSMocSa4h/schG0UhaZizFj3LucIOPR2k25xMra0havg+9dG1qw
         CgLGoAm5IrdG7VyRlgKAPX99XzmzeieyAYpV30IywF3OvQEJmfCg4jplIQP75waCWaGW
         QEOgRNnP/4CqMbNce51dupAzRXQiU32GvsQRnUiiWFz2KwPa8rRfjF7zDao+DjdSo0HT
         0XYm5liGf9Tq0SDQQA1XPtEOT965QQIBXPvLJv/R+TzxsJplpIXR+Fr2weGIfVKxh/O6
         Ivfi1VPfWeEjWY6swKp8QVMz1/3VWt5S40v4QGzmyyiscsBMdwWpl6SaL5ncQoEzlgdd
         gR5g==
X-Forwarded-Encrypted: i=1; AJvYcCX3uQt1zHqf4YLw4lXOw2oFHExvwH69RLJBR4x1VU/m0xG7pMgyJhXGtjFkkJeTO+qqe+qU5tS2bnak/M7wUbRW2Vb02an2qiCqvg==
X-Gm-Message-State: AOJu0Yy5LdtvfjGpOWf9ybCrIjwHHob1jRQpjyIbfpR4tpYmI4/APt4O
	AeNuJfzQxY/NrTI9tYRnX3CUYUTKpBKPYqf1fQ17ZrmcmyUuMNfLQPuWfhepz50=
X-Google-Smtp-Source: AGHT+IEwW9DYv23ejvty0qnPu1uOFrIpQ72XFDd/4QPCp440w3+DZGDmsX3BUt8bOnyalY2jFvabtQ==
X-Received: by 2002:a05:6000:1fa7:b0:365:32e0:f757 with SMTP id ffacd0b85a97d-366e96b22acmr3421441f8f.50.1719223723739;
        Mon, 24 Jun 2024 03:08:43 -0700 (PDT)
Received: from [192.168.0.3] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-366ed18dfeesm3593710f8f.93.2024.06.24.03.08.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jun 2024 03:08:43 -0700 (PDT)
Message-ID: <6e643b88-2fbf-4bd1-b7a9-1af9e93f1916@linaro.org>
Date: Mon, 24 Jun 2024 11:08:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/8] Add debug log info to msm_csid_subdev_init
 function
To: gchan9527@gmail.com, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240624-b4-sc7180-camss-v2-0-0dfecdc50073@gmail.com>
 <20240624-b4-sc7180-camss-v2-6-0dfecdc50073@gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240624-b4-sc7180-camss-v2-6-0dfecdc50073@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/06/2024 00:22, George Chan via B4 Relay wrote:
> +			dev_err(dev, "missing clk %s", res->clock[i]);

Please don't abbreviate - the other error message says "clock" here we 
say "clk"

Once fixed to clock please add

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

