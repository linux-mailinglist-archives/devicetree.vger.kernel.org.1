Return-Path: <devicetree+bounces-172980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D53AA71CD
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 14:29:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4EC54C0302
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 12:29:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DAEA253938;
	Fri,  2 May 2025 12:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dm6V/Oiv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BBC250C08
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 12:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746188961; cv=none; b=gkfciW2Cuu9jcjK9DfehQq8VAIW6Yj1eIIv98kRL6qwhK+Mvwbd31zQDNV5exJYzoqU/SLqmV+rJss22kJGJ+xdKjSSk5kgIIDZ1xdL5Va/feeB8OXbd1xHC7KPcVzAyPVdBArCf6UqtIu48IRsUgQ6iLorlcsbW1Nu3Wlkvjgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746188961; c=relaxed/simple;
	bh=zvHa4X0rrQTDwYzkbYkZYw+dLVBDwFqqMgeUnHdOFUs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TTTmJ8Py1TOT2HXvu8ARe6skkOtNP6WvemBpCL8v59qYv4NUHgYgFxoKlsDIfivKbvNbEmv0jxDgWYhHHaDJikkynl5mfa5Rt0cv+6Oh85ebOfwcRlR/HplUz+ZZFayYPwi1tbzvkRjw8IQA28Vd692Ua5yHw8bWefWVkdW/2zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dm6V/Oiv; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43cfe574976so11634645e9.1
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 05:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746188956; x=1746793756; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fPXhl5ABY9Cpe5wfSbh97dWtdpEKAOmViXZEiA/5wSY=;
        b=dm6V/OivuHe2fp0JRkEb9KUx8oEhQSYiDYQvawtgWI7c8JaKpi2eq82uR6SRS6Hdhe
         yJMhyNogRRIAMKo+w3cC1XC33lJjYE8c5FA7ntLQ4OWGfvBWfyDm/ZaWePl2oE5uDtbC
         rO78zoGActrCZqWhCAUxxH7DXxDeQY7y2+L/s+9KqXdsR6o5BXWGAuojQFvRC1GABtGn
         mECO5WqMsgvIqbTS7IGQsu8ayY3k1hHS98KRUkW0VigALT4sd/CpRUHjbQBL08oBOiA3
         BKglN8afU86p0DHG4Ex4VIpTOn07i0tSzxySynjyGcrzdWL/v93nVujGoKs7zC24ACri
         K0ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746188956; x=1746793756;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fPXhl5ABY9Cpe5wfSbh97dWtdpEKAOmViXZEiA/5wSY=;
        b=sjQMfBlPed+j4StKigw1UTF4WtQPe/esDkqtnCcxB4wMVb5N90JtksBIhwXZSua1ur
         U1mp6DE0OQ17I3S+A46WOpCuy5HFE+pP7SR3H8GL7I1bsie+qGWPUIxsy9Ob836exyui
         x1b+EMg0lvb2NBQvmR268rhxThaTUYBGrJHh3N3wxBGqMKu9g8F3d03f2mwyRRYZtfvy
         E64GZL7+e05flOklU90YR3Wz0wPx3FWXXMpc7tdpF3CRGGiZsCUlizCR3DppklXBMd4K
         EUUqIEsu/kRZjIIRcaiW6smGrasnOTxKAumIJ3bll6m3C7iQwsyeOufBbOckRS94KO7c
         WTtA==
X-Forwarded-Encrypted: i=1; AJvYcCWvZtu/wZhuZdC2YTqQXuBmsOZ1Ofq9aFt9C77qHuzREfYwnDUlu+H16xTs0qiAr1Li8dS/vLzwzM9v@vger.kernel.org
X-Gm-Message-State: AOJu0YxBF43013S4dvjwMtaTUDHBHqkS4sXTJT0QNzaybwmMRXIIH2yB
	+9FcFBH9dsZUFNpt6flD4YzPD4b0VHK9W+INEfCccjAXIuPzB3MAtFFo9zEzjcg=
X-Gm-Gg: ASbGncuzP2gV3jyaCzZNuBCo5guTdC/jx+QMgSJ9POK9/tgIhgVLd27AisbkFyQW1N+
	tmyFPl5MJ1ejxDH3bMg4ZXlNrnDEDsV7Eq7xMstd8Xv6Q5kyn47k85XD+Bd67lgDgKJ1+IAS7VK
	0o0xJUIH9mwLcqTWuWHpwm3QEgQj2V18wVOPg8gXWXhtD/yH7PFN3GH+7nr/2ecBCIBsseixK4U
	0bMcwmfjR2nLEkRcE7unTGaI/iE9y6qmwaCMmiNEFNtImksV6XCpY3crslebCigu0ftKGSBZtcy
	hYPWPvuUH+reFBWru1gOcry9SgKhMn4nkvgj7j/pN5AZ3T1WOGOgArWo173K309D50+vL6e/EH4
	BYHR6VQ==
