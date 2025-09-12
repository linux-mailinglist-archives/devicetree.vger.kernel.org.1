Return-Path: <devicetree+bounces-216352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A466B547C2
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 11:34:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9695E4812E9
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 09:31:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FC6028D8F1;
	Fri, 12 Sep 2025 09:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m7dEpU53"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C4E28C87C
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757669255; cv=none; b=E688W5vslZxq5nfNhLztn4WKunyD9EqdjejS9Fu1zKAY1CGTjP1RmRgmmVpURKgmoyIJ7zrBy34jPRMfKzzi69Id108mpAE8Lg6lRTA3wJVtPE91Ghrxt8bHKAb2C6UH/S5NDln67eIFqIG2Hpp/mH2OOojk7IMpF2i1D4JnYmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757669255; c=relaxed/simple;
	bh=gfb3JWg2h2wLQhK4UM6/FHhhzCI5uALXsimWBNV6NQg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UT7lx/7TEi+GBaXLPwYl9xTGpLrC9JDWoKa8EmHRtkmKqd45D7srAn122mMsP095RR9mXEw85F0lz3L5XBNpqS5U0qlLw9K+njM5ZL22pFzeveaJhMTj0Aaq2M7rVfuRxvnrDGW/rAM6ogKx0eYqSRImYuizLRkI9gedd02Vujk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m7dEpU53; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3e4aeaa57b9so1536018f8f.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 02:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757669252; x=1758274052; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kXTEITSzQJNG4FjEV+hS6a+GXTf9khmRm1tSXLrtGVY=;
        b=m7dEpU539YkuMk+HjGAlAb2g9NHmyecjpnoR1tGRljWMsSvfcURCKp6bS6eEvh16jf
         IEo0JpqDwLhKNlY1KrZO2yyu/3GbPKKrwioFjogbcnrgWa32jbswKy2llxEnaHpbLsXC
         3ctMFzst0L+btHshvkQ19p0L9aRU5F46X/MaTZ39AmRHl8Ow8p5edj/XFNCqzql5yOUY
         4OS6xCfAeg53yoil07rl5yk15vdoX/c1kO7Ri8JCmzfb0S+ZUeDcYZ5OiJlx1nggZEx0
         EhLaj4yNq3xO2YRrws2isUwKxUXw0Hu06BiejtC5OHp0uknlggiCZkywg0hNb0/CUPkF
         0AMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757669252; x=1758274052;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kXTEITSzQJNG4FjEV+hS6a+GXTf9khmRm1tSXLrtGVY=;
        b=bPxQVJj1Nbisu6gJ9DE8vk04096qg4gcP/g6BIaElRpkP9gf77c+oq5w/avAVFo3L8
         BUUQ3rrp9iffoyQ5n7SilPmUNZW4WamBnkiEZwU0sJ3Za67XKxZrB4cUDJEJaotgd0+t
         bLkyM0KvFFCgvfksns7ohiPx/1zvD8fYvbIG+Ky6kTfG9li9oe1EXUtaAkCOI+F46LKy
         YQhS0ujgkDLaNUk3Md48GqaObgGneK3/83tjATVSKpn1qvkCiDHLBwy0p35Qhp6GmXl7
         7tSUKGfXwusnT+/ES19iw/031XE836FxjFQMaWgxJYJ7IlgIhHQwe1rJci6gfo30bcX8
         +Fxg==
X-Forwarded-Encrypted: i=1; AJvYcCW6TbiqHAfvg34xyhnnqzYYCW8ZXOnIFNMQhuMigTZ0HKTFPDYFvS/88MNhIcRlZTYsT3d/iIfTGYD1@vger.kernel.org
X-Gm-Message-State: AOJu0YwQiEBgCYfXS9fixDxzC4eJI2qyVLByDnjvwQXY2bavpu7N5czR
	B6ehqZk+ag7axRJF5GZ1wdQ1tvZzk3NkUtWO0Ka7SJu/XPJFb3zLtC75U7zYkm4Vj2M=
X-Gm-Gg: ASbGncvKsiaHfdNsFCWB/05X+aUaIaqc9nuHqZ5A7xFemOpsPl6IgHmeeAuoxPd45d7
	QoBWNp7exT/lliweIe85Vv3QsFxlJSXwo/Y9oQuEueWsNOZ0xCe3InUCOp1ZKPM2byFXliDkg4q
	vYK29US1n00KTEcuuyy2R+hAYHwCvgOGESGlnKlhABaztzVCIkbWwmrYhjOvE82h4oXm6XKAnSK
	Y8XAaFvCunM9RuvXK88u6eYgBM3wOtqU4PdH000nH3l4soyneRLQ9O6ZK0gUjQcm/i35DLVq68a
	JKmgQpu6M+IplG/sNXTXq8wjYf5r/FV4RxgFdgRlf9fn/Wg6cYVFOK7k2Xns/7igLbznUlH8DqH
	scc8g5224DUHpgCQUNnShO6Vr6us7v4uWeb609mkQbTS/CiExjyQvlK2erpkPbC/twj3m59WNU9
	yPERe2jv1BOF1SWY5QqnTo0hdgZk8bwQ==
X-Google-Smtp-Source: AGHT+IHRwP5h9u64faaN9sgkAgvq6Wk5wiLsJZGVMHzOBMSe2Z0sqeUItiFW4+Kj3CxqqJN1+tBQMQ==
X-Received: by 2002:a05:6000:1846:b0:3da:37de:a3c2 with SMTP id ffacd0b85a97d-3e765796575mr2314314f8f.24.1757669251882;
        Fri, 12 Sep 2025 02:27:31 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e760775868sm5886336f8f.1.2025.09.12.02.27.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 02:27:31 -0700 (PDT)
Message-ID: <2a96dfd9-a5d3-479a-a60d-698e0c235d2a@linaro.org>
Date: Fri, 12 Sep 2025 10:27:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] arm64: dts: qcom: lemans-evk-camera: Add DT
 overlay
To: Wenmeng Liu <quic_wenmliu@qualcomm.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, vladimir.zapolskiy@linaro.org,
 todor.too@gmail.com, linux-i2c@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250911-camss_rb8-v5-0-c078e4e22d91@oss.qualcomm.com>
 <20250911-camss_rb8-v5-3-c078e4e22d91@oss.qualcomm.com>
 <ex5oojf6lqti45joyjxpyi2ev4mjcitw4lz6cszu6lustrby4j@zzigwnu4pbxo>
 <39cb76ef-3f51-438d-b740-827a4c70035a@qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <39cb76ef-3f51-438d-b740-827a4c70035a@qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/09/2025 03:23, Wenmeng Liu wrote:
> 
> Would lemans-evk-camera-csi1-imx577.dtso be a more appropriate name?
> It more precisely describes the content of the dtso.

I think that's a good idea.

For example if you added another sensor to the mezzanine board on csi4 
an ov9282 say

lemans-evk-camera-csi4-ov9282.dtso

The only problem with that is you can only enable the camera in one dtso

But that feels like a problem to be solved only when someone upstreams 
more than one sensor for this mezzanine.

---
bod


