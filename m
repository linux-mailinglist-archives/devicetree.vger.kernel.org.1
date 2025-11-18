Return-Path: <devicetree+bounces-239873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A71C6A2F2
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 16:02:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 7D8492BDEF
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:02:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E949D363C7D;
	Tue, 18 Nov 2025 15:02:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vr8Hnx/V";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BToTCAcK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E900F363C5C
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 15:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763478150; cv=none; b=NhL80n6tk8GtS9Nlu4D3drC7qmfQhKvK1HvhBVyaY5zqZ+2DfkPb1HEr+4TH998O/C7sUMQeqSKFLO9DpkBTjC9F0Yg/WfcHe8cuoKrgGnL2UucQuUgR5hVC6ZHXphzLzoL2PNZ20aRb9etKFwE1xMCR2Sd0rgZwGFxtXOA+jes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763478150; c=relaxed/simple;
	bh=AG9by4gkTASisD+Eqv8N+8wZae8+n63lFHeNStnqot8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NPKx0vBJcL1qvq2Vv/5Pd/fNu0Ocslkan5pSllC4/r0X+Qq0O1JQu+x9AaJ+8ppSVMn63fgXseqK0rmRh3IfSTFa8v+MNQk7wiz8vloKp2AAnUgtSQ5nK6f86l6tk9VG6jtOx3f+uBR1HNRLF+usRHcQk+nPAzScdKY63XsWbdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vr8Hnx/V; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BToTCAcK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI8DqDG2193872
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 15:02:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	W3Ku94Mnbq4R2C8SGG/JayArYSw5QUBYUNcaxSizlZQ=; b=Vr8Hnx/VLUu6Ye+t
	SDLKbfRlMdaaZT8MctPeW/Bi3mmavKYdeRkIQcdAecxqDsCvLJ2wFPkoxte+HOl0
	s1eyBgJhXKg672Fi/zAhxjXpJCijgw5HE4u+qqNosb4Sj0tBZqSfE6XFv5LrUi3P
	EvNMkk97ca0VmnoH9ENj3pU8mXkHa1JHMsw3kZ+/gmed7cN1uJ5lezM61tys2a2J
	73Lm07KrO+wbf1N7xDImuUpKBNjBXggbVyvVMwZSQcG1pgfRz4jChy0oH1PYWPVz
	8aDx08/F+5Rftp4IJnmUNULPJDJcoDlR6tyvXs09/ZcYz7Cs9Z57hmoQT7RIHZ6A
	lwMPnQ==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agn3y94yp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 15:02:28 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5dfa4d7ed54so655735137.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:02:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763478147; x=1764082947; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W3Ku94Mnbq4R2C8SGG/JayArYSw5QUBYUNcaxSizlZQ=;
        b=BToTCAcKRpoiM1wRKWzXmv9nv/YgwnEoWrI83rrRsbnpKx7saAyav9T52OAbglFaxF
         GlngsGFsV2uYObvre8gw0W2O9FZQ/yio9jg8fYgK/BuzxQPRvMczPmLbVho4p1d47EWk
         CDTI1LAAqSthXfddWZdOeFSswPKbkzn95ZEpofvvc8PSj/KCytmQft1zw/CNtNlvAhNl
         R0uLwVZAwS9WmOePQG64IXzPrH3Vx1ucRx9GudKb35WNQVv9BshK5KUsCATG5GMNyTBI
         dnsHXZ6MPhLcJQ7MnuUN6PKLN06vlEEAzx1Qvh/D9W7khuEX7vQK6PEINYzWPVV6f4+I
         vvnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763478147; x=1764082947;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W3Ku94Mnbq4R2C8SGG/JayArYSw5QUBYUNcaxSizlZQ=;
        b=EdnnqonH1TMCRi70xOTddbblcJvOYDBHTJU19AK1xEI7/Qi60jX6W1RWpVJwnoZJlI
         3TV6PRmBYm14qKVe/tg8KrgRAAKwt8qXW3AHKMHJOhm/3QKulaN8VmhTcSIIhHyHn3yg
         5ymGw4SzEWGJ2iaGa+qhR1q71X/j+zsFMyj7a4BWp9QsNA29ZiJpuz+Z7YP/2jZnuq0K
         4MR6+kaKGDofDj5Pg2kV7ozBx/GWI3HaEXzpb0/joYuMSYRWi0X/DCkAt/FltCo3m1WB
         s9BRQnAmPegBMWLXUi9eaEwXaYjkmhgrGOzmyHZ2D/GpTJDGYpyBVznHVEO67ZsFCvld
         wQ9A==
