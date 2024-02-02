Return-Path: <devicetree+bounces-38032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8AF84739C
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 16:45:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 087E21C22B45
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 15:45:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67347145B3E;
	Fri,  2 Feb 2024 15:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UrnMHZj7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9553E14462A
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 15:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706888711; cv=none; b=YapkJbgIEblig1CGTN/quPx8uFZx6OcnfNy5VTAOPt6WSr8VFzI8JalDwpm6kZNuUTmC/aeRJiVQNqfZ1ds7mSxKXFUE4nfJNRw1kbHMFH5WXiF8J/5NxdTeXur2LlGyU9cN1oXKm/iMy05W3e5mlrWnBAHQMoi61Hx+EeKQyIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706888711; c=relaxed/simple;
	bh=M3v1kvhpo8UGKlkBDc0ZfDtYXWqRAIydumkGECEwXvI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cRkmKoqupsML5yb2ciwIxO84hczhaNI7mH2j1Tu1g+sMVttExatOpcO4NOJoL425DJ1wlXEifyZ32PSspkOO3rWqZI1Ica29IUnrO8NHAg4OuE2vOqL2EgSaJiLmVXGqp/g07v1evrbH/zwAm5uZIDy6LZUD8qTvs6/DIhgui7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UrnMHZj7; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2d08c2e079aso5786941fa.2
        for <devicetree@vger.kernel.org>; Fri, 02 Feb 2024 07:45:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706888707; x=1707493507; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5oKJpH1Ch23ggBkqJI+tlaubHZaYHKi3Py5AbeBu5iY=;
        b=UrnMHZj7JOFPWKHbEQW5IJCq+ti5B8t+RDJNgUdd24NVaR4wqfVcGEy+bobPb0Hi5o
         iV8OK0JhTk/VWI28VKP5MucmwF1DeKlB/4HBnNle4tACEEeCWSdLwZoGSHxuijhMkEI1
         kCaB3FaW7Jp05L8O3fs/mkLP44FMBw44sdPMbSWlplUe3ckhGV0IErWj+kToeYcObNww
         2BAkVQ+VkEd9dVaZ5AHa0WnZJgAfyYi4Q6v2c+osfsH2vi2/vLIhhB0WK6T2BeGvJMpg
         nsIKvbVfCIuj20bJekmRZlWBRWh4/lEJkmJe3JC3OUyUtZmuLmuLma5nCk58X/aER+CF
         94bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706888707; x=1707493507;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5oKJpH1Ch23ggBkqJI+tlaubHZaYHKi3Py5AbeBu5iY=;
        b=MUTzjwTMg1cOe2mA4fCQPhTOLD4Sofafi6IH4ODYjeoynNjLX4xQyOjdXXrsahd8J+
         BCStABbizeiZ6hg5jkzj8sUwFePChdySNubXGGsX8osBXh7f/g01e/WCmShbwrDmgdsN
         1b8NcqjJiRkt5/kVy6jtRlFkiT1x9q8e+y4id6/An4pSumHvJE7gYHK+hOIcxvYYz+c3
         4CMXEhm0/2Bz3fGfiSV/yQSurdMGAkmmcrymJUJHx1G+AUJacPJSJHEqaxAvi5JkhcJI
         6NRNHjdc+xSqRkcGYvwhRQ1x9h7b0c7zqmjS2/zHlvpjLWasuwsST5K27Rm6oFz5prDw
         b6Tw==
X-Gm-Message-State: AOJu0Yxo27ITbiNZnLwxBHAmrmwDcNFNoIwAV8n+HdAvclNFzI1qrIlv
	pjb1BpsRoa6nk4LjhGmkZ0WvSo6z8coJPt6zDnl/munWFurzzJ2Ai7INUB3BVHE=
X-Google-Smtp-Source: AGHT+IGzUJGdwOx4wpoOyNUXQmNL27vzq9TOCZbaOTtaRTUmcFMLgLs6fGjPdjO2M73XBf8ZaTtnfA==
X-Received: by 2002:ac2:494a:0:b0:511:312d:6761 with SMTP id o10-20020ac2494a000000b00511312d6761mr3005867lfi.47.1706888707642;
        Fri, 02 Feb 2024 07:45:07 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCX0V8apxEyEVPdUDC90CAXetJeLijmTog8tAsqlXZYb2Ot7rXji8cMKA/jC+F9bTc9ggeW04r5clzQp3PA/LTU/H2Tc6MBYk5WikakmI8KDD8oHP8nuC/A6mvYpvRk1k3GkRel6bRHH+jenm76C3fSQaKiwGuEb89TeKH41LmWxU4fKs6Z1bVDhB7SdF9lKVYczC3bB8zSC6CGX1HkjP5DtGf4WfBu+0xnwiyVRUhjwKEMJvJ0OeRQ+507uT8+oDO2XCLM4U34TUq+7G7j89npT2JeHc2H3S10HkNUcszWbUNoP5qceYbRri2ihznts3Qr0cUW0RmtXuwlaNLRjKgKPbL3kxNBb11Oy19/VQ5pCOZU4cNF7e9VMVlMRiCUorapQ0kAkXN48C8cinxnhbA/hSqKEiuXfCXO9s27buJuU
Received: from [10.54.252.95] ([217.145.44.194])
        by smtp.gmail.com with ESMTPSA id p4-20020a05600c358400b0040fb7c87c73sm243115wmq.45.2024.02.02.07.45.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Feb 2024 07:45:07 -0800 (PST)
Message-ID: <2e09aa7d-4e65-4d9f-98ed-c2fcd88cba21@linaro.org>
Date: Fri, 2 Feb 2024 16:45:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: qrb2210-rb1: enable USB-C port
 handling
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org
References: <20240202-pm4125-typec-v2-0-12771d85700d@linaro.org>
 <20240202-pm4125-typec-v2-4-12771d85700d@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240202-pm4125-typec-v2-4-12771d85700d@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/02/2024 00:55, Dmitry Baryshkov wrote:
> Plug in USB-C related bits and pieces to enable USB role switching and
> USB-C orientation handling for the Qualcomm RB1 board.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>


