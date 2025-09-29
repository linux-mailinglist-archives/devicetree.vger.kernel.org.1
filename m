Return-Path: <devicetree+bounces-222292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B60F5BA7E47
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 05:58:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6CBEB3C2490
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 03:58:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2058621B9C0;
	Mon, 29 Sep 2025 03:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ALD1/oni"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94CAF219A7A
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 03:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759118272; cv=none; b=BT3BMHRssATlxuDWLudanRIqu+t0hdAzBfyNMgtAVVcXHjPTORYR2bDZrpcK9uzo2ywUdQnj/18Xq2x7vwBDIQ20jund12ek3zjDFcCatiIhML/NMZ9jVXwNY3N9A/jBCCqV4mYWUUsB3xRrHBoyx0DNUoh3BfYhF2HibLbXYuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759118272; c=relaxed/simple;
	bh=iEoKhzPpfOdEKO/nolkZGQ09h0XsBnz8AzJd6bFhW7I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FODDvdQqQMI7HidinCrXGCVRYA+vmyJg+s5IvJr2C6LdKq4+cqZQlpD5ta5e3v98CAty6z2hYIq4l9efVRjlx7W2HddLdT+M0LIwxl5bKAHoffG4RqRwIyzliZcnaMVN6Qkf6+UHxeI96Urx2Ahujs7uLyE8tA5vOPYDj33SN/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ALD1/oni; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58SNO9wr022448
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 03:57:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x5IKET2ZNaGZqu6vqn23CHsftRhx4zpASBXEh2O62jc=; b=ALD1/oni7E0Qcubm
	g5TALLkBGTCUmHYW+fuNpKM4J3bcx8KZDvdu+AneTt15G8DKwFGe+o38O5wHM6K3
	q3c8oESGGT9smKgWgZ8Lrje/qBM5WrSR8sV98BjAZ3XTad223SOd2F/AqK5LCyVi
	fMFDHqMIILqZoznI6uyDf8STPoDe9dkHZ8lR+g4h6znO7mC+dxcYZ3RuiQ50+8eZ
	giwb0q3GaNaWJW9+77UwpCzCahaC2iU+k0xm8nJCb7pHtXbZDdQVMExvugH/eOH+
	v0w32g89HNFpe5HJI36KaSl/HS6Ax1nR6RXuXSZSMgVi4o7Bm4+gJl8e+jXEsmDL
	EqBjFg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e7gxkse1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 03:57:49 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-33428befc5bso4037353a91.0
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 20:57:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759118268; x=1759723068;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x5IKET2ZNaGZqu6vqn23CHsftRhx4zpASBXEh2O62jc=;
        b=rN8FPfqqjlHT7uEm7B1K9rAkOo/Zy/4b/V3ZlCry0x+fsTguODUAMIN20+fyDtAsNH
         ChGTigJIyX2Y+WBsyBcadDKpWCzrLInUyl2Vu8fOeI1hQSmWGDM7aLNchlnMtJQDxTWA
         d0NAAa0Rx9tUk/uqh72Xowg/nPxIJUkyI9fHyxiIGEYl8J43kil73xPq+BP08uzv/5bj
         icreu8bnDwTvFGIrFx5TrPKWYX422PtyGs2rS2FEH0GChz7899WkJnUXPHH+OIoW+epV
         KARUU0djIQLrQH9DyuUFa5QvrTLUWd27qVRqRveVFJFMw95W618ahci0HYDTK1eKXJ5m
         jSFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkIppPZ0qyvHAJEtwDDTs03KK6QZ6m+wAFB1zdU+rrN2u/CGNmldgAAyamnN7Zu1tsQwEakKl7+ssu@vger.kernel.org
X-Gm-Message-State: AOJu0YwMLba332GwjI+PfIUE+fJzWnMF9WVQa3bXXNYyEpa/7372b8if
	Mu/acH6/uPsD3O5gMlYqdtzzeEe4BkR6rY1mCtOfCeVK6KsILuVFXwDeKYzstHcHf6CtJ6eg19i
	zxEpwmt2iUKYCO6Wbl/0oWAtUTAZPDS8CrN3Cr/ANDg3NptsSchcqW6z/BCHYU9ia
