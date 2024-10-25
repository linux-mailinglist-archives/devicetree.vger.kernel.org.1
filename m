Return-Path: <devicetree+bounces-115828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2269B0C56
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 19:58:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BFD271C2031E
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:58:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B128818787C;
	Fri, 25 Oct 2024 17:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZCHdOlWM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6282320B
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:58:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729879092; cv=none; b=Y2wxNN3iquvRpqnZV2icds6kTDAr6vp2CH7so+p5m4yLzW6BQcD7dreCZScZT+vd4rdsvIJfh8A1koLqj2o3LSv3MOmyKspmo822CathRonNNr3M4Ih7x/C4C6d727wco2Iyx58JMdg1F3YPWK1SnQliC1W8ftrn5NzfYfx25HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729879092; c=relaxed/simple;
	bh=Agz1VzJVgpPPNzhN4CkSyq+T5K+iUVs9diAM7Ab/3KE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i/uijbymYe5aHwhc2x05bkgmfsz/AJsNQNp5ERw2DW2X27/QdXYs31HYsG3sK/UHzN4QuQsLLGhMlTutvUC0qYvTFJGk5kApQWSu6K8rUX2ClOEA5OEpuZ/Vp2lf4Dk0AA8oxp0gTwzs6Jb81YoFsVg8Xg8MRe/GIN6xOdIXZIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZCHdOlWM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49PCJhmO026346
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:58:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6QoJYtsjPIdIh56Jm0jw+lHjoqOWkljubDr+kq+lOMo=; b=ZCHdOlWMJnh/wf7j
	npPmZ92LkVaIFToC3zmwcz/4CzgOUSq9lrH9uXHtu3kpXGASR9i68cMJ7pAR5/5E
	dGSwthaldOcN7fxpQwlkt3Ft6ifjplBQAXLDb6lglt5oTu4PxA9FFjUxmdC10ODd
	j+kXALEWD6j8HSyHY7uv4qELS2ZNDih2I+IXMi5MmKGWNYzG93rxLIn3zxyVi+ED
	17To1o2KpShpFSO/QjxM7OSgU7VT1ybR7YxgWYhtDupT+U0GS4sKbrWdTX4wikhj
	OqpvLMS56iUV6rPBRRtRA6nI/iixuGYFuHr700n/Qty1nVKmOk7hd6IbpSPe5uay
	1YalaQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42em3wt26c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:58:09 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6cbf2a4afcfso3798946d6.2
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 10:58:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729879089; x=1730483889;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6QoJYtsjPIdIh56Jm0jw+lHjoqOWkljubDr+kq+lOMo=;
        b=KmWqcilsAlb19NqbrWsiyeM2TFxR7EUxxV6cB3O+U/d4MLxkEIYzo8UTaA6Qtnwxau
         7npYydPNwtta3zzQygohGYYQG/epj/jrFnasHH4vWIEYv9GJ3tXRMotYGKG29YVKDuzc
         IUzGaRavNbefuku4jOCprfo8rt7Gd5ZfHqkDQH5lMKbnDzI6nx13eEvbhEN2cCm5ImSk
         wlgfvdZIAwoNt8xOiVGvZhLBkJsxDR+014KS613DC1xwcroq7dED2TuLpgfxf3xBBVnC
         pAUEdXVbh9k0dfxOnF1wu2huiziONmmc5WYiHfzF1hjmM+rptJeTaSUrBEmQySUpTENG
         ++vQ==
X-Forwarded-Encrypted: i=1; AJvYcCXk8pYC49NMnxlM7PoP13MktE/dyDIOK6MuESzLENmTmRO63rIKuVmrkqNFEbCYCQWe8bJLedd2gUcd@vger.kernel.org
X-Gm-Message-State: AOJu0YxWMbbUwAbPac47fZu6GmYT53MJt5613lKTE5RZtHHGzYdcFWZ6
	EEtYG7nTpClm1HUgUsr2e+53wBCDlk58BpRvEEYvV2jiF6eQtVdnv/NoW6AcvkFnirefv/XpgBx
	4EX3bJoUwjq/W8grt8yBmkC9XzOZJ0laxVhSsxHy3OiWYTsJM+5D4t5E1o/dp
X-Received: by 2002:a05:6214:40d:b0:6cb:e7e8:9e87 with SMTP id 6a1803df08f44-6d18584a4acmr1998226d6.9.1729879089151;
        Fri, 25 Oct 2024 10:58:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFIBRXufLkU11mibSbb3ra71qhKndGjY/L9VB+G3JoPyRZzv/Mt/8OxofMTXr4KGCzJXdX6qQ==
X-Received: by 2002:a05:6214:40d:b0:6cb:e7e8:9e87 with SMTP id 6a1803df08f44-6d18584a4acmr1998066d6.9.1729879088846;
        Fri, 25 Oct 2024 10:58:08 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1f0298cfsm93839466b.74.2024.10.25.10.58.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 10:58:08 -0700 (PDT)
Message-ID: <2ac70090-43d4-480e-85e4-9393a4c9d6cb@oss.qualcomm.com>
Date: Fri, 25 Oct 2024 19:58:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] arm64: dts: qcom: qrb5165-rb5-vision-mezzanine:
 Convert mezzanine riser to dtbo
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Depeng Shao <quic_depengs@quicinc.com>,
        Vikram Sharma <quic_vikramsa@quicinc.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241025-b4-linux-next-24-10-25-camss-dts-fixups-v1-0-cdff2f1a5792@linaro.org>
 <20241025-b4-linux-next-24-10-25-camss-dts-fixups-v1-1-cdff2f1a5792@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241025-b4-linux-next-24-10-25-camss-dts-fixups-v1-1-cdff2f1a5792@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: wGZ_BwnJ-wcuC73Iovx_Z9ykM33QWwsn
X-Proofpoint-ORIG-GUID: wGZ_BwnJ-wcuC73Iovx_Z9ykM33QWwsn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 phishscore=0
 mlxlogscore=842 lowpriorityscore=0 malwarescore=0 suspectscore=0
 spamscore=0 mlxscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410250137

On 25.10.2024 5:43 PM, Bryan O'Donoghue wrote:
> Convert the navigation / camera mezzanine from its own dts to a dtso. A
> small amount of additional includes / address / cell size change needs to
> be applied to convert.
> 
> Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> # rb5
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

