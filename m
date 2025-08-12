Return-Path: <devicetree+bounces-203713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BB35CB2250D
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 12:55:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E78221AA6BD0
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 10:55:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92B2C2EBDFC;
	Tue, 12 Aug 2025 10:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FQxRcwv/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312482EBDE1
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 10:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754996122; cv=none; b=mF6f2LJUBKJHR2zELnRrPw7Hnm31QDTy2TXAhJofrlYpVNqqq64UnAjtBOZmQSqKaz1SwimpnVNHj4GlU9PXknaLrf5dArhkyuyH36Ee7az16RTCQpwb5UO1CrwUguqi6JVE5lwZ2kWMj2cj65WxOHPDermB2v55+0ch9XuiZ3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754996122; c=relaxed/simple;
	bh=Pj8Bgqn/mXPWbTZeeeQ/TfBZEKt2UzEfDdrBFxMjh2Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QP4CtT1C2K1pGdtg2utVYgVoLEh4kOsxjIz6qH+nT3Yz+7yCs79Xnsn/8lk7FNM4/54+ApOnXHzt7Bwfpr+U0gaaajwxIK/t2efSVXvUrGeaxbehIwYbS9MpcruFllO76qcpC2vKtA1CJMgCyHT6Yo23Up2hQbAytYl6xlFghEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FQxRcwv/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57C3mQl8006181
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 10:55:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0t0Mj4fJK1eduZrrGo955CBD
	djHdqYbc7uk+hDghtMI=; b=FQxRcwv/Jtq65zYoMJp1XXGg99XP5yZw44pjw5X4
	okbeZ3Wr3iwqmISso1e0lE0U6fkUucuxT4PQWUqchm2aZKu1BHsMppmg5ePGZJ/e
	3T/Xa+FSocO/y+idJUIKmHzkouxHiDEBL7H7s69grwHW9Sqj6kGd13A6E7jTXxms
	c9fXUr5iunJ+wgxQnfvmwtppHSMEvKfnV/lm9OLguD1foB6cEgJVZ2SJeOCJ5BFA
	5lwmW9IVkZoHEFHY9liXSqJONTJdZWGV0bCHfQCk1mIhUYkMtUS4JZjGwF6I5NVB
	fabFvDexyPnW1ZAJcqWplY2agMO31rmyvRTM7opr+gUdTA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fjxbay7c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 10:55:20 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-707648b885aso105034716d6.1
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 03:55:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754996119; x=1755600919;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0t0Mj4fJK1eduZrrGo955CBDdjHdqYbc7uk+hDghtMI=;
        b=MFHf+mHbINvHZCbEsQTIq0l591FRsXA4g07bcRiOivfQDAf6JETexPA548MPXxyg+c
         FalV8cQQm26ozNrIin8mlnWHHx97UvW6E/5v+kKID1zmKF9uPq7vj0qe/JNP5zhz7pbZ
         5/qEsJTVcYmoN6qOQlSfcb4nNdqjH1g3PeRBBUcSS8WvZf8CREZsDrvytmYM8io9A7bq
         c94nqvrgkNL9cpkRASNMAg73bpB/wH6AgBNhZVLtrMaEmFjaYTPelBRGM9UPBdl+UbnN
         HJwqTWg9RoHF+komkb1fzOyBhNsRwHtuPdLkcMCUL4q0ld70yOWelk/imf+QjEWxzI4T
         BThA==
X-Forwarded-Encrypted: i=1; AJvYcCU99qFty1J2iaBZgkkBf2XezMyXjRhW0V7WQGMf7jHAqGm5YPnAE1yEE1WvXgdYrGPI+S4BPayiqWCh@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9vEHetzEvS5iq46aGhEQ0k+ac6eATeBQ8Q8SPuSIfih/Q4Za2
	+9KAEnowUJynViqGGH+GXrxPeW8pBAnKuPsYtiOhOcJRukJljwju3REUAEfNHWCJftJCgTW0tgN
	n7z/xtmig3IwW6VNLzzTBWvCAjHS99W9b0/T4gmyFJkeEkkqH2NlDeevsFwMqly5u
X-Gm-Gg: ASbGnctC61K3E0/YZrhqy67TWHT997Uy91r9hE2yfqiZIsb8Uf9qcKRMoePHjaAC2m3
	8H0BD8B7KRLmfsdmmvXQ9NVleu4+4LkB/vyb6IhlwSORWwAViKh1SdKdGvfoSQitIzrmS/mnaHM
	wXMP+liA9RZbb7gEetaWDpg/pNnXJsklTXAgbZ7PZmV/Rbq6wK7mik75vd1YKMMJv0oEG8Cv1eh
	YEZQLTHQNmWGidVd85/wFovU1AonxGF5a8JKM1JgltPB0GK3eK6CVC91iTOb4dC4MRWg0evmPjN
	wbHZeG860OpNN83gxNNUxkYSFcecLKPHeyWyLmG9ZcNZCcS+/LpydsmcDFY/6ZjggXLME1lit2L
	0uegF84RCLdyGJ7v2+V7Z/3DG4lzdP9dqJn6qBdg04F8HJ9vFOpks
