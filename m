Return-Path: <devicetree+bounces-115825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE829B0C43
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 19:55:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05747281854
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:55:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14D9A20BB39;
	Fri, 25 Oct 2024 17:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T2MWjDkz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E34B18C02E
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729878908; cv=none; b=kq6+NMX9RjwtUed3lkdrXgVyXZaHIfxlEWATHKtxUzkJZBgkAYmKps9lm+DCm/HGV43l9bl2q1sk3AoY4oPtsQ5j8Z5HQCqfbZHM8Uptghr/LR8ki4a/ZZwZAwE3oKEjkhWST/WYbpoiGxySB/U/+W+bfbaXpmivT2D5LfLMnSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729878908; c=relaxed/simple;
	bh=H64cwn/YI+xahZM5R2yS0Dl/XbXQeq2fR8JVMbZATBE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fMsIUBcQ9Ul4kgJw6if3dVIdDMrmnR5WaV4FtrDGyR6pJGeAEhcjbG0nC3jhP9dSlRmedC1Fctb6rqkv9LR/gce9WtCJygAzcQ3oQm0cjnAC9afkE07uhfEcaaivE70VXYRC3xOOkZNeicyAn8y427TJp6rWhykh7IGs0cdea84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T2MWjDkz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49PCOFPS005001
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:55:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PDDJozuZu4zaPv6m9oMVj0bpssXrcVhycEDLywhRjgc=; b=T2MWjDkzJ1e6mJrH
	EqYCq2WxCPILCmPQRaSBcaVYp/z37Y0ZuuQrJAUJ7r+aNcJY0U7lpwNjCFOYcHT7
	Q1AFfcD++B7qbajIO1MgeB0VGJcxGIuPsnQWAKzy8/0PM7Vno+CKhkzaTQnYZKd6
	QiZTeXNgTkTBZdOe4pryA2w1qd9i6JrOpqF+8omI0JYroANjoV2fEpXkW5PNHPaD
	tPpTgacPK6fCVcmSEEUcZTL7fCWLaxhbbw4II1x+2JncznrxxLPeZC8IyxRt5GcY
	14+UhzJ7i9K1uZH6Ib98S73xgVE+xTV8r2C5Su8wxhIaD3VxrBx532V/d6lSdRNt
	QoHyvw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42em68a09v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:55:05 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6cbf2a4afcfso3794906d6.2
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:55:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729878905; x=1730483705;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PDDJozuZu4zaPv6m9oMVj0bpssXrcVhycEDLywhRjgc=;
        b=etqtIgRzTWfHT+8RNficWlBv5k1vpXWjFhk6xCgkV9kFOywuIQWkhMc5XKUqeTAyvK
         AsxKZusowgTywjg/u67QgD8Dzx+05ttldXEEEFavfDNZvrI6cnHeTBTuvTXrXfBNO3Op
         7mItYgcfp37DZfBkripUkD86U1cjhMEOTR3cMJ+UJR8fxKGKk+YhRs+8Vhh2isgyzbra
         QHjhfnlTkJBsIb9XouCI5ROL6jW/LPw43TW1gYwOO3ORS7Y8Y3o3vgHoGU2qgSWrRUBO
         dmA3VaEaP3cnEc6jSf7kwgggyYvVeR4tpO/ACjjPQoJxiyHUSrg21icIKCNXPAuC+j+P
         VNRA==
X-Forwarded-Encrypted: i=1; AJvYcCUYjAKyFrYmrfBUFaZuXSEuIxvASyXVYLh2QMoeTp7q8j35gCXIHoBddLIHIwT6PyO4aQj/lyimPN6o@vger.kernel.org
X-Gm-Message-State: AOJu0YwxXaMtBcLrcZFDf7TWdpdSagWK7ETukZpSQMfdKLCXeoCDiNbr
	8qeKeL7HLP6JD9p17TqZCpQpCCArcuc5T3Oz85sV/kIL4J5X3VYfXPoJGtasDaJBB2iUTlZmIDP
	svYoWWbUPRo8NW0regNY8+Bh26v8f7pQ7c5elCsuXc5vC11UR0VxrLI4HDGjW
X-Received: by 2002:a05:6214:246a:b0:6cb:bc57:d840 with SMTP id 6a1803df08f44-6d1856b5615mr1922416d6.3.1729878905179;
        Fri, 25 Oct 2024 10:55:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFtUtIC+fHNLiU+/kDeF55Vgxs+NaItUmbI4LMdDeHbRHKwKsO/SElBGpjQ2p6QUOy8POh7KQ==
X-Received: by 2002:a05:6214:246a:b0:6cb:bc57:d840 with SMTP id 6a1803df08f44-6d1856b5615mr1922306d6.3.1729878904852;
        Fri, 25 Oct 2024 10:55:04 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b331b0d44sm92945966b.187.2024.10.25.10.55.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 10:55:04 -0700 (PDT)
Message-ID: <d08b8dd0-18f9-42e2-b0ac-b4283df0af79@oss.qualcomm.com>
Date: Fri, 25 Oct 2024 19:55:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] arm64: dts: qcom: move common parts for
 qcs8300-ride variants into a .dtsi
To: YijieYang <quic_yijiyang@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com
References: <20241017102728.2844274-1-quic_yijiyang@quicinc.com>
 <20241017102728.2844274-5-quic_yijiyang@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241017102728.2844274-5-quic_yijiyang@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: UCZc1SF5kXFIXhQlB-gstrJHX1bT0m2x
X-Proofpoint-GUID: UCZc1SF5kXFIXhQlB-gstrJHX1bT0m2x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 bulkscore=0 phishscore=0 mlxscore=0
 lowpriorityscore=0 mlxlogscore=999 impostorscore=0 suspectscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410250136

On 17.10.2024 12:27 PM, YijieYang wrote:
> From: Yijie Yang <quic_yijiyang@quicinc.com>
> 
> In order to support multiple revisions of the qcs8300-ride board, create
> a .dtsi containing the common parts and split out the ethernet bits into
> the actual board file as they will change in revision 2.
> 
> Signed-off-by: Yijie Yang <quic_yijiyang@quicinc.com>
> ---

[...]

>  	chosen {
> -		stdout-path = "serial0:115200n8";
> +		stdout-path = "serial0: 115200n8";
>  	};

This looks unintended

The rest looks good, except I think you forgot to drop /dts-v1/
from the dtsi

Konrad

