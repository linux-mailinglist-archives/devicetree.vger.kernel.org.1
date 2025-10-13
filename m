Return-Path: <devicetree+bounces-226218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 356EFBD6103
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 22:21:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5C0A418A2D2E
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 20:22:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC1C12EA476;
	Mon, 13 Oct 2025 20:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VS+s4O94"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 873D7304BCB
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 20:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760386906; cv=none; b=D3Zn/mx2j/xpW7kZ5o9cgNB/uc+puy5Hf9n16EhoDD7fgyzNENQ4DgEVMZInI7NHjTeZMLfZp35iFqop7mcisbsvzwSNVm5Blly+Hb8p+k7rrCHdPnMId/5rUdwRd8fduhC0e4VjAIIujsVLHUiPp3XhDHLNuENcoe3Tt3d0IZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760386906; c=relaxed/simple;
	bh=OPlABqwzLaPodfRRLAnhDx6XJmnrg5s/0t49tmLODaA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A0e2vE1OoTiWEmlvmhgN508nysoYN7aNqNkhyUNgGPQcSYiKcGzjmKAIavHMYUyVPzawIcS/rD6R9zz5PF1RclsrdONv1GIJWDruYqM0hDycojb9Sbb3PT3jp1BZL6VTdqk1MZeAdTkT2GvoXDsLdZxEFatOY0SqF4XhKpf43ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VS+s4O94; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DHDD1M006284
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 20:21:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mJ4RcD6MPZiKYcvMSEcaW4l9YhL0RV3NoM0vOj+TUVE=; b=VS+s4O94kq/XbEsf
	pizSfxkl7OYxoZidEhgcwOIpSn6IMDdSA2DRlZkNTSYdl+l2qRd4wD2cHZsuWfbO
	bJYWHXExERqrXm7wXCMbCwA54zlWnS+BcGpz6MFw1WXMOVCX6hyGM4nsa9DxWT3u
	u3I97KSTRHDUaD9tlkRRx7TnEYeIc76JaNSODiGGuzRfcvVVdPEL7mT/7J3T89xr
	fDIarCSDaXNSZbZu3qL9x3+1UePFY/ThEjNMLkhtQSLAOdOQSwywI+78FXtX4AgA
	50lgEDipk3oGCw80uAUokyPlBxvg1c3cWYRdbkzm8E599XcmSfUXfcMqoJT56XuW
	tbXV3g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfa861au-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 20:21:41 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-88375756116so465215385a.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 13:21:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760386901; x=1760991701;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mJ4RcD6MPZiKYcvMSEcaW4l9YhL0RV3NoM0vOj+TUVE=;
        b=eTwQih/mIBq15drxk6NzFokPfgfCBRoDsU9AhAuMMGSwR2DMZ289LzQAaRdERvRJG5
         JQIE3wX91Y4HAbYPb4bgt/4HgTW+BcE5Wm2jBshUyfv29tTTynll495oHXqDtboT3f90
         0GHOKFjo+Tb5z4QRvAHI7HsX/TawNCe/oS07e+GOr2kT1I2JvVvyfSRnhYOqPmwL4JSf
         GKDvfcp98FqDh4FjgDW9QzRmYKAq4TU56mOUCDXgEuwpXVo3nmnCXmFqYqSOquqX+9ht
         1Ny8GY8Inah43pX9IsH4ulNEWFIPq1sEBWg8YES4S69aaltYShgAMbmqowqi5lgbSy0y
         /QJA==
X-Forwarded-Encrypted: i=1; AJvYcCUCK/aI0lya2iR6SMPrcGIOwNRlg2O0rumFnGXA3tHS5f9xVbZpkZ2nbY4hB6gnE9Cc+IBzMSkhfBXK@vger.kernel.org
X-Gm-Message-State: AOJu0YzzfYe8gWGeN+rGaGH68lVYJ29pa7j+VRNHPwWsU2O7Ssx0hykQ
	tvAAWv9o6+2YuIVbTzRu1Zh8BwNBuZkdIj0x1LT2+CRxZ8enc98UDGmz+p+meVLoMgMsvL/SyKg
	V8rhPL5vhiu9YtiM695S7vREF/K5Aiimm+W1eGqFJ1tpCdtNbb5EjWzbSxzi+WQWj
X-Gm-Gg: ASbGncseOpEIyEo2HJ+XO4pGKaOeXMhuEkiisbfra+nRtYG2hiktphy1dPUtLF5Oejn
	vQjESsRljdzuQSuFDUN+wd53IaM3kx3iaozErKTB3x9snR9GlC5dadVgzj8aYt+wA9Pne3XSEFb
	ybUwujZYRCnpyPcHkDvLAWjyNt3twI5wJD+/A27QOaUxmwwftRDD97MRoaxYiAAbXb+uVz7mOCG
	lOjhTJBNVK7N6EtdPeH0Mj0xGJaOQNtuLuHPdmLYLVeCUY4dV25bAJzFRxnUhlB2Vj+DRiTkT8u
	wetpGnKraqCjurJ8116I6pDOJ7ZJQv2dA4Dgl8Ha1s+NhUVILzfdLpWUgzbLJwEDHgy3bzrFdJC
	jSoCj7zhUeP/x3RrEowjHtsbSIfofBfFICwxV9Kd7hjVl9k8gthmHj5U5Adwm/tCWg7vuSSK3fM
	MxgXBEZ1siuvciuA==
