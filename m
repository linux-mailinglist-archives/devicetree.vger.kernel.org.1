Return-Path: <devicetree+bounces-243395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EF5C976DD
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 13:57:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0FAF93A985C
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 12:51:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C8793101A7;
	Mon,  1 Dec 2025 12:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Aau7poNP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA39830FC2C
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 12:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764593435; cv=none; b=tXyA5BUsrL6jOP5HgQ3bVTKaD9SDSvo+tfpybSUVwIMgFvrkBLpIZmL9N/cXC+nSsehrhZqcY4cfr1N8pFXERphlB36udud6GESMy1Id3rL0yTS8Cu/vE1ICFEBiTzQCDRIlMrlWvliLCkZXyH9LpWfBXxY+zsQLsCSq9/4sQE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764593435; c=relaxed/simple;
	bh=3Lempk/IOUZAlYvbPF2A/aQxGYHdGcn33YO5RSNVjRY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=skGl0knByEsK/iaIpoP2HSck9T1hJMdWsEQ9dAe/de693FfFoZdup55CQmsWW/T+Dz7mbubIwzci62Snlznmj/SftvefvUeg+Ub1QszO6z/BCNhPFfQTHj1NFBdTOjQjDn1Zlp1jPcYOL/XGHNEaJZluQSyUaB2yi0aSMz6CiFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Aau7poNP; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-477b1cc8fb4so24681155e9.1
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 04:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764593431; x=1765198231; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3JlqK0ZnrQL7pFj/vous2tYHR6XDdun4YSY1ntH8dXY=;
        b=Aau7poNPM7BaKhv7LzTA1uvPJ5hOOUaCNxivIpo4UcfK0q5aSNKsU8SsQU+AmWpDkJ
         Pylb8ifHaIrJ8hT8SfJs973553skug2nb1bcSY5AhOMKSlIAHXFcbXJxyJK0ik8F0Roq
         7yruYhQ4QN/sGgXGf2PgW6TEZJ2umCfxZBgVMdHYY2wYruMpZ7qmFseY42ZNXm2WQ7W8
         KluFhMSvUJOx4aiqSeMUNsDifjIKBUkEh6Y2osEhE+3VVxuVAQxJ0ObkzWC3KkpxraQA
         IHY6+iS+xI8CocwcyoAtY1wTDz/khi3R9GjY8MzDvABTb5SF++DO4Qm1YGa1d6tZdJ+L
         bmyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764593431; x=1765198231;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3JlqK0ZnrQL7pFj/vous2tYHR6XDdun4YSY1ntH8dXY=;
        b=msQzEe0Ld7BJ5ZrIZSXWhKtvDV5N0HsaxeHOO7BUA7+kQ0iQjNDiteg7vMKwIyIkvj
         qHv6heOxE5SV1R2jll3TV3zZVOW+e9Ql+QOFv6xBMNVR8EWTDJLOz70MQvKVQELZR+hb
         lXfvhMaQMSfWaTHkbADAutq9Huqrwn42TTBdC8I98L6wQm/FvKORnVMS+u7WxHAfiggQ
         YnC45+zlpyRpQnchOeuygZKzQ1/hjkYt/366KBBf7eLcKAgbcazUHJNxF6Zu38Q0GpjV
         2WQOBXfWcZ/oQUSOhCVB5rJWbJFYx+k+nK0XLjHtFY8A7xbuapI9O1Bq7MZxosjIp1By
         S+CQ==
X-Forwarded-Encrypted: i=1; AJvYcCXuRz7OsjowHyhKD+XAh2Oj48a8SSwcXEkEIIlAr04fETUyH27WtYcQsKzS6M6Odl+CUyuG4GP1IjZE@vger.kernel.org
X-Gm-Message-State: AOJu0Yyq/0LV9Kgeb5CapuRWQgHxVA9jW43rE+FFOEPfcN+i0WINs9VA
	E0EXNAV4DmmrqK2LJXlXsv2niwv653G3OGy1JAJtj4v89s10/Vg2iYpUZ9Z6NiASZ64=
