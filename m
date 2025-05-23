Return-Path: <devicetree+bounces-180075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C16E2AC28D2
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 19:36:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 705524E7C8F
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 17:36:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 542C0298990;
	Fri, 23 May 2025 17:34:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UauyAqBM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA5142980C7
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748021688; cv=none; b=H5ul+XXHqNZv16ccEkiUFAzoAJ3uBNTdy4ZfqvLBUrQrqHwtWx9O9bPEe27vNx2Qei7gas3U1IDIedALNuDCrOSeAuhH+M4sN5e/tIhXUK43JFnSvIZ+MB7p2DR891Q1/wF5Lr7vFZ3hu11J7C8H1Ltdejcf6ngI6MxGXFqgJaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748021688; c=relaxed/simple;
	bh=CfPwsGCjMpa9GTGXDQafqAYVJKVnEyWXaBt0Gr4pDVw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RWyatzhkhiKQ/J/zSgUpNsW+szjiLxzbaMquPgBReK5Ln1fJKlsyegz1rVcT11jfUQivIsoQpSm24T2b4AGvOzrWQXzKIB+GaYvaluCVNlC+IWCDLEaaeOe/AxBMgmjDguc894gJyDfMX98A98IbO9yXqBbZJOtu6Xo405P+QcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UauyAqBM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54NHOErV029481
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:34:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Rp/eYPMfAXp8V9bn9zs7+o5p
	cqJmNq1x3hm6P0+2YIE=; b=UauyAqBMD3QH6DX4JjgJNbfdtiSot9sN+3cJXY3e
	c7QefBl8kx+eg2NgyFVyDLmpvq/wDEXVbyIGmajBGeQYHJ42r3rELp5Vf/qjNm/7
	86reZWjFiCHpOuYurM2/KXoLhs3krQiB3b/44UKzi0bcnVdJWcfcu5SXh2W2ZzS8
	FRQXVEB3GebVAvup1CmkGb0nwEKzvJ0f+IoWz7T/eGFcjGwfATUZhU4dfy3Cyvqn
	8JLagkoVvD9GzTX80EUcury3hHnFMqSqnS+SbuUAUuhz0LrJvLAwJ1q8lz0JZkAx
	HkXsvVTkvi7WoWkF4wcPOmsQfV9/2JhgHth4j+W+cycPIQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf4av31-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:34:46 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f8c8a36dddso1679406d6.1
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 10:34:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748021685; x=1748626485;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rp/eYPMfAXp8V9bn9zs7+o5pcqJmNq1x3hm6P0+2YIE=;
        b=KqfsuqtrzvDCqz25C4RVS7uGkinHkd1nSR65hPgzFYtP2p6ObpMz157cKWrXKqSkwv
         G5TkttTzRtabspiKDDNmzF/tJAdXlvdBmjDm6RKduLf6O7CEMujQqqBD9aVEi1mo2Vym
         GoFU9pJN1yf7IB/AMATztpXYzpQSK+F9r+Nu+T6f0ENj82pfmpkzGeP/CMsN2PeF8Bic
         nhnr3rj1YggFcYmcp4kCxaMvRJ/8ZxYun7W4ywIQrenE7E3AshXlfToPaMcbTT9QW0Yn
         iG/Pc+3SF63+FP9nBKFUU4KqwrfAZd7zpR419mjsX8eROzS2m6xnXYzyYxM4TU2vOP/T
         ihmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVkKiE/ex+4Oz3od+buTXVBvG2Mce5xvz0aVNPlH8aQ7B+dQzdJA9tn7wnsDr1Qx1Xz2R4rfDVCVRTT@vger.kernel.org
X-Gm-Message-State: AOJu0YznPVaiwr+AdRASgQ1D+UI/1Heafnm56KOziezythpUmht70gIA
	bMB4IKVeE34QhG73WH+hELrNdTxCNXKwGM3iN2KOocxBjixwUtq6vE8EAWONbJpuxWpF5jSQfKt
	RYMfG9u1HJO8d4fQKeihPvKtx8SAaKojbUffhn+8H/jQcdJd9pUDjfYNy/57yS++z
