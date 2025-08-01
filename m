Return-Path: <devicetree+bounces-201363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4157EB18323
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 16:03:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EADDE7B8921
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 14:01:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D356726657B;
	Fri,  1 Aug 2025 14:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="egO7XlpD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8187020D4E1
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 14:03:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754056983; cv=none; b=C7oyk35xAwNej7LoPIMbFoFw+BQ06yMoax1zOqqR9e0v7Gvze9rqbop93lSakDO9ibsefy/RIqtZE7ZBtYqmEyh2Uz7wHabwi2UHT9VnNGtGjOslat7DhNJ4VDJDxZupPQrbkJNwPmVvhrv6JAUB7AU+y7oX/Rdrr0oLu+OubZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754056983; c=relaxed/simple;
	bh=nItOCXaMTZikrEd/SG/gPX9uFOdLbGk1tBhDXjWOOog=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MY1vbdS4dJaX5dN16PD60U4R7IZdE0JE6gTflt2i8IKtNZD3qU5bI++g7hL8WmoeFOmFUx78kDolfSgROwLizYEKeEVZG7WqemvCOEGFcTAlBuAeKCip9b/cKqAsy91sy9rHBujfY19UXhrQBm2lIRgGH77CxvSd5X0RamNwrfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=egO7XlpD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 571CrTNT009982
	for <devicetree@vger.kernel.org>; Fri, 1 Aug 2025 14:03:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ygnu3vKtE4DVMIUyobWs5dsEn3embXwZTU9fPdwC1w4=; b=egO7XlpDG/iZg2Pd
	ouw+Sd0Y5zRBUvnt27rkvfU8XyM6lTFdcypePMt7sLtPBPz7lY4q5vGZ0653Nrl9
	zFDCV0w09TNVGYGMtNND3D7/hKCpL4WgkBwe06VaKPVobsZSMHa0wjbbRAMsv7f1
	Zy3rrkQznQtBaMbWxLlP1LIT4ajP7F801kftJg8+cqVZrzkTypJk9lE39XXmHlig
	9QQ5KDul+1Y11dL/MyPwDYCf0R3I8aGRZbSxwC5a6o7MwKvwZx+oxQNoMZmEaTSR
	5Tcdh0bRpLfbIqfONpPah0N8+wj8kS1wjCSc9HI0iWQClnaQ5V1agVVJyAndZ7TL
	g+nFEg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 488q7xskbs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 14:03:00 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e688a568a2so39673285a.2
        for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 07:03:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754056979; x=1754661779;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ygnu3vKtE4DVMIUyobWs5dsEn3embXwZTU9fPdwC1w4=;
        b=EWmslc5i1IRe060Ym/jfE5zcw8UZ9eZdmDf2uCkzBhvb2PB85Kex5UjKCiQpyWTssj
         uz3NF/LbJLUtW3bOxQDJy27B79R5ByNFjHWjwsmJwG4g2eqkWhxFZ5Ex32lIieGUMY6I
         5I9PJqi7yK0ryjSs5uoHa9j5ug9M95IwQGdJcdffFWufOqBePK1f6FPzuutT3rO3TqfJ
         AgStX8/tvkCOtU76sbBixiWnmHYlP8zXv6g/0Qseo/Hou2ixBAcggiJ97PqVBN9EHazl
         vDkfYtioCYqF+YwpgTwriA6SrP2w4KITiqVQvoorh7e68GJEt4INqqDLzl3LXhlV1TVp
         DtEw==
X-Forwarded-Encrypted: i=1; AJvYcCXCrjLoNK9nzR25jsNtZbr59Hty1nMf2OE8uGjHK/FiOItOu1wgf9GcUUwNm4r8aDjpsCMTOaK1W1C0@vger.kernel.org
X-Gm-Message-State: AOJu0YyHK5CnBp+Ohm08KESYkg8xDnwX5Xqh6sSD5F4a015sXEZgUi+X
	85G2MCEnadxfe2hTSTYbdHlmXZaeGO6+un1xG5cmybP40C+Wlje0mVWhdmFu3viiW1Bo54aSGcE
	SGbD0fJOnTDfEUqMAys52pQ4gcorLFJfuT5KZ+NyVm4hyWNWo8uvt21kMAaFeMUJa
