Return-Path: <devicetree+bounces-131342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0CD9F2E12
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 11:21:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 44631188739B
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 10:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07B6A20370D;
	Mon, 16 Dec 2024 10:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q9TO6K8X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8CDC202F67
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 10:21:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734344465; cv=none; b=KN8qYSR5hC8/Owr8TqbPh1aZHoYqk2P77APuCjR6e1VamvPEbvqUBB2mUx+GMNG+yRme8GbiL4A7ahwIMGl+PTRqjGnwuSI1Wvq5+8ngN2b3+ylwzt48tahbD/gRfcMpsCkzmhDSglGJdM2EGMuMkdjgXMjXgaz5GmJJQzceo2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734344465; c=relaxed/simple;
	bh=Kp8Cpsdrh0FO7LU26pkeZJ8MZDzZ5HVvD4V5Dq7GQOU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d1O/1gFjr5V0uow2aSW7FdwwIW7/YMC5J8R/t4NlK0VkVWzdu3HKvlaOyCYrt94DQfOuZOxtUi8l6r7M12L/b0MRq5XuxRavBfA3j9KP/xVVL3XW56r/4Elp8R04oNNzZWntaY1wrXjMJ4OVjHy/zeJtW+ekN40HBLLqaHIl0/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q9TO6K8X; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-387897fae5dso305409f8f.2
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 02:21:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734344461; x=1734949261; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=3FOxM7A0OryUQiItH6h8n5bvfCG+uIcFtqBpVtmjo2c=;
        b=Q9TO6K8XYU/KCA6VKxR1lJPYZCiRjVxnVckPYdoSKrC89H9lplx3i3F1u2SKQMjSVM
         62wOjDsEaxMFf0hBgOduV0oTm5miDr5+ftYWWtidSN6WnHG/UPLOdCovZPB006ICogLI
         wV3j2CrDzHpVRZoyWpDrAjMjJGlDONABnMrCiGNHCuzDNe5/6czILShWaWQLda3Fg4x7
         ec4+GltoPhNRjXObMiMLigsY4mY3EAj7+khCN02AJrwTYsEPlq7pOYQ42dcUDH4dMtrE
         MRhofFBNrzZHJYOape+nYeOHb4DptVm1jYgLbBlezJV9AgVfYCyk9gH5smNAUexItWpm
         rAfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734344461; x=1734949261;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3FOxM7A0OryUQiItH6h8n5bvfCG+uIcFtqBpVtmjo2c=;
        b=a0U2O1rlDClSp/Bs5p0op269Xx4YI4iKjutXkhSYj4toUbz7KAZRd6N+UW9i6ag/6j
         NFOoLnRIQZuvESMOLjyTmMXbsRWd5X8kLe7kMENR8At0hPU7j+qVquGnNvvFK0OcZ5H5
         s2e9ttzvzhN7f6KpELSbY+HVG5LXBGkuecM/PjcdOunPP1QZpQzYki6stAroP3WC1MK7
         PN6wfvb77m8t55IJqBF+ot3+I7TxRjVGNr6F5H5fxXPVOtaVSY4t6jTO2LtpMJlEh16M
         tdZX3lK5hV+QQufiM4/Ui6mAA1GeqOXtiXUCg3U75FYPSMTf4fUgIZ/4O97ck4pQisXv
         onNw==
X-Forwarded-Encrypted: i=1; AJvYcCXzQRQ5XMf3ApF8xFyfqPohldJiflLNflbTmBGesNh3YmSM+KeKhJPORcnxYOSkicCrV3aD/rex2pxk@vger.kernel.org
X-Gm-Message-State: AOJu0YwvyrT8rzoc/4Oovf068Dd+N0P0RaKMYMdh/+s/3AluKTeNMG8r
	E0MFY6UMNqbhidiMSQBXrbhhhuiZbE50nSkhhmPm5bHqjENl5uArKI1vuOI23FU=
X-Gm-Gg: ASbGnct+KADRyGJ7UfRGTUkx7jnlLL1Zs8fhhoZLvDxxaEnvcaq94eh1qdNVSUbtXDQ
	8oe++WlEDv5pZd555qEuTgNMgwGtR6rva33DtzrDGqQD/WruQg35GzLVsW3sPvvJxxPmgadIKAe
	YLv+65/qNsRYZweD1i3uveTmzYYliuVPX3jWDTSwzrqeXMWIKNLMQhubuzgEhV1EVBgCaMgdn54
	hMsN5MNrtPRx4DH8dov2iMf1ruxzBasNEAUESqg2mLEOikZtqQm8ic0MZPBgN19GkTLp3X+sv7/
X-Google-Smtp-Source: AGHT+IExf1CzCbAfbTWJaGytGHDMnX7EfCiui2lP6bTir8dC5DD+uN8f7uPtezW1qNoJ4dTszLaYaQ==
X-Received: by 2002:a5d:5f88:0:b0:376:2e3e:e6d4 with SMTP id ffacd0b85a97d-3888e0acb25mr3540761f8f.5.1734344461131;
        Mon, 16 Dec 2024 02:21:01 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-388c801637esm7693757f8f.28.2024.12.16.02.20.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Dec 2024 02:21:00 -0800 (PST)
Message-ID: <7510e38e-fe02-4cd5-a99d-ab3b9cb6ee22@linaro.org>
Date: Mon, 16 Dec 2024 11:20:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] dt-bindings: ufs: qcom: Add UFS Host Controller
 for QCS615
To: Xin Liu <quic_liuxin@quicinc.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>,
 Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
 quic_jiegan@quicinc.com, quic_aiquny@quicinc.com, quic_tingweiz@quicinc.com,
 quic_sayalil@quicinc.com
References: <20241216095439.531357-1-quic_liuxin@quicinc.com>
 <20241216095439.531357-2-quic_liuxin@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20241216095439.531357-2-quic_liuxin@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 16/12/2024 10:54, Xin Liu wrote:
> From: Sayali Lokhande <quic_sayalil@quicinc.com>
> 
> Document the Universal Flash Storage(UFS) Host Controller on the Qualcomm
> QCS615 Platform.
> 
> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Co-developed-by: Xin Liu <quic_liuxin@quicinc.com>
> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>

You just sent it to me three times. Stop.

Best regards,
Krzysztof

