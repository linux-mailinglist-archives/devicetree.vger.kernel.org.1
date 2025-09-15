Return-Path: <devicetree+bounces-217194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D4405B56FF1
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 07:54:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C7A664E10EC
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 05:54:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D14EF27702A;
	Mon, 15 Sep 2025 05:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TFLfLC91"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D322749DA
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 05:54:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757915652; cv=none; b=sf6oNZb7la5H8SxJ/TM5JinfkEpdNWJKLSu8M7aubBafsbZV+OL3idP7Ggecdj7ev0w7vkXQpe62RQcQcPXlCtBmgn6D3OPP5siU+KN5lRkz1cBpqflY+Un9e1dKQqic+/Je7nAmEdTGAnbVcYKr6DgcnZtPfNjfDIlKPgh1uSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757915652; c=relaxed/simple;
	bh=kB9Xgjc7sC2n0PUcqqjH03i7/90qjI7OVjgcV04vYa8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sYwhtz5qEgrZCZJFERXAH2n/ESGqp0vaJtHOoSks+2opzuuA/ZSooPVoTtr3FLdMcNMmJbZXTJaz/IMThF38B8O92jq6UmL2Kfn8v6017tZ1QgOXLdjgpHlFLEWngG8N/MOSNZBFNRmz1bssohr0vOTj7lpwvUuHk6W5+ab+Apc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TFLfLC91; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2647bf5cb51so7312425ad.3
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 22:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757915651; x=1758520451; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0xJriz50pVJxCGFehied0kNKF8rdeYvm/MI+kjVAGO0=;
        b=TFLfLC91Nb2w0ASEJe8nX4/7TRx5S7a1oarIFgdCvrouWzojV/7VuzWBOB7K72Xmro
         BJNKXyw8DiJpe9Q6B8GGLAAzlzt63RFQjOV/ZNKRQL9J7CmJJQHI45TyW2/M9n/Dv/jQ
         9PUf1M2S9u5K7F+N14lIYP7CPF4FCAHTEfyW+T7qQNr0CQS4RRNgGPVFu2vw0UzBY5Qs
         FDaZE5eFD2c7XIQN//ULhErfyrApE1iEu1bbJZ+4tNX2unbupZZCyAWGZu2O1M2JGy3C
         mZVvvaUvA6A0QhXSzhR5vGz7MM6V9urrEcRqHQBo+ojqzTNXBgk33u+fhJYxSO/N1B8F
         rpEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757915651; x=1758520451;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0xJriz50pVJxCGFehied0kNKF8rdeYvm/MI+kjVAGO0=;
        b=rKz3Yzgtt/5uqfCl82OFDB2gc6aNDQfoeffRwa4HWxZ/tb/JvvomlJa5Pz9EFnBMVb
         9N1pbf6FfRbPsxc+tNykoeLxcV6EzYRdZ94493M9cmIG7tPkjn+0F9qlsN8xOlkYaeOH
         cQohU/DTcl+XwXmVvZim7qxtTT+ZhZJl5RWF8WBn/KqUlkYC0QHe0Sd4zZOmw6cdoWUW
         mL+9oIkas4ZikH/mwWyyPsJ1GOuudc7xHehkpeUfjp7D0ZrUqoLe2nQGkc4ixXO67UE3
         flqO748Vl7geBjSAZYPvLSbtY/7WZx8z8AxOkwM+yGbt+BdbCHFLoWy9VL8K5dSq+FWv
         MHaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXD0EGd7atKirxSMmtZq237U/RKVEIX6QvR+YG6NRr+qCvpP/wNUQXwDPlaJEn9EID8WjvAz5NumrUo@vger.kernel.org
X-Gm-Message-State: AOJu0YzwM7l6Hg2xvxWXj4KAH82sa213o7ivhIgvUbb5XTxYFbscQ6dm
	mkW1CM9dlAiR/EQa48WVNbWF8RxpT7QUF6jImWNouPcUl4EnY2GtQEsf
X-Gm-Gg: ASbGncuK3z0z88GuaNMNygb8AYh0T1+H3gSyPhRuYAfu8unK9/s+J3k7SdH0fj4qOda
	dFAzOwSMQwPSkqfOIHg5gdMzTAiUJ4hNQxI/oM5dAe17vknCi4W23OekHNhflTbl2IE0U1THHb8
	F/SMXlfnqPZq8WDbao41h3JCB+ioPPWVhQKtJwEG9Jw3YndOQB4bOgU6PwTQwXQ8saCw+hacn2V
	gBJfiBUze/H0YCMTGu92mzZTawRqUwXXVjryyjQ9RVCC1mss3yEWXnXQ92ZEXptBhbWKZ2HeQww
	+v3MVyUhdi5vnADfb0Alu1mJZP9zXCNItXydt+mBzdJ8Z5yVFB/ryPm9aasOBf8oFmxmU7vscmH
	3H9097HtEb8kqzu54Oa9EgEvNRhgdKbxDYTrkj66KUXE=
X-Google-Smtp-Source: AGHT+IEJVYaEmuUexNhRqGO7tkehxpSdx8qtkzbg9zsJFEDr0LSZYoc24Ea58IdB11ffQysDsreYOg==
X-Received: by 2002:a17:902:e78b:b0:249:33db:34b with SMTP id d9443c01a7336-25d267641bfmr127285115ad.42.1757915650523;
        Sun, 14 Sep 2025 22:54:10 -0700 (PDT)
Received: from [172.17.44.75] ([49.249.92.90])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c3ae283fdsm116165945ad.107.2025.09.14.22.54.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Sep 2025 22:54:10 -0700 (PDT)
Message-ID: <ea15d474-dc40-4a58-948d-e8311ca9e2a3@gmail.com>
Date: Mon, 15 Sep 2025 11:24:05 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: add bindings for QCS615 talos
 evk board
To: Bjorn Andersson <andersson@kernel.org>
Cc: konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 tingweiz@qti.qualcomm.com
References: <20250909125255.1124824-1-tessolveupstream@gmail.com>
 <qq4aak33bn3mqxd2edu6zgkkshby63mmitg7zqkly2rj4c2lh7@4s7sndb7e2jr>
Content-Language: en-US
From: Tessolve Upstream <tessolveupstream@gmail.com>
In-Reply-To: <qq4aak33bn3mqxd2edu6zgkkshby63mmitg7zqkly2rj4c2lh7@4s7sndb7e2jr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 09/09/25 19:57, Bjorn Andersson wrote:
> On Tue, Sep 09, 2025 at 06:22:54PM +0530, Sudarshan Shetty wrote:
>> This adds binding support for the QCS615-based talos evk SMARC platform.
>>
>> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
>> ---
>>  Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
>> index 03a7d3c92ecd..a5dbe6af68ac 100644
>> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
>> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
>> @@ -952,6 +952,12 @@ properties:
>>            - const: qcom,qcs615
>>            - const: qcom,sm6150
>>  
>> +      - items:
>> +          - enum:
>> +              - qcom,qcs615-iq-615-evk
> 
> Can't we make that qcom,talos-evk?
Yes, I’ll rename the board compatible to "qcom,talos-evk" in v2
> 
> Regards,
> Bjorn
> 
>> +          - const: qcom,qcs615
>> +          - const: qcom,sm6150
>> +
>>        - items:
>>            - enum:
>>                - qcom,sa8155p-adp
>> -- 
>> 2.34.1
>>


