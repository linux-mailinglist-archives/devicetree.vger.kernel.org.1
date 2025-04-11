Return-Path: <devicetree+bounces-165922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B63DFA85DBE
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 14:53:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E6ABE8A2A2B
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 12:47:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DDF22BD5B1;
	Fri, 11 Apr 2025 12:46:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uBdknXfo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAF762367AC
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 12:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744375577; cv=none; b=Ee9TjrzRK1xoTr6HXUAArvjvg0IsiZrhlF38NL0G8p9EuX6q0kievFa8S9aeWQKjvOxrxKKRxKDFdzfPhMvdXY3ieBkZ6PMCKaDoyhsYS83E65piw09Pzt4sI/jZF8s9oNw3vPMde7Rf+Nk7Qfbm91axL4/sR0tJZynFw0YN/r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744375577; c=relaxed/simple;
	bh=qMsaU3AgfYd7npEUcPpNqxwxWZ1VhJND28wYGKSzw0Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RN2H9IRYqbXkr6sQyI6n8jeRbxZhNmY371NyLl+rZn8p4kZvIVQMEe84p+srWQKs3QQt1OQQ0tRZPfMzS/abiFOrSTmm5kI+NZU7Q9CxeZiC84X3axk+47omrhJ8boHQ46y+3fzFiib/StWE2mD+BtN5ghdNmRvld7Qt1OI63KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uBdknXfo; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43cf628cb14so21166555e9.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 05:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744375573; x=1744980373; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PhDLvQWbhdTyN2VlzbNDlR4PYDwczdCrrExl7J1Ijlo=;
        b=uBdknXfoDK04p53+p+44C3wW2P1L2yQqQ40vUlMU5CSA7hmeVcasAMDhsuwmf3IA5i
         0CQ0Rvl0KRWGHoMeAMZfhkJkUapkkwhou+G/G6gbubeyQYtVxQkdOwtzUG0sh9QRp3jA
         oBlRXit6BD2dponBXtu+UOOxBynI4cc0beBNlMDlBfh/wS/SpgRMpsa4jSDJT2zKUCBH
         8fHVbWUiUgNPNFHVVjNaPmUkaCfjvJDBpPgcub92sZ5d4LTf1EG/ocdS/qLPqUXbm1QP
         lq0X47+z/tABqagEBkgGE5XD2hpoQ3sa3NKEnPM3KkCCSQVGJAcXyl/DI2tsLxphQcKo
         jZlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744375573; x=1744980373;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PhDLvQWbhdTyN2VlzbNDlR4PYDwczdCrrExl7J1Ijlo=;
        b=UCEiUwY7klfwawSjTmskW+zl7uydOfi/4V9mqGdVwuDchbWKexdquDUYLRZDd0m7/9
         1DPUMVzlDrFfJj7j22H/WTxezyfCZJ17vqeIsmmPwLejYHgxef+MGPOesnhaM88Ip3wE
         iecpfF10NZNiAC0Pu83zWzHpvFKWwDSJPF7XAo5FuO0+2kgY//oLVT+3nG6WKCDLuzFx
         1oQlH5nuxH/vb49/ed03R78twozz8hAncmj15b/pYogS9/Dd+VPWKd30sk+Wc7wZrjak
         yX14Mvu2Tlq3bIO/4vzqhB4n2WyQreHD27WVfauNkEI5SHYWp/blFkpO/6SvQ6ZeAxVv
         h0yw==
X-Forwarded-Encrypted: i=1; AJvYcCUhz7By+ntaelSUkdJMfvxCaxYjqQX5kKW6a1Ji0VHQgx0LsWji9FVGk2MtADi8oXzGw9AKivNJg2gN@vger.kernel.org
X-Gm-Message-State: AOJu0YwyLwD57NItw1mjD8QIZjK2/pWRyQ2klyk9+T0c2qPGSOWmx1h8
	5xBap0/KkqwjHI/RBbaODbeP6vrqk6/MJ2ac49vsZUsXN8Hur9fqpg1ADKlbPOg=
