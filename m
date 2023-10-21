Return-Path: <devicetree+bounces-10559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D68857D1E94
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 19:23:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 100491C2093D
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 17:23:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56B0E1400F;
	Sat, 21 Oct 2023 17:22:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z8wD/Wn7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28EA101D2
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 17:22:57 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D4D8124
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 10:22:53 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3296b3f03e5so1321026f8f.2
        for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 10:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697908971; x=1698513771; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s0Pueci5vjE1RZUepv2ch3jnchuj0HDWR8j8LW6MAUg=;
        b=Z8wD/Wn7Oli4yv8WYye83wyEZY68ipsVF5gRBEhEPO0jY/nWZUo4Iod/1FRF2x4ZjF
         5IWYy5jY1fObDzV47dHcxL8vdT/ChbfKu8go1RD7vxS72AvQpFOdh478GAVneZel9xhS
         fdpzVtJiJh7WAzHXyKPICxVdwSfXTGTfJAjQ1EOUYsL9NdUxblZPp7OGQVgOjGm9/+Wy
         G4Gh+uexm31XLc0IGGOyOn3GB9XtWnqEaVPI7TOc1r8KnylGf8vGDA69DXEYCtcdLJK/
         0fUQvakiR+OpsaWMY1e9L5cLM+4kj41YwH9QqaRAbFZ02yFzhg+i47TfDsiz6LTe5pk6
         Dqug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697908971; x=1698513771;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s0Pueci5vjE1RZUepv2ch3jnchuj0HDWR8j8LW6MAUg=;
        b=czemMPGCxqVSQgj1T1KIbojzURPl+B7UBE51nmspYMDyqs4H0TgtLDwBgZmWuv+wXe
         CUlTJ9f7p8KVliA2w4tZlHwqybmxoM/UN/kScxGIDj2WWsVp1KSfiN6KvJbU/SNgUsyb
         nFXPXwSZ2eSmiz35ZEtOt4tYlUc2AfrfptKSn9QVKRGhAkCuOez8vOf/25sdlsEQSnv5
         WLU0m/sJzw8bxfGSN5KPiNSa2IsGTQnUs704iokxt9hpHqLJelYU5oMouaEQoGQLzQaP
         woJDvyIbNtPBMlQlOIrdzWXIGRugFlv9GG5cFrdiOXJazYGhVVCytz3wR9I7XDi34Hkr
         SteQ==
X-Gm-Message-State: AOJu0YzLlWXo8Tj9HRLJ1teyJfT/ndm1LHrwyzxP5F0Dx9vXSsktQlMo
	MNcaiAdparymh23weuTkWqDjFQ==
X-Google-Smtp-Source: AGHT+IHMbU19nFFzKe8Nu5N79q2KeQIpb+qOZCG1rQ+V69inj+F618FHlx4wadcGx+ZQo9ne2v6qIg==
X-Received: by 2002:a5d:650f:0:b0:32d:ad8b:2a04 with SMTP id x15-20020a5d650f000000b0032dad8b2a04mr3855209wru.14.1697908971540;
        Sat, 21 Oct 2023 10:22:51 -0700 (PDT)
Received: from [10.66.66.3] (9.ip-51-91-159.eu. [51.91.159.9])
        by smtp.gmail.com with ESMTPSA id n18-20020a5d4852000000b0032db4e660d9sm4026394wrs.56.2023.10.21.10.22.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Oct 2023 10:22:51 -0700 (PDT)
Message-ID: <09de196b-94bc-4c0d-adf2-b02b2374a1f0@linaro.org>
Date: Sat, 21 Oct 2023 19:22:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 1/4] dt-bindings: ufs: qcom: Add qos property
Content-Language: en-US
To: Maramaina Naresh <quic_mnaresh@quicinc.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, "James E.J. Bottomley"
 <jejb@linux.ibm.com>, "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, linux-arm-msm@vger.kernel.org,
 linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, quic_cang@quicinc.com, quic_nguyenb@quicinc.com
References: <1696952947-18062-1-git-send-email-quic_mnaresh@quicinc.com>
 <1696952947-18062-2-git-send-email-quic_mnaresh@quicinc.com>
 <5458734c-b9ff-4351-9bcd-c3dd7538f135@linaro.org>
 <6a85761a-3dae-43fd-9b11-3d2edc56ad7e@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <6a85761a-3dae-43fd-9b11-3d2edc56ad7e@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/20/23 11:04, Maramaina Naresh wrote:
> Hi All,
> 
> Thanks for reviewing the patch.
> 
> We are moving this feature support to core UFS driver and planning to control through UFS capability flag [ As per upstream comments ].
> 
> We will take care of comments and push new changes in next patch series.
Sounds good.

Please also fix your email client to avoid HTML. The lists will
only accept plaintext messages.

Konrad

