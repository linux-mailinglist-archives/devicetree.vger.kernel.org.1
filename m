Return-Path: <devicetree+bounces-221348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 226DDB9ECB0
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:48:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 91450165A62
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:46:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80D9A2FE572;
	Thu, 25 Sep 2025 10:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f1OAnUTZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0CE22EB84F
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758797006; cv=none; b=J4hrfbWaBgjDIuVbn5o4WWA4vpYmThmswKkvh0hZ2WwqOsgi91RtQ1r3YwZahSo4Ks264UnRfdipXJ55qVv5QwUj1m4gzBlUyqb9b2g/F8//Bil3JNItpDeNNXuyoZSK1Wcj0+6h0Dyo6fArNTZigWg3Iofj1yZHZvJLBPFARUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758797006; c=relaxed/simple;
	bh=3cn448J5AE0qbdAmfGCuMMOHudJWRnefXkxO54l3c3Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kproH6KpCst5uSgeXC1oqM4opypU9KRVS+YvYykMTenIWh/88YfN9nt/AYUnHJ0zfx4jxciLjeBRZdtGg+Itk8kQtyi7QIVfLjQD7P/3g4z1welLF7qdwZ6BCAv1kN2VDtD2ik/LC0zWOdBQaULWe4iaylZEuyT4hnumlIW1pjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f1OAnUTZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PAINFw017420
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:43:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LyNgLzLMWc1Mnqx+dRpZQ1k73x+Ofm4U0A3bsduzpwc=; b=f1OAnUTZA5xmOQeD
	4I9UfW6m5EmZd1fnOykAdpPsmr/Vy/G8wk+ChzR6yz8Xknu4zpaawsnJL+e9GkX+
	7lK8ggPsRfflffJvU4OM5U+KIyJmtdFmYsM2/rqoCE6zRDblUKPQAZ7YqW79jeYu
	FR7psXdcy3PEtrPH58841naMaSLKVkYjj8GZjwy4lzHnjNV2BdkxTwcX+uChkswL
	4bjOWKMwgbqKlgJFPuNapscqf0yjPpUvW13o33uqPzpze40aCUQQzbWj6/CUZUo+
	/iACCAkZDg6azDvoLri0cMdhI0MOcPOAMxHo883uaFLkNtp87n3W/sUZY7R649NT
	sXmIGg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvk1414-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:43:24 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4d457c316f6so633971cf.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:43:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758797003; x=1759401803;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LyNgLzLMWc1Mnqx+dRpZQ1k73x+Ofm4U0A3bsduzpwc=;
        b=g66rdN6MBNJG+W5aoKOxn7OaLLpWYQ/m/7z0CUC4PxOUSxtAkIoNDno3PTGySRrbfG
         Crvq/OO+iduHgLluc83O1RgEisFvW2ZooA2KY9nGZ8nXASvCJKn2ZqvCXooZ18/iru36
         XsqlNtF/6oN6cfgQjhgCaDjqHH+tEc6mrK/8IKqLFyBIRTodM5j1SQKjf/FAbFVZxSwd
         CTYlTQh6Gpo4VrKMc/bPubfbHtmhPallF6sg8XQ4XWmfzZMmKRGs26mhurcPgHpXUgen
         oYh9XXx8Kh+UULctDfirXFcviH5i+liKCJo57UB9jNuKRmFSOnC8+rh+wZqdi+2HCiXK
         dQ4Q==
X-Forwarded-Encrypted: i=1; AJvYcCXaAwwH/GpR8OO+6RFDsr/f50JT46bOgyJA5ZIfFKsTORQGUUGc0MqmdBrJgz/Pkigd41PSe5OJ3aZw@vger.kernel.org
X-Gm-Message-State: AOJu0YwjT/ojBRZf5ZUlZXoYVLVuL8fGGEfPkXHlcS4Fdq5vCO/CI6A8
	rBBniiqWC4zJjEcHIkTF88XwnOO47Vm22EVHoe+W1t+1kiecN9GJaqCTMLPkykI12rFQk92YASb
	iytQ2UZLhHt7g+GtnB4hCIPw6His9ST9XS3UG++nXiQhzmwiKp22+EmmgBAnX3Drx