X-Gm-Gg: ASbGncuheFxm/c0HwI4hEblEVmXsL3tYNQvUd9BiRlFsFQVp34SH1glr0iuzZLK3941
	QIX9UyuN71Q3Xt5ZIXg/OvXkmdfnA1iVjXLO9xCxYVaG1p2RjYr0gPL9Eje3/Q2+gOWYHB0eDxy
	laMMBfR9QO+m/P9ZGheuOHYpEdw37ioX5ONRvqKmmiQ515FOEjO1KwNOAaNOUUBfTSkHAdmRnLF
	L2+HNwZp/araMTQ44paBllJmfo8ea3I0aUz2GmOamKUPwNwLxK2pNuPVIfTnZ5L8BEIDOIy4vNn
	r5ovApbRhV/wOmytIMqh2LOTVovkebnF9ySJcxwYgEBwGJpMN5h03eMtvtd3Ezdttn6zneI3lxO
	BhT3v6WvRrRFFm589cmDWDRIGBLL7OAGxW6bFWo9ogE1ez9Ga8lw5O806yREEvrAW6f8ZMa7sQx
	M/9lRpHVG9buk09PJiOFRsIMm3cJt5BZKQ0gpXyQcNVyypAYnUs+w=
X-Google-Smtp-Source: AGHT+IFCiHhSv7clOJbOTsjbFGUe1tQYLwM5Ciro9iNMejKFvi5zfUI19dCqAQbxePS0HCp6jxwcYw==
X-Received: by 2002:a05:600c:1551:b0:477:7d94:5d0e with SMTP id 5b1f17b1804b1-47904b23c43mr242645295e9.27.1764593431085;
        Mon, 01 Dec 2025 04:50:31 -0800 (PST)
Received: from [192.168.1.36] (p549d4b1b.dip0.t-ipconnect.de. [84.157.75.27])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479040d3c72sm158803585e9.6.2025.12.01.04.50.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 04:50:30 -0800 (PST)
Message-ID: <f86267ee-ad70-43ef-8e48-b9f2e509c193@linaro.org>
Date: Mon, 1 Dec 2025 13:50:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-oneplus: labibb is not used on
 OnePlus 6/6T
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, david@ixit.cz,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20251130-oneplus-labibb-v1-1-bb3653e43120@ixit.cz>
 <3fcfc5b8-7509-4e4c-a1cd-e973d7e1d091@oss.qualcomm.com>
From: Casey Connolly <casey.connolly@linaro.org>
In-Reply-To: <3fcfc5b8-7509-4e4c-a1cd-e973d7e1d091@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 01/12/2025 13:48, Konrad Dybcio wrote:
> On 11/30/25 1:08 AM, David Heidelberg via B4 Relay wrote:
>> From: David Heidelberg <david@ixit.cz>
>>
>> The lab and ibb regulators aren't used here. Disable them.
>>
>> Removes following warnings:
>> qcom-lab-ibb-regulator c440000.spmi:pmic@3:labibb: Failed to create device link (0x180) with supplier c440000.spmi for /soc@0/spmi@c440000/pmic@3/labibb/lab
>> qcom-lab-ibb-regulator c440000.spmi:pmic@3:labibb: Failed to create device link (0x180) with supplier c440000.spmi for /soc@0/spmi@c440000/pmic@3/labibb/ibb
> 
> These are only vaguely related, as there's nothing to be wary about that's
> specific to these devices - it's just devlink being grumpy
> 
>> Fixes: 288ef8a42612 ("arm64: dts: sdm845: add oneplus6/6t devices")
>> Signed-off-by: David Heidelberg <david@ixit.cz>
>> ---
>> I assume this is right approach, as OLEDs on both devices are driven by
>> different regulators.
>>
>> Question is, if should be labibb nodes enabled by default?
> 
> They're onboard. I'd rather keep them predictably parked than left in
> whatever (potentially ON) state the bootloader may leave them at

Shouldn't they be default disabled in the pmic dtsi and only enabled on
the devices that actually use them? Many SDM845 devices with OLED panels
don't use these regulators.

> 
> Konrad

-- 
// Casey (she/her)


