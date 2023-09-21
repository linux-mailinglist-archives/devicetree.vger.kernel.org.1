Return-Path: <devicetree+bounces-2202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 843B97A9BD9
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:04:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23923280DBB
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:04:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 804401642C;
	Thu, 21 Sep 2023 19:00:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207D112B96
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 19:00:14 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B43478E6A0
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 12:00:09 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4053c6f0d55so1404655e9.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 12:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695322808; x=1695927608; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U7gFQeovCOqyG+Vt42B/k9KqcPKnAtH77aTFoPbh9E0=;
        b=MctBfMBh2uVyU78WdO1qrQkTZpAtJnyLLjO7/WzzKQQbBlJfbITJdvrQM0b+3k6gr3
         AHj3qCZzTIt7F/29vN0PtQuD1qr9EnRQmBzTjjbPIgBzgrcA5o8xYQLTOL2E5S09WYUW
         NSA/lX1xRcoE2SFhSXV4ADrke1Zc5ifyLLJOa4cAToB0c8U9sSvk67oBHX81Jkyklh/x
         s3+LccJGpxABzv4WG+OamJB0907yQxG7kK8xJxcsWWDOr5TpUpDIlMufJm+o6Ueq1mZJ
         Yqid3oESH52AZX+iyRZOdB2lOXhyt2jxUa2wtyjsvVzLbQL3AdDJVADqA/9yI0TivHnu
         IgRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695322808; x=1695927608;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U7gFQeovCOqyG+Vt42B/k9KqcPKnAtH77aTFoPbh9E0=;
        b=H6fMkFv9tAXqhwyVex17MwxHy6zWMQHwVM1VTfx3yFHiozAGorZq0AMHxtj0k/+UT9
         KgxkjdOfRGTjMzrac1MdYyMDEHmrZfNv2ql9diTv+qOy6UIIkq+0zlbarL/LXigyZkJI
         wAhYZH1snehd29e9foaY+xRMn4Ym+GVRSFfEUgN0rR/YbyroDdoNIoQ1FNMcYhqy4Uwa
         EEGJ5tR8stZPh/PW1r9croJzrTD4v6fh/rUn77VLEl73T5muCo6aAdwohO6Ad9tJCsuJ
         v+e971oujQdDL6iWQJ421WDFvERGdBKcl9WK7wrEvJDet8RVc4ESFbaz7P+XI+6cR27R
         F7Dw==
X-Gm-Message-State: AOJu0YyY8CFOrSjmkFCtoHv9g6mM349LWJNcC03WiGTVTsr7o3YJxPvG
	IsJSPeXrc6x/ReUV3ouBZqL9HHciyQr3l5L6b80ihg==
X-Google-Smtp-Source: AGHT+IHjIQkVJQybbyYx/PL2aE6OMJIhMwgKGQdYG4h1ptw97QpAlXlx1ORnozqq/yIgm5Zhfz1miQ==
X-Received: by 2002:a17:906:704d:b0:9a1:c42e:5e5e with SMTP id r13-20020a170906704d00b009a1c42e5e5emr3859123ejj.42.1695281319261;
        Thu, 21 Sep 2023 00:28:39 -0700 (PDT)
Received: from [172.20.15.189] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id a24-20020a170906245800b0098963eb0c3dsm616369ejb.26.2023.09.21.00.28.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Sep 2023 00:28:38 -0700 (PDT)
Message-ID: <2ec21b71-bfdc-885f-827a-eca7b70f2728@linaro.org>
Date: Thu, 21 Sep 2023 09:28:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 2/3] soc: qcom: rmtfs: Support discarding guard pages
Content-Language: en-US
To: Bjorn Andersson <quic_bjorande@quicinc.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230920-rmtfs-mem-guard-pages-v3-0-305b37219b78@quicinc.com>
 <20230920-rmtfs-mem-guard-pages-v3-2-305b37219b78@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230920-rmtfs-mem-guard-pages-v3-2-305b37219b78@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/21/23 04:37, Bjorn Andersson wrote:
> In some configurations, the exact placement of the rmtfs shared memory
> region isn't so strict. The DeviceTree author can then choose to use the
> "size" property and rely on the OS for placement (in combination with
> "alloc-ranges", if desired).
> 
> But on some platforms the rmtfs memory region may not be allocated
> adjacent to regions allocated by other clients. Add support for
> discarding the first and last 4k block in the region, if
> qcom,use-guard-pages is specified in DeviceTree.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
I don't want to block this anymore, but I guess I should ask
the question whether it would be valuable to add a common
reserved-memory property for e.g. low-padding and high-padding

Have we seen cases of that outside rmtfs?

Konrad

