Return-Path: <devicetree+bounces-244273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B55CA2FCB
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 10:28:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D496B3093CC7
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 09:23:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84534336EF6;
	Thu,  4 Dec 2025 09:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iP6BX6/Y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ioH0rw08"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445FA32C93F
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 09:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764840231; cv=none; b=MMKRTiYUNLeP7F2AlxRE7FHIUq2NwmKGIhk/U7k8MZKC7q7baGrhFLA+lHgrcsD6fFUlglaxJWMHVgeLrAjH9kxuEhQ3EBak/a28y9unCCKcaATW8S5EBfkmVlFUmvwGUXdgumEXZMgkXpakLjTMTvSqDYAIwZ1+Gq7aICTor1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764840231; c=relaxed/simple;
	bh=8LDTB7qwlwAWpewJSCzfGbc0gtsr0MYZZ2jFMrEIZvE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JO8vDy5BVXMJsfpnHAceKoQBHtFtSU05V0QwIlwHMuqUTxJMt6ozyarwOHItF8h0OUiS7ozgE4XGz4jsJZbryMzsafLt/K83KyHG8QCXIegaiZAmTLVK6kGwrezxCVjENifBjLWPdpban5bBE3iZ3o/0zDxjJgOH53Kxo7CAUug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iP6BX6/Y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ioH0rw08; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B4761a7514884
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 09:23:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mGO4GwZ2ZmjVvhd33qR3nDXmMTKwXE4HtgsH3+8wS5g=; b=iP6BX6/Y8zIgk8d3
	d0kpoW03w6H4LXR8mw3oyQEgG6EeX2JSvW8XQ7MWh8jKQoG5h7sS241tcBKQjGP+
	sQcLi1C2jFjcrE44az9v0RSP53VOdG63dUhKG4+earb6YD5C0zM1I8hnQqjH8qVW
	AjBdIn6+O+1mlwc+i1Um7b4R8VjFLsq2bPTeg72CBtdYABiNfmCfCYsQNoR4zbW5
	UbnjtZEVjN8vx46vQJW+tjd9iNlIs7t6Eq3oeQE+CuNM7Bd6VYmRJ2DNx4A3Gx1g
	t3RG06l+sjMf9YESxWdQPWE8j+22yRV3+IwCOJ4QsHNC9dyecJOwPjA8rQMGS/UC
	Kunvrg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au5m30cwa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 09:23:47 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88046bc20faso1920676d6.0
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 01:23:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764840227; x=1765445027; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mGO4GwZ2ZmjVvhd33qR3nDXmMTKwXE4HtgsH3+8wS5g=;
        b=ioH0rw08qbjqoL7zQxiLjZKNe+gO45lghJVrCotrNodwC6ijF6SLKmTyGce/ZWyR3H
         5VeJVlcX4NoKzADgvTJDMU9X+WO7NxDDXgg3n2R0SKHgbPJsRxIJw3Jh1po39pYk/U/o
         eqa2IrSwmgw9w5jaehVur23f8GesO+qKEJCPsxuY/l27eqVJTlcdSuGG94ktrYaTKUeU
         aXyT9ZESxjEAdRmyAJrYar+/EEKg5WVj0WQ0avYoov9m77vPztVE9vc2by9KLd6r/Bgf
         vHevNOhbpwZgKJIzZ4ZO8KhvTmaU5pLceiartaws3pVZOxc6KtOoeguGHiO9ccEvMtdx
         oYTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764840227; x=1765445027;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mGO4GwZ2ZmjVvhd33qR3nDXmMTKwXE4HtgsH3+8wS5g=;
        b=s/rX0zMBC9ZovB75iyikAPiy8W4kz6iVv0RAeEjFpIk1hls9pGkjHyWi5/lP+EH6rE
         rB5H090vUnbGowG1w4iEBwIMWS7ShQynrWRfW2GED8gY/9frO7PBnwykWU39Jqx5iMgU
         wiWCEngABe++PpbHzIRDb8Dfp4Rh2ioJWZ1GNZBDDHPTGYJQo0nKi6IqiQ22FyhKWubv
         wCxT5gCmK+TT5LqWAvfCexPPY8ZUhiY6SVEIgm+ZsHRak/fxrSZS4IeMZFmgIOqxA9tP
         XF4W5nFrg4CvO3WkCK+Slr+lLjL/osx67SQ/8uz+qNsgPEXrYkrX/U3+PotIo2ZCXb95
         X2Eg==
