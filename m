Return-Path: <devicetree+bounces-225019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 85664BC9938
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 16:42:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6DA891A6084D
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 14:43:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65FAA2EBBB4;
	Thu,  9 Oct 2025 14:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pSnJCb/8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB5C298CD5
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 14:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760020933; cv=none; b=drLHm5R2eQSYwcN1wzQx+it3Yl0g4WYK6b60SXCIYzZeJdy8tglJKFQNvgLsZvAJsXTDYF1nIIHFDYt6IRmjqVDGYW8875mxT9hCeGbEbIL+QZ+QCQRVpUITBzBtAFubZIahpW9d31TWh3/PGIwrBq5HzE0M7hCOHm5IducoAdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760020933; c=relaxed/simple;
	bh=QZx4nVpAC3vRxTaSdKPSim4kZsjFCKfjifLXoOWygnc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L3FRXqyaHZGo9dh/a54zv3iuScE9NZPT/fUelAgsE31Fz/ktbZBsSAJ5LwHI2vtNVm09adDh/nU/7ShEpToPRxGNfQEbNX+SF0aYjxhNiQwzeTCm5EOhDQY+EvoFPFURK+aXQdyP7rCgnl9j0x8byUKij3wA4mJ8zypjEcLGG5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pSnJCb/8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 599EXTnM029042
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 14:42:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=jJVTkHydqKBrCSgwLkXUZtm0
	Z8WJjCWEqwuofJXX3rc=; b=pSnJCb/8DG/0imYlcFsnOQfpkVy0tPFrexiM27Es
	VwcAVfuKZcsW28YbjfY3vQeTC+4jNhfUITg0FTmcYCSN2jPbp8EkUf/UpIsf/ccf
	JaA30ZkS9Hajd8P9dDBfeuYv73sNe899yjgqxFijOnC+vcTVTdUv2MgD/6TFH5Qv
	XcmEez6z88xhOlvKhsgbzDNb3FAZoXYiz0aiVrc3oZomrpWgSl64UbaCyck92DLn
	O4PzzeBfDuXWu/Af+lU+FunV40heM5uZHW7lUM4t8aP0XD8yfuzo7/T4CjBwsXI2
	i1kvBccJ9G9JpM+/n4z8dBywPjLlRUknlSEpi5iLG1+Veg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4ku8qv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 14:42:10 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4deb67c61caso42021631cf.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 07:42:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760020929; x=1760625729;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jJVTkHydqKBrCSgwLkXUZtm0Z8WJjCWEqwuofJXX3rc=;
        b=nF1ZKQPUZ26Xa1oO6yNt0ywEqhNo8FCVr6ZSRRPtNL0/N/MrXKlG4DphUCIrNlw1D4
         MrGMWfH/AgZrrlvo0F04rFWFdnpK891TA6kyvntkI3Pg+GcIu5sdLfSBuC1kDmWtxjx5
         1PjTobTyZF5csZSuNpfaC7GSnAUSOPZwWs/cUXro9i97pmaXWDAeBd0Qw/KRy6fFBP5Y
         AAiiqdyzoKgAZUsNDAdqDiWBYg7S7xpbCu2ajgNyPclOJD56zSG5jkh7crUSpUrKn4De
         aFkZtr/ubGFg/cJU+heH/Y6aCHLtKJGOt0F91KEO5v+ntmKD8lettk3hQ4c+uPdzG+sj
         AORQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpqBwnZeecXoeKdBsQzYghe0ZKKxpcQrLOhqCD8M54xc1wvi4a+zFwHimhRWxXzODSUcm54GWbTJUk@vger.kernel.org
X-Gm-Message-State: AOJu0YzeYaBsBn9Fa6AZd4No9Ecj2ea5MdLVqBCPerhxiXmhXENmFY/p
	JGfNo3a0Kdx+UOhCLT0KWLb35JB98Nld0ZEc3xkR4+SVeXlPpj05VymZzpbpIo318d5GRPIz89v
	9DgBiZW4v3ueA5+O/pgUcUe2sRHi5VUcKdkGLZDXd8PLFXJuSI6t+zisx99ObiW7c
