Return-Path: <devicetree+bounces-5070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0147B5047
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 12:28:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 4555DB20D6B
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 10:28:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C007BF9F7;
	Mon,  2 Oct 2023 10:28:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 761CCEACD
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 10:28:06 +0000 (UTC)
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64D49B7
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 03:28:04 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-50305abe5f0so24950601e87.2
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 03:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696242482; x=1696847282; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Pp+ZIvIMLMw4v27XJDkBzhmsmKk3dHbrUt7WlWNwd/0=;
        b=un6ijBC836kTqFmvpgytUIbc2Vl4Nestkzc3DtQG77U7nWX7M02GhhndLMUTR5aOev
         itEGiZBBw7NSV7/xYMXer9DTSraAQIcWCSbsY6UO/prRNzPikCSTFrCOTW45lKC05G9T
         ES/+AoOM+s4dsg66gbPUMEMQlfsRd6MxEGpAzIEQ2z5Ygr9jV5kPL6p2s6Q0rUaBuOkA
         gKMnXRSpJ/0THQ/RLkFMcjG0HGEnn0V+Jbvde8FSpCuNi9ddKr9TTiPV5mijttux1qY4
         I40nfrYMF6AcPWnuglMcbE8iWvspvFRqqMCEdas7hDucTA3KblEioqyLNmCKXcDYYEK7
         Hl+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696242482; x=1696847282;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Pp+ZIvIMLMw4v27XJDkBzhmsmKk3dHbrUt7WlWNwd/0=;
        b=rZ/15xIVpzZj9GEql1TKj+oiVM6w4y1GkPbE/kcmzdxhXmajc0vLHBSq76fsI+xLzZ
         CvSMmXg08fnzu/00mkFd9GZ3z/6ImSk1Vd4LBdIB6yuG+g9XsNPr11y6Z13A6iJ39/Y2
         Y/sLlT2UxXu7d+JwLkKSPpZm7sz7wUcMeV43IWkUhoa48nCMIxnh2YYj4CwT36DSgydb
         wv0YH/GD+rNxQvtmSI6Jsv4HWU8HJ+55+A03IayAARLn3Xb4roIqHpPy4sI2NkciZL9g
         5nYJl0NSswCgxF50aIox/2O6gmysP3vD+Kb2sTle8hyRMROZhD32JvRm3AK3qUZBPIKZ
         MQ/g==
X-Gm-Message-State: AOJu0Yy9+G3x7+f04JWNKiUJHTeaBvPDYNQ45hafDAOD62wcl7oKDevv
	yT0Ilw/WGdpDaiXdXm/sS/4m+w==
X-Google-Smtp-Source: AGHT+IE2mEvQKewTHBBOTc6pOoI6mntCTYg507WshCrAjU+y+Sf20HolGJuaMwF0jr2Mmc9mVaS1uw==
X-Received: by 2002:a2e:7c05:0:b0:2b6:bb21:8d74 with SMTP id x5-20020a2e7c05000000b002b6bb218d74mr10184296ljc.1.1696242482640;
        Mon, 02 Oct 2023 03:28:02 -0700 (PDT)
Received: from [172.30.204.164] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id t12-20020a2e9d0c000000b002bfb71c076asm5228715lji.43.2023.10.02.03.28.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Oct 2023 03:28:02 -0700 (PDT)
Message-ID: <2fb61d6b-0947-5595-86c3-9e1d23a0e1f0@linaro.org>
Date: Mon, 2 Oct 2023 12:27:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: sm8550-mtp: add orientation gpio
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20231002-topic-sm8550-upstream-type-c-orientation-v2-0-125410d3ff95@linaro.org>
 <20231002-topic-sm8550-upstream-type-c-orientation-v2-3-125410d3ff95@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231002-topic-sm8550-upstream-type-c-orientation-v2-3-125410d3ff95@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/2/23 12:20, Neil Armstrong wrote:
> Specify orientation GPIO in the PMIC GLINK node.
You should answer "why", not "what"
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
With that fixed:

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

