Return-Path: <devicetree+bounces-227361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E5FBE1058
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 01:21:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0B0B74E2BFF
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 23:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20295311598;
	Wed, 15 Oct 2025 23:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sxstRAqA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345A82C3258
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 23:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760570493; cv=none; b=kbWim+URZv9bonDWQSjVdatyKZXWiESdeJT9/R1QLKVfNlVdEHpG+0xz0kkOFPjBtLXbMgKaGOFCGgXKpeZyEtSWWE7x3T03uMYtrew3O4M6dZ/gw9Odvr/DWtem7VTKhaQwmo8KnN8KV0CNbOkWKS+8/Ox+V76LXRTpJ0BLXd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760570493; c=relaxed/simple;
	bh=YkyMyirxMHvG2HWlK1FfdBUp1DFrDKhIPiRlbbKh6XQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=syGi+Li3dL224V+NmOlY2+PpWHSdULmIfISBPR75t2Awmyzz1nOgZXjzvjQ2x2x7r6m/iUPSwqwpvXtc524k8IikmrFLU0dUCx3phAIzXhFpmUj4c76a3nV99mVyjdTnWlfCMl/ETqpk856Yw0/e9C2BkIZ7SF7CuaVaRkdSE0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sxstRAqA; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-36ac8376b6bso9151fa.2
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 16:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760570489; x=1761175289; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0B0q4BGZ2XC9IpC6Pjd+pwzTY4I/KdNTGZZcgGIVD2s=;
        b=sxstRAqAblfFYJaynrAU+4p8dvJEYPpEpONe9AIS9BiWsyHEfFg6pwKhURS2EgkxMI
         wmEAXA739rRZtL7fn20jUBdobDp+8YM5Mdi911shWn8eWTg1xEvU6FGNItHA7mZkkmlD
         grlj11hBO31Hrw/NH37rDFW6VqG6rC/ddpLfsu017JCHnipsA+hxLIAlKBVnV6vCR2xN
         D3INQTaWO2PLPKMJQc4hVlivp0Nf54FQlIT0JsZhG0g9NpOfEOq6dUYPlyTUVA2fh4Yn
         incFA7PJeDgrttH2mKZld0dkKsJJCAz/lxPHV+8CLmEtL6W0MNwlVGdIBF9YmFGt8gnG
         2E5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760570489; x=1761175289;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0B0q4BGZ2XC9IpC6Pjd+pwzTY4I/KdNTGZZcgGIVD2s=;
        b=fSUHmMtEB3MMMhWn48AB3uySTv/Vfk6yfspcaWM0rmqQWncQ4wo7PC9ZKJ/b0J+KVY
         9a0ONv4wD9YZWzdYOhkuV3TsIfH77wHOLF8UYUyo+1bFH9Uyodk17Br63Xbe7BlQ8q2d
         b5/sgetmDOH1Fc41FXwivNoWGmqgy3wgZGCJ3vweFQ7SN5zIWtuWmOWKgxV6c1xu3qZO
         TDBt3uwcJPQ2D/qVXDJa0vCaV0qGD/r+B3OiSQB7rFoaOHAMMfzfOTAFl2rLBn6ok/e+
         AOMV8W1TUMtjvMo1jz+oQPakpO5sFGAGoqcghkDUisfnYq6eqfNsw89zz04cgGkFiOa4
         5eAQ==
X-Forwarded-Encrypted: i=1; AJvYcCX5flMf7n9hAnsY76pDcjVkdyQudAO9uoRj3D9bahPH1wDYI4SNgn4By6st6HcCt2bfOEvwm4tUIbKc@vger.kernel.org
X-Gm-Message-State: AOJu0YxQmUJUwfPbgsw98CoReJYKxitS5zD4FrPAN7lgmk79uTNTJLgs
	7N/8jKT8EtCYP67GCvVifEq32UX87M3BTDZmrHCZHxE1u0yr7Q/cnfBXCpRpQBuytvs=
X-Gm-Gg: ASbGncuWFLaBdg5c33NblDi2I4XLPpP0FqdDOc/ckOi1KvCLjWAGcseThmWl9kKgZIj
	uyWV457m3Zx+/4EM0659Xafz/yRRKD16c2ZOJVXUMTwTj2JbkY1McjijBOx/3vAfxSStJGrTc+z
	dbASm7TvdWpY3zKRFN26tG8xhPzJxRx9Q5vh7tjrbgTm1JUI0ujo8sBhBwVJZMQn2jsCuX0JfKU
	ORYPifoQF4V9TpK9MNt3a9Ug1fZVbYjaTuaq/flgKmr1fsCv+C1XmO+LWhPQOQImphea5o9nFNl
	hmCgEkyI17hr8Ztdgx7Iehti1H5R1EF5UbFg/uy6o2dfQ8RRWIsA/pMo3fM61+rqlPk1NAd+Jv3
	EUdi1vdRrRvhI8/tSSnuGCycg5EU/BB+5fB0G6IXGo7XJTRmiZCazrAFL+Z1aG4wfB6x/i1ZuRB
	P9niK1cfTVGaNTXofpOMvtEbM3pk3sQlzLQD7pdcenVNeYpF3K6GKwV6vs3UQ=
X-Google-Smtp-Source: AGHT+IFsezevTFX7VRsMPmvaC7e3rUHL6zRBQobMDgZpbCMrsMUto/Rrsx7K6ihOpaTOS8S2VJhQLA==
X-Received: by 2002:a2e:a543:0:b0:372:79e8:ea7f with SMTP id 38308e7fff4ca-37779707285mr8426581fa.7.1760570489271;
        Wed, 15 Oct 2025 16:21:29 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762e77ca04sm51213281fa.4.2025.10.15.16.21.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 16:21:28 -0700 (PDT)
Message-ID: <47b4dc34-ae75-437f-84ce-84558226cdeb@linaro.org>
Date: Thu, 16 Oct 2025 02:21:26 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: qcs8300: Add support for camss
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vikram Sharma <quic_vikramsa@quicinc.com>, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
 cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20251015130130.2790829-1-quic_vikramsa@quicinc.com>
 <20251015130130.2790829-3-quic_vikramsa@quicinc.com>
 <b4207e22-8d9c-4223-8b28-272d2650661f@linaro.org>
 <ca8189d0-a518-4716-8b28-e36571cbba5a@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <ca8189d0-a518-4716-8b28-e36571cbba5a@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/15/25 22:58, Bryan O'Donoghue wrote:
> On 15/10/2025 19:49, Vladimir Zapolskiy wrote:
>>> +            power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
>>> +            power-domain-names = "top";
>>
>> 'power-domain-names' property is redundant, since there is just one
>> power domain.
> 
> Its a required property of the yaml.
> 

Technically it is not a property of the yaml, but I think I understand
what you mean here.

As usual since there is no users of the previously written device tree
node rules, I believe the documentation is still flexible to be updated
to a better shape.

-- 
Best wishes,
Vladimir

