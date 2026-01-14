Return-Path: <devicetree+bounces-255231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF81D21793
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 22:58:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6C2C330A8383
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 21:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB9DC3A9602;
	Wed, 14 Jan 2026 21:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d5b1XL0C";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hzUQSqSE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6513A89D5
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768427762; cv=none; b=R3ASMFS2SJJqdqM7t/TKX69Ohg1syWC0F8j9dCPspsMekE/oxrSxBj1TQ3CruSlvnerhwli1zWUP0jXC9dtCkPQTCZpShhmUTnpWIfvN6a3E0VCBPGPPcVoRZ/zej0vGoCx/z9v60d/OLfbo9kdH6R99KXY4kJzET859T8Q+hcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768427762; c=relaxed/simple;
	bh=Rf41Hh6Oag68iOrWE1QpC0+XSAL1gkMR7La6D1LAdJs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AL2zgg6q0GYXlAAvhrx5TgxPEPSigtlefrC/ntlXvZTuUs6lyqF577t5mb5P/wjX8DJhWtW+mfmO1tDU+r6HrSjDPoYdN6gFVmRP9X25RrHxrXxUhJP9FFTIKkPMthLoMKVZJTVJFc1LLmoCDojn8L57LbnIGfZE8tFdOTuA46I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d5b1XL0C; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hzUQSqSE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EKX84H3925407
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:55:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=NFjgwoBJaRJ8olK+wRRmvtQT
	aHz6ADIqJ6R1SBtoKis=; b=d5b1XL0CjIL0U6k7+AOti/YF40rQSbYQebieiPuZ
	OlauTqhCngpQc+sysAEo7GLe2eUAvE1zqPKdXroS+WBKQsOcVM61Zgtuhizkvela
	Zfei5AFHanhAIvnrXL9Q+xv38+4bqH+m6OHa5v8NHtA+OMrCeg+UGmdsy8qCMSne
	TA5lG53nAyotVv8WZeY5MATd17yiLx6ybz+UTAlsIrbu+NRGEiTurygZy2+Ip1gj
	91Ruor/0Y8bkCTFkWjr9zVoeJQcLaYsnUtyIRuARanYFA1weuhqiAeLKOdfUFkA0
	upL5tQQAhxurfWP4pPU6pPRHOuO6Q4bP5cW9mLhqOdkCpA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpbdbss35-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 21:55:52 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8bc4493d315so77710085a.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:55:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768427752; x=1769032552; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NFjgwoBJaRJ8olK+wRRmvtQTaHz6ADIqJ6R1SBtoKis=;
        b=hzUQSqSEr6VN9fpElApNaQ72oskBFIVkvvbxKn2IzB634tE6kwEhRTcP0uhU6m1OL8
         QU7T+8HYMzPggZPHY8Ni8NIbMOpR35wDubpT1EYF5k3OcoZgwrfEbmRaEVsDq5kOdTtP
         zwno6iMUe350cHg7ZzERLtVGgAp7Nl+7tqqOOdtu7AC947NBglxUjM0VjuIRbodb4DIL
         amcpH6FIRTRdWiHX/+7Ubd63YNCXfs2Sqi966JLRtbEvvR8k5N0K/9QGnzmko9mtn7p4
         QaUA34ZOL3qDXmE+8WRJqyX0GHcuZfibIwGUL/yGA+rs4phOo56kEsdJ59+2WkiZGCri
         MDJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768427752; x=1769032552;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NFjgwoBJaRJ8olK+wRRmvtQTaHz6ADIqJ6R1SBtoKis=;
        b=od/tZ9wQUkk1TYAZAkhUnC+NBJwxHLChJSKvtadEhfHI+8yf4wHM0+dvEm/Q6/gHe/
         sZQNOqUbEpwBIUHC8q6fTcr6kUEkU4/KbBOMxTUC/Q3VszrRP4nxUy+bLIWViO3tR30S
         9PHxPTcbyjNlQxwRr+xVFHK7GF/pIR/LE76jrau5AJ1ArnBa3p64KL0Ygbp/WRySxsRO
         lf696kCl9O1S//F1Oq7P4+Po+KGg/qxvN14FLP75sOa06lVWn5wD2wqI2xKB86c+2LiS
         YWoRupAG/yqzfGUK2u1EIL7OecvAa5EYWQb9bAyX0xGhPWfPpu2suF3cNNaJ+yN9qksT
         +5Sg==
X-Forwarded-Encrypted: i=1; AJvYcCXcQ4StsEf7fzQq/NaLhwhAw6GcLqJaedSl8G78cjWDFWjOBSdbikfkZ75B2I9HnkVE8h5wnnq2AX1p@vger.kernel.org
X-Gm-Message-State: AOJu0Yxx3WISFR6Z+zjs3iDpDUTDZEvVrqerw3mnaP5eUOivKDOQHKh/
	Z+Li21c3CnuVoaT0l2rBumyW12bGtX9Lwowm4v/A+GYDnNDhIjkbglhDfbQyJSDb9Ayss7MePLG
	FW5eSQ+NeWJ1tJeiQQbGxxrpL+ECUp5nAkErpj6yIzbCr3axCVHEElbsHs3/teIpJ
