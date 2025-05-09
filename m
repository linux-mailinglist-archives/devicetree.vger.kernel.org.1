Return-Path: <devicetree+bounces-175758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B021DAB1B82
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 19:23:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 23C73521CEC
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 17:23:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C655E239E8D;
	Fri,  9 May 2025 17:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z1rOUacq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418E3239E82
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 17:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746811405; cv=none; b=cfE7hlIQSW4SrrQnW9skGKKsLoAk48Wk4gnodr12Bl9pq537thw6Wtqzt8TpcUngMpkwerushySEXZ1dAzMY8sWQ4U7xwrnr3BNPnKOC3NdZ7Q9bcAd8jRv6lTbNX87CfdNuoF6R/HmnqXYfchxHz3hOKiZkXjv8bnretVvicvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746811405; c=relaxed/simple;
	bh=p7CnOI+eB6urGUFpnCOyOafwARFO+PzXylkm/qR4YuM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=laejPk0Y7Q5JfvIrhhC+iyqcQocQbJacpEQ4jouOw+RXBGXyvM00bPFlaoxzJ4QcLzMeHT3rkmlmrg7/qTxvU9/b6/kMSePeGuTLIdnQIuQv5pQ9ydmfh5WvKzTn5wCJ+wB5729/EizjPcs6qro7ikpy8VgO+fIr7hmhRgw4Xww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z1rOUacq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5498Oout021197
	for <devicetree@vger.kernel.org>; Fri, 9 May 2025 17:23:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xmh3GZgplEnn2RGKAzJAQOcuqEH4ffRTlVelkfCzQwc=; b=Z1rOUacqE3LfbypC
	jkp3OdHQZ1tA+qYFbrX6/L9ydisjdV/ySkHrWA9ARdnC07SCs6R3GdQfI6J6g9w1
	oYE2wBr2vD/HjIURRmcbX+UoIxs9s6dSl/INw/gdbw96GomUkTdZCLdanP/rchRh
	ohkf4z+DssYhuYc+LTVfiZ1vaUaTIaw8rG1+ap/NwMFcuTCJecnrd0OyA8UnqhEH
	6LH1Hn/UIqeUSeJoT5+6O89h/tnp+XDK18onP0pyREQ8UdjXZyNa33WxUEYVDTSb
	4AKAcrCIvOv0dKg64oKTHdcQA3W1bdDaduT0ocVLKRfWFj4J+86Zvsqb6DrlQw8W
	fkLBxw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gsdj4tut-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 May 2025 17:23:23 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-477608e8e4aso1335481cf.1
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 10:23:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746811402; x=1747416202;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xmh3GZgplEnn2RGKAzJAQOcuqEH4ffRTlVelkfCzQwc=;
        b=NgnLWDsWWb+nUjc7LmtJJZYj4PLiUqTh6D9swJsJtQepquFPIowTX5ABHgd6PW+EXJ
         Q8M1gtxuuRp5cNjVPmxFPrJ6y5MPe0nDFe6LAsbV91gxVgw7rMbE7mpGwda8mh0AK/hc
         HTcszd3l3NMvGHl2yGy9iajWxIEjso7iRETIkoWDdk3a3R+GjCsduiBvQZc9TGImTXix
         m3K0bMUnOWfJ4KzsJeAST5MFtRGZIe0/wjwSSzaruJeKV/liC5iT9TsUee/AfKOWqrl+
         TU/ZWGZZlXBdjHiM0gM5Pjgy27KDBRcdbyJLDYh3iT5NnVmpaF5g6qK/RVIlhPhwbDxB
         GK8Q==
X-Forwarded-Encrypted: i=1; AJvYcCU2APMxYOcVGiu9AwTPDYua8RxruOskIr09/3O0rQ4AkZrbSIYMwXU60uUHxMT8y2Gapawslkn+4NIw@vger.kernel.org
X-Gm-Message-State: AOJu0YzMms7+2S+Xwgn8gKDhIg8qLTMdtJigdbRPk/e0pGpvuUjnG/fc
	oqvUNkh1H53FCiWnukZ+cK6di9tPxIi/5ylwyyASCkflv9Ba8kqxqxLuGVz94woyaDYD7wYv/PR
	WjGHlohcBZpwM13wjQLriiq2wKWeANebk+rvQ9XNZoWig765kwBFfB/qFkHOQ
