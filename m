Return-Path: <devicetree+bounces-221118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A6AB9D4DA
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 05:20:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B483F3B1143
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 03:20:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49FF12E54A0;
	Thu, 25 Sep 2025 03:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b5WwqrKw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B094234BA52
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758770433; cv=none; b=cauvKATCRcsJK4clFO3dm8rNyS7PV5eGpfh/7jVcJSHXcAjgsrB2iAkxfGkcs3tv+E/+vvqnbZkC5Pe6D1zDyB4eAdXiRbY+a5m0vJLhAIuRY3aBtjNP74Sj4emGaUPgb89kdZjMRomG96O458gwA+3iR9xNAcvG/Cvz3fSKh6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758770433; c=relaxed/simple;
	bh=rGcUtE/86afTF9uqRK4gYoNc0PprQhYpeEQTVLWaXmo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KRFREf8sHm9flkZvnHHq4kv0twEkoAu4QPzs/fiU850MfeNj/sHVplNfNCqXu2ehAH9uZRpDg3ftYXuw5oeFv8tHkXDURv9TbFe1TxdKAAoBMx11fpXY7YsgHZSPxF0FV39srll6E3CtNBMs4xUAh/PS4HrUayBv4Lyl08TeiWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b5WwqrKw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ONbrxf023762
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:20:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EmQADFHGa0HAn8WcBDAyiR1f
	H9/wl2rOw2q1lBuUYq0=; b=b5WwqrKwwEkm/tu91fGKi/UMqUBq/ZSASE8bfVzN
	5SVtNJvRiSisHaWGP5gcKbnqLHtJz+AD7MJjlhk6Km5nyiffgvnY6f2fFXF1ipdN
	3V4flFMiKoI0DkUQZh4DDp5C2tUJt5xLVoSIZsRQ1/QhqQKY65MlsOwzdc+3pn+l
	0d2pFkJb4meqMi31QPxEBelWOrx+ak+J0IqexTmRBEx3O8dVql5u9TB4S63lAXAU
	HYkqKJc7Lv9mqX0/EBQjoBZmYBWZAPezIaJuH3oEOOlEhTK3evS3sLR534y4TXJh
	vwAhinnVz6UERNO2SPEkiX/X39+/uPrgevpz7n2mnZpPZg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp0dkpw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:20:30 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-85709cdfab5so119160085a.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 20:20:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758770430; x=1759375230;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EmQADFHGa0HAn8WcBDAyiR1fH9/wl2rOw2q1lBuUYq0=;
        b=XxjvQPwD6yvbHhwC6vUxIrsJMB4M/yShKYtS+RM4OsObGSMjgSxnYc/DngAK9pSTHA
         sprkzxwO6nLZYbIB+dsrnT1xVLObqkH24Z7gXW5XJ1DjX4fcnpRLlRoWxMN/X7Ccjv4K
         LkZbPY6KP6xuq2kRPR2iPh7TMa1dmefjUlPNgrbRbsPKYUbNmQU9XMcEukDgQ45mjGUD
         LDZxakUa++9jhe3fA8oQp6iN3t3gwVcic2TrvVNToyPI8jmpqz1gXaJ69QNgU061y3Hg
         Hh979E8iQ2Yp/N3ko35rs56TByWiTAODs2FnociQtglhdqozvKKNkJ4trhibnwG+xkGl
         59IA==
X-Forwarded-Encrypted: i=1; AJvYcCVFycaxycGrz8BFJGXNAUdu/1644x8J2yaO785uYglRIzdnncUYXJ4q2lh5w8bHpGN069DUg/rR8XuF@vger.kernel.org
X-Gm-Message-State: AOJu0YzogrgXdb/OnH0sdZbcewoHzgy0sWOOgj5+JWJyvscWd8+Bb/mj
	1F1sKyWc7iJDlAStHR1D7jo3Jx9yjGdqxh3Wrk1aWlh0bvpjOGC6vTnkHONT5F7Kdu/QDp3tSQS
	zlesQCX2cmIb+GcucZk1hDyaCLbFfOwF2I9WlLTiTA4YMAaDi7yMQkWwJWqN0ldRk