X-Gm-Gg: AY/fxX4YtqvgTMPwaH99OkqgZdoUjEiM9VMK7/OuEZ2ux2nMy6s/EHqJCekynKQZn8/
	+BHqOu46jLqe8N45b96oqEqs/2UQQ6QcCDlNn9xlfzS7MCX06L2lmq/4/EerfXhdAAH7c3FNIyw
	SPU6QrMbVFvAk2cJpuPGFbtl7Vu8LQDIAawdoZ8exY73/AiFeigm14JtdJcwXpTNLWGppqtlsQz
	YlkXFmLL4OUxkESm0KCxVxQprMVHpeVmGom0ddYX99dgoBtWIoVVIEEaDvoTYQa+R9+CUcv2rNm
	/GZd/pDUBtHOLNJQwCjQUZDLh7u19vfPMwJqt+/MpTnMuK+zC3cnIrf+xyZWZrdjpc75PQnJARu
	YlFZNFZK7huZsHaWvAxq0ON0fFFi5yn7O8g2HHTFP07h3J/5/hBJSugKjufndy4NV1PMO81B5qv
	A177L2q+LqfhkGeOBWTGAm66w=
X-Received: by 2002:a05:620a:d81:b0:8b2:eb66:c64 with SMTP id af79cd13be357-8c52fb1cd6amr671275585a.29.1768427751874;
        Wed, 14 Jan 2026 13:55:51 -0800 (PST)
X-Received: by 2002:a05:620a:d81:b0:8b2:eb66:c64 with SMTP id af79cd13be357-8c52fb1cd6amr671272785a.29.1768427751337;
        Wed, 14 Jan 2026 13:55:51 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59ba0fe92cdsm1053829e87.0.2026.01.14.13.55.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 13:55:50 -0800 (PST)
Date: Wed, 14 Jan 2026 23:55:49 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Val Packett <val@packett.cool>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: x1-dell-thena: Move PERST and Wake
 GPIOs to PCIe port nodes
Message-ID: <qaung6kmsrzzfuv3vtivqns6kdjoojdqsaahe4wyfxsnhpktx6@e5qwtvbnijim>
References: <20260114203600.5617-1-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260114203600.5617-1-val@packett.cool>
X-Authority-Analysis: v=2.4 cv=NvncssdJ c=1 sm=1 tr=0 ts=696810e8 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=a63MunIuUH75B-7c0cQA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: MU1WAqvIwlrPCp9OM9V-wJHdp4ejOpkj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDE4MCBTYWx0ZWRfX4iiuCPaxGwpc
 RyKROz4pQiQxgD8EKw5bJriB3kOSdxaabpdheFVi43ZCPpiYsNVAWDxZg5+2Z05fNVKpbyF08Ct
 1N5K06DijkNqEjGaWgW01CQhpD2c+y9UICMl47fppuj+nw7cJ19M9IQCNSzZmaSL1l2lBFQoTXJ
 Tv8g4wiekbBPch2u54TO9yI4GOdK+p12juFZpRnH9hJiFOF4YxSONTtwSIQqyHWqNb/GBqWfrT4
 MsH5sqFm5Ah4h23nIhyOxJHfVaiaXYVNuO4o+plQ4eigbvztj0Llj13ieD143J49g3bUqjFzdPH
 akwxzn/dvv3xIISLlQi3W2wLdoZBgZVgZX+AjU1UkvwDqkkM88MX+awChXSosbEG4KUoy7fMrXl
 ngWZ7J9t6Oi/A+J8t6CNxiuyRlbf2m1zV9s2/a98HLkqhTJiqaerE+FTBnndC2/HPjMBQoU5CNt
 csXt8uMHsmlSCRaup6g==
X-Proofpoint-GUID: MU1WAqvIwlrPCp9OM9V-wJHdp4ejOpkj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_06,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601140180

On Wed, Jan 14, 2026 at 05:33:32PM -0300, Val Packett wrote:
> A recent commit, 960609b22be5 ("arm64: dts: qcom: hamoa: Move PHY, PERST,
> and Wake GPIOs to PCIe port nodes and add port Nodes for all PCIe ports")
> has modified the DTs for most Hamoa-based devices, but skipped the Thena
> dtsi (common for Dell Latitude and Inspiron SKUs). Apply the change to it.
> 
> Signed-off-by: Val Packett <val@packett.cool>
> ---
>  arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)

Fixes: 960609b22be5 ("arm64: dts: qcom: hamoa: Move PHY, PERST, and Wake GPIOs to PCIe port nodes and add port Nodes for all PCIe ports")

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