X-Forwarded-Encrypted: i=1; AJvYcCUb/nuAIQ9Bn9+nhqKy1oQspmW8mCesUVmptU8Em2xRFWcW1o0NIZfP5pmuLtfyQfBSAeGSF7PHd5yK@vger.kernel.org
X-Gm-Message-State: AOJu0YyPKt3EFfz0CnCQarAAIWgqf+0qAh+cMAipNHYt2E/XVdBTOYnM
	cGZrRCnB1Pr13tdYBsxoys7gVMk+8a8MDuMWgDTYpw79vKIWjP5ILzA3USnX2SEYeXnEMBZw/XD
	+WoNf9mnjtI8KoPHEeYO2EkHbD1cf3zFaYG/0pbrAIGZ3WUB0tQ9MAbRjMUswCMkw
X-Gm-Gg: ASbGncsVw7menLgr0tcRZ4EhWe/MBuYK8d8LDvx6qrGAxAIEspeTBEeG71rH58HB7WK
	IWa5A6K5KQgdrX60euHa5bu1UG8PSrX5VwCLMasgL3OHLDjilCHYP9KF6h6r+q0X9pCVgkcrowm
	PIxLeO6nmDoaqxnVd4pxALa+JqvTnQp7vlhyvybJ/E+HsdgibzAQB5NK1Z/6GK00lqz5KtQCwby
	XHCF8Q4J1D14HEfmE5EJLIuVknJp3MXQZiLuIMWjfVGdCCvc7z/imtI2/oN+jwlBogdDRaHnF4C
	cfmsGffXu2FJCaBjUFPM53KJ6NjX1fzbxHW0FpGPCyPlyAJDAbpqnxBWMqb+nmcGLBcm6+EHerx
	EegEUlMTVkHP/qo3DhJRpkFcn2qPxqzusdUoYjNiUaKkdY7RDSOXLCaix6l5CDv/kwFk=
X-Received: by 2002:a05:6102:4a89:b0:5db:ce49:5c64 with SMTP id ada2fe7eead31-5e193d07939mr483674137.5.1763478146689;
        Tue, 18 Nov 2025 07:02:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHQFPg0Mz7N4EDPv6I3lrbQjG2U2K8407ks4hpoDAguiOS8G8eXyBUOQZPBwadNoxrO/0t0tg==
X-Received: by 2002:a05:6102:4a89:b0:5db:ce49:5c64 with SMTP id ada2fe7eead31-5e193d07939mr483573137.5.1763478145615;
        Tue, 18 Nov 2025 07:02:25 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fa81296sm1392855466b.6.2025.11.18.07.02.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 07:02:24 -0800 (PST)
Message-ID: <2767d14d-dadb-4854-b1cc-f04bf239a39b@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 16:02:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: sdm845-oneplus: Don't keep panel
 regulator always on
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20251118-dts-oneplus-regulators-v2-0-3e67cea1e4e7@ixit.cz>
 <20251118-dts-oneplus-regulators-v2-2-3e67cea1e4e7@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251118-dts-oneplus-regulators-v2-2-3e67cea1e4e7@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDEyMSBTYWx0ZWRfX0GRYBKeJCSkA
 1ZWV2pz/3OK+oBEgl464Jv88kEP8eHDZ6L7JXRzyh8fCEBhNfSwikPluGt8DNAesV3pjO4xgOlC
 JTolHwz/iZ4VV9CoROJHc5REblykrzOYPYpWgw3Rf+QBQxgVH201Yy7IbArdK2kU7SpnE5ETRDW
 IEz+l2ZVZcmIV9CK2HePX/AqO5XRvdb69dVoKcgXgmI8rapgqyfVnIya+cgdn+Y1RcfWWhD2SZB
 hM8IlGu6BGI5xDyc9BzCOOxSDvUIWZCSsHvZ8T0/SKMDG2RAqJA73vv+ZZHQg8g95RnyUG27Kb+
 Bgz4+pV6+0wWzzgvN2dPv3N664nyDnEfvlHi4pg3BL6i996Wlr5mseuChJDyl4DvBRbyYUSsz+F
 zEmDl9ivN65iLULYHorzX/SjrErTcg==
X-Proofpoint-GUID: VvQ_2gc8NniQMwE8GPL1cUZEzATCI2b3
X-Proofpoint-ORIG-GUID: VvQ_2gc8NniQMwE8GPL1cUZEzATCI2b3
X-Authority-Analysis: v=2.4 cv=FtIIPmrq c=1 sm=1 tr=0 ts=691c8a84 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=DXHULxexB2UWdnxT3G8A:9 a=QEXdDO2ut3YA:10 a=-aSRE8QhW-JAV6biHavz:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_01,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 phishscore=0 adultscore=0 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180121

On 11/18/25 3:52 PM, David Heidelberg via B4 Relay wrote:
> From: Casey Connolly <casey.connolly@linaro.org>
> 
> The panel regulator doesn't need to be always on, so remove this
> property.
> 
> Fixes: 288ef8a42612 ("arm64: dts: sdm845: add oneplus6/6t devices")
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

