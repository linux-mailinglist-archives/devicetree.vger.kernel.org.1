Return-Path: <devicetree+bounces-133535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A0D9FADC8
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:37:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 45DAF1661D4
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:37:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84C9419DF45;
	Mon, 23 Dec 2024 11:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hj0x/k01"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262C1199FBF
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 11:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734953817; cv=none; b=elYxHKQcECsr6rgpfS8ZiaCmIBhMjn1HVr6v471ek82MeiO43AB1OR/lgG9OdJk2ZwehACH9DRiRxLaypC1HhEXUgSItycqrhcrkH2wT8l+6w1LqGcuaz6NmOQb3q73XAE/6v7lDB8ZELeXHVdWueZrmJr/1o+eqw1O0D7gj6rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734953817; c=relaxed/simple;
	bh=wUjPXxAsWNUWqccLWJuFOMSjEM1ez/Hb+5rIbn5YFbM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IQ4jaF9EwSjEBRajXX+txqlHqc7YZ10TRUfJTNAdzB7lCYQmInC2WosI5BdgWrk0CqRhoVaoGEfMxL77VmYgESZBxCBOODFaKBcDnYTQnPdPXbQfKWullP1Y6yGNGf8ygiV7kf2z2NFN/4lhIclGnUIJkUgGx+nO2eLZo0e8ZU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hj0x/k01; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BN8oSBp026545
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 11:36:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GxBwnZdyh0+oIX2CZcOkzfj/L38PK1tR2KNoyu7vIgA=; b=hj0x/k01KvAQ9z5h
	Si0R0I4pRaVesF8/zDfSwU7szpm/avXesU7StxdUVi+xyOuRoG4EreHn3HddGqML
	5MHoZLKruRk6BfaP9+E3V7IYwE36NjYbERQCdCtCdfCCEed/6BaX7UxCKJwFMUVn
	zQtzVlp3L3B7V6M5LUeMGLliXnyMI8vuhb+JNceCjId7jI3TIPM5x8S4hxDKBMiO
	9QGm0xHpXiwpG3JEP2vMRDnn1Y6akLsZo5c4OesHoJ3n3q9gUhePR2V0bzTiyjQt
	sEDYnnlkt7G5HwF+Th9hkbCPTSg+UoPyjoU999IXdvRuticEhEZnQN33m8LbVB8O
	qWMWCg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43q4q4rd86-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 11:36:55 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b6f28dc247so46246185a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 03:36:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734953814; x=1735558614;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GxBwnZdyh0+oIX2CZcOkzfj/L38PK1tR2KNoyu7vIgA=;
        b=Wu8w4MbY2NkDicKOi2doqMPOg3UMm7h213kpIKkjbG/IpkxC9ogmL4pNukUcVSW3Qt
         2AFY8F93zsWRcWFzwOA7mlmNzQXM/gSYb50RBS5FXkBniGbwn4UiuirXAOLeNYVxvMEk
         gaP1VDMdkBCRbW+8mYLUnvruowlGEieP5UJlESHrgfe/pKmBNcHInYSGSgBjrAJNV+sl
         sfHXqatLU4lj1BLGmSqhqptes4hhKg21C0IBvV62AfSFlfJf/UYZ6zKBS8DFpsd1J2Kf
         e9OAQRSbl2VJfbpUKaYPXTeYE+Jz8EuKM4T/FQiSlozTE7Hi0oShAu45YcrkZ1pwT6EZ
         HL4w==
X-Forwarded-Encrypted: i=1; AJvYcCUkdmOrUcKEaXsNIpoMikNhoUPHwQhZODsa7RGFj+1MIuwsam5dDlZ2xiCMwCBIPO90Q5ZqigFqJFhP@vger.kernel.org
X-Gm-Message-State: AOJu0Yzoaob2yr6ZkUstymH7qu2zTDGzcdxloXAyqBbS2mJyXc/HwMrl
	njwVMYIkPmfVz7ACUdOfspaTqgscRSX8g/1x9pX8tFPEXEiaNpVPeT0H9vOGdLQL8pnM0P4X7zT
	CHG7/6wk7GsFuboGMs7uOZl8ze0bydeUF8iTfhpP7MW7f1KWrkiZ0RLuKIS4/
X-Gm-Gg: ASbGncv42/9nvc5MIq2hNaWPYQFy/nLyKAiS9fPhSdSutulid1oIKKEXb2YMjTj93Z3
	2xiJ2xN+gJ1vyDsGCdcc8VkdCC0ndTrlbgj9WdoCUPREchK09RDsxIla/6ksan6nnahK5uvxHE4
	RmZZ3ozH9TCwwiGXVYZr8+NsaUi+F2IUYm64YQ9j+Vn7zm3xywlWAqCQYv9g4LRfKgQtgc5kzu3
	s3s2FN7hRlDhkgvqwvF52WqUQ1RKMZW5zJ6XAuwySy1tHo35X600UQDkhnuQ2B07ZV4mojIppqs
	3wf2EnKHPYUJNJx40000+/ZSqck+amJaVMw=
X-Received: by 2002:a05:620a:1911:b0:7b6:dc4f:8874 with SMTP id af79cd13be357-7b9ba7b0a79mr760624985a.12.1734953813787;
        Mon, 23 Dec 2024 03:36:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGtL1xYU4q5iFeeT8egnMEG6BfPX15L+zymBOyU7oucET9/Hf+ap7FsaWk6YB8aHkpe/bKmYw==
X-Received: by 2002:a05:620a:1911:b0:7b6:dc4f:8874 with SMTP id af79cd13be357-7b9ba7b0a79mr760622385a.12.1734953813408;
        Mon, 23 Dec 2024 03:36:53 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aaee340665asm50505166b.187.2024.12.23.03.36.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Dec 2024 03:36:52 -0800 (PST)
Message-ID: <93ff7098-a77a-48a1-a14e-de23940bc763@oss.qualcomm.com>
Date: Mon, 23 Dec 2024 12:36:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] arm64: dts: qcom: x1e80100: Add PCIe lane
 equalization preset properties
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, quic_mrana@quicinc.com,
        quic_vbadigan@quicinc.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20241223-preset_v2-v3-0-a339f475caf5@oss.qualcomm.com>
 <20241223-preset_v2-v3-1-a339f475caf5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241223-preset_v2-v3-1-a339f475caf5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 5JQbeOY9NO7TTa_tdt4sI2vhYOlujiwn
X-Proofpoint-ORIG-GUID: 5JQbeOY9NO7TTa_tdt4sI2vhYOlujiwn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 adultscore=0
 mlxlogscore=571 clxscore=1015 bulkscore=0 mlxscore=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412230104

On 23.12.2024 7:51 AM, Krishna Chaitanya Chundru wrote:
> Add PCIe lane equalization preset properties for 8 GT/s and 16 GT/s data
> rates used in lane equalization procedure.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---

Does this also apply to PCIe3?

Konrad

