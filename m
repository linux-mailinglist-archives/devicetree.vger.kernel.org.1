Return-Path: <devicetree+bounces-232612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B1784C19634
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:36:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CAB554EDD29
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:33:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D29D32DCF6E;
	Wed, 29 Oct 2025 09:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PinC6bNn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YpkTi/D1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F972EDD4F
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761730429; cv=none; b=tPAitn2yR4Hfh3ERwx3SAuwQd3UZXjq6CQT9UAA7jNi7ku7t3CdNNwlu1A3B1ZaloUAboJLwHFZ5EM1Ycwhu9ZC+oc2wUeZP3nAsc6zjwAn6302Ff4pGJNM4A1JifHxY05LsrZxUK60szmBZsOYcoDKDtsGVPY9okXm0nv4LG/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761730429; c=relaxed/simple;
	bh=rqXupnqpPNubcslAJqHJlXhLlIWio5DVNHXOUdm+UbE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gUIf5XDE0IDHGs8zlac7CVnaQ5ABOMeXQY55Wd2EbfGiVKR9Lojip64lCY3v52fLO3cNcNuCUbBo79wsjQBBLihbYpIqqW/4uMcm4/HICmDvAJ3XmIC8aXWLj4wUr2EtEa1O2M1qkHLuzHzILniODDjt6XACIO++gRt26XMu+Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PinC6bNn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YpkTi/D1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4utJh3642908
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:33:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rqXupnqpPNubcslAJqHJlXhLlIWio5DVNHXOUdm+UbE=; b=PinC6bNn37EUuD2p
	S//9W4YLzXTry7snCkLcRnxkY+YC7H2ivdlp3twtdEBTsOdzomijrYOBTWcrX87g
	iSrGIcUYzdkmyV0N4v36GXGMDBbv5wq7EDX87Sr23ivdZxgSbU/WHuvWDTWP9w7A
	jcSC2OEqWeN7fbggrLV/wKxnMWBkVGVSQKaBHjSb1DGRM+XVKnhjvkkK7/By5Kwk
	BftrQs2y+ns9oq3ibom6qpQqyGb2yWbZ+L3tgYjsAiritaZ27kr5D72WyBtle0NJ
	FoSPxaXC/cBl7WjN7p/QX0Yw7lGdHj/DTzmZbye9oGB/g0ztNjYACvk9wtWOeX7v
	1Auaaw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a1j19j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:33:47 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ecf8fad13dso8503111cf.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:33:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761730426; x=1762335226; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rqXupnqpPNubcslAJqHJlXhLlIWio5DVNHXOUdm+UbE=;
        b=YpkTi/D1o3TioCAykQZycwDUWwvWbEHCRAAqxe5qtokYDBM7mCtKJEnUepTBRy6X3v
         dOSBg194bAItN+dG2dWXZefw3bNBBMwLgYK/k/RcgDXpaYiU6L3+nnJSdI6tHAqXUes/
         cymqPlgpg23I6p9QbKnoasxeWniqHlir5Dfx2soex0uq6tOIig3PgQtc1LQFtBjkKi0R
         /f3twVRly+H4KNstMEkRlwiggcNFy9r2X9yqQcdz51eJ6igbFeq2M2gLU50Q31xcCf6A
         SgaovWV+6jV5orVa910Vdzss+sXpbTArliWUk1sMQSxl0CglRTdC54W/3CEocDq4dbn9
         78fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761730426; x=1762335226;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rqXupnqpPNubcslAJqHJlXhLlIWio5DVNHXOUdm+UbE=;
        b=tp7OV42FG/HQrE9/d8li85J0KG8SX/cDU5vf2AhemOWTTH/B3FDKMWai2rUZDxwjSn
         u/5owtufvST1i2v+QYYPmAJvtHdDu8qDX5/SWGrAj4oI8fyzAq+uleOQSJ/sJMIHQUmD
         S8iRBx5tWdNvrMOFT5thqqidJ8fRDY+ak3sjaD7MLMAHlI+6KzdxXsqNaxJOl46h0tSj
         GpcGUZ20jxxB8TfE2UPGxESbLe7dr/O9YyQhVETOFU5zym+dB+2QB+Qh77dCNgw4Iveb
         VlZp6UpxyI+6tj8S0At6Z+K3qpzl05wdGG8y0TiZjlQLi6184vdm4E/BBJhnTfV3Xtq7
         oMBQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYS8cxYwpFl7fji2vCeEKTqNJfpZcs1JBsFpVaNWozzAs6xPmDw9VZUSZNBvwRsbKREIW52V5QOixX@vger.kernel.org
