Return-Path: <devicetree+bounces-158748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D811A67EB4
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 22:33:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E696319C6CC8
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 21:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31D931FF7C0;
	Tue, 18 Mar 2025 21:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UaHFsxvm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53541DF240
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742333607; cv=none; b=Nvf6oHhkode4IO7or8WrmT7UYHq/xa1rmfr4bkJ+DW3LmZB99H8ovdJ6lvQhpsFIHpXDLHbuSfIT4ZRcQqtZLmhPX8Or69FqkAfGln78MFf84twTs4Xq8pXlA+eq4lUJw6noPQoA/tvXstfP9D3NdsHaM5aCmsfmBI56zKJGKGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742333607; c=relaxed/simple;
	bh=vOR3/JIk50CJzaeJL4hwEOyiKqMHqzylkUtWfbZ1yyQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qN6y3kd2d8DVWuZ9GaPV6s0AzgzwuvqcaZzC+ieNNiwtPEKunwa5rud/3LZoiV8uFMJJLAvus0GrMNy0tSG6YZONuekIoT4j/AEp7/SuX3tBJLMVoZTyMKCErU7wP8Hf1yV8ln2cwfkr2SjzSbuarYgdfQa1dQpGw1vAjH7EtAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UaHFsxvm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IL11Wh022723
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:33:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MmJSW/umKeswEWSeKZBVRJB1
	BIIFkK8mH0qIUqVs1/A=; b=UaHFsxvmPL/PHpkRSn8ti9khjMAfZf2awEx1M2KF
	ZorQrUsEw306tzWWdCQmLPRiGpYUr8p2FqCJwwknVY8Pjb/abbb4F1bhAh5TKhb8
	g2kKcJrgMtI39U+FRq6zpaYjaavLITmnaUsO62wMcBCbU9wlsnfQhCD38TljmP4G
	MPcT8w/J1ENi5Fqxzx3dKFGlmBEnWpWkWB10B5GsrBQWOOLY2yzQ67Ch+O+0unlH
	i0PbaNzveZ7Gzb2TVnO9krCjiZjalTgYTZ5JqAtjxZoCdUASSVRx34vEC0f6XOw1
	p6Im95+3U8rgW/wcMA8vohY1IH7P9hwsUkY/2bArqlpgvg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exwx37dc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:33:24 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8f9057432so127458376d6.1
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 14:33:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742333603; x=1742938403;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MmJSW/umKeswEWSeKZBVRJB1BIIFkK8mH0qIUqVs1/A=;
        b=ttisjoYmKDm4tMXaYcBeCE8NHxqsBhsL0CvYFRlH1IsWF+9kmoy6r72PLaop4Mgoq/
         I1aFIGh2s7BghNxNaZPDAipAU/9UP9urf7IOHsZ4DSvDlkMJhBGoLQ1TEOlcrTCCV3YI
         t0C/iONAlPZWTu/bLkoew7VF2Oz773/0c5690WBKiv+SU+EwV42sbYykZLkT+7ZsUBgX
         6XGd1HXFT6PJTqdTOGP3VTrb94GCXoAJJ907PzFbg7cUy8i6mcw7AFH+z/tdB/vyTLqS
         81kEh55rnf2QKW9KxLzEmgBg9tbZdiWn3wXc4FdVU5OIU8ygkz33vt6i1pzZ1OqaLj3y
         PYyg==
X-Forwarded-Encrypted: i=1; AJvYcCWlfhv7wAxM2FNiCVKn3CfHL1tjMRxRfXK5HG5LBiWGFheP5tTY5V4FH9VtaT+opuNaptNf5WOxB/nn@vger.kernel.org
X-Gm-Message-State: AOJu0Ywwg8EC6nCCs0Xzy/qFKMoslpz6OWpdCpGs1FQsPag2Vjo4hpHn
	b3XNWqvOS/1Ox7ySmi/EePh0az+8IDnTYsnW9jQXj+ZA7onSWWZIkl7TLmbzSJQ1kOE4SSfGDMe
	RkDrDHTbDa2px1qlsfGXrHRoAx1XzCVQPdIfkIa+9vUpmOMEARYriyZ6ocJzb
X-Gm-Gg: ASbGncuTloPyKujMmIdQgs+3+DTIBOblkWSYb/SPmBJTORbzahaxb39dGu54sk9JjaS
	KS11gL4PlqEclev9GyA2GsSLTFzm8wXmMGBybYqkAMBb/fsrv1caDlikYNKzgQyJqfHjVLjgsdY
	QfBrMxUR16ecdoJ81Zb5rbZTL/3sOjz696Uhz6X+hi4VT9v7Aqj3cseIZOJ3AvqSyZoj2XnrAxv
	HZCjNQAdYTLLGxPqxcKjq9OLpBwlVNiaYnKpJVEmjsg5kyerDo8kFWxlADVC4NAA7nCcOMjOr94
	zdmQTWbmLG7UcobqWj2mvpgHdoQ9gxnTfXyKTg1HME/VLZ+EftOpWTDs+88TqhdeskPiFfh4Zwf
	pgUU=
X-Received: by 2002:ad4:5ba4:0:b0:6e8:f3ec:5406 with SMTP id 6a1803df08f44-6eb293b1d37mr6816376d6.19.1742333603481;
        Tue, 18 Mar 2025 14:33:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhztXksryfX8def6oBiw6VCdyAmlTnjdkgF1TUSXGb/cfOrSpTBlHYDH6pbe2Y+6+JoMCdWQ==
X-Received: by 2002:ad4:5ba4:0:b0:6e8:f3ec:5406 with SMTP id 6a1803df08f44-6eb293b1d37mr6815936d6.19.1742333603183;
        Tue, 18 Mar 2025 14:33:23 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8a7a98sm1766004e87.224.2025.03.18.14.33.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 14:33:22 -0700 (PDT)
Date: Tue, 18 Mar 2025 23:33:20 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Marc Gonzalez <mgonzalez@freebox.fr>,
        Dmitry Baryshkov <lumag@kernel.org>, Arnaud Vrac <avrac@freebox.fr>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 7/8] arm64: dts: qcom: msm8998-mtp: Add QUSB2PHY VDD
 supply
Message-ID: <f5zjupndrasjpwys4v46hjvd6p3ta3uovsfylmlono3chtf5lf@suigsx2kpnyj>
References: <20250318-topic-more_dt_bindings_fixes-v1-0-cb36882ea9cc@oss.qualcomm.com>
 <20250318-topic-more_dt_bindings_fixes-v1-7-cb36882ea9cc@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250318-topic-more_dt_bindings_fixes-v1-7-cb36882ea9cc@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: Vt2hlghDWDCyzg4eTC8azafNuc37_AiK
X-Authority-Analysis: v=2.4 cv=INICChvG c=1 sm=1 tr=0 ts=67d9e6a4 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=YPhFelTriHocc5OovjYA:9 a=CjuIK1q_8ugA:10 a=PkAOt9_mmfBkvtOLxIEI:22
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: Vt2hlghDWDCyzg4eTC8azafNuc37_AiK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_10,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=790 impostorscore=0 phishscore=0 mlxscore=0 spamscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180156

On Tue, Mar 18, 2025 at 07:35:20PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Set the supply as required by bindings, to silence the warning:
> 
> 'vdd-supply' is a required property
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/msm8998-mtp.dts | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

