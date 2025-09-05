Return-Path: <devicetree+bounces-213223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 99006B44DC3
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 08:00:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 503375678B3
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 06:00:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D55D8283FCB;
	Fri,  5 Sep 2025 06:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pd31JRqV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D38827FD59
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 06:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757052015; cv=none; b=KyzNO9STHuO57YICzbCTFUEbyQaYqtpEg8N8CKYwr18ByRrPa9oDUXIQmZEXOVqnwkEPQCfdDsOEmU67LKYzcfPFHbXwkBkUgxIFJANAck1IVnceclZbHHBsRSfrzMbUGEEKGPc+DMtpf8+vC8FB+uowQedzKzZjtnJmaKkgsAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757052015; c=relaxed/simple;
	bh=AFb+9QCqjGbJ/1m/HKU4siOLrQoCZ646eOELHAiI0rI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZwAjCPNMx247/kXV7ECpMoNVbYH9wwzqc3EpPw+Z3yk1Do0b/sRnLhFzgnYDgsvPtl2/tans10XTjd7N/84iIBOMTbcz5WNjnApykegLzUTQmMA/cQLyRX9tu9AZ5cd0C77T6WxzVXKmscTLo5msPXNmRoy0FUSVoe+9bU/MiNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pd31JRqV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 584I0vx3031818
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 06:00:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K3wvqQmO4VlXSkPHtA+kQ1G3ijV/kY/N6LPpzZ6ALdc=; b=Pd31JRqVJVL455fW
	iIxfXyF8FHxyLPsYD50i5INO954E8+4E8CgDJvSkSUPXRi4n4BONKqIgl4QGd943
	03MyVmB4xG87yWf20teujpwDINGn/TATUWK+azJkm33sQQGnre5qjBG3S78wEZPG
	G0NwL7FqJPkAl9lLDLr95cvmAtu53e6W07/hFeXDwJM+LBwdxyEcT9HqH4FVxoxR
	KOH4tiV0MYfrtHtnGk5viR/duYta8IJN04n9kHVoFt7AkHkhjaEIWbB2iuUnP6Aj
	HJRIDVRVBMzGOFvX75adZRmrGIBiuKiHlzhWXypWO96+myK2HGUXBC3CeoKJdZPB
	roipUw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urw0a2u5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 06:00:12 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-244581953b8so21445475ad.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 23:00:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757052011; x=1757656811;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K3wvqQmO4VlXSkPHtA+kQ1G3ijV/kY/N6LPpzZ6ALdc=;
        b=MpP4ekfRv82SOargscCihxrKTAUoC0igRJarUgsth/qgMEbsO5eFsv79lYGIKrTS38
         Yl7meKmrQv9zwsIluUwHVh79h4v/J8sAuk/gVy+DSqWmvyYLim1/aUQFQeszRCL/k8ES
         wekaCAlxrfBJtH6wCfLI/Ttbvq3RI4NrUBgH8YdzhalQfmYxnhthO8ojTsEE5vHimoKI
         30QpDog4ptcTmNhjqAefPw4LNKppw7xtmEJTZdkOwlmE1K78yXycWkodwpz4tspYGmJR
         RN0mDvICI8CfTxca5rZh9FCf6zER2SMnc+6FYjLonEkRsd8GCHp5zYur+QlbTbMoVRZ2
         EreQ==
X-Forwarded-Encrypted: i=1; AJvYcCVv1cO6zc9dL4whuS/+aeXEtwgabWAOy9bGQNajPwYducIu4k7c3B3tXfg1p+UUDroNfMpVS+RJiBHL@vger.kernel.org
X-Gm-Message-State: AOJu0YzPNpRPR70e6qA5wKWb2IGeo5SJ0MjeUNLcwDKgap1tpwdc/6kM
	uv4kxJJoLD256ryW0hQ+Zu2BR/PL6cbD7ydNdhdreuQvK+YgCsomqMZcKCG8vmMhxl3ukQX+s6E
	py4DA9wfmBewh8mNonfDYPrzKyhbZF4UlqtVyN3iuGu0MMaDvsZEWdOUdKOjo0Wru
X-Gm-Gg: ASbGnct4zVfFhx31F+4Rdb3ejAPD04ZZ/yPoBQ9b889PG/kvCyOe3gLIiPcK+rgQmsC
	eMiVcOPPm/1m3+sPbf+V1rwUnmbY5qka/Au+nEE6SwNiRU8ne91FJakSXnMfImY6hUfwooPV+TB
	HI08yRlpQW/5qpEegtZnOrjvTEWFh2y/DqFPeImxFjmlf9SFo52ANxxF8KEAiRB85yQ/QodRRgQ
	aFp6Ed2KmkG5UZ0presRktV/kiUmNdf0j2ZVQlpw0YaB7pS8q/CFt3vwSXhYUTe5WRkKKALSJ6+
	JWk4phznbXZPp/SBujrhIxOajJiEnm8vccS4tDRUwkENRhNGiVhQGNYA6YWLyTY3pTIKBd5OWy0
	3he6OpG1GZTXLVzmhS7/vgHnpFf5ID5qN