X-Gm-Message-State: AOJu0YwMWZZwk7o1NU8nhecv+Ir3tX5h1cj6wvQnCLoGutSUTZju37Gu
	rPDCfCeAbtZPOxlg10cYH6nzGJd/cGcgTg6d3dHbj7OK9uSsTMpHu2QH1XptfyJp0gn3cjckHHS
	LRSDDAys8iCoQs0otHM1zIQhW8fsDzCZsOaBpcE1JRHr08UMFm5Kh/7Mp3ufb38u+
X-Gm-Gg: ASbGncsSpsfs2Y9CulhuGzrwDXqvYDMud5vABjjvunZ1sDyyPZjPQWpph+YmT6SDK3a
	+foXElEMofS39oHFoNdJb0ajEqN/tcnSRJVzGh1M52Bs4L/AHZ1pgss1WKsOu9Ijf9xG9Tt8TAu
	8dx5UUcZkLVz2psEODaOXeqe1DygkoTAle2XCDT0UfaxuzBAoGNCLO9J2SVZle1r7aP+/4hRNCh
	PDSim9i9YhEoKkmslNT1dy13ibTsuz+79amYcK+nc31zJIPYmrTCPtaz7YFDZeBhfnhPuEUiSe/
	GoLsyOIsQqc2Tzci/gGwazIfbM0k//IpF8BfGZPyTOPl3hhiWOy6VcNXRFCqlX5GzfUYeGZsNP5
	qSgwtkMcRKfIvceHlXapzz9F+q5N3jsBdoBs/2naJfAlBBAoyvkJrAqL5
X-Received: by 2002:a05:622a:19a3:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4ed15b933ecmr18549791cf.4.1761730426529;
        Wed, 29 Oct 2025 02:33:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFjF9pxhXH4RVBPpZWHVrJvDG4x6sCWKd/Yfxw34hVbqnGHssbUIThuvcIHqmaZakQ2H9J9+A==
X-Received: by 2002:a05:622a:19a3:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4ed15b933ecmr18549691cf.4.1761730426118;
        Wed, 29 Oct 2025 02:33:46 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d8548ed8fsm1380815366b.73.2025.10.29.02.33.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 02:33:45 -0700 (PDT)
Message-ID: <c83079bd-ebd2-49fc-ab62-1fba08276cc4@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 10:33:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/7] arm64: dts: qcom: cleanup GPU's zap-shader node
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251028-dt-zap-shader-v1-0-7eccb823b986@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251028-dt-zap-shader-v1-0-7eccb823b986@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dbiNHHXe c=1 sm=1 tr=0 ts=6901df7b cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=kI9A-tbFYqiMmyZ8wAIA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: C_6CNQMAgUg1c0iXHtw1EYy4O1q--DRp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA3MSBTYWx0ZWRfX7dByuZ7cpvE/
 wbJCxh//m2BFtBuiOIFM8ubvspmHNNygEE0zvTjTy/Rb7f7pain9aQlI4jHi1XflSGWnMwr8VBn
 e06pmDrBuXQ1QLSSEyOh3+TavQpSJXr+4ynxiDY+dSDyARTqtcRV53WI1JnMH0WedC3aTEKutZK
 AJR7TaLtiOS9R0f9XgRnnXhuTT0c3IlghROj5FdKuf4zWmeGcnzW5vxu+m1N2u5MwN6YCARoF3y
 hqmiCanMnDTeY7yXddb2Cgqx1JWZHeRdnL+YUEnj2VgrqrHqOo7l4WJJ6G6qFbmJPqIPZO5A9Kz
 rjoX9eHsw4t4uwVFYHXIZpneEtGCfRw/EDTXh11RDsJFj/2rhVFhMm3dxGp830jGDpcxudrjjYP
 LMSTBtIaLmf7zrhOa0rXlWr2O81BRQ==
X-Proofpoint-GUID: C_6CNQMAgUg1c0iXHtw1EYy4O1q--DRp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0 adultscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290071

On 10/28/25 9:59 PM, Dmitry Baryshkov wrote:
> Historically all devices manually defined GPU zap-shader node in their
> board DT files. This practice is frowned upon. Add the zap-shader node
> on all platforms, define a label for it and use the label in order to
> patch the node with the firmware name.

I'm not sure this is much of an improvement, since at the end of the
series, boards still have a &gpu { zap-shader {} } section, with the
inner one not being referred to through a label, which reduces
duplication in the single LoC used to assign memory-region, but
doesn't e.g. prevent typos in the zap-shader node name

Konrad