X-Gm-Gg: ASbGncuQ72gwDeF5EeG7YdCM0AnWGJ3NVjISnROOyw14lMGZSX6S7TnFxH9aLIRySH2
	SLx5fGVm2C1pUWQufra3jBMgGltJl3jc5Qkfu2b4BMEivCDum6HbMYzspZAnbgWUtodGlWI4dJA
	zeWppOoTpq9/ybk39JkR4L78wVRRNZ4+SN0ABd7ewno9f23+i1GWbL3/9A7Xq6r5D4xOz5lRBnt
	So9UxMKA0fyG7KVBZiU11AaJUOWDSnsyDA1eySE1SBgzR8RTnTVA3m392bZB3kzTPkKSBcx1KD2
	mxgS16KNY3JKJl8arcslsJ/2WNhb733zFlVfz0ACb/yRvsI2h1QIGX/maWTgAYykFAf+vVAdFr2
	CYLYZF2Yg4NhiSV1IN/7BGw==
X-Received: by 2002:ac8:5d08:0:b0:4d7:9039:2e87 with SMTP id d75a77b69052e-4da47c063ffmr26594321cf.1.1758797002879;
        Thu, 25 Sep 2025 03:43:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFRYUaRRp+tX2H+EUDkPQlbMlY0IAUeEcDN/SEG0LxWyKM6rOpzeC8AZaqcyLUwx8dK85q7Pw==
X-Received: by 2002:ac8:5d08:0:b0:4d7:9039:2e87 with SMTP id d75a77b69052e-4da47c063ffmr26594041cf.1.1758797002219;
        Thu, 25 Sep 2025 03:43:22 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a364ffa4sm1010479a12.17.2025.09.25.03.43.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 03:43:21 -0700 (PDT)
Message-ID: <bc866f21-9b41-43dc-b450-59a25d547b88@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:43:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>, krzk+dt@kernel.org,
        conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
 <20250925022850.4133013-8-wesley.cheng@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250925022850.4133013-8-wesley.cheng@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: HFKB4jvINOEPyxXq5v5Im5ogcNLVVWbX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfX64jmTzXVTbbJ
 LjbXyD0VBXa76cg5eBHluES2XrItcvipYYPsjZLQGi2f5/oJcIjwWAtU4Lv2EeS+NpcrbdOejp4
 YwsvVb4bO+Ex5qSsCL6OIRMVNarVMf59xtCYicqmvfnQaF/0rnFP9PXP2X2C/VlsrLAdkqd37Hh
 KBNhHIwgT67wWlu4gdww8c9QXkt68xCa1yHFOjvWT0rz/pjmmHiaNbbYcw0Ve/qLVJxlUh6QAY0
 YICbUQkEvUDBOLsqnQsBhblNApvOat3mjlOU57V8/e0dmHSdHZ5oe3pKdK50cxShEn7iCmrWXFG
 viL3ffQPbRfmV3ilOS2nQGHOevY891OEMgJT06GGAQCIir2wPSOtLmFI24hp0zs0A/2lI2aexLT
 odf3yKEf
X-Proofpoint-GUID: HFKB4jvINOEPyxXq5v5Im5ogcNLVVWbX
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d51ccc cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=O8mQQSza-jboQJHTzfMA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

On 9/25/25 4:28 AM, Wesley Cheng wrote:
> For SuperSpeed USB to work properly, there is a set of HW settings that
> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
> these settings follow the latest settings mentioned in the HW programming
> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
> new ways to define certain registers, such as the replacement of TXA/RXA
> and TXB/RXB register sets.  This was replaced with the LALB register set.

[...]

> +	/* override hardware control for reset of qmp phy */
> +	if (pcs_aon && cfg->regs[QPHY_AON_TOGGLE_ENABLE])
> +		qphy_clrbits(pcs_aon, cfg->regs[QPHY_AON_TOGGLE_ENABLE], 0x1);

Clearing this field is going to prevent the PHY from ever going offline

The HPG says this should only be necessary for keeping the phy active
during MX retention (and the listed usecases are USB4 wakeup clock
generation via a respective _USB4 register and/or USB3 autonomous mode
operation), both of which are currently unsupported.

Are you sure it's necessary / desired?

Konrad