X-Received: by 2002:a17:902:ce8e:b0:24a:d582:fbaa with SMTP id d9443c01a7336-24ad582ff65mr218517345ad.12.1757052011480;
        Thu, 04 Sep 2025 23:00:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/cHmFw51D0GHNL0K6FHmxYOYqdRzziDWguo5c6iA+8dTLIn0jYMYcaSVHHWMsKF7j5DIKqg==
X-Received: by 2002:a17:902:ce8e:b0:24a:d582:fbaa with SMTP id d9443c01a7336-24ad582ff65mr218516805ad.12.1757052010969;
        Thu, 04 Sep 2025 23:00:10 -0700 (PDT)
Received: from [10.133.33.61] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24cbe170977sm37426225ad.42.2025.09.04.23.00.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 23:00:10 -0700 (PDT)
Message-ID: <d8a885b5-3054-4dff-aa64-5ba194be4cc2@oss.qualcomm.com>
Date: Fri, 5 Sep 2025 14:00:03 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 2/3] arm64: dts: qcom: Add HAMOA-IOT-SOM platform
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250904-hamoa_initial-v9-0-d73213fa7542@oss.qualcomm.com>
 <20250904-hamoa_initial-v9-2-d73213fa7542@oss.qualcomm.com>
 <2o2ypmxo6wbohrb5edkj27ueqpgbqhsnqu4ofzfubtfwg7vyri@mdsu4ca63fr5>
 <wturd73lfutj4njzrmatzli356cfyehbtr45fjcttmbo2pieu5@he3fnsqzumfv>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <wturd73lfutj4njzrmatzli356cfyehbtr45fjcttmbo2pieu5@he3fnsqzumfv>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: Ir4iCyG69sEMDSOM_An9pXYi5obywOzn
X-Proofpoint-ORIG-GUID: Ir4iCyG69sEMDSOM_An9pXYi5obywOzn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNyBTYWx0ZWRfX7OMy/06ulZ1F
 0rUhP0gS7/gZz4u2BKCGvcytDbCcP0oBz9gRKhXwTCalaK9+fyxHHZAIUhBIdrAwjLRjr6pzWmi
 neE0IjfVDTZcTHjw9Tg1RsRkhAAWTD4yuAT/0tGJl2FLTWwK5FqY/wrj7AZXEb98A4qXQfZOaX+
 Mh4jrf24WQvJGavMJjrXplT38WiIeyMs1VX+EFva0ChdxbQDEF/++CVPYYc/kX8YiwJSsPvFq/W
 LwnrU5bD+FZFU76NQN9KLGVkE/3uWOxhHwLwFCwJKlyOuRxNZ5S0TOm5G3ZWN0epkPkzWdJ2NEI
 DrWQm40Dd61/aDtNnbKoFhw6hOnvvyLrE85V0TnLPk4ROTcZlN9aCYmqnLBqxsndrV5UdHuqz8X
 mYsgjMO7
X-Authority-Analysis: v=2.4 cv=NrDRc9dJ c=1 sm=1 tr=0 ts=68ba7c6c cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=5pxm4SLHXydbrukv4qEA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_01,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300027



On 2025-09-04 21:58, Dmitry Baryshkov wrote:
> On Thu, Sep 04, 2025 at 04:52:26PM +0300, Dmitry Baryshkov wrote:
>> On Thu, Sep 04, 2025 at 03:48:33PM +0800, Yijie Yang wrote:
>>> The HAMOA-IOT-SOM is a compact computing module that integrates a System
>>> on Chip (SoC) — specifically the x1e80100 — along with essential
>>> components optimized for IoT applications. It is designed to be mounted on
>>> carrier boards, enabling the development of complete embedded systems.
>>>
>>> This change enables the following components:
>>
>> Documentation/process/submitting-patches.rst, "[This patch] makes xyzzy
>> do frot".
>>
>>> - Regulators on the SOM
>>> - Reserved memory regions
>>> - PCIe6a and its PHY
>>> - PCIe4 and its PHY
>>> - USB0 through USB6 and their PHYs
>>> - ADSP, CDSP
>>> - WLAN, Bluetooth (M.2 interface)
>>
>> No, you don't. WiFi and BT are not present on the SoM.

Will update.

>>
>>>
>>> Written in collaboration with Yingying Tang (PCIe4 and WLAN)
>>> <quic_yintang@quicinc.com>.
>>
>> Co-developed-by, Signed-off-by.
> 
> After checking old thread, you can ignore this comment.
> 

-- 
Best Regards,
Yijie


