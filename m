Return-Path: <devicetree+bounces-12133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CAED97D813A
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 12:52:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CF50BB210CA
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 10:52:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C31613FEB;
	Thu, 26 Oct 2023 10:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nexus-software-ie.20230601.gappssmtp.com header.i=@nexus-software-ie.20230601.gappssmtp.com header.b="cN611ao+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6E211C9E
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 10:52:27 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB8CF195
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 03:52:24 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-40859c464daso6249925e9.1
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 03:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20230601.gappssmtp.com; s=20230601; t=1698317543; x=1698922343; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wcf0XYPF/4Pt1WTkCKmw6RYdqKYjvunGflDfl8xXWCk=;
        b=cN611ao+9KSkXr+6EiE8PStPFjXFddtJYJAXEFCesRkZ3x+A2CCpfyMjymw7KDygy4
         gkM0kG5JR/mbLJ+h37ByfIXSaQ6bqFvICTtHc6xY282rZcXDnn1UW9MrYljyE/YNk7KZ
         HI/lzWpzQlrBn5H2fNByWW+6zs6iZjssjybssoG4f2CEds4cJSfG1R7r3ipDRubaAxQX
         S3w9GnaamCyh5QAba0RTzOGx6giU8C6NogGTlk0/7fykTjFJ1o+69nRYLLWvKetG0rtH
         ilJkwVWoY4eznvAJYZwrum4rgcNZixzE3EJF8PR70g7Gx1HzSKumhosauJdHOZ1SStiT
         OxkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698317543; x=1698922343;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wcf0XYPF/4Pt1WTkCKmw6RYdqKYjvunGflDfl8xXWCk=;
        b=oGGIXBuy+PcBBArEA3xj547D8PCb2VZV1+rcx/LOjzrr95JUQkiWDitjfAL9MqpO22
         m4EpiZPYIzMJXbleOoTVaJB2IdJJofAfFVr5u+Qos9i1zV58H/e1RwGjNJyG28nHIaH4
         15xM6Wz9ts1eb/RedYgFgDcJI0CVGce7LKxac7TKKeDpJiHAjbef220eFDROLkA/XKSU
         HsNNdFNisPz2exWamEi0yXVVE1FK+GmGo0NTcQ/S0jKdOTVQljG22M1grnMuU4mKg4HL
         4/U4x1p9iNHN2FB3mS2RoLq6u/BLfMAdD/TUGv5GGqxxyWWbsyj/VVRDjMPLhCP9LBq1
         e/lQ==
X-Gm-Message-State: AOJu0Yy0Plnw9JOTwmzYBC22jjQI4xShXBZoPG8fEMjJN62lXrjzGDIQ
	z85f3n8do3mGXdVSTwme+TdZVQ==
X-Google-Smtp-Source: AGHT+IHNO8PwBg8++FTkP/gdxqiLLTOhI2787Z+RbXvW3hrzEuZDY6YEtNSQwiQJufCzPG2uzKwZKA==
X-Received: by 2002:a05:600c:4ec6:b0:408:54be:d961 with SMTP id g6-20020a05600c4ec600b0040854bed961mr13988868wmq.35.1698317542986;
        Thu, 26 Oct 2023 03:52:22 -0700 (PDT)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id t10-20020a1c770a000000b0040775fd5bf9sm2229477wmi.0.2023.10.26.03.52.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 03:52:22 -0700 (PDT)
Message-ID: <1fcebf80-e059-449d-b889-17ca84b4fc5a@nexus-software.ie>
Date: Thu, 26 Oct 2023 11:52:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/4] Add sc8280xp CAMCC bindings and driver
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, andersson@kernel.org,
 agross@kernel.org, konrad.dybcio@linaro.org, mturquette@baylibre.com,
 sboyd@kernel.org, dmitry.baryshkov@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jonathan@marek.ca,
 quic_tdas@quicinc.com, vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <aef93a48cf270d5078ccdc39d95113a4.sboyd@kernel.org>
 <20231026101343.3300-1-bryan.odonoghue@linaro.org>
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
In-Reply-To: <20231026101343.3300-1-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 26/10/2023 11:13, Bryan O'Donoghue wrote:
> v4:
> - Resend of v3.2 addendum as v4 for tooling purposes
> 
> Link: https://lore.kernel.org/linux-arm-msm/20231024093919.226050-1-bryan.odonoghue@linaro.org/
> Link: https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/qcom-linux-clk-for-6.7-camcc-sc8280xp-v4

Ah - I had an "--in-reply-to" in this.

I will resend without


