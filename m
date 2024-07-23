Return-Path: <devicetree+bounces-87610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFCC93A01C
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 13:43:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A1672836CA
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 11:43:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80A8B1514CE;
	Tue, 23 Jul 2024 11:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XThE2hQb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8ED1509AF
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 11:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721734978; cv=none; b=eujzVxUCa08EgiJhIWFbk+eie7sgpWEdq5opi/n0JeXeTaWtEqB9uy1MM24s+aUFEG3QT4GEXxhs/pCSyA6SHTonVhMdqidJ+Zcl0PX1AZcOMAMhE/tZQJgB3W3mBe9e54t5I3MKSqWYFejkAtF8OLrcv3G8jQdJjNi0iLXbpPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721734978; c=relaxed/simple;
	bh=UGIcR2M11EtnA0IYVweMMNebTKp5NwC1zU6Zcolnelw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PBY3iOLpUIRILNEJcjd9imUaNw4NvYAzM/Bky+ssyoABzY71Y03dAVF4YpLJ3R1EgkQvGnXGtRg3h4PSrBqq2qy+IkSGVYdIWZ0+5bQyUFE599cAn/M5BF4HA6GUFmOs0OlZeoJdHnixd1Iu7CP+crjqCraa0jRDDKWpL2ENnvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XThE2hQb; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5a156556fb4so4547617a12.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 04:42:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721734975; x=1722339775; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=mmId7CpYNpc/Z4jspI36ZZSiEilgpr2thWdpXtXwEFc=;
        b=XThE2hQbRN0TODs1Qc/WL0n0yZlcDE6Lu+P338tOMrLizjik92RDSu8pUB4ZhcIblN
         z9/VGnv9gKHsuf/6vtL3/9SDchN4D6Uh4h7mAJopFJjE568RfXdvlrcnJnwsyONinwcT
         mF08ysy/Y52oxIrg5HHwcl1kvAypOf9H9ejezafqFnB7iSOHhotDlI+F6uB2sjxWuaEl
         6gvD/zgotnLguWS09JQ5sSX4G581juYjdZ2I6VFUOqnVl5VCmxcnZ4nckg8tXOLwMBab
         hXgchx1KFwQGP44qk5iIE66oItNWeJLE9SU9NfStSlc8GikDSmaiKjR256viSUuKlGjz
         FPww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721734975; x=1722339775;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mmId7CpYNpc/Z4jspI36ZZSiEilgpr2thWdpXtXwEFc=;
        b=KtjNrC56D8xOVf+Romc87r0VP8WSP4EARad2s0XXv1s9vwJpSDWNj95sVY8aGF4o1h
         z4O0o+4sukbbwBq3OZw0fdeNJGfVGDDSCHC/7r/Bb1vOGKZURna3+axsQ4BhNW6BnCxC
         zSyot5483PIA+8VV33zmCE4L2vcc85+Q1Fi9hwKCmNKi5t9gANHuUFha6NdACejISBGx
         aCNPxlFZ0TItwz/nz0bAbq4fJbtEdONshVPFmXCF0RriwQ13pcv1+RkS5XJS8SvAR8En
         g9FATL6wqUmw6bThmVWoszxNrLZFIib32yL8dp4KNHrMlvcrsOXfiJMOvYCWgZUDZjOl
         VZMw==
X-Forwarded-Encrypted: i=1; AJvYcCV2wgQHOYrNDNxoBsLEkE1E1m37X5IJ/Ra6a/RF7r8wWOTIyBXxf09kvLjatV2OCVrzXsMmlFYhs574MGz2kaFg4nEd/nRHWD1c+w==
X-Gm-Message-State: AOJu0Ywc9P9+6nbEeOamKiMYGoOQYZzneVVengRh+uOaOiCU3sb7nr+U
	0fbJh92J15HNQmom14lengLrystkzpA1tqh9ZJaPBqLZWhL5Wg4MotGQafXBcSE=
X-Google-Smtp-Source: AGHT+IEii0nEJWa+q4+nZTNtXmJsPkEmXGZJLompTGADzcJ9WhW+yCLor3E4SJg3z9e6ZlDUJu8E3g==
X-Received: by 2002:a05:6402:2790:b0:57d:72e:5b3a with SMTP id 4fb4d7f45d1cf-5a47c08970dmr7171675a12.33.1721734974994;
        Tue, 23 Jul 2024 04:42:54 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5a30a4d7b90sm7422647a12.2.2024.07.23.04.42.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jul 2024 04:42:53 -0700 (PDT)
Message-ID: <a0d8ebb5-b59e-4c24-9da9-adeb11dd9c79@linaro.org>
Date: Tue, 23 Jul 2024 13:42:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] arm64: dts: qcom: msm8998-lenovo-miix-630: enable
 VolumeUp button
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Jeffrey Hugo <quic_jhugo@quicinc.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240723-miix630-support-v2-0-7d98f6047a17@linaro.org>
 <20240723-miix630-support-v2-3-7d98f6047a17@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240723-miix630-support-v2-3-7d98f6047a17@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 23.07.2024 1:28 PM, Dmitry Baryshkov wrote:
> Add gpio-keys device, responsible for a single button: Volume Up.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---


Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