X-Received: by 2002:a05:620a:199b:b0:80f:2813:59dc with SMTP id af79cd13be357-88351de7416mr3153448785a.3.1760386901046;
        Mon, 13 Oct 2025 13:21:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/z/7lOJkqWBEOhjCXS+YrAq8drXSpYYmNd19CD2+9J0KPLEiTcxk0vcY8yHb76CEcLaTfmg==
X-Received: by 2002:a05:620a:199b:b0:80f:2813:59dc with SMTP id af79cd13be357-88351de7416mr3153446885a.3.1760386900632;
        Mon, 13 Oct 2025 13:21:40 -0700 (PDT)
Received: from ?IPV6:2001:14bb:a3:45ca:256e:fa61:5020:8e5? (2001-14bb-a3-45ca-256e-fa61-5020-8e5.rev.dnainternet.fi. [2001:14bb:a3:45ca:256e:fa61:5020:8e5])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59092ed98d9sm3637387e87.24.2025.10.13.13.21.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 13:21:39 -0700 (PDT)
Message-ID: <c4e1cb13-1bb1-452b-8214-aaf52ae57a3f@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 23:21:38 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] usb: typec: cros_ec_ucsi: Load driver from OF and
 ACPI definitions
To: Jameson Thies <jthies@google.com>
Cc: akuchynski@chromium.org, abhishekpandit@chromium.org, krzk+dt@kernel.org,
        robh@kernel.org, bleung@chromium.org, heikki.krogerus@linux.intel.com,
        ukaszb@chromium.org, tzungbi@kernel.org, devicetree@vger.kernel.org,
        chrome-platform@lists.linux.dev, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251009010312.2203812-1-jthies@google.com>
 <20251009010312.2203812-3-jthies@google.com>
 <alnlmxbcv3ivhh7iolfqsurhknnm2o6i6waxq7kuhmzcbeljr5@a4wy3prshu3c>
 <CAMFSARdzoZrv4oXxVAYRcZJgxdLcrTMVAVGa=D8H=9c1vZ0zKQ@mail.gmail.com>
 <fciyxaedvyqeppldl26rsy7hogoi2zks6tq6m2yu5xerfjxo3g@u6vzsiicv5ke>
 <CAMFSARc7ySH4VhGbwd+CXXC9845NUkf-RE4gKeTW8D_9zNY--g@mail.gmail.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <CAMFSARc7ySH4VhGbwd+CXXC9845NUkf-RE4gKeTW8D_9zNY--g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: xkeiHxfQ9Ou4tBH7VwsyDy_m9Ca5-YIq
X-Proofpoint-ORIG-GUID: xkeiHxfQ9Ou4tBH7VwsyDy_m9Ca5-YIq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxNyBTYWx0ZWRfX1urvKNFfaRFR
 i6nECEnvnA9D4CXjcUMygLUFGrxUmZtvTahH439Y7cazvLTVH4a1kErCCXBV6mjwgoXM+sN+vix
 25o/iPoar244nLcgeyxn8HaDraiKyTC48IvoRWXpaohjYs9AmCTErVhV4lComshdq/KloIkC4gV
 tNgyEhvIX8bKBFMZcml7W7BfPtxiVUU46IX8gHMtnsR3zWXRVysvERt7w2lU+lUHtwnfvqkHCSJ
 muo4HFJLaxiOjFo67AjDBykIH/sAO8l9I4fYo60OHSTZs9WeKGE+IQ5QvQ+vSbRIIX+1DwRfcF7
 XqthnflnnrQfO5gtK4cEZM7/Aa/FZKvEDGmibudCQ9YBwMM/fggZZGT+OXyn6BhikkOtar5fMH7
 kf/vsU17g4NWo39+w+pECHXdl6Hzdw==
X-Authority-Analysis: v=2.4 cv=JLw2csKb c=1 sm=1 tr=0 ts=68ed5f55 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=oOrn3VzuZvLnv9Y8q_0A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110017

On 13/10/2025 22:49, Jameson Thies wrote:
>> IIRC, MFD devices support binding subdevices to the OF nodes. Do you
>> plan to use it? Could you possibly point out the example DTs?
> 
> I'm not planning to add this, we want to move away from using the
> cros_ec_dev mfd to load cros_ec_ucsi. On upcoming devices using
> cros_ec_ucsi will just be loaded based on ACPI/DT. Regarding example
> DTs, I'll point this out in the comment.


Ack, thanks for the explanation. It might be a good idea to add 
something similar to the commit message.


-- 
With best wishes
Dmitry

