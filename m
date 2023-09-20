Return-Path: <devicetree+bounces-1761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9907A8322
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:19:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B474F1C20B38
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 13:19:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0346B36B12;
	Wed, 20 Sep 2023 13:19:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A22FF1863C
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 13:19:31 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FE25B9
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 06:19:29 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5031426b626so5725576e87.3
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 06:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695215968; x=1695820768; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UOy+tw7JFth8FCqJzlba7saXfyCHBART6wBdyA2SClY=;
        b=USEuVSk3cOj6jhT0t03TmuNpomMFHoF6Q42AwTFDxZjmMulHlY82fcJWgRBJZFM9PP
         l5xH1stUSGaHTMEc+HuOEVTlf4x0UcGK+0ujiS5rVMuzy7t5K1MDtVf3AazbzdBxl8vX
         RadTyBleTtLIT50KDwBrWnJSNGkYaHdRCRpa4b4pD8Ydd23kriGk+viZuhIYrqUiG6Db
         plCK4UOmTd1GqE7ELrDW9DK7I9gQTRFZ1ykej1sejf9PW+K/3Ex5P1a1B/I6DaJ05RK0
         koZgWFDhqtgW/PDaKWa79TN8KCTpZvkHEvYNo6S0hclWUD4QAXT3Spo05KYGd76/EJFK
         5jjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695215968; x=1695820768;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UOy+tw7JFth8FCqJzlba7saXfyCHBART6wBdyA2SClY=;
        b=e7lIK5Ajgb4kvjxWO/gatehoS81x0z9nAqge2EIvw7pNyjhtOPKvcX1THD244TZF8q
         fCqSXV8X58QLF3iaW43ABW0txpERP3/oxb2jyjTnXNnBatPHXVrTKqnEsac2eA86evDp
         f0c/B6WhmdszWOSiQ8PQZkQNGfXvgzBN0A+FJ7u17th/qoGfqEI5HDaVmRpmvYoXSAq6
         pablXB82qd6nTGnKt8MTrdfnKnYMiN7eXa9PbBC5WDoIiQBzuoh9GliQHEzVq6zr4ch1
         6wGLvIxbqEOMiZax9gi3KzTeEY5sOdGHxoLpp2F5JPrv2cmN2P5hp5te/IPmnQkS4Xob
         kblQ==
X-Gm-Message-State: AOJu0YwredwnJ9Oby3AbFGFnqAeXdxyq35IDxVP+lwJTsV0gR8qKeZjS
	il97C5uo1FNcebchdlcoNhx2PA==
X-Google-Smtp-Source: AGHT+IHkbmDhplCmcpWceWrsHHknh/hic++9MQZmNTujBFNA0UUiPrM6aqLADYgkoKVyakt4MATTSA==
X-Received: by 2002:ac2:5e79:0:b0:500:92f1:c341 with SMTP id a25-20020ac25e79000000b0050092f1c341mr2288339lfr.54.1695215967771;
        Wed, 20 Sep 2023 06:19:27 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id i8-20020a0564020f0800b005309eb7544fsm7205179eda.45.2023.09.20.06.19.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 06:19:27 -0700 (PDT)
Message-ID: <c53958d2-d7bb-c859-b4d1-37e7c61f6107@linaro.org>
Date: Wed, 20 Sep 2023 15:19:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v7 3/3] PCI: xilinx-xdma: Add Xilinx XDMA Root Port driver
Content-Language: en-US
To: "Havalige, Thippeswamy" <thippeswamy.havalige@amd.com>,
 Bjorn Helgaas <helgaas@kernel.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "lpieralisi@kernel.org" <lpieralisi@kernel.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "Simek, Michal" <michal.simek@amd.com>,
 "Gogada, Bharat Kumar" <bharat.kumar.gogada@amd.com>
References: <20230830090707.278136-4-thippeswamy.havalige@amd.com>
 <20230906172500.GA231799@bhelgaas>
 <SN7PR12MB720159F33F53B40453111D128BFAA@SN7PR12MB7201.namprd12.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <SN7PR12MB720159F33F53B40453111D128BFAA@SN7PR12MB7201.namprd12.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 19/09/2023 15:21, Havalige, Thippeswamy wrote:
> Hi Bjorn/ Lorenzo/Krzysztof,
> 
> Can you please provide any update on this patch series.

Krzysztof? You need to Cc him first... I mean, the other Krzysztof, or
whoever is needed to be Cc-ed.

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC (and consider --no-git-fallback argument). It might
happen, that command when run on an older kernel, gives you outdated
entries. Therefore please be sure you base your patches on recent Linux
kernel.

Best regards,
Krzysztof