X-Gm-Gg: ASbGncu/jq1OqlFs5m2hXinqFnmuL5ftAvBBqPfLepvS4tQXxxkXfP4PTQ7hIBXbkST
	DBC7k4S0drd8N+TMM4ZUr/nbltSOIi3tlCmp/cGrHF3akbMBoWyctT5PsxUZU4OiGzrJNuVoEej
	/tEC6peooDM/H+KPlCueGXQNSUOrE17TRh1ilqXIWY3OcDvhHIlkFI/+Z7WYn/H823leQZcmfRG
	GqAxrwwX1ZhDqmz1rUge9eUL1ABPLN+GOhvEpAOOaiBzKqL8dyXUpfsBhRBJiUkPGyxo1fdjwn5
	0fnWltvo8ZvHh7bRuDhnBf6+EzbQT8Y6Q/ow+vzI8PkRJgEmvVgzkYU5t++ZJ+yI4uG2VNGxuGk
	=
X-Received: by 2002:a05:6214:c4b:b0:6d8:99cf:d2e3 with SMTP id 6a1803df08f44-6fa9d13be9amr6012506d6.22.1748021684642;
        Fri, 23 May 2025 10:34:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH6Rldi2+FEs14z/AVucIFJserNaopcgHlnQSHmQAg+TPCfJtu+N/RwCEuKwyeggBLfnyGRtQ==
X-Received: by 2002:a05:6214:c4b:b0:6d8:99cf:d2e3 with SMTP id 6a1803df08f44-6fa9d13be9amr6012136d6.22.1748021684224;
        Fri, 23 May 2025 10:34:44 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e6f2fcbesm3955273e87.73.2025.05.23.10.34.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 10:34:43 -0700 (PDT)
Date: Fri, 23 May 2025 20:34:41 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 08/10] arm64: dts: qcom: sm8350: Explicitly describe the
 IPA IMEM slice
Message-ID: <n7gortqvdkncn4qhclblitiqo62bxl6dyf32kynau4525dx5p5@uw5cnhbpnapr>
References: <20250523-topic-ipa_mem_dts-v1-0-f7aa94fac1ab@oss.qualcomm.com>
 <20250523-topic-ipa_mem_dts-v1-8-f7aa94fac1ab@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250523-topic-ipa_mem_dts-v1-8-f7aa94fac1ab@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDE2MSBTYWx0ZWRfXwdq7waLC/neD
 VhIp7gFlL4T66xK6lUhoFAbyJcfe15mRie7jP/2O3shNS+6bGORmTLj6qTWg6aMKdoAlrjMi047
 xRXUq9DVS1vhecFr6qacTunqcyQ9Oc86wl0KhWABGLJpo7FoiIwMXQw0OpNDChSCiFeLBTXpKcU
 XlOVJBSDUODw4VXxg258pKZfWR8La8PyQI4anYsgfmB/A2QQD1QHFb8Gcr2XQA9qs3ovcvrqHqN
 8h07zFzmrFhIGPiLk8yOPCS7KrWji311T2h7DsoIjD1xlD60Rb4EW8l+F/XVKpOO0x/gdXGK/fe
 rMOPsk4PAacxlHK1eFXjYSGHuSL4XCyCBkCsFBThwNQu0NX2dsdIVbmMel7AkiXpZQLAVBgGUjM
 HnlPKhFsvS5WZQYiEtSALX6ugcpzUZWvP3ApMMTxI++90h5WnekCXmvQ9fXkrusJgnM7E/+4
X-Proofpoint-GUID: 0XOUriz94qZvptwIGR-SKc3f0pleHhem
X-Authority-Analysis: v=2.4 cv=Ws8rMcfv c=1 sm=1 tr=0 ts=6830b1b6 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=CQVN2WYv2dQaG0RyAuwA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: 0XOUriz94qZvptwIGR-SKc3f0pleHhem
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0 mlxscore=0
 bulkscore=0 phishscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=680 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505230161

On Fri, May 23, 2025 at 01:18:23AM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> As part of stepping away from crazy hardcoding in the driver, move
> define the slice explicitly and pass it to the IPA node.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8350.dtsi | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

