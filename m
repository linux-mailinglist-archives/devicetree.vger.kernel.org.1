Return-Path: <devicetree+bounces-15932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E36587EC4E6
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 15:16:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C649280A0C
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 14:16:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C70628DCA;
	Wed, 15 Nov 2023 14:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D0+z8kmC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8756E28DA2
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 14:16:16 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38321C8
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 06:16:15 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-32dcd3e5f3fso4267185f8f.1
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 06:16:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700057773; x=1700662573; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MBcMwoRIYgF7VaZgnHonAhLO4GBcpIaX6rYlfahtvy4=;
        b=D0+z8kmC1IQws8+I4rD2ln/A6dI39UgDLzsIfBiPycrrWmwRRNyKrka+cyO+PO8xFg
         y+u+K7sYIJSBXceRVPlrRmErzZpWs+DmJssyryxPMknj1nDk8g7paz83c0/Sa4y0brKt
         omFtnFa8fOOlUf5iVqBbZXsLWWVtcU+geQ+3nd0cox1kClfKniy7lAgKjvnpSh141ieB
         1vE+LUUe93Hakw1dUq5AHRz1uTsy4BHofxvSyPdIfz8wnVFxzPRRIxcsagXgDs5Fnq/H
         RG7mZgFzoaT4mnD1i+5lv4GowtpGl9/GjGJTlIvx9wuCHaYYQOQICgrxhYe+i3s6tqDE
         7OvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700057773; x=1700662573;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MBcMwoRIYgF7VaZgnHonAhLO4GBcpIaX6rYlfahtvy4=;
        b=GW1AUzGuYacZYjzX8DE8tOVdds2gsjLJ9aPQBYIEPTgjIe6EorKVBRAlgZm+wpYLIy
         26g4sFhSgJ9dHTEcUnVQGnJHGnpmwRgfCA56eJeSaOnNiZ4STANwTJJK58iymu9iuhzx
         xwoqUHNInSkW0EjzmO7kw5MT2Bzgit2FIm/wEQ1cDTwc254JF+Nl3iaHw7BhUzZT+L83
         CZS+yoyzQSonM49P0l9o9+8f2fi4BAdLyrGpC/tdlwTDdRj3oR3xoSZG7NcYT9OnPVNJ
         3WShmXW4dQdaZVTPoHcCw+xJXz8UozYZfywujcOdVwnl04fjdbSqr2v1U//568PJJYpU
         sILg==
X-Gm-Message-State: AOJu0YyW1HB/cYoj3Up+LtOAxdklzThi1GQy4BhOz4y4roBhIJX4DUPo
	uIYrcf9T8Aax12VfbAc2Xwdn0Vg3TW2G4dhAqTMQpe3Y
X-Google-Smtp-Source: AGHT+IHvijU7pyOmo0swcg34eZbJxraA9K0BAbfHw5NkUncOdyQJ0MA3ElGKy7jpzCrcHPoaz3gtuQ==
X-Received: by 2002:a5d:47ce:0:b0:32f:8248:e00 with SMTP id o14-20020a5d47ce000000b0032f82480e00mr10840801wrc.51.1700057773587;
        Wed, 15 Nov 2023 06:16:13 -0800 (PST)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id dl3-20020a0560000b8300b0032f79e55eb8sm10659407wrb.16.2023.11.15.06.16.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Nov 2023 06:16:12 -0800 (PST)
Message-ID: <5cd19f5e-baa6-47da-8730-fe0ddedff364@linaro.org>
Date: Wed, 15 Nov 2023 14:16:11 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: ipq6018: add QUP5 I2C node
Content-Language: en-US
To: Legale Legale <legale.legale@gmail.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <CACDmYyf4hxbuw+cpKqEDnqmHpS9yPXuE5MPD5_XZ3hjmYuViUQ@mail.gmail.com>
 <a3e35d3b-906a-4540-924c-0103cf32efa4@linaro.org>
 <CACDmYydnLQd0n9ACnTQ6P4wYf38eMzokyHrF7r6LisG4oTFtyg@mail.gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <CACDmYydnLQd0n9ACnTQ6P4wYf38eMzokyHrF7r6LisG4oTFtyg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/11/2023 13:58, Legale Legale wrote:
> + reg = <0x078ba000 0x600>;

This still doesn't look right.

---
bod

