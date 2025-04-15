Return-Path: <devicetree+bounces-167243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CA182A89B03
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:50:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD5D31673F0
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:50:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 538C0296D14;
	Tue, 15 Apr 2025 10:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iNOyiD2h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0122957AD
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744714004; cv=none; b=nt/GFJYeQx3aJjeO7Bci379tkwpo7FEDV6WyKOL30gGWmx/U4mJs+xGgvdTMZu2aVtBPyIbPiml5dM3dDWSOafNE5mH/hOqlNfZ77znRlMzbgDidYPkdpHEuuBHTdiZEGpl/s5igqNRIcusFXA5lTziPmRmfFbhcCnNyTgdTt5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744714004; c=relaxed/simple;
	bh=PqtFIuf2PaqgdiInwLbpBw6+hS8F+gVD8HwKtn8pZqA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Tv4yscMbyPJMxZ1RylUEPdCiAU2oOaIXlu9BThNJESX0XF5x86Q+6/B3SOor/axrBLMJFFVoJs1n8AWEpgd2nzcfk6P7GIC1hdUK78KJsqXHhb2VC2NyxCnDeUhbh8dXjjFp3KImb/qM5vO2/3sSB9XTcP27wYrDgeVmDryXpKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iNOyiD2h; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tHS0013140
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:46:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=; b=iNOyiD2hcr2hg96M
	9ASFPpBDQw1ipz6v9Qr8PRWugoiyrQwaM/Iw0KISVqHDi50wO5FRkGIIEl9UrhI+
	FEathVDNtemddjQh/4ks73KvYMIZqrzTZoDroSuo29AC/vZK9dd0GMQ1kmgEWNe/
	LZoldtYNU7AYXGdZJnSAGOkQOlr2DN+Q1NTHtR8X3cocd7QFyWkNrwjp/Uj8gsjG
	qD+3CvES1g2eUYQ7j6/eNX+CjIyPdgcWC2icr8vMjQwBbheHc3Za8x6RiWHmGLt3
	ERXojj2KBLkInbU29qYssg+whx52WjXLxSSGfUXGkDAQzhkP/+XSWBu46sJp9wwH
	Es72zg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygd6fqk5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:46:42 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-476783cbdb8so13738141cf.1
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:46:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744714001; x=1745318801;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=;
        b=A83ZLGJh7d5t/nrAVslzAbSbVm+b78gxEXyQhWfuh0LFANL5EsJYolac+FdHOSmTiN
         2ONpaRVUvTQadWp1SVSQT5X82tr4/OVSzsLqcRxlUHtmFg58JJ6B3zLZf2hSU3wuA8w9
         GmABrTlL10cwTC31yuUU7cyJrO+4zscbI6m9l2/+YcVG47wAtkobR2iNcgCDmanS7A5L
         CCYQKXbCkd8m5l2EM6kzJggQy8RuNroSclBa9SfBI31WcreCrZKWcj70GN2shDb0JOBe
         n+1BuHS8QQclMtSaqa6qTT8jO3j/uSW5Kv1NxwsjOvz7p58/aYp/eDh9uOPDUeEGI+u5
         zLhw==
X-Forwarded-Encrypted: i=1; AJvYcCVKJxX3JS8xreCktn0U58VrJ3A+3TCuqjDafTOCBX9qe48aTI4D19LcHc9I1ROogn6KkUkzYbsV7/6X@vger.kernel.org
X-Gm-Message-State: AOJu0Yxxu0dxb76Jwj0gLS4wAaDekB7pPcWU2K0nDgXvZ92/nw/Wt9cQ
	PwIJDj3c2l3r5aKkorv/Vt9Kh2jZWcFmXPrtlPiTFkmxHX3vayuS8xzqza83VMfZxH9wP2FdPGX
	eeU96c4iCIvPCvJ2ktBFR8m3RbcsY5GDnURTw9LoNbO7sc8iZnEfGSzSbStjk
X-Gm-Gg: ASbGncv7E4UMe5sRyQPOUOLLljf85fmHDuJoj/f7r4Z8BiJwVX2WddK1XZQyD79fgpO
	b8tqqVmGNdx3lnIT/Z53nKfdf9HJ/7Veq8T8o15oF0pMtuAz8frGkyuquhbKmSLSmvCJj30X+r1
	RTwTfXb/1yKyFHCKI5E9VrJGaoW19dvehGbh3UNHdY4p8HwSib+OnJGuxQ7/+ehi0pclE5pD95p
	tpBwbqMX0FgyCdOi9sJ6kWg7eS17LNFxfEjjF8yIBDqqifmvqlQgT0d+jjFimXe7t/dlPUszC2A
	/lS98HrgaStjm/hjKE52+CC6DNI0eRiGZ2zk0DERnxjQQP7+zb6lGdbJ6jf0/E1/3ss=
X-Received: by 2002:a05:620a:f11:b0:7c0:bc63:7b73 with SMTP id af79cd13be357-7c7af1ce7femr829327085a.13.1744714000779;
        Tue, 15 Apr 2025 03:46:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFpAmwVNPIZNpwFLppeLrZ6G4WDCaUdR1j/80hoWD/jnnrt5XLNcypB+fTpoqwlb3p2ynN2AA==
X-Received: by 2002:a05:620a:f11:b0:7c0:bc63:7b73 with SMTP id af79cd13be357-7c7af1ce7femr829326085a.13.1744714000450;
        Tue, 15 Apr 2025 03:46:40 -0700 (PDT)
Received: from [192.168.65.246] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f36f505744sm6614359a12.57.2025.04.15.03.46.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 03:46:40 -0700 (PDT)
Message-ID: <99e9b4ec-b19b-4332-ba2f-6f932e4a646b@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 12:46:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 17/20] arm64: dts: qcom: sm8350: use correct size for VBIF
 regions
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
 <20250415-drm-msm-dts-fixes-v1-17-90cd91bdd138@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-17-90cd91bdd138@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: t56oOHtvWz8O_0XowScC6ABBdEk_liou
X-Proofpoint-GUID: t56oOHtvWz8O_0XowScC6ABBdEk_liou
X-Authority-Analysis: v=2.4 cv=ANaQCy7k c=1 sm=1 tr=0 ts=67fe3912 cx=c_pps a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=da4WsfccAxvekxWPt1gA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_05,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 mlxlogscore=607 suspectscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150076

On 4/15/25 12:26 PM, Dmitry Baryshkov wrote:
> Use allocated region size for VBIF regions as defined by the docs
> (0x3000) instead of just using the last register address.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