X-Gm-Gg: ASbGncvSZVVbY3Xii6ylRnAQE1hpGAe20Sl3WyvmZci/ckvEJlR7e8gN4RSGzkxhC9F
	4/DO2Fk6lL821YXPJSyWYfF72PiVEB8Y03sMOXduLWT5cGntYvyIQ4d6GjaiWziF0QW5U24ggrY
	aL1as2HehpBW8aQQNwr7ghc8kF4GuNAwW9u1c7GoTN5ITpppERdAqGmmsbkuEj0//GOLvUuXw/6
	F9SKxHoGWZuqo4oH+5MHQN2RrWa6tICE1+whrsHLwTtZHv4xrxPMfKHHmZeperMS71VsNlSTMOY
	DwdrNAk4gUc4lEMxZKbn/L5hEnLPej4k0C+LU61w/MlcMcGlE5pZ5iHmjZR3zmouSCZAfJ8Jahd
	9oN7awA==
X-Google-Smtp-Source: AGHT+IFfOHu8NpwGY9QeJT4Px/nGS9JkxmRsI2hzwbDzfKKsDsEvu0wZdG1qPhsO1ljPGuw427Xyfg==
X-Received: by 2002:a05:600c:a012:b0:43c:f3e1:a729 with SMTP id 5b1f17b1804b1-43f2eb50f83mr65513485e9.12.1744375573083;
        Fri, 11 Apr 2025 05:46:13 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eaf43ccd8sm1936648f8f.72.2025.04.11.05.46.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 05:46:12 -0700 (PDT)
Message-ID: <697dcd15-22de-46fa-b28b-0409dd18a79b@linaro.org>
Date: Fri, 11 Apr 2025 13:46:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/20] media: iris: Update CAPTURE format info based on
 OUTPUT format
To: Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Stefan Schmidt <stefan.schmidt@linaro.org>, Hans Verkuil
 <hverkuil@xs4all.nl>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, stable@vger.kernel.org
References: <20250408-iris-dec-hevc-vp9-v1-0-acd258778bd6@quicinc.com>
 <20250408-iris-dec-hevc-vp9-v1-2-acd258778bd6@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250408-iris-dec-hevc-vp9-v1-2-acd258778bd6@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/04/2025 16:54, Dikshita Agarwal wrote:
> Update the width, height and buffer size of CAPTURE based on the
> resolution set to OUTPUT via VIDIOC_S_FMT. This is required to set the
> updated capture resolution to firmware when S_FMT is called only for
> OUTPUT.
> 
> Cc: stable@vger.kernel.org
> Fixes: b530b95de22c ("media: iris: implement s_fmt, g_fmt and try_fmt ioctls")
> Signed-off-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
> ---
>   drivers/media/platform/qcom/iris/iris_vdec.c | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/iris/iris_vdec.c b/drivers/media/platform/qcom/iris/iris_vdec.c
> index 4143acedfc57..c5d85936b3ae 100644
> --- a/drivers/media/platform/qcom/iris/iris_vdec.c
> +++ b/drivers/media/platform/qcom/iris/iris_vdec.c
> @@ -171,6 +171,11 @@ int iris_vdec_s_fmt(struct iris_inst *inst, struct v4l2_format *f)
>   		output_fmt->fmt.pix_mp.ycbcr_enc = f->fmt.pix_mp.ycbcr_enc;
>   		output_fmt->fmt.pix_mp.quantization = f->fmt.pix_mp.quantization;
>   
> +		/* Update capture format based on new ip w/h */
> +		output_fmt->fmt.pix_mp.width = ALIGN(f->fmt.pix_mp.width, 128);
> +		output_fmt->fmt.pix_mp.height = ALIGN(f->fmt.pix_mp.height, 32);
> +		inst->buffers[BUF_OUTPUT].size = iris_get_buffer_size(inst, BUF_OUTPUT);
> +
>   		inst->crop.left = 0;
>   		inst->crop.top = 0;
>   		inst->crop.width = f->fmt.pix_mp.width;
>


Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

