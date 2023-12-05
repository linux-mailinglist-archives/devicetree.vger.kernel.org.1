Return-Path: <devicetree+bounces-21973-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1BB805E54
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 20:06:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A82C21C20F6B
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 19:06:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7DD468EA7;
	Tue,  5 Dec 2023 19:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S8QtKoWC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCA35129;
	Tue,  5 Dec 2023 11:06:09 -0800 (PST)
Received: by mail-pg1-x534.google.com with SMTP id 41be03b00d2f7-5c68b5cf14bso1701129a12.0;
        Tue, 05 Dec 2023 11:06:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701803169; x=1702407969; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P1pAlpuH5Xa5SLoWkygT7UiOceoXCeggodj1re8Nc1s=;
        b=S8QtKoWCpIV5inwhdQ+T3t+2ZF5hrYMe0AsiKcdw6WlDE0QgyAXutomhYqqdTfrlUA
         7kOw0EMWMoYo+p+SUlNqnj/6TtLEZ7TQPCd9ZVnVUrWSv52hF4pUkwEHHaDqFuQOJMfh
         0rWOlUod7+geT+w9d95kJ295wCC0icNgvYGT+q1mvDmFak1SHUs/757QCUxbyk3InBe4
         I3YFXNritC+nx+o/LGVFxYyCTXdgSlWCzobY8A171GN1gUKSsgj12xkN1wZRuDXyQYb1
         W5iYhO2CuAdcf7Arx5WKGNpEz+x1ahSXQU1evEUMpq06lZu1QnPvAYMtNWhiQEYzFNZg
         nwHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701803169; x=1702407969;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P1pAlpuH5Xa5SLoWkygT7UiOceoXCeggodj1re8Nc1s=;
        b=dJ4oGn+SD0CSVRERLSDlOCK+ZqDVsQjSaMtamc4rFsaulnU+pSL+D5qnITKqIS42pJ
         JvFFdvQvCcwu3Cj9W+rvqTZI5DwvP+sWTAW1kdi+sGmr0e7bLZmhw7ck6FsJ7onKFa5t
         kaCVaWKQXgsrHi2o9T+LYY2GU2oP0WPkHUmJI1qojpx0ZGufg63Arajon6/nh8HNsHhm
         aRiYNkMo3oPbmyYU5dVNIjNYbUT3qAKcIIxYfe4SHR5Rnnz4dO1eLjRlMoykNgfhgD3Y
         tL8WAw+zGXep6U1HMeOWvHaLMVB4bnrDTlcpyb3I9nwxlusHFJqSFjh6FRXHMg7heqYj
         hcyg==
X-Gm-Message-State: AOJu0YxEeUCGb3ccH9pTY0Ju+8h7wOmzrCb4aQXx27bClzukC6RDn+4B
	qtR1a/FgYTUA0jZL4DLF+/eIjdxPwY4=
X-Google-Smtp-Source: AGHT+IGhqX4d1zjyzK5FHrlGfPJ/M5kdx4UOHh66YSZV+LHHsYYQhq5JyIXg7kLnfFmAEVreoaGMvA==
X-Received: by 2002:a17:90b:4b52:b0:286:bdb5:d073 with SMTP id mi18-20020a17090b4b5200b00286bdb5d073mr1420677pjb.42.1701803169102;
        Tue, 05 Dec 2023 11:06:09 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id gb2-20020a17090b060200b00286c1a13ed9sm3110511pjb.56.2023.12.05.11.06.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Dec 2023 11:06:08 -0800 (PST)
Message-ID: <ea67da10-0e8d-47d1-992c-484977d152b6@gmail.com>
Date: Tue, 5 Dec 2023 11:06:07 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] memory: brcmstb_dpfe: introduce best-effort API
 detection
Content-Language: en-US
To: Markus Mayer <mmayer@broadcom.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20231205184741.3092376-1-mmayer@broadcom.com>
 <20231205184741.3092376-5-mmayer@broadcom.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20231205184741.3092376-5-mmayer@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/5/23 10:47, Markus Mayer wrote:
> Add a best-effort probe function that tries all known DPFE versions to
> see if one might actually work. This helps in cases where device tree
> doesn't provide the proper version information for whatever reason. In
> that case, the driver may still be able to register if one of the known
> API versions ends up working.
> 
> Caveat: we have to skip "v1" during our best effort attempts. This is
> due to the fact that attempting a firmware download as required by v1
> will result in a memory access violation on anything but v1 hardware.
> This would crash the kernel. Since we don't know the HW version, we need
> to play it safe and skip v1.
> 
> Signed-off-by: Markus Mayer <mmayer@broadcom.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian


