Return-Path: <devicetree+bounces-203709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2368CB224E6
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 12:51:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B3B0562AB3
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 10:49:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3890E2EBDFF;
	Tue, 12 Aug 2025 10:47:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Hrv37DW9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7B432EBDCC
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 10:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754995649; cv=none; b=jo6kmDp07Il8lphVAiY26ovmCG3GId0/gtROjvdNJEIBM8MbiBTzesCZ7jZ7L+3lmc0HmyiHCnDs7FkBMq/sHJ/yk0KQBZGgRj1S+bOqsWNCf9KaE/aOdlZztgHoQ/PphHIWobWDGCfFFyrGV10JjaQnvGWL+JhGO25tjl0huhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754995649; c=relaxed/simple;
	bh=sYTpAoO/MJfpiYDH6SWgKI0yKgXfgoJi9HXPhQ8RgTw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BhXjAE0JpcAgq9TVxf3a2hUrIbXPvugpBvdnWodaWlQY0JSJR5lfOe6+5EbvAiiLyjDZKaJpaCFuUiURleGFDHLUGfqw/9duNCYcOp4FmY2GCMrpcybXKnEPqoGQdttRk9Sd7g4mUESsGIXZqmfmVkmEvjDaae77B6VvDhg/QIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Hrv37DW9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57C4anIG019037
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 10:47:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RU1xZ70LjWvBJQnp/8lCapPy
	QOMTXLUhP/W47Evy9Mo=; b=Hrv37DW9RQ6UcgdqWqj0o9uXJIGdXqi1SHW9fsd4
	VxK9COfNxSXiI7byxo77E8B7qbV73TD9s78TDHU80taq40iBpSQbTA8xrzAwhuYx
	g9t4nJ/J3Bzvg1arfSLx+8Sh6kje/gKM70jB5d2OAKwdyLcmWF9jKlWPMWAK3uln
	GCgWWUjPnaoDimv1SvuDvPp+9S+2TQHjTrgQ8obFOatGmKrlg/A+xEXkpw0OGEXG
	ZNsrUnajxdm/UTAQlJE5scyZ6kzL8eQv2vEjRDc76S/xojedMc/EethweQ3EdwKD
	1BkyDhRvX9THWWABsZdLHCM8Swr/eEbwRNG691n0xKBnOQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dxduyt1k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 10:47:26 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70748301f71so104163366d6.0
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 03:47:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754995645; x=1755600445;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RU1xZ70LjWvBJQnp/8lCapPyQOMTXLUhP/W47Evy9Mo=;
        b=C5Ht5ttYz9zNQ31RGW03OqXV3m4Um0WiwUFG66rmONXayjJXaL21diH0I7XoozXCok
         T8ykeqw+/P1TEtpj7P5LKK5RKjzLNWxWLHsWFf9WwMniQBfalabt8t/W21bW6ne3A9X7
         1vPrFlXn9YSn/w59dM8dzo9UEkl6NkHZtkt7/vwW2j2xP+xhGdrxbgJ94n/gpf10xL7a
         S8HLM+rXag5YK65OhCgmHZewaN+VN+FuHTnCWiTAqxli6MsZwj5EKHQk7Wj2qquZh3vl
         I/e8v14JMFf0sFVXZZVOTRdY1Vm47arlTwxM8I5DHJW+NNk5BJ/X10yJc3rCjPLPFZ+n
         0fZA==
X-Forwarded-Encrypted: i=1; AJvYcCXLA9r+KBvX+hM3zWObOIC7wS1Hu7Df3w/LQstJQv19Nhn81juJ8X8OMFYgS1jeIqBO8HaJFgT8vykw@vger.kernel.org
X-Gm-Message-State: AOJu0YwUbb4TiYKnd/jGCQP10iHL9TKfdagG0Z2qf0NzH510emlXKhkd
	WdVjKKLbKmXGyyXVa1PmVhW1fjDRX3HVQpQNNs/LKKWNZs/IgSvbVZIHnqPoKmAJxFcJuhwj9eR
	NN6/B3h+xl+LPCfYCsvecT9psg8cnlzyl+JbnmRjGMGOOuwBH9RGpTF8By0VwGDGghvyTfcUi