X-Forwarded-Encrypted: i=1; AJvYcCWj+60GSw4Dz0VvTmlAxE3SDYW445+PENyYwbv3jrpcT6GJpD6BnATjF4WsH/kfHu3DfzV+OV4VREnQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz43JC9lM2tt8o/Uly4OL48MTL5/bZN+YEC7nVYQW9VcxqZrhRw
	OzpKm1tC1TvJs2aqcO5lyoxlhuRL+EjWWoEBbF+e5FVlJpHckjF5gR7CfUK/ljANXZy9XCII9Ik
	Olci9FOfbyA8Rc3KYTO8K22wPi60hQLo4+5TcXADBEoyjWNTKbu+Gw6FOuYQZRfGG
X-Gm-Gg: ASbGncvkRKDeIf0GyeYxt8wcS4ofCkHHbYNXQwwv6tDzNXus+4/4Di5B7BQ7mK9HJkM
	KRIZkGgeVv6UV/av8fHNWCTjCHfp/AkFpwOOH+jKrEuOI9acfKbHc0lr1PijS1mu687IJylE2vd
	J+sWYmhOZ8j24Lrb0xwiDt1Eljx8maYME8G/3Otyd9Qz/Wab1yEBQs/GiWkOify9MDK2dpKBeRX
	reqAdklMHhRAZjTbMSd4PoOJqmSidaso6+8nHMy1VLGekudOdaiydX5eeSQBmeHXjsXRlPiHcXX
	dwIUjM1exq05YHu/jnbAY00ZXCsF61nkAH2aBx3j2ga8VzbmCriZroB5sNAvbYgeIkwklkTup8w
	duEFZ1Gyfz5pHr2cphtNJ56UkcxDYgmSMs1lb0muCuyFlGDoyJORFaJMGyDPn1fTRUg==
X-Received: by 2002:a05:620a:4102:b0:7e6:9e2b:6140 with SMTP id af79cd13be357-8b5f950602bmr458880285a.8.1764840227085;
        Thu, 04 Dec 2025 01:23:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHXGfXkD+y6dZ4QG4VBqbyEm57rw9k7/t0SDAniIi6rCIw5pjk4PR4+hUO8T2h3SepkC3e6GA==
X-Received: by 2002:a05:620a:4102:b0:7e6:9e2b:6140 with SMTP id af79cd13be357-8b5f950602bmr458878985a.8.1764840226642;
        Thu, 04 Dec 2025 01:23:46 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f449d181sm86339866b.26.2025.12.04.01.23.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 01:23:46 -0800 (PST)
Message-ID: <7c0d4ac2-148f-4061-93f7-14ef49919c4a@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 10:23:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 12/12] arm64: dts: qcom: sdm845-lg-common: remove
 framebuffer reserved-mem
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        Amir Dahan <system64fumo@tuta.io>,
        Christopher Brown <crispybrown@gmail.com>
References: <20251203-judyln-dts-v5-0-80c1ffca8487@postmarketos.org>
 <20251203-judyln-dts-v5-12-80c1ffca8487@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251203-judyln-dts-v5-12-80c1ffca8487@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: lLxEt7o9nLEd0VsbfHSxSFvMgB5lT1mK
X-Proofpoint-ORIG-GUID: lLxEt7o9nLEd0VsbfHSxSFvMgB5lT1mK
X-Authority-Analysis: v=2.4 cv=esHSD4pX c=1 sm=1 tr=0 ts=69315323 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Gbw9aFdXAAAA:8 a=fUOaoUbRyWbO0l56wzoA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA3NiBTYWx0ZWRfX+IUrZi7Z4uJq
 nmmVEtpnH4s+gyMfrOOA/5s5sgtB6HVqHV4CKmuFadZvxGngwRHO6kgreeafRRkfR69umI2t6XG
 O1CQFr124Hz/tj749fruuRsHHtz0o6WpCcKCVB9OWfozNA98UTy8T8w7Jr4e3LyoTSpRVGi5haH
 nXnYpJK3ML8NEYRVt+U6u4KNeTjHT0cFwASQo8usDwq6isCvFtDy6mvicLm75mQHewjsriRrPoV
 qr1PEqpf9HXEmliiGdR8CvWXGOMnsgOcQa/op9RjP5YGvIbv96BtF0mLEEozFudWmb5gw4yhgkI
 7i2cQdxOHBUUMLO5aIF6uDm1Z/A3q5VcsoRolz8DUg+paBnoxIjsdpNUtXeGKWSiiIZPAJhWadL
 Mqk8KXpv3jSLqLa1kXsr9AGJiTtIgA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 adultscore=0 malwarescore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512040076

On 12/3/25 10:41 AM, Paul Sajna wrote:
> It causes this warning
> 
> [ 0.000000] OF: reserved mem: OVERLAP DETECTED!
> framebuffer@9d400000
> (0x000000009d400000--0x000000009f800000) overlaps with
> memory@9d400000 (0x000000009d400000--0x000000009f800000)
> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---

I think we concluded this doesn't really apply on -next

Konrad