X-Gm-Gg: ASbGncvzuNq0tuHs2eca7pmHmbYSnCzqGxmhl/KOse6S/UcIx8JlkxzOpwGI02ewOOj
	tePxpYXT5+7L1lDmsYPh88H9PSkptkk0UyvprSie+uq4GoBE8WT6V9bA2OryeEce4aEE43wc2BI
	B+f+A3vJReI7jjZ1PzkgEXRR8jj2Ob5BQklB15jOfeKLf76O/ukp7gVvI6fwD1LPK6Nz7GAUgeb
	yXGVFRTQzUC9uv4YgGYvr9kDCtaFRInVkDLbC+BeJPYkThXlK4mHSK6ydM9ju50Thmwwqpnye53
	7t8ERo3fQ7ZW/WA0Ojc6EemFzEZofsdvTlSw+zkHEdPsLjhJM5PzMtCHzTUS2sqlSpakttVDQUf
	OYmoHdw8bfHtU+UBvoA==
X-Received: by 2002:a05:622a:450:b0:4a7:4eed:2582 with SMTP id d75a77b69052e-4aedb9d4b86mr86440741cf.4.1754056979041;
        Fri, 01 Aug 2025 07:02:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFcPlC48/d5ChZvKarK4CBxmt6g2Onl0ZKqiWKPbE3pGDFKjvLO3RnhPcMsdo5wR85JCYopFQ==
X-Received: by 2002:a05:622a:450:b0:4a7:4eed:2582 with SMTP id d75a77b69052e-4aedb9d4b86mr86440301cf.4.1754056978309;
        Fri, 01 Aug 2025 07:02:58 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a2436b2sm283269666b.142.2025.08.01.07.02.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Aug 2025 07:02:57 -0700 (PDT)
Message-ID: <5696951a-d4cd-4b98-8190-a1126dca4317@oss.qualcomm.com>
Date: Fri, 1 Aug 2025 16:02:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sc7280: Add q6usbdai node
To: Luca Weiss <luca.weiss@fairphone.com>, cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250801-fp5-usb-audio-offload-v1-0-240fc213d3d3@fairphone.com>
 <20250801-fp5-usb-audio-offload-v1-1-240fc213d3d3@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250801-fp5-usb-audio-offload-v1-1-240fc213d3d3@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=EqPSrTcA c=1 sm=1 tr=0 ts=688cc914 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=s1otzWxbid28AevFAO0A:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: xaamc-CUCs_BkPvrA1FMiI0CccjiCYzT
X-Proofpoint-GUID: xaamc-CUCs_BkPvrA1FMiI0CccjiCYzT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAxMDEwNSBTYWx0ZWRfXxwuBV0rl3XtA
 Dxx5nfYGLnU1gzp18tOYubSXvM2nmJgF7Rt7P9xVPBebrO4NFuZzYEuJp4oaQzcb0buIY+VXee6
 LVZJ94CtJmhHuXXwxpw/5cOppTQRYCop/qrX5XyJOi9oKFiSJH+dy2sb8zQASzlc8hXE42cqWIo
 EJ1Z2cAEYOYM7mm/sx5Xyg5wfcKaN8BoXytrvcsLN1o9X5L0SuH2dxC6k+yTcMhX8l9XrvppXXU
 +KT1/1/hT4JmDuVbWnt2kFf0gZnjmjMq1UxgTbItxlZ8RYkUo/dnSyeVHQUXYVnZZRXwDW0b1G1
 46iBrU81QZWWbqFC9liKmRS5QNE7jcmjxmgsv/KS2KUMICh0i7PCD/QnQmPXnLn345+4axNueyK
 vO2xlNJsaLy+Uf2tMcOESEUv3BF3HZkulBYRqp2072mvwhxXhFSVU5i8ETLdGCNHGTKYHw4Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-01_04,2025-08-01_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 adultscore=0 mlxlogscore=999
 impostorscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 malwarescore=0
 phishscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508010105

On 8/1/25 3:51 PM, Luca Weiss wrote:
> Add a node for q6usb which handles USB audio offloading, allowing to
> play audio via a USB-C headset with lower power consumption and enabling
> some other features.
> 
> We also need to set num-hc-interrupters for the dwc3 for the q6usb to be
> able to use its sideband interrupter.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