X-Gm-Gg: ASbGncuBKmXjBGkktoNyb3oPF5EsduTCTdz1/7rvxv5zrrkrcAAdfoyMqX/aZaGZt6E
	gFTXUJXAsBBoz1eV3Aj2O3HwUyGIe4GIB74/0j+LPReZEsOyEghmefX8oqi4koyWJ88eBxnlPS5
	6XbhTVIlEuqXgLiLAzeeDmrdK8A8C/cQ5dheKDcNvrIocvCcw6nfqREaHuVZg/Wvtv0TeZk5jfV
	NtwReCsqW9AG37PxKdsbiSZVocr+nzn245XnC6+qcnD8fQJ0FvgKt1RNXIEw+nCWyH6P1EUQVem
	A42N0H7cnvUnhQ3+nYq1BgMvd1Nt+fvkjkoAnw2mHNWEW9QoKHHUbFtteLdAjPcZVFEYIArDPmv
	R/VbGryv3P6kAUp2+xTczzOV9DdH5q9m6qj2fP8+0KqkgPV+PeTqE
X-Received: by 2002:a05:6214:1bcb:b0:709:8742:e46e with SMTP id 6a1803df08f44-709d5e2b82emr47219696d6.45.1754995645155;
        Tue, 12 Aug 2025 03:47:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGW+hMss4BNMWWtYqw382EqZbNCNytLhvrUCld9+J5C9taVzj5C5lLEdsNdKRSjAhJWUdrW8w==
X-Received: by 2002:a05:6214:1bcb:b0:709:8742:e46e with SMTP id 6a1803df08f44-709d5e2b82emr47219336d6.45.1754995644651;
        Tue, 12 Aug 2025 03:47:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-332388d46besm43432691fa.48.2025.08.12.03.47.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 03:47:23 -0700 (PDT)
Date: Tue, 12 Aug 2025 13:47:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Cc: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Describe the first PCIe
 controller and PHY
Message-ID: <bfaoko5ztiaouuhpi62jgmz23rjcabskksxarncg7dietu7bz2@coat42ztyzsy>
References: <20250811-sc7280-pcie0-v1-1-6093e5b208f9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250811-sc7280-pcie0-v1-1-6093e5b208f9@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=IuYecK/g c=1 sm=1 tr=0 ts=689b1bbe cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=V2r1pZe0Pjlh-QoW75YA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: WJO-HFwq-yvQQCdrPEfFNrxw3_ORXQDH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyNSBTYWx0ZWRfXx22Zbqetb4rW
 OUrBlUWMEH29KGwy0IwsnSft7fc+Quz1juNcqNebUISvEfi2SH44isfd/E86eB9Koxpxwoe36vm
 KVCVfLS1KUbxv80TXAmqZiP2R1xTKxcedQGQYJgFdgzoTOnwqfFMKTbKF0uGM/okeAtzzfk+tm7
 R8LCfPoHgjvDaoO48XdZf16Z7VG3t+7ZiYszpYJxhq1zO345LGC0w8yGsSf8ELChB4A3FI4Cx8j
 BeWxEfVHRFZwGD0s9/MahrejHhj85GFXtxyrQz+OVEKMW1Y8Udj6cJc2Rc+RYtLhAB6V7u8plqs
 GDg/oj8MxVb2l3kYfLXPqtcOxHkUNigaM+ev3n8wZLPyf3JLCCe37L5zBbyeKmHCSAjuO3Yje7J
 NqKzAmcm
X-Proofpoint-GUID: WJO-HFwq-yvQQCdrPEfFNrxw3_ORXQDH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_05,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 priorityscore=1501 adultscore=0
 clxscore=1015 phishscore=0 suspectscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090025

On Mon, Aug 11, 2025 at 10:16:29PM -0500, Bjorn Andersson wrote:
> Only one PCIe controller has been described so far, but the SC7280 has
> two controllers/phys. Describe the second one as well.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 134 +++++++++++++++++++++++++++++++++++
>  1 file changed, 134 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