X-Gm-Gg: ASbGncuis2L/Hsni+3/XL3lS33zmrCS3yD5tZLpR2yn3ARuuMIbW4r89V373BHK9j/E
	AOZ6c0nQS2oFOuX47VTCvbb69kLyFEaNEua2Qq6eUU80lCy9LIPqECiyHLN0lyZGLA9B7IxE52k
	uKGYbDMtyFiUWCfgHt/9gcFl7T57j4I25ScRueONpMlqBSvGLc/1VFyVgAzUJnJ7zFncTQqspIq
	aT5hZ660MZrPOMRouequ12cCqhJTPM3/NeHFsZsw0IubRwNNrfk4eJzofC0CzmjRzjSxPT9CI7L
	2bow8QaqZdIkjuy+mpeN3VOwyLO8jU0BWWKzxb8Gr1BRkJHqmR6mbFS4esNGez9iFQtwQsuRC8L
	zElbh+BWh8uYkY5wsKS/DVmTtSkSW8qHf3CjhqVZvgQLMBeqfsxejrUCOlA==
X-Received: by 2002:ac8:5d53:0:b0:4db:347d:edb3 with SMTP id d75a77b69052e-4e6ead712c7mr91269331cf.80.1760020929509;
        Thu, 09 Oct 2025 07:42:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFNa4QnjcuKYB3jwjG7GLdf7ymSiMVsjch3Pok5PTchB2g1Op9BuA64It2GGfI8BAkwpNNtAQ==
X-Received: by 2002:ac8:5d53:0:b0:4db:347d:edb3 with SMTP id d75a77b69052e-4e6ead712c7mr91268131cf.80.1760020928280;
        Thu, 09 Oct 2025 07:42:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5907ad9e55esm1097574e87.78.2025.10.09.07.42.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 07:42:07 -0700 (PDT)
Date: Thu, 9 Oct 2025 17:42:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Alexander Martinz <amartinz@shiftphones.com>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Luca Weiss <luca@lucaweiss.eu>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: qcm6490-shift-otter: Enable RGB
 LED
Message-ID: <rnlkxpm6crulpvfleclkszio2fms7t3ulc3rpsdozteml2bak2@zvfuyc33ohez>
References: <20251009-otter-further-bringup-v2-0-5bb2f4a02cea@fairphone.com>
 <20251009-otter-further-bringup-v2-5-5bb2f4a02cea@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251009-otter-further-bringup-v2-5-5bb2f4a02cea@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfXx9HMPCL0KNA0
 kqkh7Sbn2HzpNlO2RXolT/872Bd9BHTnXa1M1hPktrtmb2O4s1LpxFAMPY2atbCTFeZNlFpB9Pk
 htyNZLFam6dG9PirUO4rSTaqAaxjC0Ql//Zoqnb7SJQ/E+8y3AgKrBT0ewcyfqozveCUFf6pfZX
 z4Hid8Q9wVmJodm3n0t39wxa829k0KcOlJKbceFAAI7t0hpAGqKg+q74zi+up204qcH2r4PWbdp
 u7TzZvh/6ct39BUfcteTybON2GW9xPdkTrNekofwcpn2282cVGZWApgTxC1K7S2iLjNH+BnkbCc
 Y0nG4FtdnVChJJD8IUd1kh1ZKF8+q1mfWZHAO9DAVyIM3HfYMwA91DnRUf1+qg/8Ei8YmG+TaWz
 2voFqxh1YByHPBEhz6I2uoOWC/LE9Q==
X-Authority-Analysis: v=2.4 cv=CbcFJbrl c=1 sm=1 tr=0 ts=68e7c9c2 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=dlmhaOwlAAAA:8 a=EUspDBNiAAAA:8 a=6H0WHjuAAAAA:8
 a=_tRjzsPFGxlTNT5lhXYA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=y4cfut4LVr_MrANMpYTh:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: K-tILsO1YFdCbHIR1-wmN6A4KOq_npKp
X-Proofpoint-ORIG-GUID: K-tILsO1YFdCbHIR1-wmN6A4KOq_npKp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Thu, Oct 09, 2025 at 11:06:35AM +0200, Luca Weiss wrote:
> From: Luca Weiss <luca@lucaweiss.eu>
> 
> Enable the RGB LED connected to the PM7350C (PM8350C).
> 
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 27 ++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 

-- 
With best wishes
Dmitry

