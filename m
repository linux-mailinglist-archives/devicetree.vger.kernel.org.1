Return-Path: <devicetree+bounces-177443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC30AB77DF
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 23:24:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D0136165A6F
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 21:24:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AFE8296D03;
	Wed, 14 May 2025 21:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cQ6Qlifw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA6E29345E
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747257836; cv=none; b=bCraZDv7nfRZAiyOBHd/dA2fIVifCYJOXdYDM01JFGb6l3BvUfp8w1zyUdQmBLiEZwuw2ZBpVQmoDpxV+wuxQ7UYHqPTiqu3B7Z3G9V3lF7+GqVxDjBs5U1TY/Nu1vo9CAD/Gy/XqxhNfDIahCu7l5DhdEKDUBSuZTTduk4mLsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747257836; c=relaxed/simple;
	bh=7pH57kK3Xt/csRgr21H64G5Du+sG79Jaz8WQJncHCHg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jqd8jL39xtE3aHJWq0FmAIQqpmd8lLQwbaPiiwo+ohIuITnK2w1AAbn3IlISYY6vEo8KO58lU/phWkJe3i0hTKllvD4nUqtSvvRPaK7WFSkmhgljR185yth3cSYMgF/l8NVMZdyXtAyCOJ6eFP8ZgRm22tCMIybRgWXiecrViOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cQ6Qlifw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54EKCjRu016097
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:23:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=cCO7ZLjC2zRcvoyTH09XsMKd
	bgJeYbUHpzeM6fhi2xU=; b=cQ6QlifwB7yASKlwLhMCDOgZR7Qj/m7rHDy1/bow
	VaMRzQI+S6TmdXBq2zbqYR8zeLGjXzuhi0BLKyVjmSPGEZD6NYIaPJ5p5KKVXUp9
	KI+LeNyDJEEUQszQIAsWr8XZbsVAQoW9HO13SvnGskTsQXBejl47IlAeNfPCXual
	c7UApFHgxmyk2znVHYxYVc4PSErYZ9ymct+T1EMAW+JrHuFivwUiTPKM2EPmkDrK
	HhSwg4TnfRsgvvLWQat0NC1LY2u8jP6GzheA+tG4Ke6cVe2BPhksIQ0ILlCCvk7B
	asp5M+ax+/+0lGhOkziLSWpEvWJXEA+V4KNks4hcwtk5wA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcmv78g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 21:23:52 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5e2a31f75so54748585a.1
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 14:23:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747257831; x=1747862631;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cCO7ZLjC2zRcvoyTH09XsMKdbgJeYbUHpzeM6fhi2xU=;
        b=DpACh6anFAB1+BmRb6aVoZXE3VJg8Q0MlAYlE+FS/MU/nirzSeb25JAgyGdAqXyadI
         Giix7P2rEKhQcmnQhGEm0d9OXPc7R5S6vKLk9xpExh4u9Hwx7X1JYx9EEqkrhez1kHx7
         mM3+QtqEqV/cIV9hWn3HEUpB9R9z+TTlIdgwUg50rrh3quFuWOcbd4yoI6yjAKIt3zUk
         Oa2t5fVJAA6UmqlK4gfobXLCmGeIzETAfIXIrDK6rhsGec0bfraWfvWiGF/yvOQmsyhX
         GO7sGBmDLUaIEdtX7dgr7B41R7ZgBqtIV0XlqMV/ildd0hf682QjRo2mGinZqpIT7wen
         mUhg==
X-Forwarded-Encrypted: i=1; AJvYcCVPEYF2mPP8xvJgncMHhs6u9r8HTwCU65Fr3ZBpcIQ2vmpj48a9UTphVMFGzz/QmhO5ZUCHps/Za2HT@vger.kernel.org
X-Gm-Message-State: AOJu0YwQzUs4FKBzce6U45DgbmQo6PlozqGVQ1uc6dmh9G4cbNUO9Jbn
	Md6iSrd3GmhTZcIR24M0hPpxkY1N1ja5JDJWpRilgsZ8u816hurSZZalSFn+CtXs/CL65ZwuIU7
	HYq8qMe9oqa9g/IjCQdzUj5JNB7XdiaD2x4YfnT3asmqfv24BzavchyiUTvRx
