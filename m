Return-Path: <devicetree+bounces-1441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9DE7A63CF
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 14:52:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 04A2128219E
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:52:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1C1A37CA2;
	Tue, 19 Sep 2023 12:52:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C64A4180
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 12:52:23 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B048199
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 05:52:21 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-50325ce89e9so2283706e87.0
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 05:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695127940; x=1695732740; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fmzWRuCT+m+LWqYYQplgffz18WcPmF/Ig8ywf8K1oZ8=;
        b=m/GNHnG/LSGEG41yV75HIXcS08ci77rAkgzPV5Rm3ik5Je4gTdrtIs7o15o40hWa6n
         5WYfFR1CO6TejIUqV3RRzIoyji6dXpJQHSg2usiDpwkg3WfWLd4RoxWLYQLtIEpV2Tb4
         BpajzYkV4HA4yVxqJlLLMkQJQ1INvYKcXnDxaq6ZaD4K+EWdSuvTvqpo+HBq3aMrbk/o
         fxsqERq1qM2TwLa1Jhu92POiHR5hu8dTaNXTOdETAen/qYd5JuNAZnxrO1Gzsia1EuQm
         HmIAMzAuOr1ZD0NrvsP15dktVGHvDILjhxOGvPTaItYRIohe8fHndeVdOG0ESZiItwb1
         8PPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695127940; x=1695732740;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fmzWRuCT+m+LWqYYQplgffz18WcPmF/Ig8ywf8K1oZ8=;
        b=SrEEnLXnu8QJ3gTsYuQJu0I+fzVXD2o1Pve9tCeX8MVMswdlKhW0GPnni7kFooMImE
         7kiktJKKii37Tl1hoVZZYxPjVaUuz2AgsECfZgISP8k/29N7UBdvoUXwUs/e+z8IXD1f
         OHxZpHx2EjHIJWM6cYZZlE40Uf6e1AfTZGsWDXhKpw5WHS29Ki8Z5Nd3+WALNK7j6x1I
         NbbDzaYUncPc26HuyZV73KPgw7y+lUzbV1zWcYtSqZKdOsyeL/sdenZsRbQXkmugcf05
         H5GihAR9+985vNi6+irF6ZO6lNmNShXZVu0qS16xc8vhVffev+04oG3z8Ys4bz77NfxE
         07Dg==
X-Gm-Message-State: AOJu0YxAnIux06x0Cj022xR2yY3qUNHlUeaE9Ex3ylNN2/j9EjYoRQ5L
	ozcrIEpPZqYv0Fk9EgzesJkXYA==
X-Google-Smtp-Source: AGHT+IHCRGOlyWuymcJNQu7Zu1nUSlAHabhsw1d18xf4FV8RNbegwav5clmTZ2Th6UQOHT6Avo4YRA==
X-Received: by 2002:a05:6512:54b:b0:500:a2d3:3e65 with SMTP id h11-20020a056512054b00b00500a2d33e65mr10779762lfl.23.1695127939940;
        Tue, 19 Sep 2023 05:52:19 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id dn22-20020a05640222f600b00532c1dfe8ecsm642597edb.66.2023.09.19.05.52.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Sep 2023 05:52:19 -0700 (PDT)
Message-ID: <80f9a0df-bef0-e827-9323-4eb12db956c6@linaro.org>
Date: Tue, 19 Sep 2023 14:52:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 3/7] arm64: dts: qcom: pm7250b: make SID configurable
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>,
 cros-qcom-dts-watchers@chromium.org, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-pm@vger.kernel.org
References: <20230919-fp5-initial-v2-0-14bb7cedadf5@fairphone.com>
 <20230919-fp5-initial-v2-3-14bb7cedadf5@fairphone.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230919-fp5-initial-v2-3-14bb7cedadf5@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 19/09/2023 14:45, Luca Weiss wrote:
> Like other Qualcomm PMICs the PM7250B can be used on different addresses
> on the SPMI bus. Use similar defines like the PMK8350 to make this
> possible but skip the ifndef based on maintainer feedback.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Matches our discussion offline today. Looks good, thank you!

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


