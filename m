Return-Path: <devicetree+bounces-151831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B2293A473F9
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 05:11:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 149201888596
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 04:12:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66747155C83;
	Thu, 27 Feb 2025 04:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AR5b7VId"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8541B78F3
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 04:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740629512; cv=none; b=lEFe6SZQBmK8dKhb2GY1cAjE1xg4i+wOswbfOvPhXHrPN6SBBeQvrnNqcwLNOCtTPzg9HRAfo2xokIUPPH9T/VWtIvvrH17HjRHgn0I6qUEDGT0BtUqwPthP0cxNnGKzkMNns1AOQVZaNzDjkzaPm8Q/GNZbVbGWLvW7qk3iFaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740629512; c=relaxed/simple;
	bh=5vRVGr82CGiZh2Cbzj7pVxhSTU8sAZM5XF2eIwvjp+M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WyXt2u4sUDGyEgeS3GVHmWAxOzvIj6euTY2FnASgKeeLO86z2iy9sSa3xDtOZVpA+MKoVrpFdBEXXp2s1PtXmLiHDne6xWN6ZhXZjwkKGP7xYTWYU+UrNeUw7skX4Mu866qId97P5z3caynKQeaheXcGbDaRuXQjohtMg6OJg9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AR5b7VId; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51QM4eq6005772
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 04:11:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FSAQvsYR3iMFmPabg5DWf8ziRODUsEKRzX7L+bsEUbE=; b=AR5b7VIdGtyIxdIO
	XDWqh9b7PfITf0ErrUajHIGBZdCP8V2Bbqolk9ju1NQwt7g4ZTzmqnbsuAXl7Bbs
	v8Ozs3ZToV2PMga0T3uFFJsr+uDDzEty6BG1Hzn34uS0zui/Ag2uLlvOxAxmBFzt
	BOdrvPeSW0ypR1FW5Wr9nNWq4VNe0IE0t52zPZRnjmWe+RQZok2nKwTq+Z/LEsSr
	JEWNroukeRz2iL6CycYLUJ9omVapte/XPS8c8OMcMg+m4YV9hxq1gdnwpsHlffnc
	hKbGNF7kr8KD0DZVe8bPD3DcbwGC8TJ+azLWLF93f/Nfw7eMcbU+UmgXRLCKzyEF
	BVvOMg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 452be6grcn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 04:11:49 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-2fc1a4c14d4so1239123a91.0
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 20:11:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740629509; x=1741234309;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FSAQvsYR3iMFmPabg5DWf8ziRODUsEKRzX7L+bsEUbE=;
        b=LrY8BrWkASQkfflEcvAG2N+/ej0btt8o+ctuV4ph3YEfLdVOAwEb1HdujWOR5+3nm1
         ORMQoLMlJAml5Il1D+SSbvEStd9RnLaTyxBTxkLqE88w/B6PSYtZv80+Ba2F+PpbeAC+
         iH9roik2D/E/C/VO+8+zp8tmm5JyEhkPr8wEMF6ZMhJSJ6gQGrd2b+I1OiY9bq8J6mC7
         uUpIX3WKqDVfbT8CQ8GYR75GzpcugvmZt8+kPBOqgNEtlGifJE76wmwKvHKATEocEWP8
         HgiwZY7ZbcHJ4n2l5WglasWybNIKFEj5F6i0p9f8VeNY2HDTmOIxz3Y0vnIUuhCz1yxU
         v4hQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvd+Ayx1Y42v64rRqIoMZEl2jwtmU4Y3LaNNPYVpSOP6V2YfkZ4V5FB1Vq3n01m5FzP12XHCHQZQUm@vger.kernel.org
X-Gm-Message-State: AOJu0YwzvFtPcXf2C33/CQP0ansXyV/evinBI0IKWRvEsprmZFsGa6W7
	Swz8Q7nVFwlY+FZjk+YNb84fYerGTVV+pu6FmfB8VSpQnzEolg4884h2xHDjtphqqeyCJf7bHgI
	1W4EY/9x0hG7MiYMFwGcEJNMi9CNLNvgIatb1kU7T48fGQMxbYANSf5Q84lZl
