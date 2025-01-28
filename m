Return-Path: <devicetree+bounces-141382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 38122A2094B
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 12:11:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 79A90188939F
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 11:11:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C55D1A00ED;
	Tue, 28 Jan 2025 11:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KcN1k2Gh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C764F19F461
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 11:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738062692; cv=none; b=j9wHUqaHYCPB1PsQi6eCvDR/8J3IC3jfcCc6hkevt6gMPbpoFLbGd9W4vU0/6Xv/qavRRbzND3hlVJFp7f6VWP/cEs9xFULuf0GiE8/sLJwVrJv9e9OZnLFuI7pvZ2Frrn7X3br76CvHXpBKb2KKYITTAKv+kfaxRbEehrbAsfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738062692; c=relaxed/simple;
	bh=f8z5lD1Ll9QeiJ9iAQzaUWnTc8dLc2dHabZkpoeNQbk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HjQiSuslaXXPowPyAEAg4hAEeaYEuE/7Zy7fkyKEy58YBa3GhTKMpVTg4bWgSKk+vQILX9WZlWEhrYnUcR0y3JtUieElgn6GMx++KkVNeXOzLMwT4SYvbgnhNdM8JMU0UMZVATY65ICLywkivvBfkdzRhU9P4RYLGDP62+2YzaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KcN1k2Gh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50S4uoRN032304
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 11:11:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t2mzYhjEIoaB0I31ogO/ZX6JuyP1l3+/Aw07npSJlLU=; b=KcN1k2GhJ0bt52Xs
	+tUY7pTTYY1/pDJ3IOezmliR1B65f/a0WQEYNgfzvWusJvQv/PyX4Fh5+v30qtQP
	HuanF59ix3IviRuCzps3fBStn63w9P8/7nOV5rio+aqNCJyTFZNFUhS2sbzKOEUD
	8kYA1EkIQBsDtpcyWzPS9Kf59S7xBdvH/+wYVvhYdyPqrn7ZJF0OTBPYCorO4DQc
	2VRe1TBCXmGU0aBfm9VxuIkzR7nVpgsGq2WQFJJjfBsLmYoJ+dY3Se0pFkY8F8lr
	Qg2p9W1tr26H5wFyULCr828jXK5S0TpMDbeITn8jruiZhxYYGFBqekBnN/rKOL8/
	YRR0TA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44ernkrtkj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 11:11:29 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e19bfc2025so8596396d6.1
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 03:11:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738062689; x=1738667489;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t2mzYhjEIoaB0I31ogO/ZX6JuyP1l3+/Aw07npSJlLU=;
        b=jAspm2QoSsTS3/q6tgBESK5aP6mbhcbwtecnATQapTFhPLzKUqiqfrPjsR9HqTFZFM
         ccrUue+du+iu714xq40rT4i/eMmHTVdjKzrSzNkZLPcM1EbvwemeKgnjGtS+KRhmzkQH
         zBkgCoF4ihyq/QcewNDAzoWdnjTEcygP9EJXwFIO/BcKSQlwb8aJ3ZsNRM9R8l0bmmyZ
         B3qQ+OxO3TTjPXO4spPqt+vysIeLCs8DaTTsedZeyhIrAo6FRUSC/aQvk1FCaLCvc1Dv
         FPduNHS3clQ3rwgNMNME/v6j5gI35dQD3bE4Yq5leXBNBv+psOlNKy3rKDZxUAWDKqLJ
         85Bw==
X-Forwarded-Encrypted: i=1; AJvYcCVXXzLtyQ1QNx+7Tz+AqdzFoAXHdlZArQVcwt1YlGIxygKofvoXsun1dIWhYICAFq8GrQ98SfI5p4ij@vger.kernel.org
X-Gm-Message-State: AOJu0YyEwe6r048CtljKW2lgppmLdYr7tdSXmTHlxXc6r3peJbcBph86
	qLLjj+KXFk/q7qKQqQAyUsOsTgTHxobOhB6QN13cqIO1CcZ5t9i/qS6kz6WcBMp0tsgbthSGg3V
	UdJOTh+wFOujSlEGkAHZM4bsV/jmq6ujj7Df1uLz1WKXLCFXVyYY5uGvydkvIBx6nmxKw
X-Gm-Gg: ASbGncuGi5paCrivPasfcAtGCx7NUmW6tG55grcrBrqCXizZvqJyt9gi3KUGf1qvmv1
	As7w1r4mKmF6m1y+EsTp/dVC6l/qrG1MuwOfiVC4aZTvdzYXnQuX2AXbfnXAdjd8RD1KTo458l6
	InaKDuQzhK68wrXeLhiMZPFhDYwlmpb1DEVRWgk8bzANhHHwDkiMf7TJMkNwIfrK2gslLSNwf55
	LqNR1CYzN+LfZ3A/3ieveZLJu9JnDmZsZ/6o6fYZWw5PYcJqEXaZ3IxSNVYqH+0w1sh9spXVbmD
	o+K7mWbJMKmQZjpNAWubdiFEy9pgoTq5iY6FMKcfaHzDdUL9WfDlWphV7QY=
X-Received: by 2002:ac8:5d10:0:b0:462:fb51:7801 with SMTP id d75a77b69052e-46e4e7543b6mr137807031cf.8.1738062688705;
        Tue, 28 Jan 2025 03:11:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG/rInaNxIZqVXQNRJVgiecnOqaAblzBcHrshnPoO2iCWv5U/ESz0dARplPDSZGKs5AQ95vpA==
X-Received: by 2002:ac8:5d10:0:b0:462:fb51:7801 with SMTP id d75a77b69052e-46e4e7543b6mr137806851cf.8.1738062688316;
        Tue, 28 Jan 2025 03:11:28 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6973090d0sm484176666b.18.2025.01.28.03.11.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 03:11:27 -0800 (PST)
Message-ID: <f7896524-0162-4f8d-a115-a88562617799@oss.qualcomm.com>
Date: Tue, 28 Jan 2025 12:11:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/13] ARM: dts: qcom: msm8226: Add node for TCSR halt
 regs
To: Luca Weiss <luca@lucaweiss.eu>, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Konrad Dybcio <konradybcio@kernel.org>,
        =?UTF-8?Q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250127-msm8226-modem-v3-0-67e968787eef@lucaweiss.eu>
 <20250127-msm8226-modem-v3-7-67e968787eef@lucaweiss.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250127-msm8226-modem-v3-7-67e968787eef@lucaweiss.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 7r6yQ3RTvlKSH2aqzjVq4zsXawmzsa6e
X-Proofpoint-ORIG-GUID: 7r6yQ3RTvlKSH2aqzjVq4zsXawmzsa6e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-28_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 mlxscore=0
 malwarescore=0 clxscore=1015 adultscore=0 impostorscore=0
 lowpriorityscore=0 priorityscore=1501 mlxlogscore=825 spamscore=0
 phishscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501280086

On 27.01.2025 11:45 PM, Luca Weiss wrote:
> From: Matti Lehtimäki <matti.lehtimaki@gmail.com>
> 
> Add a syscon device node for the TCSR halt regs needed by
> modem and other remoteprocs.
> 
> Signed-off-by: Matti Lehtimäki <matti.lehtimaki@gmail.com>
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

