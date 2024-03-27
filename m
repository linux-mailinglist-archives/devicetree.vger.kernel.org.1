Return-Path: <devicetree+bounces-53903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF3588EC3E
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 18:13:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B5AB1F27534
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 17:13:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8458614D28A;
	Wed, 27 Mar 2024 17:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C4ImFvaf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F8D12E1D4
	for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 17:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711559618; cv=none; b=CUy+wrUN7O9GfCmkst7WkTP1XVPxQO669k0t2wI6vye1kCJVxcDAXUHZS4GAvA9RrrJkeVCqA1A++N4x7lypMM+mcLbobQ23qD5Hy8DDo/p4dJDXCXGgZWsBlVx+JaCnm1CPkaEOSoguZcICfqGRWPDV/aN20s4FPgch8CVuYnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711559618; c=relaxed/simple;
	bh=BQ++1TKgyYe89FUaeUKqio0CwutHDxtXZThE0UXwUPY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RpuGRReGNHRc5JnsmVCNYbx46RH4nSnsptNwVLbBcXtoi+83tBFfoa4c1Ehy9rEjAKsaAriopDdAkdyE1UMseqnRzJxDASvjY0uxi4fSy3LBnRhScKMcdz5MCl6ZTgMPMTx8lxdlOJfA+yT6yFLTGBCVzgCR6kC+epZQhP1Euv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=C4ImFvaf; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-56c1922096cso82322a12.0
        for <devicetree@vger.kernel.org>; Wed, 27 Mar 2024 10:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711559614; x=1712164414; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=j2we6UHQ0w2iyi00K6wubXlbq/w34rz1Dsx4RB5h8d0=;
        b=C4ImFvafkvZSAWjIu+aseurE0GbzGXp1KRtXmazUdHcmWUpQCOo0UUXhqHnoqLFCsu
         ta5x36DmbFoVbNuWC7efmQSjP1BZ6uvDiy62Vcim5EjKya5uqwbs/6Gq7CvA6zfgbE0J
         tDqEPkEKkCnMX8SfxuvjPKOW88yD4NunGdDTpG4jgIorRKv6ZgVDuTtM3bb4glkuLTty
         30u6orJZc4jqUKZz3JEH6JSfGKJNy5tW9e0wTtkRFC1gVdinQ+TRDiJhJPD0O1oR2fdQ
         ZgoiGZyayypaQb9NCnzrk47jqoevYFm10BYGjsU3K/asUbLCwui6yAY4ZnBuHeGQGWlZ
         h9Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711559614; x=1712164414;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j2we6UHQ0w2iyi00K6wubXlbq/w34rz1Dsx4RB5h8d0=;
        b=xPPjORFvDMHIUhLmhKEhxKfThWoK2CaUqPxZfuCKKj5QnhbevSqsksWkyhiiunK+Zr
         qC8YsTYfrfSVGPrhgwO3rUHUdWfDq9CudavZCJoGHk9E7jNQpF1mT1XfxH2xcRdb+sOU
         Vt9Iea97J4OVTARZPqcHlH2EnQKiVlHa2KGMQilXQiWZpzXDU5oD8/vEQPlaYD1NZQ4d
         czqEf4oI5oWOh0t4rEXIQUyu0LXEahiOzk/JwzT0PF5NegGK4qJvA1zdNJw+8mEn3fXg
         jPQsnu0ClP6h6/GSOcqTxsK2Y/QstDF1Beu4EYMYDCfmIB5Osg/sTV3mJTxx42qywgwL
         WgXg==
X-Forwarded-Encrypted: i=1; AJvYcCVXvAWAIfwORNOpvoxUKM0WFzD4eSPIiH6Ir/fKEawPwjbyKWKGnOMXroR7EmbELb3bpYtVeYfu/UEKMUEimGvJybp51TXt/p9B9A==
X-Gm-Message-State: AOJu0YxL4WS0vrZ6jUivsIoWhY4G8a0svy96FPwx/xgQRzvVSnVdg/o+
	W+IogScULftQP87k6A6s04HQOJD0zf2tE9IqZCxhlyTs0wHUSFvbrICIQ8tKv48=
X-Google-Smtp-Source: AGHT+IGxm+smE9sqD4W5OZ3skLViUgcz+ZipxlZfsluEHwe9WRLdyhZf2fsuu1KBSQlx8zW0y1VBWQ==
X-Received: by 2002:a50:cd9d:0:b0:56b:eb90:f3a2 with SMTP id p29-20020a50cd9d000000b0056beb90f3a2mr285715edi.16.1711559613761;
        Wed, 27 Mar 2024 10:13:33 -0700 (PDT)
Received: from [192.168.92.47] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id u14-20020a056402110e00b0056bfc48406csm5056187edv.7.2024.03.27.10.13.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Mar 2024 10:13:32 -0700 (PDT)
Message-ID: <f7c0fd6d-0c5b-4705-9b43-23979d4220c5@linaro.org>
Date: Wed, 27 Mar 2024 18:13:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] pinctrl: qcom: spmi-gpio: Add PMXR2230 and PM6450
 support
To: Anjelique Melendez <quic_amelende@quicinc.com>, andersson@kernel.org,
 linus.walleij@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_subbaram@quicinc.com, quic_collinsd@quicinc.com,
 quic_jprakash@quicinc.com
References: <20240326220628.2392802-1-quic_amelende@quicinc.com>
 <20240326220628.2392802-4-quic_amelende@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240326220628.2392802-4-quic_amelende@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26.03.2024 11:06 PM, Anjelique Melendez wrote:
> Add support for qcom,pmxr2230-gpio and qcom,pm6450-gpio.
> 
> Signed-off-by: Anjelique Melendez <quic_amelende@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