X-Google-Smtp-Source: AGHT+IEJQc8ArVKhReP08d9VcgU4GcvNbex+0BCVyeNSxBvarnE07Zhzs5sQR2N9SWFhkCNJNsJqEg==
X-Received: by 2002:a05:600c:5022:b0:43c:e6d1:efe7 with SMTP id 5b1f17b1804b1-441bbf34052mr18854655e9.26.1746188956401;
        Fri, 02 May 2025 05:29:16 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a099b0ffcasm2030879f8f.74.2025.05.02.05.29.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 05:29:15 -0700 (PDT)
Message-ID: <b255fec0-216d-42c8-b7ba-cb0cde51e73c@linaro.org>
Date: Fri, 2 May 2025 13:29:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 09/23] media: iris: Fix typo in depth variable
To: Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Stefan Schmidt <stefan.schmidt@linaro.org>, Hans Verkuil
 <hverkuil@xs4all.nl>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 20250417-topic-sm8x50-iris-v10-v7-0-f020cb1d0e98@linaro.org,
 20250424-qcs8300_iris-v5-0-f118f505c300@quicinc.com, stable@vger.kernel.org
References: <20250502-qcom-iris-hevc-vp9-v3-0-552158a10a7d@quicinc.com>
 <20250502-qcom-iris-hevc-vp9-v3-9-552158a10a7d@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250502-qcom-iris-hevc-vp9-v3-9-552158a10a7d@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/05/2025 20:13, Dikshita Agarwal wrote:
> Correct a typo from "dpeth" to "depth".
> 
> Cc: stable@vger.kernel.org
> Fixes: 3a19d7b9e08b ("media: iris: implement set properties to firmware during streamon")
> Acked-by: Vikash Garodia <quic_vgarodia@quicinc.com>
> Signed-off-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
> ---
>   drivers/media/platform/qcom/iris/iris_hfi_gen2_command.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/iris/iris_hfi_gen2_command.c b/drivers/media/platform/qcom/iris/iris_hfi_gen2_command.c
> index a908b41e2868..802fa62c26eb 100644
> --- a/drivers/media/platform/qcom/iris/iris_hfi_gen2_command.c
> +++ b/drivers/media/platform/qcom/iris/iris_hfi_gen2_command.c
> @@ -178,7 +178,7 @@ static int iris_hfi_gen2_set_crop_offsets(struct iris_inst *inst)
>   						  sizeof(u64));
>   }
>   
> -static int iris_hfi_gen2_set_bit_dpeth(struct iris_inst *inst)
> +static int iris_hfi_gen2_set_bit_depth(struct iris_inst *inst)
>   {
>   	struct iris_inst_hfi_gen2 *inst_hfi_gen2 = to_iris_inst_hfi_gen2(inst);
>   	u32 port = iris_hfi_gen2_get_port(V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE);
> @@ -378,7 +378,7 @@ static int iris_hfi_gen2_session_set_config_params(struct iris_inst *inst, u32 p
>   		{HFI_PROP_BITSTREAM_RESOLUTION,       iris_hfi_gen2_set_bitstream_resolution   },
>   		{HFI_PROP_CROP_OFFSETS,               iris_hfi_gen2_set_crop_offsets           },
>   		{HFI_PROP_CODED_FRAMES,               iris_hfi_gen2_set_coded_frames           },
> -		{HFI_PROP_LUMA_CHROMA_BIT_DEPTH,      iris_hfi_gen2_set_bit_dpeth              },
> +		{HFI_PROP_LUMA_CHROMA_BIT_DEPTH,      iris_hfi_gen2_set_bit_depth              },
>   		{HFI_PROP_BUFFER_FW_MIN_OUTPUT_COUNT, iris_hfi_gen2_set_min_output_count       },
>   		{HFI_PROP_PIC_ORDER_CNT_TYPE,         iris_hfi_gen2_set_picture_order_count    },
>   		{HFI_PROP_SIGNAL_COLOR_INFO,          iris_hfi_gen2_set_colorspace             },
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