X-Gm-Gg: ASbGncuua42qaJ431Pdtl3FXMGX9AlATuvubW+1w8Wxtykb7auOd9g0Ojn8o0gF0btW
	H3P0IFhH1c6sRvcrtrioBsaGqzy4Jr6tnx4e9DcLs2pEiCRBchewDxR9beoDhQ8ZV3hQUnmiSnH
	+cKhuQ0uwY29pwk1TGNz5VBOvd7HFithBRhir+NOErJVqcQMGmfmoMj94485CDcqhzQRQscn7t5
	8fpLnhbNDk2IvUgjvACmGkFAopennhXChPem7oHFUU/BZhtwYu0DjksBUzp1B9DvzPtI1Z+LZJq
	ExyPCSoX07X1BmoPwHWMEHEuQTIKcoKWoZSwBJzxbG6qFkJELD9jd+i1+UvQniSvVBw=
X-Received: by 2002:a17:90b:314e:b0:32e:c6b6:956b with SMTP id 98e67ed59e1d1-3342a2702ebmr15297822a91.4.1759118268186;
        Sun, 28 Sep 2025 20:57:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHuArBOJSGdH2d51k037g9fbFwwwtZi2aIpgGp3j1sTG3Gq9TQVKDuopvTuXrBfvMWjx4Po8Q==
X-Received: by 2002:a17:90b:314e:b0:32e:c6b6:956b with SMTP id 98e67ed59e1d1-3342a2702ebmr15297792a91.4.1759118267758;
        Sun, 28 Sep 2025 20:57:47 -0700 (PDT)
Received: from [192.168.0.195] ([49.204.31.98])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c55be61bsm9939207a12.48.2025.09.28.20.57.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Sep 2025 20:57:47 -0700 (PDT)
Message-ID: <fc8b2845-5c1e-4f4f-962a-b1b0009114ba@oss.qualcomm.com>
Date: Mon, 29 Sep 2025 09:27:43 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 22/24] arm64: dts: qcom: glymur: Add display clock
 controller device
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-22-24b601bbecc0@oss.qualcomm.com>
 <CAJKOXPd97tJ_1cRZQmKE_1-B7AqgRr_CJ1cYMe=v4hBb9Z3eog@mail.gmail.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <CAJKOXPd97tJ_1cRZQmKE_1-B7AqgRr_CJ1cYMe=v4hBb9Z3eog@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 0qo9DbYdTX5AlII4Dl2kd0rF3BmrlTB7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAyNSBTYWx0ZWRfXzPIynvQsLHU0
 KMPyEqdj+6NbG/gv+HyPk6ZESM7h5NVEhDjTJzfVPQCHiQssOmQnQ7AA22c2JVupgVASpFg+lVT
 CW1YfwY6IdFyMaj4pGWt2cp9f9gDyGloP9H0EK3K8ekix7r/ytPVMD+l8VfW6UphZR8510Bsov5
 OqYporrZlzTXg3uUdTWZmfANPAzu1AZpvaPgYUekMZLAVwuzmrimlsPmUsgNmlBkmffTJ74kxT9
 9THjZLppFv7Yxd/vHHmIiFO2TM3x9AoN5CX4ZcUK4/qLmkcZZekXAQSqKPDug2JxbMVLlF+MS4v
 x/I9KCnBQSDDjW9SGYf1acDlh09BVQlWimiCbdYQcbvcdKmPL86Do/SMMFm4pS0qWhGVcvVhyky
 QRDIV3Vq9egA0kG/0CYi7Zy7TrqqXA==
X-Proofpoint-GUID: 0qo9DbYdTX5AlII4Dl2kd0rF3BmrlTB7
X-Authority-Analysis: v=2.4 cv=dP6rWeZb c=1 sm=1 tr=0 ts=68da03bd cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=YGGbjFxyX1jBzPa45jwK0A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=fESiJu-7EXqA1LiMi5MA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_01,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 malwarescore=0 bulkscore=0 impostorscore=0 phishscore=0 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270025



On 9/25/2025 1:48 PM, Krzysztof Kozlowski wrote:
> On Thu, 25 Sept 2025 at 15:34, Pankaj Patil
> <pankaj.patil@oss.qualcomm.com> wrote:
>>
>> From: Taniya Das <taniya.das@oss.qualcomm.com>
>>
>> Support the display clock controller for GLYMUR SoC.
> 
> One clock controller is not a separate commit.
> 
> Stop inflating patch count, you just makes it difficult for us to see
> complete picture.
> 

Sorry about that Krzysztof. As the display clock controller was enabled
later point of time probably it was kept as a separate patch and not
merged.

> Is this somehow for LWN stats? That's why one node per patch?
> 

That is definitely not the intention. As it was enabled later, it was
left as a separate patch.

-- 
Thanks,
Taniya Das


