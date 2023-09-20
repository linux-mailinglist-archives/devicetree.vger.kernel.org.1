Return-Path: <devicetree+bounces-1764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E007A8336
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:23:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B00B281EA2
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 13:23:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCF3A36B16;
	Wed, 20 Sep 2023 13:23:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 858F61643E
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 13:23:13 +0000 (UTC)
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4FDDA9
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 06:23:10 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-52e5900cf77so8559980a12.2
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 06:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695216189; x=1695820989; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Df46fcKgl8vVjR+nR4H1C4EpDYFrcFVU3OYDvmRGlDk=;
        b=SW9kTQ4w7083oO9eAWPchTqv5BTUCInVaQ1KoGln2uPU9XENXW4L5RM0PAIWWJJgA1
         qiJTcsC/NPFXwMydiJSNFGKfn7Ep4pyCF5lacxbn5G+vEk6kGKUgFl/b2nDId3hlKWhQ
         yKHrt///4QVyU0fHxCd/HlMtwlzJ88uv211v272PxIV8r47bMaFzhMp1YzyE2sA4yNGR
         0k/7K56O5C867IBn5cF38t4vGQQ6fDsgEgfMdRYnKsFOnh5AkFREiX1KFbojOF8+ix0O
         m/YceK23eHQ8QSrxconwMCJuRk0fnj8CjolN0E+Bboh9JHflglj1RzsEkWp+C+xK42P/
         NB7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695216189; x=1695820989;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Df46fcKgl8vVjR+nR4H1C4EpDYFrcFVU3OYDvmRGlDk=;
        b=h3fPs53fC2NLvt/v7aBu4DeDNhbxUSf84tP6joVcZW+pblGhOQN6aO0RLHBLqE/AJ+
         t34dn2SEF1VcDEtYcuI2q9QjsFHqk2IfYszWgQNJoa5B9AAud9NQFs02HAvzDOK6twCo
         v7p/u8PBhB8+pspbTYElWP72lKl+o+hAK+e+Kg8Nvt3SLwUw7ogJzCVg8vk1X8VfUjXy
         ++Jst8bWljBYZpIVqF2AlpTq8qHNBqGVhJ77U8amd+Ze+Kr5ao1+IVYqqNijeiqj0yzw
         DRTb1KZSxqz/OMECzMOaoHSbhEQRHc7DcBP6qng+5h9QJ6NCy6N/wTUEFyB/JcxnfWcb
         zCCg==
X-Gm-Message-State: AOJu0YwcLcVYJx8TtAJK1WY7iZwz7g8n60fZmvDM+rx1T9A+brsCiqez
	g0l+Fr7cNekPTRnR9fZIE4b6Pw==
X-Google-Smtp-Source: AGHT+IGODhn34sgKEEB5Xvi5AdYAc84EeYLLuGWNJ38eH9//v1mx5a9k4Q2h92dHgysqXXRXchUhIQ==
X-Received: by 2002:a17:906:8449:b0:9a5:d899:cc36 with SMTP id e9-20020a170906844900b009a5d899cc36mr2076149ejy.2.1695216189410;
        Wed, 20 Sep 2023 06:23:09 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id gg23-20020a170906e29700b0099364d9f0e6sm9236846ejb.117.2023.09.20.06.23.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 06:23:08 -0700 (PDT)
Message-ID: <afedde62-f887-07a9-82dc-125f6e46c25a@linaro.org>
Date: Wed, 20 Sep 2023 15:23:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 5/5] arm64: dts: imx8dxl-ss-ddr: change ddr_pmu0
 compatilbe
Content-Language: en-US
To: Xu Yang <xu.yang_2@nxp.com>, Frank.li@nxp.com, corbet@lwn.net,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 will@kernel.org, mark.rutland@arm.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org
Cc: festevam@gmail.com, conor+dt@kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20230920102004.886599-1-xu.yang_2@nxp.com>
 <20230920102004.886599-5-xu.yang_2@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230920102004.886599-5-xu.yang_2@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 20/09/2023 12:20, Xu Yang wrote:
> i.MX8DXL's ddr pmu has port/channel filter capabilities, but it still is
> compatilbe with "fsl,imx8-ddr-pmu". This will change the compatilbe.

Typos: compatible


Best regards,
Krzysztof


