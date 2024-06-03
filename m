Return-Path: <devicetree+bounces-71989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 182A38FA5E7
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 00:42:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D05AF288843
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 22:42:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5BAF13D514;
	Mon,  3 Jun 2024 22:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jCfF74C1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6E513CAB0
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 22:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717454353; cv=none; b=qJ98K399SNWIy5xcYBujir8l48zcz85upHg1Hp6MGYjF/Tpr5uDq1dpxESHyTaXfhEqaRkJHKpNJfAXEzJj3JZwQPW2k7tBPMf5WEPhJKMtR7zuNId9QQRAjablx/qjvv8Udk/pTI2pIaVQTCmt3knxZm71+tpcPuxZhNLczC7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717454353; c=relaxed/simple;
	bh=S7vVY+UmRDi+pV5H4sot6+8c83hLwtXako5ifIMtJmg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HLbjn2Sq3eGCpdUYBIBoXsDAmr3DcbDdJDVIN8iw/xWSft5LOC0OgDIaRy2S2Bs7qtplMpWxX51SFFxBYl3MceXCVXJxQPUbmdSifbodGhkeeuQtlVT3cy3oPACPMAh34gw/3Pkverkw7iS0gXRnONLvDNzPaLNg0Sm1vxtTumg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jCfF74C1; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-57a2f032007so4734284a12.0
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 15:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717454349; x=1718059149; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0z7Aez1r6Kap3gX9stwvKDhhS8GNo1pWPDSc1k7y3dg=;
        b=jCfF74C1QNnZ/9R8PAEY50CYGNTOw3af9USbxYyrddguCKJfIsi+9j61JpaBEo9Skq
         SNpbtzYPVgzxdvhZvLKRNf2krCy5gc934XJwTTKZ6T0bEcM65lnjjwaNIZ/TS3PRwPrq
         5QvjOpziJQQx+SQiAKMqYAGquZCtcS02S8TSLdtr6NkJckk0/SZevZRqr3st+0VduxGI
         rzrhg39URfqHwEx3jb+bOO/CyAHLPdje8ehU0pyCCZAntatVgErRuZ/lp+xac4jGbnhD
         74aulU4vx+xfB/T54HUJi60miwfOisWZL0uuOdZ1ETpirmuj8IlUPwPAb9+BRZ0G/H9b
         ZFSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717454349; x=1718059149;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0z7Aez1r6Kap3gX9stwvKDhhS8GNo1pWPDSc1k7y3dg=;
        b=AG/8COLdX9rFcTDP39Qy2SEOEQguwc06dFw0MieqER4EhazCX1lkMs5sFsVTTPm6G7
         r2Altzihi/6pj5UMwAg1myQLwUrZlRKxry+eRUqGgrLpciRV7c6NPaV7327uFQzWzmdG
         IZ2Hdu1HN4QiAKgIvsrGGU2w0LyHq3wKksr/7GRjIjHUWSterrtw/25hQwgsRVe3yJ6H
         B5ll0ChmQPBMrqh/JZr3zXAiCQmU+X3h85ghhMTVBhlH8C5dDot4lh4sI+kKBiSO/8Cs
         nI0Fuc+ap763Fs2na8n4q/JZjkKhENy2w15TmShxmrvwGHnb6xrhfBiuk15z7Z0AHIqg
         Z4iQ==
X-Forwarded-Encrypted: i=1; AJvYcCX40ek5i5ihnV/4ZuDtWgYL5bmFwj79syYxx6tR8FwT4bpTXalk/ZerVSpwXIvCBv1jStjkP1VRz3TXeBd6MZq8EhOJNC9hsfzzjQ==
X-Gm-Message-State: AOJu0YwGlXcx4ExcO15PeoiEvJnF1RgnXQbMHcf8gZMHsyjF2xCx0m4L
	vfRhqfSgTM0rPqHtRlzd40aedOJGZPs6TJiTQfKx5SMm1CPqJrm7plu9zzsd39I=
X-Google-Smtp-Source: AGHT+IHVf/Fn1G3AKRm8TQjzZya6z11Pw5O0AsnZQ8ZtNgbuy8Z7NHyvjzcx/QWbek2XZTEmcGVxKQ==
X-Received: by 2002:a50:f686:0:b0:578:657c:df3b with SMTP id 4fb4d7f45d1cf-57a363b3609mr6618186a12.25.1717454349143;
        Mon, 03 Jun 2024 15:39:09 -0700 (PDT)
Received: from ?IPV6:2a00:f41:909a:a11e:fd07:77c4:c6d7:eec? ([2a00:f41:909a:a11e:fd07:77c4:c6d7:eec])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a7e6a8e14sm317517a12.87.2024.06.03.15.39.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jun 2024 15:39:08 -0700 (PDT)
Message-ID: <4a97279b-16e6-4356-b554-2c3f1c3de256@linaro.org>
Date: Tue, 4 Jun 2024 00:39:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: Disable the SMB2360 4th
 instance by default
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240602-x1e80100-dts-pmics-drop-4th-smb2360-from-crd-v1-1-0adf4dd87a9b@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240602-x1e80100-dts-pmics-drop-4th-smb2360-from-crd-v1-1-0adf4dd87a9b@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 6/2/24 16:56, Abel Vesa wrote:
> The CRD board doesn't have the 4th SMB2360 PMIC populated while the QCP
> does. So enabled it on QCP only.
> 
> Fixes: 2559e61e7ef4 ("arm64: dts: qcom: x1e80100-pmics: Add the missing PMICs")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

