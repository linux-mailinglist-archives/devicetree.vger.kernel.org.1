Return-Path: <devicetree+bounces-21971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EC0805E4F
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 20:05:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AA4BF1C20F78
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 19:05:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AACF68EA6;
	Tue,  5 Dec 2023 19:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WuhUwi7C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 019D6B0;
	Tue,  5 Dec 2023 11:05:17 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-28648be0811so4404568a91.0;
        Tue, 05 Dec 2023 11:05:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701803116; x=1702407916; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/YpRo6JOF2d6j3rPa12X0C68slW+v5pjWgqMK6QLn2s=;
        b=WuhUwi7Cpru+ci+F9IfpM6qU8noYAplWFUnvgkWIAQZ5sGvkW6EN3h/FihiNRCRfct
         jwv8KvfnGUugfiXR7q/qZ07OpBiLuUHNpLqkCllUY6kFP79DPfE36wm++/drxxJDIj9S
         OakPd//ScV6xh+oAPJuqFeLMLF/nDBlBuarm/IUDPsomw6g9X+ckA01eRV0OFtkE9iMt
         nGOBOqsGG6NwumbeBvBZvnbcNegl+iBph0Q96k6SeoiqRJouEoyQm/nI0UO5qwIY8LD+
         tjBVFLvwPx5gQSZZEM+60U38qmPgouuAnNaMfCdtaTB1NC/+6dGecLFyqLLYmRFQrg9Q
         lTcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701803116; x=1702407916;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/YpRo6JOF2d6j3rPa12X0C68slW+v5pjWgqMK6QLn2s=;
        b=GBZQrNwAoGmeQj10Cksohglt5NA59cB81MC3739UCq/3KQezh9bvdj//XNm8VhCoxl
         I73fGRg4upQg0WZDgZW6SNsPAnMnBJ0rDFNI/WrzTysycSInY5QbJsku2fqjVWyPh9Gr
         ZJ9SVaCLzRDc0HASeJHH54IDKfF7XYp+Tf5sADXB5FaBWpjRpWW3Ol/liTigzFRb+5mh
         PrtynzfEGHikuDFZJuQLtMsnvbh8Ya1JT3zK7kOohSRNGIojhZVKE9WF5L2PkEuGsv9W
         XjA14n+H5DKYgomWLKAGQLIKSQVMRYFxBr/IyYLQzK+WnYQ1YJ+Bhl9Ik9lLIuXQaeu1
         zhYw==
X-Gm-Message-State: AOJu0Ywlhuu7nMR5doHYRC139hQZZIxxngyhLP6yfQkZxCes0QfjYA/n
	kU8qsH9WM4UL/JEi8SFIugCRaJeljCQ=
X-Google-Smtp-Source: AGHT+IF3mB1DJWrQGKXFFEpF3BoVcs2vfq0HnTFIh6mMi6cg+C7zNqoF/5zHpRyx20VScDk5ws1uJg==
X-Received: by 2002:a17:90a:f28b:b0:286:295a:b33a with SMTP id fs11-20020a17090af28b00b00286295ab33amr1446687pjb.8.1701803115469;
        Tue, 05 Dec 2023 11:05:15 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id gb2-20020a17090b060200b00286c1a13ed9sm3110511pjb.56.2023.12.05.11.05.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Dec 2023 11:05:14 -0800 (PST)
Message-ID: <fee61230-58f9-45d5-b435-e3f76f4993e4@gmail.com>
Date: Tue, 5 Dec 2023 11:05:13 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] memory: brcmstb_dpfe: introduce version-specific
 compatible strings
Content-Language: en-US
To: Markus Mayer <mmayer@broadcom.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20231205184741.3092376-1-mmayer@broadcom.com>
 <20231205184741.3092376-3-mmayer@broadcom.com>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20231205184741.3092376-3-mmayer@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/5/23 10:47, Markus Mayer wrote:
> Introduce compatible strings brcm,dpfe-cpu-v1 through brcm,dpfe-cpu-v3
> to the Broadcom DPFE driver.
> 
> Signed-off-by: Markus Mayer <mmayer@broadcom.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian


