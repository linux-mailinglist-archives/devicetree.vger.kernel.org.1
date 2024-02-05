Return-Path: <devicetree+bounces-38493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5E68494FE
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 09:03:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 46D84B20C3A
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 08:03:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06D2F10A1E;
	Mon,  5 Feb 2024 08:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kLmhF6oI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30ECC1118D
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 08:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707120227; cv=none; b=EBMftgUYFSowe80X/sAkjZwsT+trr+yQmOlPk8kygQ6t08bXK5CB8gZA45bxz5KSptpkd/hVL5dyjFbMKyDcsWtY0NdnKJ/j3g30yjHiFUEK9E7i/ssS+QlclBrXhPPpf2yT7fS2ge5hM+4PZIO1Fq1tKgXlvb/37TV/ztjfOaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707120227; c=relaxed/simple;
	bh=b8K6aZwwTViXH4+Xs+qOFZJ3yejMbmHqd5vc0BMHuOA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ONx9Xt07uME93wVBcIorrb4AytoxGWqnRD8Q10b7ATMKq/MpmP+9L9h2cOoEuftCy8br20DVg4Z4gYG9zY2RzxPAJFt/Z8+/GTdFMUcXgMUFPCa+EbWtq8yZgLZ9CR8R5dMj5sdfP250M4phAfpPlkF25Gtn7RAg8E4ppJzr0QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kLmhF6oI; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-55fbbfbc0f5so6078684a12.0
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 00:03:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707120224; x=1707725024; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JNCmjmWd/QBSy++Mmfzq3CC0HXdVl30hyS3O1givias=;
        b=kLmhF6oI1zAjDIHbAsR2eNfQXgErHDDg/Mt3TRETNQxl55u0ireyMQuEkkFKy4kdmK
         QSN8JwPyrOy25QydDqH7Lb0EFuT+eCXrZEi3KqNNsYQRCPqGG9a/TowsFQeBx4W7k51n
         yDDMBpyi3sewDpp/wVFN33zFzsxkYSw5lNuIdTqRW5y/l/ZI78I1IvxsWcr0UHhMJ4eK
         oLqQMLeg3AWw6EUDS2Zvf2KqgIB209FZvkLmn8kl/yvVmJl+Srfjbt3tepBAJSuPzV8T
         4DQIAPidEKmocwT1FTWNgQT10Wl/0QZ+18ygHhviIJjM5qL5Ekk3TIn9Gr3sYiO3DyJK
         sG7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707120224; x=1707725024;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JNCmjmWd/QBSy++Mmfzq3CC0HXdVl30hyS3O1givias=;
        b=Rz4VVffWBoQsHVr97js/U5+kON8x85t6sl6gEn74aXaTKEZ7PMVUQtZZSSL7EJrBqP
         /F6wMcpefb485YnJIp0c1OUQLlTa2HKjXXrKj55vOH4Hy7CO2OxpYFCSZidHGdLnLyWd
         zqNuA10e9KVf5ogJJ8gIQI0TurXdL6oOoMDw2KQVVqgYCI1eUXz6MsnuQOUKzidF4hs1
         eqI+vVPaPz3LXnN8LR4zJ8yWDkoXD8Wh9IduRL+hIJWewYk5g7ECk7q/STqeuB8t12db
         hq6IOFjsvr0s96k3fVzKUCV17rPYN+VExI+eP5E6gXjB0fSzo4di6vAqKmdqtMoI4mcx
         srsA==
X-Gm-Message-State: AOJu0YzlwEwcYzB175nAWcySG1QqG549a/+eVmax2t0Hxi08LfJPgPve
	5kbw93flNJSBGEONORGwyTVvjrUzuJlAn48A+bA64Eyx6tyhnZtI3MhHcRIEL/g=
X-Google-Smtp-Source: AGHT+IHNMheoXDkKxQv95TQNlwZBV9UTyR4rJu+QQzItOkcojMfV0ScRIbTv3wpg/uHINYAOFldhcg==
X-Received: by 2002:a17:906:1b4f:b0:a37:7a6d:79c with SMTP id p15-20020a1709061b4f00b00a377a6d079cmr3601513ejg.34.1707120224434;
        Mon, 05 Feb 2024 00:03:44 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUpWVrHYcynR29YxCxnD9KcFDRESCZWrUnEUjooQUrMwoNDwOIHMtWqzAeot2bsAj78Ss0q+GTzMZw5A6b1ZQao51XJwMa6UnvfWDkSAXlV9RTLWpLmBZGoS3tGDcBwAKMulmTCVMHfXOcZQUOrnbopg7wxHn7JvNrIChQhYajUikBiZkk57pOiwWkvAjdXwVvZrQhMWPNnvu2n1NEw80nih/XC0kMAedrzmnsQl92+tOblqXjK2hxZ72JTRn2wTqcwEIhgCUAeAukUF7AH1+XJS36UsM7LqactDwz251RY2IWmzoyr16C9Sz23AuFF4piMW+yv+ixdeAxyuWIJ0rbDuBS4H2caNzD4SBvjLRDwHwiuPgfs
Received: from [192.168.1.20] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id kq8-20020a170906abc800b00a30cd599285sm4004822ejb.223.2024.02.05.00.03.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Feb 2024 00:03:43 -0800 (PST)
Message-ID: <4179cecd-66dc-49c3-9564-0321bf614d99@linaro.org>
Date: Mon, 5 Feb 2024 09:03:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/6] dt-bindings: arm: qcom: Document QCM8550, QCS8550
 SoC and board
Content-Language: en-US
To: Tengfei Fan <quic_tengfan@quicinc.com>, andersson@kernel.org,
 konrad.dybcio@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 dmitry.baryshkov@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20240119100621.11788-1-quic_tengfan@quicinc.com>
 <20240119100621.11788-2-quic_tengfan@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240119100621.11788-2-quic_tengfan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/01/2024 11:06, Tengfei Fan wrote:
> Document QCM8550, QCS8550 SoC and the AIM300 AIoT board bindings.
> QCS8550 and QCM8550 processor combines powerful computing, extreme edge
> AI processing, Wi-Fi 7, and robust video and graphics for a wide range
> of use cases for the Internet of Things (IoT). QCS8550 is a QCS version
> for QCM8550. Modem RF only in QCM8550 but not in QCS8550.
> AIM300 Series is a highly optimized family of modules designed to
> support AIoT applications. The module is mounted onto Qualcomm AIoT
> carrier board to support verification, evaluation and development. It
> integrates QCS8550 SoC, UFS and PMIC chip etc.
> AIM stands for Artificial Intelligence Module. AIoT stands for AI IoT.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>

To be clear, because you keep ignoring my comments:

NAK

Best regards,
Krzysztof