X-Gm-Gg: ASbGnctW5QELNP5kZiO3XUriZGsDZ/ghP/nrqNCUhrRZLom/kn7nyn3MBlH3QXbgsfV
	KNXQzE+2jedNCYYglFupaxTQy7WIdinizEjT0YyRTYk6YQKiD7wlEJxe3WoRHaX/XUHhkgdDagH
	XPTk+eEQASNGeYJ9gNRoam9Cy28A0cfaoE4C02RwU/dF4trX9KAoq9OpFw67re/ugSRyRbmsPdT
	GpcI0UGfXakW9pwJKGmndO4qEG47/nXB+ZZ8NQUIFektlUqxhMuGrQZBnAK2P1AT5fd64lqjNuL
	UT0cLT8mmBc1ARBDd3kDiikYi+0jPgiCmzTria4L6fU3
X-Received: by 2002:a05:6a21:32a8:b0:1ee:c598:7a90 with SMTP id adf61e73a8af0-1f0fc99bf90mr16869056637.39.1740629508900;
        Wed, 26 Feb 2025 20:11:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFRIX3IkvZiOUdHKEbb1/zqOV6uSSXIJDZqwMP6rxtAvZaceoDHFXvQadYXggDDykHwRSrVbA==
X-Received: by 2002:a05:6a21:32a8:b0:1ee:c598:7a90 with SMTP id adf61e73a8af0-1f0fc99bf90mr16869027637.39.1740629508534;
        Wed, 26 Feb 2025 20:11:48 -0800 (PST)
Received: from [10.92.199.34] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-734a003eb65sm458168b3a.149.2025.02.26.20.11.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2025 20:11:48 -0800 (PST)
Message-ID: <0dffeb3b-63b3-266e-d1e9-b8adda7cc0ec@oss.qualcomm.com>
Date: Thu, 27 Feb 2025 09:41:41 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v4 00/10] PCI: Enable Power and configure the TC956x PCIe
 switch
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, quic_vbadigan@quicnic.com,
        amitk@kernel.org, dmitry.baryshkov@linaro.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        jorge.ramirez@oss.qualcomm.com,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
 <20250227035737.q7qlexdcieubbphx@thinkpad>
 <20250227035924.p43tpbtjmqszdww6@thinkpad>
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20250227035924.p43tpbtjmqszdww6@thinkpad>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: bsQ6X7iX2z_LDBuMdWJeCaRKuA04V6EJ
X-Proofpoint-ORIG-GUID: bsQ6X7iX2z_LDBuMdWJeCaRKuA04V6EJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-27_02,2025-02-26_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 malwarescore=0
 impostorscore=0 mlxlogscore=810 phishscore=0 mlxscore=0 clxscore=1015
 lowpriorityscore=0 adultscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2502270029



On 2/27/2025 9:29 AM, Manivannan Sadhasivam wrote:
> On Thu, Feb 27, 2025 at 09:27:47AM +0530, Manivannan Sadhasivam wrote:
>> On Tue, Feb 25, 2025 at 03:03:57PM +0530, Krishna Chaitanya Chundru wrote:
>>> TC956x is the PCIe switch which has one upstream and three downstream
>>> ports. To one of the downstream ports ethernet MAC is connected as endpoint
>>> device. Other two downstream ports are supposed to connect to external
>>> device. One Host can connect to TC956x by upstream port.
>>>
>>> TC956x switch power is controlled by the GPIO's. After powering on
>>> the switch will immediately participate in the link training. if the
>>> host is also ready by that time PCIe link will established.
>>>
>>> The TC956x needs to configured certain parameters like de-emphasis,
>>> disable unused port etc before link is established.
>>>
>>> As the controller starts link training before the probe of pwrctl driver,
>>> the PCIe link may come up as soon as we power on the switch. Due to this
>>> configuring the switch itself through i2c will not have any effect as
>>> this configuration needs to done before link training. To avoid this
>>> introduce two functions in pci_ops to start_link() & stop_link() which
>>> will disable the link training if the PCIe link is not up yet.
>>>
>>> Enable global IRQ for PCIe controller so that recan can happen when
>>> link was up through global IRQ.
>>>   
>>
>> Move these patches to a separate series.
>>
> 
> Or you can just drop them. I have a series that adds global IRQ to most of the
> SoCs and sc7280 is one of them.
> 
> - Mani
fine for me, I will drop.

- Krishna Chaitanya.
> 