X-Received: by 2002:a05:6214:2aaf:b0:707:49ae:cd47 with SMTP id 6a1803df08f44-7099a332e69mr182468606d6.30.1754996118941;
        Tue, 12 Aug 2025 03:55:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGdkhFnmwSU74jKtHq9bp9+uokwPAB0k/r84R0m1BGkqTHSLqHpUTQQ7XgYD2WVUetchlW7gw==
X-Received: by 2002:a05:6214:2aaf:b0:707:49ae:cd47 with SMTP id 6a1803df08f44-7099a332e69mr182468246d6.30.1754996118482;
        Tue, 12 Aug 2025 03:55:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cce15c5casm1342803e87.112.2025.08.12.03.55.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 03:55:16 -0700 (PDT)
Date: Tue, 12 Aug 2025 13:55:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, mani@kernel.org,
        alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, agross@kernel.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2 2/4] arm64: dts: qcom: sm8650: Enable MCQ support for
 UFS controller
Message-ID: <27qmlr3lie54lyigl5v434yzvbes5twy6zgtkqb52ycfh23vsp@zdg57ifh7kog>
References: <20250811143139.16422-1-quic_rdwivedi@quicinc.com>
 <20250811143139.16422-3-quic_rdwivedi@quicinc.com>
 <67aedb2a-3ccc-4440-b2ff-b3dbedf5e25c@kernel.org>
 <9ff100b4-a3a5-4364-8172-1ccb5566e50c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9ff100b4-a3a5-4364-8172-1ccb5566e50c@quicinc.com>
X-Authority-Analysis: v=2.4 cv=G6EcE8k5 c=1 sm=1 tr=0 ts=689b1d98 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=VZigEyOcwVUUxk4fBhcA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA5NyBTYWx0ZWRfX8zmFcaL/SSlU
 M9rQKvVBDodQNqV2jnSEVm91g+3A6RogJCCj5S898dcq0WwcNHROJ+M3rn4xE7yOQPbIK9qRyXo
 FA1XpFqiNr7J65xOVKSyVa2ztpga+Hp2FlVaF60PzRsRSB/7K3Vam7/NoKOzH05fgNCOygxDIkb
 Y148HpUTMZR1pRzquZxPAHFsO8Gek2Go3bK4IFMnC1p04NdYEAubI+5bpVxXkjTVRmkTGYocs3/
 pvLSGpQjJWZf2FT7x/wsaZ1AiM2dBLSbebrv8kQtjHI3XOCuufrN4E2Mtc5A3mQS9nUKJwO4Tpe
 kas6ouppwHHxFCMlWuEiJml+aLxO//bZsEH8y+ZxdEGrGzusmbKtBKdwdDTka3vICfe9zwxZEf7
 5GvA5zv+
X-Proofpoint-ORIG-GUID: VIxO9o_teoIJP2PhPzR_zIBPvBRSN1DE
X-Proofpoint-GUID: VIxO9o_teoIJP2PhPzR_zIBPvBRSN1DE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_06,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110097

On Mon, Aug 11, 2025 at 10:24:29PM +0530, Ram Kumar Dwivedi wrote:
> 
> 
> On 11-Aug-25 8:13 PM, Krzysztof Kozlowski wrote:
> > On 11/08/2025 16:31, Ram Kumar Dwivedi wrote:
> >> Enable Multi-Circular Queue (MCQ) support for the UFS host controller
> >> on the Qualcomm SM8650 platform by updating the device tree node. This
> >> includes adding new register region for MCQ and specifying the MSI parent
> >> required for MCQ operation.
> >>
> >> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 7 ++++++-
> >>  1 file changed, 6 insertions(+), 1 deletion(-)
> > 
> > Way you organize your patchset is confusing. Why DTS is in the middle?
> > It suggests dependency and this would be strong objection from me.
> 
> Hi Krzysztof,
> 
> My current patch submission order is as follows:
> 
> 1.DT binding
> 2.Device tree
> 3.Driver changes
> 
> Please let me know if you'd prefer to rearrange the order and place the driver patch in the middle.

THe recommended way is opposite:

- DT bindings
- Driver changes
- DT changes

This lets maintainers to pick up their parts with less troubles.

> 
> 
> Regards,
> Ram
> > 
> > Please read carefully writing bindings, submitting patches in DT and SoC
> > maintainer profile.
> > 
> > Best regards,
> > Krzysztof
> 

-- 
With best wishes
Dmitry