X-Gm-Gg: ASbGncsIWIfXPatpzVvxtWbZ+Db2lU03Ubb7ZxSYzp2FRSKk+NlvzdxMZui7bH2xK90
	gprBCLpOndd7/yY+C0tT7Sf05+r1v/YpgCs6JGyZJyZFW6DPjOqc59ozvs8VrM/eSmnhwSQ8wDm
	XpohGkmYz3NYQyyltzEWv7fjMoKaCvziDD3ucQh0+nqHTwMbGfBcVju1GLnqO+Vg5dXsPj1qetf
	KjLHNvrA75ELo+kt1OOZofteWvmYjPBUL03lRhayGz7Z7yCY6b5Kp0lcnDNPA+F+g56XHe25eI5
	QH953FaqZywtAvMZRuikCYjH2Ky7Ox/MB5KSAHPL/lu6MQvhUb7+JBpoaxQVhMzwiP+3jeUYsiT
	Cpb/6Tl5Sn99rotmSbH70EIB9LBKdgFOM+h6ghllbpmFUZAGMlrQp
X-Received: by 2002:a05:620a:6408:b0:85c:59c9:64a8 with SMTP id af79cd13be357-85c59e7e9d7mr68364085a.8.1758770429771;
        Wed, 24 Sep 2025 20:20:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF6OxqnFVf9UIRA9L/037Dq2kcexThTr982bHZ45gWkVyeorxCbqU6svPQ83JrUBf5V5w1yUw==
X-Received: by 2002:a05:620a:6408:b0:85c:59c9:64a8 with SMTP id af79cd13be357-85c59e7e9d7mr68361685a.8.1758770429303;
        Wed, 24 Sep 2025 20:20:29 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb77101c2sm2273641fa.40.2025.09.24.20.20.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 20:20:27 -0700 (PDT)
Date: Thu, 25 Sep 2025 06:20:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Subject: Re: [PATCH 06/20] arm64: dts: qcom: kaanapali: Add USB support for
 Kaanapali SoC
Message-ID: <sn5a3dqnd4xz3tgtw4vbmjr4pdow4qlo3jjryp5c2sx3wzke4j@fnbexj3kch6d>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-6-3fdbc4b9e1b1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924-knp-dts-v1-6-3fdbc4b9e1b1@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d4b4fe cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=daxzwQADErGqsGprXgYA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: yG3-0g5ebrqD-YSM9RqqN7-1WDed6AWf
X-Proofpoint-ORIG-GUID: yG3-0g5ebrqD-YSM9RqqN7-1WDed6AWf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfX+ZX2IWJbXZwg
 wckUzphSTnypZmRXd+1GaOUTSxIcpGidwnysK47RTYsK/kSG+HbMPVbPB5HPHG1pZzt7lMzJp1x
 c1GItpgozhUY18coQFGL9Qide+tex0vR89jbCPApEHYi79J5rpVKvm3/jFlOU/FuH0Mht1DwUZo
 tWBjYX35Typ3EQcPGEaVOp6xufiz88nyfU2imzBSYigmw1Iq4IDbBtECY36+MOBQBtQiIc6ND8t
 km+nZz+yRYTVaoDBqh6J/3W8tyygStZWyxlvcNTmYVSrYixaeOuqbtCEtnvumuUUKFKheXZjtFW
 4J0/A5xZHLP7KSo4XJY7HtXurZKecIaCVWfL+MHvUy7SUWMSkbfoLY+QkWrtTI1L/5ttsWMNV10
 NcL7KPCT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138

On Wed, Sep 24, 2025 at 05:17:23PM -0700, Jingyi Wang wrote:
> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> 
> Add the base USB devicetree definitions for Kaanapali platform. The overall
> chipset contains a single DWC3 USB3 controller (rev. 200a), SS QMP PHY
> (rev. v8) and M31 eUSB2 PHY.
> 
> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 155 ++++++++++++++++++++++++++++++++
>  1 file changed, 155 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
> index ae1721cfbffc..08ab267bf9a7 100644
> --- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
> +++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
> @@ -12,6 +12,7 @@
>  #include <dt-bindings/interconnect/qcom,kaanapali-rpmh.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/mailbox/qcom-ipcc.h>
> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>  #include <dt-bindings/power/qcom-rpmpd.h>
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> @@ -958,6 +959,160 @@ opp-202000000 {
>  			};
>  		};
>  
> +		usb_1_hsphy: phy@88e3000 {

No update for GCC clocks?

-- 
With best wishes
Dmitry

