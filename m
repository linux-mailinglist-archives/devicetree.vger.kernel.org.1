Return-Path: <devicetree+bounces-61002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 266878AB35C
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 18:31:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AA6551F24B5E
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 16:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5394A130E4F;
	Fri, 19 Apr 2024 16:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pl9kVHpf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E752812DDB0
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 16:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713544257; cv=none; b=vAoCShnr+a56jjVGaw7bs1UgNvUWgtUwKT7kUfJYPtQkUz4QyqycyZA1MIjEK23DWrEYQ4HESQQ0SDQ2sGWFU6s9jdNNV25jzmBzJAfVx5fL+4ny95ZiuBwmXIIvGtIk5FsOU3xwwBGpZfeT7HiVQkNjUevLf0EwnJalDLUn4rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713544257; c=relaxed/simple;
	bh=2ChmEuRipVKFDKO+61sOph/LVI0N2uCOf1rUm1S9VJc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NJJhZREo98afRBlzdjzuscWhKm5ojTK3CKkfskgWNbnHCqeRo+4mQs0HHcNvZ556fB8NxvRwFOOnsZTWbc0uPNkon3nfuWgMP3Qe9LXJ5GugyB8FhHcerMBOK1PJVara1ItvnvtsViXH/Eu9AenOC4BGavRe3b0h1nqMwTs62Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pl9kVHpf; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1e51398cc4eso19985185ad.2
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 09:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713544255; x=1714149055; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=9AqGcd7l2AM+pHRo1KfIRKsSfduZ03PoAnP5ssDCeqM=;
        b=pl9kVHpfUP4h+EKoWy8/3vSCH5KCiBS5FDSkS4yoy0rM1e1X/QE3ySm3qLrPxcjdgF
         7+xxXZCpEaJZKj9zIEFbq8sxJ8W1Wh9YMelcqLAbvilrrWER8Fmz37y1Y5c7F8J0AdCh
         x7aTIsPzwRwhLR0iXrg8kTSk/gZNJ/Z1mY2YdC1cEppdTBWNP5OhPJRFTf7/FTDZlqD1
         7iBT4+r7TmDlGIBL/jkqrf63W6Ykq13l9fi9tz2jAvqpc4khzntM8vv0S1qjJ7Kbjza0
         ot7lCfkvMwUPmitTyT3mqbugjbevaw1y0kvcsXSgyCMcPv7dFpdxjodzwYtA2/YqhkH5
         r6SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713544255; x=1714149055;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9AqGcd7l2AM+pHRo1KfIRKsSfduZ03PoAnP5ssDCeqM=;
        b=Gsxn5ZRT3bDvuKqicC+MQBCe71++Oag6cBJ3Ap2tPcUe/lzoe8Gy4FIKl0o5t49ULa
         dab+W9fHFpLeD11vrCzhfY/R+ZnpiODAp8pIPfwq+bs06dxLAWGfJu7M+jEHVyjHl1Oj
         1rGoYHSmj97/jqWvTKSBRUXaQZVEVfb3C0JGRNknqFLXVBWiVoXAfWqP6r5WcQejJ+cj
         KN+CCBBan+j0GgqsnVa4lBxLg0KW4GFJ+5x4zRT98VMFubydVbtcZRLvmpdXMBr9Tnwl
         QyEIrzBsWqNTYtuqw347PrCQoiWpvCw4X5jHVyGhil0vVL+KMXC9cFLiqHBv1L8sX8IQ
         ujFg==
X-Forwarded-Encrypted: i=1; AJvYcCXNk+hUM6FFllWZhWE6a8UuaOz2uJHN4U7s1XCeIds1TwG81IQhdf7vUjCGHAGcke0FyvU314Ka1miqOwlZcgUffq40gn5eU6OdiA==
X-Gm-Message-State: AOJu0YyWq2HfZkQjGBt00iUbHswET+yzTxiaYCtvNAZhe1Gi7uOZ2L1s
	Uzjd49DYW3MsikJHFUhSk86K5UGMUEcrtllwOXDOwRtllL2zzixo84Lauge0EtU=
X-Google-Smtp-Source: AGHT+IG1/H33eIhEJoNVFzIV3iLrOi7Lc4imyDOqsKKNxCuSWJwd2E6dw4y1PTZu+yerUyKaC9Zlog==
X-Received: by 2002:a17:902:6bc4:b0:1e4:51ab:fffb with SMTP id m4-20020a1709026bc400b001e451abfffbmr2633396plt.25.1713544255224;
        Fri, 19 Apr 2024 09:30:55 -0700 (PDT)
Received: from [172.20.9.36] ([209.37.221.130])
        by smtp.gmail.com with ESMTPSA id c8-20020a170902724800b001e2a42a2e34sm3546640pll.65.2024.04.19.09.30.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Apr 2024 09:30:54 -0700 (PDT)
Message-ID: <64604842-6ac7-4428-9673-140eefed3433@linaro.org>
Date: Fri, 19 Apr 2024 18:30:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: PCI: qcom,pcie-sm8350: Drop redundant
 'oneOf' sub-schema
To: "Rob Herring (Arm)" <robh@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240417200431.3173953-1-robh@kernel.org>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240417200431.3173953-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 17/04/2024 22:04, Rob Herring (Arm) wrote:
> The first entry in the 'oneOf' schema doesn't work because the top
> level schema requires exactly 8 interrupt entries. The 2nd entry is just
> redundant with the top level. Since 1 entry appears to have been a
> mistake, let's just drop the entire 'oneOf' rather than reworking the
> top-level to allow 1 entry.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Indeed, copy-pasta. 8 entries is correct, just sometimes we were all too
lazy to describe all of them in DTS.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