X-Gm-Gg: ASbGnctfYBoU/fkaX1GQtwj0gXmnxU7c6Rm4QYmh3QWQYv/hQFWzHL8LK2FYvNflzeN
	pyqxg1NY5Yp6ckdfNa9Mk8FC0D8noazxhT1IyUShj7haGRqYjRS+5HtDPrgJXRwquVUt5CLY/aV
	BAwi+fUL9zu7Oy1Z3rXkezAjVyJPQPQj2fNtKUGheW43tQ6oDDWqKA0m1wH4z5CKraoR5up4eMV
	Ca3jvN0OglEbs2fQfo+u7nphQpvUmjJY+8W1Sur87G7qh7FaMNmznP52gIbN3PLDf8h2p7+xxpO
	45gz6waqX+JNVsTn8CeU6DM5PFbnrXr6/eszhU9MZ/bpYCbrv0AiG62ucZ93AC+3kJY=
X-Received: by 2002:ac8:5f49:0:b0:472:17b5:dc3b with SMTP id d75a77b69052e-494527db5a7mr23857791cf.15.1746811402075;
        Fri, 09 May 2025 10:23:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG5QRIK4iJ4tOkf2Lkv/WKPhvF8dNzthNmK3CXlwA30g+Lj2Iml+YpRYF3Uf6pB2/U4x4Hxfg==
X-Received: by 2002:ac8:5f49:0:b0:472:17b5:dc3b with SMTP id d75a77b69052e-494527db5a7mr23857521cf.15.1746811401604;
        Fri, 09 May 2025 10:23:21 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad219746cf4sm179304566b.102.2025.05.09.10.23.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 May 2025 10:23:21 -0700 (PDT)
Message-ID: <3d871abe-1185-4d30-a99d-ad59706002c7@oss.qualcomm.com>
Date: Fri, 9 May 2025 19:23:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: sm8650: add iris DT node
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250509-topic-sm8x50-upstream-iris-8650-dt-v3-1-f6842e0a8208@linaro.org>
 <7347ced4-980b-4630-9b5b-4810df249b89@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <7347ced4-980b-4630-9b5b-4810df249b89@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=PMAP+eqC c=1 sm=1 tr=0 ts=681e3a0b cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=qJQYiIqyEECs_jX5HgUA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA5MDE3MyBTYWx0ZWRfX9X+3PjNmgk7G
 j85QFvWBAUaZ0oE4RUixgWowAEPJUD0n0v5mJc2SnpU8ZZV52LFYVDSVrC0XMBEWGGYf9q20YTr
 dud7KH2GuhkuYLY1ApAaX4Fl2C7xeF44byh4hoxTrGZbelhWcxo6Tz6mXjYMJ6ys2W8uu1v+lHF
 /c/6a77epuzE+vefL/1oDMbURY1XIr/9Nmgi8ddh2PliLorVVgVAGbZ05KhbnSatOLV/BLvq2wb
 i0ncebC9vjNmD6mO4t7PumGClLx49/2Te1xgchzwzlp2CeLmBoPJf9ph5t3hegkPR0+6Hhi+gKR
 UD8Fj3H9oJQVAs3Ovr4jnYsv1TwB+zFhkbkZrT5cvmVcUM+vsBzp/Jh/08tTXD5AovdzPxWAlVq
 994fns0xxQSUNmCHs8ZtnU4y9XozRe9i7cWyF3Jk6ybFHdVErvh7s7e8S6CBKdIaDZkP7R+v
X-Proofpoint-GUID: b5ZawxxfRZ8cQE1nAhnTplpxwc1xf-JX
X-Proofpoint-ORIG-GUID: b5ZawxxfRZ8cQE1nAhnTplpxwc1xf-JX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-09_06,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 mlxscore=0 suspectscore=0 spamscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 lowpriorityscore=0
 mlxlogscore=999 adultscore=0 malwarescore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505090173

On 5/9/25 5:58 PM, Konrad Dybcio wrote:
> On 5/9/25 5:28 PM, Neil Armstrong wrote:
>> Add DT entries for the sm8650 iris decoder.
>>
>> Since the firmware is required to be signed, only enable
>> on Qualcomm development boards where the firmware is
>> available.
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

I don't like the new comment above status given it says what we've
been doing for a long time everywhere, but i won't ask you to resend
just for that

Konrad