X-Gm-Gg: ASbGncvWpKHQ5XDnM8Grg5c11y0JCkdmgiLw0RUVmlIsZVTyY4BOe02MjbkRJdPeUwu
	3D6qmDRMPO3KVQa1NH19WyBJCW15ldgRnJkNs0B4hInubDuMUf3hxF2tjtA6s4y61EdS+Vkzkcd
	p2rEUZApEwxZ4Kysu8v87S4Ef851GFCNdirRfV995X7XTKKazOS8qHqpVmeVfNeXCLK2G4jLhaX
	k9+7Bn/Xff4BXoQy0SdbxdWb1cpDxq+J1VyV1EF1A81WjlpAU6LC5A57DMNCU91QflQ4p2Zp3p/
	IHwZeyKlqdi7rdJriDgg5pldpwzxGUtyL5+/J4ryg44xtQ9OTd6NNx8SVBrRk4LbqlVIJ+qBvY8
	=
X-Received: by 2002:a05:620a:31a2:b0:7c5:994a:7f62 with SMTP id af79cd13be357-7cd2884730amr684240785a.41.1747257831601;
        Wed, 14 May 2025 14:23:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEzrBQbPnoKVl7bHQ0qQGVk2ZFKEoO/D0xKVkhPDkIPzUXUVOhZMKskuU22tP/6q2an1SNjNA==
X-Received: by 2002:a05:620a:31a2:b0:7c5:994a:7f62 with SMTP id af79cd13be357-7cd2884730amr684236985a.41.1747257831256;
        Wed, 14 May 2025 14:23:51 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc644fd0esm2387959e87.6.2025.05.14.14.23.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 14:23:50 -0700 (PDT)
Date: Thu, 15 May 2025 00:23:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v4 18/18] arm64: dts: qcom: sm8650: Additionally manage
 MXC power domain in camcc
Message-ID: <mffphqhgr2uugrahumcvb3g5swqxno3gi5b45z5qnrbvzncyrn@arz725xwg463>
References: <20250515-videocc-pll-multi-pd-voting-v4-0-571c63297d01@quicinc.com>
 <20250515-videocc-pll-multi-pd-voting-v4-18-571c63297d01@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250515-videocc-pll-multi-pd-voting-v4-18-571c63297d01@quicinc.com>
X-Proofpoint-ORIG-GUID: Zmf0Xgkc1KWXkN2aRarvev8mtVJ2O-_Z
X-Authority-Analysis: v=2.4 cv=HZ4UTjE8 c=1 sm=1 tr=0 ts=682509e8 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=l4YKJxAlfa9iYSc-yQoA:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Zmf0Xgkc1KWXkN2aRarvev8mtVJ2O-_Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE0MDE5OCBTYWx0ZWRfX5Hg8rFW0g937
 ZNOirfN07B966KZEElABi4rVn7bbldWqp6Xa3jBTlvuNg/BUHykp/1qzypXQ5mgnoSoGcaRifid
 ifSGPdtxv7SIZK3cW0nVwsWdFi7cxH+yPq/5LvPVu175HkWRg/pfmrMc3tUB7/S2ThIcBLox7eb
 753V8CX20WpScpsv+oaXDuMkCnz5k/e2tnpxeihtevIxuHutAjnnAakFOC8LGGE8cGd4ewrlUAr
 gJgYG+vb5KOtUtaIQBRh0yMm+U2xMeEBV35v15yd3rJSBCgLWb2HxLmHmO5+P9wAsS4d3M4CtN9
 6m3JP5uKJfuoBcGGXYk1AGcVpcsA8AAILtzZiyz2QX8WDrkwJoJi/ieP8GhJSYdBFJq8zDX9cqJ
 INf5nUnInY6PVBT2vOMiTNNwkF2Ib6miUw8rG1hxqonk5vgQaBhlncolpU/zjd8nFA6OSGW7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-14_04,2025-05-14_03,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 mlxscore=0 mlxlogscore=527 lowpriorityscore=0 malwarescore=0
 bulkscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505140198

On Thu, May 15, 2025 at 12:39:03AM +0530, Jagadeesh Kona wrote:
> Camcc requires both MMCX and MXC rails to be powered ON to configure
> the camera PLLs on SM8650 platform. Hence add MXC power domain to
> camcc node on SM8650.
> 
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

